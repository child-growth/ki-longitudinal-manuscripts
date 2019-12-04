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
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight     13720   22355
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight        8635   22355
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight     10311   16760
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight        6449   16760
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight      5289    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight        3310    8599


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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/72579d31-29a2-4c97-923f-d20e336f44d7/943ff5e2-88f5-46a3-9245-68905dd2147a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1063552   -1.3488965   -0.8638140
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.6246218   -0.9160924   -0.3331512
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0813323   -1.7285801   -0.4340845
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.8869390   -1.0065491   -0.7673289
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0903146   -1.3047115   -0.8759177
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.3712738   -1.4649746   -1.2775729
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8506269   -0.9566817   -0.7445722
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8736249   -0.9922737   -0.7549761
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8855294   -0.9620189   -0.8090399
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3372707    1.1706132    1.5039282
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4602046   -0.4852807   -0.4351285
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.5432866   -1.5711322   -1.5154409
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1472223   -1.3108839   -0.9835607
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0711041   -0.0779686    0.2201767
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2141788   -1.4150373   -1.0133204
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.4166963   -2.1740014   -0.6593911
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.0465890   -1.1775777   -0.9156004
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.4810293   -1.8634592   -1.0985994
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.3383289   -1.4388973   -1.2377606
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.3426829   -1.4383203   -1.2470455
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0473275   -1.1314177   -0.9632374
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1591333   -1.2332933   -1.0849732
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5358103   -0.5862527   -0.4853680
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0810494   -0.0530911    0.2151898
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8686756   -0.8968725   -0.8404786
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.6461697   -1.7245301   -1.5678094
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2418276   -1.2725334   -1.2111219
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.9080731   -2.0401860   -1.7759602
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0251524   -0.1449254    0.1952301
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.9188856   -2.0900424   -1.7477288
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.6130934   -1.7508390   -1.4753478
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.4701885   -2.7080301   -2.2323469
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -2.1121196   -2.2253656   -1.9988736
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.5071115   -1.6014278   -1.4127952
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.3989618   -1.4854266   -1.3124971
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1330740   -0.5837649    0.3176168
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.5619763   -1.7905903   -1.3333623
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.8702381   -1.9996795   -1.7407967
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.9428549   -1.9830595   -1.9026502


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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5893196   -1.6086080   -1.5700313
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2049931   -1.3222136   -1.0877726
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0497516   -0.0948051    0.1943083
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2059574   -1.3243030   -1.0876119
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3241023   -1.4325083   -1.2156964
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0727443   -1.2024880   -0.9430006
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4068893   -1.4981242   -1.3156543
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0895301   -1.1639589   -1.0151013
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5405711   -0.5899965   -0.4911457
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1153731    0.0222128    0.2085334
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8800508   -0.9074511   -0.8526506
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6577751   -1.7275296   -1.5880207
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3140048   -1.3371141   -1.2908955
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0059127   -0.1637934    0.1756188
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8844690   -2.0097879   -1.7591502
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6432229   -1.7795844   -1.5068615
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6455607   -2.7807256   -2.5103959
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6002600   -1.6836163   -1.5169036
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1322181   -0.4300523    0.1656161
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.5983212   -1.6605141   -1.5361283
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8851820   -1.9664818   -1.8038822
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0137632   -2.0415122   -1.9860142


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0284723   -0.1554909    0.2124356
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0638157   -0.1530516    0.0254202
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1489003   -0.7638103    0.4660098
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0181938   -0.0408376    0.0044501
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0461608   -0.1100683    0.0177467
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0725412   -0.0936036   -0.0514788
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0803928   -0.1403524   -0.0204332
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0188896   -0.1042877    0.0665085
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0233869   -0.0449612   -0.0018126
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0101258   -0.0296064    0.0093549
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0162367   -0.0223271   -0.0101462
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0460330   -0.0658661   -0.0262000
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0577708   -0.1601836    0.0446420
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0213525   -0.0461184    0.0034135
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0082214   -0.1545596    0.1710024
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.0925939   -0.6394439    0.8246317
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0261553   -0.0518477   -0.0004628
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1122844   -0.2372152    0.4617839
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0685603   -0.1123022   -0.0248184
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0646992   -0.1090373   -0.0203611
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0422026   -0.0755720   -0.0088332
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0395450   -0.0658728   -0.0132173
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0047608   -0.0112806    0.0017591
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0343237   -0.0323460    0.1009934
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0113753   -0.0176272   -0.0051233
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0116054   -0.0415342    0.0183234
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0721771   -0.0930532   -0.0513010
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0703231   -0.1277104   -0.0129358
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0192397   -0.0629054    0.0244261
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0344166   -0.0897796    0.1586127
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0301295   -0.0584306   -0.0018284
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1753722   -0.3907766    0.0400321
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1069383   -0.1578934   -0.0559832
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0931485   -0.1440449   -0.0422520
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0423027   -0.0706368   -0.0139687
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0008559   -0.4259892    0.4277011
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0363449   -0.2537978    0.1811080
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0149439   -0.1210961    0.0912084
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0709084   -0.1007923   -0.0410245
