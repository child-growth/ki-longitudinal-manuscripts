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
* W_fage
* meducyrs
* feducyrs
* single
* brthmon
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mbmi             n_cell       n
----------  -------------------------  -----------------------------  --------------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight       205     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          28     233
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight       167     176
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight           9     176
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight       157     195
Birth       ki0047075b-MAL-ED          INDIA                          Underweight          38     195
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight       167     167
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight           0     167
Birth       ki0047075b-MAL-ED          PERU                           Normal weight       264     269
Birth       ki0047075b-MAL-ED          PERU                           Underweight           5     269
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       221     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           5     226
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       109     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           7     116
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight        77     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight          33     110
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight        23      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight           5      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        17      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           6      23
Birth       ki1119695-PROBIT           BELARUS                        Normal weight     13143   13664
Birth       ki1119695-PROBIT           BELARUS                        Underweight         521   13664
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      8573    9029
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         456    9029
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight       921    1225
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight         304    1225
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight       443     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          93     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight       480     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight         101     581
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       648     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          67     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1949    1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          33    1982
6 months    ki1119695-PROBIT           BELARUS                        Normal weight     12519   13024
6 months    ki1119695-PROBIT           BELARUS                        Underweight         505   13024
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      6726    7087
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         361    7087
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight       691     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight         145     836
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight       477     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight         100     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       471     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          43     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       6
24 months   ki1119695-PROBIT           BELARUS                        Normal weight      3800    3941
24 months   ki1119695-PROBIT           BELARUS                        Underweight         141    3941
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight       334     359
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          25     359
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight       467     561
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          94     561


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
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
![](/tmp/7b22d65f-d6a8-4323-9a40-5a3b8c672a64/5b37381d-cebc-4a14-b557-659d33baf3d8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9847262   -1.1208314   -0.8486211
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2981131   -0.5271926    1.1234188
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0880116   -1.3896243   -0.7863990
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0543167   -0.1689387    0.0603054
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0175531   -0.1682817    0.1331755
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.0909346    0.7148306    1.4670386
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2703469   -0.5770181    0.0363243
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8167189   -1.4866819   -0.1467560
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1460814   -0.8133415    0.5211787
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1371217   -1.3469384   -0.9273049
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4788108   -0.5231541   -0.4344675
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0856476   -0.2572786    0.0859834
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.9775309    0.8089865    1.1460753
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6088948   -0.7398983   -0.4778912
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.9486598    0.6586543    1.2386654
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4053949    0.2238283    0.5869614
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6803949    0.1091129    1.2516769
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5438225   -0.6770585   -0.4105864
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3060659   -0.4034981   -0.2086336
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1077625   -0.1997497   -0.0157753
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0608721   -0.0207424    0.1424866
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0851606    0.0306299    0.1396913
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5711107    0.5074463    0.6347751
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3140104    0.2854463    0.3425745
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5270629    0.4485897    0.6055362
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7673462   -0.8980592   -0.6366333
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0690694   -0.3104207    0.1722820
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9176375   -1.0437110   -0.7915640
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0805420   -0.3892924    0.5503764
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1455490   -0.4345124    0.1434143
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8151333   -0.9185894   -0.7116771
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7843843   -0.8759701   -0.6927985
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5673126   -0.7011185   -0.4335066
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.6921172    0.5370320    0.8472024
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0985734   -1.4183818   -0.7787650
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0261224   -0.0636107    0.1158554


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9724464   -1.1091046   -0.8357881
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.3832386    0.2044597    0.5620175
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0698974   -1.2115847   -0.9282102
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0660967   -0.1789362    0.0467429
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.0346018   -0.1831486    0.1139451
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7950000    0.5947353    0.9952647
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.1601818   -0.3763991    0.0560355
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4239286   -1.7688028   -1.0790544
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.7508696   -1.2358912   -0.2658480
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1441269   -1.3547476   -0.9335062
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4900343   -0.5209436   -0.4591251
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9644952    0.7999744    1.1290160
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.6987943   -0.8241325   -0.5734561
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0563787    0.9342938    1.1784635
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5290428    0.3750394    0.6830463
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6441020   -0.7710827   -0.5171213
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2079891   -0.2925599   -0.1234183
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0775172    0.0241750    0.1308595
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5829956    0.5247249    0.6412663
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.2928094    0.2648167    0.3208020
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4515431    0.3802415    0.5228446
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4282738    0.2252365    0.6313111
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9525664   -1.0684455   -0.8366872
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4096154    0.2902946    0.5289362
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0500935   -0.0748234    0.1750103
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8864991   -0.9695215   -0.8034768
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6869754    0.5725638    0.8013869
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1810028   -1.2914599   -1.0705456
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0469519   -0.1290932    0.0351895


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0122799   -0.0652887    0.0898485
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0851255   -0.7180287    0.8882798
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0181142   -0.2363986    0.2726270
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0117800   -0.0278050    0.0042451
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0170487   -0.0393879    0.0052905
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2959346   -0.7047843    0.1129151
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.1101651   -0.0754877    0.2958178
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.6072096   -1.2727051    0.0582858
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.6047881   -1.2963136    0.0867373
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0070052   -0.0128348   -0.0011757
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0112235   -0.0426942    0.0202471
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0541484   -0.1836591    0.0753623
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0130357   -0.0473143    0.0212430
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0898995   -0.1678799   -0.0119192
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.1077188   -0.1588122    0.3742499
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1236480    0.0335138    0.2137822
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1633436   -0.7220669    0.3953797
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1002796   -0.1316405   -0.0689187
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1328443   -0.1883023   -0.0773863
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1002266   -0.1417374   -0.0587158
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0311099   -0.0597862   -0.0024336
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0076434   -0.0139567   -0.0013301
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0118849   -0.0156635    0.0394333
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0212010   -0.0284462   -0.0139558
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0755199   -0.1090278   -0.0420120
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0534792   -0.1061105   -0.0008480
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.4973432    0.2971511    0.6975352
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0349289   -0.1008362    0.0309785
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3290734   -0.1377863    0.7959332
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1956425   -0.0658556    0.4571406
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0964458   -0.1508131   -0.0420784
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1021148   -0.1459106   -0.0583191
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0430376   -0.1288876    0.0428124
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0051418   -0.0809788    0.0706952
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0824294   -0.3718370    0.2069782
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0730742   -0.1120745   -0.0340740
