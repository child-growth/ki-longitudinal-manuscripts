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

**Intervention Variable:** mbmi

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight       183     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          26     209
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight        56      61
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight           5      61
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight        33      41
Birth       ki0047075b-MAL-ED          INDIA                          Underweight           8      41
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight        26      26
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight           0      26
Birth       ki0047075b-MAL-ED          PERU                           Normal weight       216     221
Birth       ki0047075b-MAL-ED          PERU                           Underweight           5     221
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        97     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           3     100
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       107     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           6     113
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight       735     992
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight         257     992
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight       483     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight          92     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight       411     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     Underweight          99     510
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       639     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          65     704
Birth       ki1119695-PROBIT           BELARUS                        Normal weight     13143   13664
Birth       ki1119695-PROBIT           BELARUS                        Underweight         521   13664
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      8574    9030
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         456    9030
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight     13482   21985
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight        8503   21985
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight       902    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight         324    1226
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight       444     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          93     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight       497     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight         105     602
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       648     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          67     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1949    1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          33    1982
6 months    ki1119695-PROBIT           BELARUS                        Normal weight     12519   13024
6 months    ki1119695-PROBIT           BELARUS                        Underweight         505   13024
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      6881    7253
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         372    7253
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight       691     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight         145     836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight     10265   16675
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight        6410   16675
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight       348     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          80     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight       478     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight         100     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       471     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          43     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       6
24 months   ki1119695-PROBIT           BELARUS                        Normal weight      3801    3942
24 months   ki1119695-PROBIT           BELARUS                        Underweight         141    3942
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight       339     366
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          27     366
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight       467     561
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          94     561
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight      5230    8505
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight        3275    8505


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
![](/tmp/3df7f9f8-1637-4866-8bf4-32e9819111fe/9cb5784f-b0dc-4b33-a428-3594b5b1241d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9964972   -1.1822884   -0.8107061
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2494213   -0.4970350    0.9958776
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1378994   -1.5389535   -0.7368454
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0278520   -0.1523063    0.0966022
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3428231    0.1648390    0.5208072
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5907638   -0.7636249   -0.4179028
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.2904449   -1.3952842   -1.1856055
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.2510593   -1.3377228   -1.1643958
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.3605024   -1.5328915   -1.1881133
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1923104   -1.3946912   -0.9899296
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4888900   -0.5280034   -0.4497767
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7261815   -0.7483803   -0.7039828
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0527190   -0.1886521    0.0832142
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.9762622    0.8077250    1.1447993
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5407482   -0.6841305   -0.3973660
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.8331249    0.6953653    0.9708845
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4534429    0.1126981    0.7941876
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.7649890    0.0661860    1.4637919
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5778411   -0.7071388   -0.4485435
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3102948   -0.4087849   -0.2118046
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1116011   -0.2019270   -0.0212752
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0600332   -0.0217768    0.1418431
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0848866    0.0302811    0.1394921
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5983086    0.5346386    0.6619785
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3152847    0.2871142    0.3434551
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5278689    0.4495718    0.6061660
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5677957   -0.5908595   -0.5447320
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7668033   -0.8984634   -0.6351431
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3394661   -0.8234953    1.5024274
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9299018   -1.0634677   -0.7963360
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3461895   -0.2713634    0.9637425
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2403988   -0.5232849    0.0424873
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8133051   -0.9167910   -0.7098192
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7996227   -0.8895694   -0.7096761
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5681970   -0.6708659   -0.4655280
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.6702733    0.5554045    0.7851421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.2799824   -1.4710652   -1.0888996
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0238341   -0.0658377    0.1135060
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2789038   -1.3090423   -1.2487654


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9526794   -1.0978709   -0.8074880
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4018033    0.0834093    0.7201973
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9678049   -1.2522118   -0.6833979
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0429864   -0.1658406    0.0798678
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7583186    0.5636385    0.9529987
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6752218   -0.8548888   -0.4955547
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.3060980   -1.3843247   -1.2278714
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.2434730   -1.3276901   -1.1592559
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1429259   -1.3532676   -0.9325843
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4905338   -0.5214551   -0.4596125
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7505381   -0.7684193   -0.7326569
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1383956   -0.2672708   -0.0095204
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9644952    0.7999744    1.1290160
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7036879   -0.8303672   -0.5770087
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0588909    0.9369064    1.1808755
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5297055    0.3757432    0.6836678
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6426305   -0.7702214   -0.5150396
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.1987071   -0.2815473   -0.1158669
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0775172    0.0241750    0.1308595
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5829956    0.5247249    0.6412663
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.2948332    0.2672524    0.3224139
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4515550    0.3802638    0.5228463
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5926564   -0.6122365   -0.5730762
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8201887   -0.9423967   -0.6979806
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4409524    0.2364865    0.6454182
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9525664   -1.0684455   -0.8366872
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.3975641    0.2766504    0.5184778
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0539486   -0.0712465    0.1791437
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8914360   -0.9741797   -0.8086923
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6880695    0.5737062    0.8024328
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1718579   -1.2809898   -1.0627260
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0468717   -0.1290135    0.0352701
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2986831   -1.3220580   -1.2753083


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0438178   -0.0995687    0.1872043
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1523820   -0.5271212    0.8318851
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1700945   -0.0244942    0.3646833
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0151344   -0.0349100    0.0046412
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4154955    0.2549144    0.5760767
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0844580   -0.1317833   -0.0371326
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0594768   -0.0975149   -0.0214388
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0550387   -0.0938119   -0.0162656
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1170294   -0.0325585    0.2666173
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0493845    0.0133314    0.0854376
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0016437   -0.0265267    0.0232392
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0243566   -0.0372253   -0.0114878
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0856766   -0.1664945   -0.0048587
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0117670   -0.0459164    0.0223824
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1629397   -0.2647876   -0.0610919
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.2257661    0.1102100    0.3413221
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0762626   -0.2239101    0.3764353
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2287676   -0.9089793    0.4514440
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0647894   -0.0860844   -0.0434943
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1371090   -0.1909761   -0.0832420
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0871060   -0.1283370   -0.0458751
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0302709   -0.0587735   -0.0017684
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0073694   -0.0137324   -0.0010064
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0153129   -0.0349129    0.0042870
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0204515   -0.0275846   -0.0133184
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0763139   -0.1099156   -0.0427122
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0248606   -0.0387894   -0.0109319
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0533854   -0.1060370   -0.0007338
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1014863   -1.0188288    1.2218014
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0226645   -0.1125810    0.0672519
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0513746   -0.5598258    0.6625749
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2943474    0.0366864    0.5520084
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0982739   -0.1524876   -0.0440603
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0918132   -0.1331387   -0.0504878
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0421532   -0.0875989    0.0032925
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0177962   -0.0498465    0.0854389
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.1081245   -0.0424308    0.2586797
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0707058   -0.1090343   -0.0323773
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0197793   -0.0385417   -0.0010169
