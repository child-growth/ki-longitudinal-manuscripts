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

**Intervention Variable:** mbmi

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
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

agecat      studyid                    country                        mbmi             n_cell       n
----------  -------------------------  -----------------------------  --------------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight       194     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          28     222
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight        59      64
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight           5      64
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight        35      43
Birth       ki0047075b-MAL-ED          INDIA                          Underweight           8      43
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight        27      27
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight           0      27
Birth       ki0047075b-MAL-ED          PERU                           Normal weight       221     226
Birth       ki0047075b-MAL-ED          PERU                           Underweight           5     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        98     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           3     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       115     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           7     122
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight       830    1135
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight         305    1135
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight       506     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight         102     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight       418     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     Underweight          99     517
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       663     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          66     729
Birth       ki1119695-PROBIT           BELARUS                        Normal weight     13200   13723
Birth       ki1119695-PROBIT           BELARUS                        Underweight         523   13723
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      9162    9672
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         510    9672
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight     16381   26546
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight       10165   26546
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight       209     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          32     241
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight       199     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight           9     208
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight       186     235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          49     235
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight       236     236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight           0     236
6 months    ki0047075b-MAL-ED          PERU                           Normal weight       267     272
6 months    ki0047075b-MAL-ED          PERU                           Underweight           5     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       242     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           7     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       233     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          14     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight       904    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight         324    1228
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight       444     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          93     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight       498     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight         105     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       648     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          67     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1949    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          34    1983
6 months    ki1119695-PROBIT           BELARUS                        Normal weight     12522   13027
6 months    ki1119695-PROBIT           BELARUS                        Underweight         505   13027
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      6999    7375
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         376    7375
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight       691     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight         145     836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight     10273   16702
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight        6429   16702
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight       183     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          29     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight       162     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight           6     168
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight       180     226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          46     226
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight       228     228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight           0     228
24 months   ki0047075b-MAL-ED          PERU                           Normal weight       197     201
24 months   ki0047075b-MAL-ED          PERU                           Underweight           4     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       227     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           7     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       203     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          11     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight       349     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          80     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight       477     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight         100     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       471     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          43     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       6
24 months   ki1119695-PROBIT           BELARUS                        Normal weight      3863    4005
24 months   ki1119695-PROBIT           BELARUS                        Underweight         142    4005
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      1312    1373
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          61    1373
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight       482     577
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          95     577
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight      5245    8532
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight        3287    8532


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
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
![](/tmp/1b7a9cf8-e3de-4719-937c-b035229f8887/a39e59ad-e843-4952-93b9-bce5d255bd60/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0614304   -1.2072291   -0.9156317
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.6217877   -0.9101459   -0.3334296
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0633056   -1.7146600   -0.4119511
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.8868878   -1.0065110   -0.7672645
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0937618   -1.3086519   -0.8788717
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.3735982   -1.4693848   -1.2778115
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8660752   -0.9616441   -0.7705064
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8495785   -0.9354568   -0.7637002
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.9074634   -0.9889470   -0.8259799
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3346477    1.1670231    1.5022723
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4611900   -0.4862567   -0.4361233
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1305996   -1.1683722   -1.0928270
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1704941   -1.2963616   -1.0446267
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0751983   -0.0738128    0.2242094
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2776965   -1.4142551   -1.1411378
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.3144061   -1.4230676   -1.2057447
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.0476807   -1.1786860   -0.9166754
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3527236   -1.4767305   -1.2287167
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.3557066   -1.4534862   -1.2579269
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.3502483   -1.4454102   -1.2550864
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0466974   -1.1307058   -0.9626890
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2478177   -1.3714697   -1.1241657
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5341738   -0.6655027   -0.4028449
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1611796    0.0130668    0.3092924
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8685350   -0.8967231   -0.8403470
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.6457246   -1.7240810   -1.5673683
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2654826   -1.2956202   -1.2353449
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.9116977   -2.0432806   -1.7801147
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1849935   -0.7739190    0.4039319
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -2.0689501   -2.2365655   -1.9013346
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.6175073   -1.7556079   -1.4794067
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.9262980   -3.2748671   -2.5777290
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -2.1315810   -2.2445319   -2.0186301
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.5262201   -1.6306225   -1.4218178
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.4745981   -1.6545374   -1.2946589
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1241022   -0.4783064    0.2301021
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.8232202   -1.9684346   -1.6780058
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.8154890   -1.9438441   -1.6871338
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.9469723   -1.9867703   -1.9071742


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0778829   -1.2122580   -0.9435077
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.6884375   -0.9678371   -0.4090379
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2302326   -1.5393614   -0.9211037
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9051327   -1.0238686   -0.7863969
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1364754   -1.3478823   -0.9250686
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4438150   -1.5337502   -1.3538797
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8925145   -0.9687201   -0.8163089
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.9089163   -0.9806324   -0.8372002
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3271449    1.1680455    1.4862444
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4764413   -0.5009156   -0.4519670
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.1727085   -1.2008532   -1.1445639
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2054910   -1.3228953   -1.0880867
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0532131   -0.0914567    0.1978830
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2058014   -1.3242792   -1.0873236
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3285478   -1.4371840   -1.2199116
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0733534   -1.2031913   -0.9435155
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4068893   -1.4981242   -1.3156543
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0895301   -1.1639589   -1.0151013
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5405711   -0.5899965   -0.4911457
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1153731    0.0222128    0.2085334
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8800508   -0.9074511   -0.8526506
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6577751   -1.7275296   -1.5880207
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3365058   -1.3595555   -1.3134561
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0069048   -0.1627841    0.1765936
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8831195   -2.0084753   -1.7577636
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6474145   -1.7842298   -1.5105993
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6451636   -2.7802323   -2.5100948
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6002600   -1.6836163   -1.5169036
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1322181   -0.4300523    0.1656161
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.5983212   -1.6605141   -1.5361283
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8851820   -1.9664818   -1.8038822
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0196953   -2.0474028   -1.9919877


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0164525   -0.0614474    0.0285424
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0666498   -0.1549263    0.0216267
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1669270   -0.7888540    0.4550000
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0182450   -0.0406854    0.0041955
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0427136   -0.1055154    0.0200881
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0702168   -0.0932117   -0.0472220
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0649445   -0.1072826   -0.0226064
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0429360   -0.0816129   -0.0042591
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0014529   -0.0365354    0.0336296
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0075028   -0.0278602    0.0128547
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0152513   -0.0213219   -0.0091806
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0421089   -0.0671537   -0.0170642
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0349969   -0.0799578    0.0099641
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0219851   -0.0470525    0.0030822
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0718950   -0.0163984    0.1601885
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0141417   -0.0383785    0.0100952
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0256727   -0.0513999    0.0000545
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0160214   -0.0516208    0.0195780
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0511827   -0.0888962   -0.0134692
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0571338   -0.1005085   -0.0137591
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0428327   -0.0758335   -0.0098320
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0491394   -0.0514523    0.1497310
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0063973   -0.1259182    0.1131236
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0458066   -0.1397629    0.0481498
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0115158   -0.0177910   -0.0052407
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0120505   -0.0421286    0.0180276
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0710232   -0.0913666   -0.0506799
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0672174   -0.1240164   -0.0104184
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1918983   -0.3540424    0.7378390
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1858306    0.0690713    0.3025899
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0299072   -0.0582824   -0.0015321
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2811345   -0.0446311    0.6069001
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0874769   -0.1367286   -0.0382251
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0740398   -0.1416203   -0.0064594
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0333336   -0.1225998    0.1892669
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0081159   -0.2314058    0.2151740
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.2248990    0.0897893    0.3600087
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0696930   -0.1711273    0.0317413
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0727230   -0.1020829   -0.0433631
