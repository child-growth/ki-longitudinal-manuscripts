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
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon
* delta_W_parity

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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight     10934   17935
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight        7001   17935
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight     10303   16733
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight        6430   16733
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight      5272    8570
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight        3298    8570


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
![](/tmp/dd5354de-b120-474e-9924-48f3f72af168/1feee826-3f97-4bee-95a1-72fb852e8db9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9304996   -1.0899736   -0.7710256
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1041479   -0.5541581    0.7624539
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1051806   -1.5114724   -0.6988888
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0281089   -0.1525660    0.0963481
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5958104    0.1127557    1.0788651
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5907638   -0.7636249   -0.4179028
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.2909657   -1.3960272   -1.1859043
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.2502823   -1.3365569   -1.1640076
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.3843332   -1.5738441   -1.1948224
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1971305   -1.3983996   -0.9958613
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5046568   -0.5413019   -0.4680118
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7731200   -0.7969441   -0.7492959
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0303160   -0.1125407    0.1731727
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.9782802    0.8098651    1.1466954
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6581239   -0.8134315   -0.5028163
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.9652506    0.8416995    1.0888017
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3760195    0.2135669    0.5384721
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6832661    0.0786491    1.2878832
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5778411   -0.7071388   -0.4485435
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3332726   -0.4325507   -0.2339944
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1019789   -0.1920200   -0.0119378
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0582388   -0.0235867    0.1400642
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0853551    0.0307596    0.1399506
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5847742    0.5266078    0.6429407
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3135849    0.2824710    0.3446989
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5302325    0.4519309    0.6085341
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5713838   -0.5947345   -0.5480330
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7603071   -0.8905251   -0.6300892
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.4086871   -0.9130891    1.7304632
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0062232   -1.1333464   -0.8790999
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2745935   -0.3261106    0.8752977
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1787374   -0.4436201    0.0861453
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8153441   -0.9187747   -0.7119135
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7964260   -0.8859835   -0.7068685
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5595702   -0.6717818   -0.4473587
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.6432866    0.5256187    0.7609545
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.1632506   -1.2766492   -1.0498521
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0261943   -0.0637650    0.1161536
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2769479   -1.3071555   -1.2467403


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9533493   -1.0984355   -0.8082631
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7781583   -0.7971779   -0.7591388
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1376763   -0.2664642   -0.0088885
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9648518    0.8004118    1.1292917
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7034149   -0.8300527   -0.5767771
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0548591    0.9328922    1.1768259
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5291499    0.3751396    0.6831602
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6426305   -0.7702214   -0.5150396
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.1987071   -0.2815473   -0.1158669
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0775172    0.0241750    0.1308595
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5829956    0.5247249    0.6412663
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.2948332    0.2672524    0.3224139
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4515550    0.3802638    0.5228463
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5931545   -0.6127055   -0.5736036
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4443651    0.2404149    0.6483153
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9519248   -1.0678488   -0.8360007
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.3916417    0.2704414    0.5128421
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0547975   -0.0703378    0.1799328
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8914360   -0.9741797   -0.8086923
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6880695    0.5737062    0.8024328
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1718579   -1.2809898   -1.0627260
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0468717   -0.1290135    0.0352701
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2970642   -1.3203662   -1.2737621


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0228497   -0.0691362    0.0234368
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2976554   -0.2345699    0.8298807
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1373757   -0.1254169    0.4001683
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0148775   -0.0344388    0.0046839
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1625082   -0.2990433    0.6240597
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0844580   -0.1317833   -0.0371326
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0589560   -0.0967610   -0.0211511
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0558158   -0.0941444   -0.0174871
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1408602   -0.0255030    0.3072235
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0542046    0.0168673    0.0915418
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0141231   -0.0070607    0.0353068
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0050384   -0.0185953    0.0085186
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1679923   -0.2641749   -0.0718097
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0134285   -0.0477294    0.0208725
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0452910   -0.1481782    0.0575962
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.0896085    0.0402659    0.1389510
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1531304    0.0747014    0.2315595
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1470448   -0.7328492    0.4387597
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0647894   -0.0860844   -0.0434943
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1141312   -0.1671566   -0.0611058
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0967282   -0.1386000   -0.0548563
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0284765   -0.0573329    0.0003798
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0078379   -0.0142292   -0.0014465
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0017786   -0.0164875    0.0129302
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0187518   -0.0342686   -0.0032349
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0786775   -0.1121371   -0.0452179
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0217708   -0.0361669   -0.0073746
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0589853   -0.1105277   -0.0074429
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0356780   -1.2446990    1.3160550
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0542984   -0.0283724    0.1369692
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1170482   -0.4789261    0.7130225
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2335349    0.0015003    0.4655695
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0962350   -0.1503817   -0.0420883
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0950099   -0.1378918   -0.0521281
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0507799   -0.1123144    0.0107545
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0447829   -0.0016667    0.0912326
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0086073   -0.0406310    0.0234163
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0730659   -0.1118158   -0.0343160
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0201162   -0.0384922   -0.0017403
