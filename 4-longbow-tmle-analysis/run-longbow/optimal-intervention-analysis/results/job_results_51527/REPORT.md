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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight       216     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          30     246
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight       175     184
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight           9     184
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight       159     198
Birth       ki0047075b-MAL-ED          INDIA                          Underweight          39     198
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight       172     172
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight           0     172
Birth       ki0047075b-MAL-ED          PERU                           Normal weight       271     276
Birth       ki0047075b-MAL-ED          PERU                           Underweight           5     276
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       223     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           5     228
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       114     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           7     121
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight        91     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight          39     130
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight        23      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight           5      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        21      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           6      27
Birth       ki1119695-PROBIT           BELARUS                        Normal weight     13200   13723
Birth       ki1119695-PROBIT           BELARUS                        Underweight         523   13723
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      9124    9634
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         510    9634
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight       922    1227
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight         305    1227
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight       444     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          93     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight       481     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight         101     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       648     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          67     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1949    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          34    1983
6 months    ki1119695-PROBIT           BELARUS                        Normal weight     12522   13027
6 months    ki1119695-PROBIT           BELARUS                        Underweight         505   13027
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      6747    7109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         362    7109
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight       349     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          80     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight       476     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight         100     576
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       471     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          43     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       6
24 months   ki1119695-PROBIT           BELARUS                        Normal weight      3863    4005
24 months   ki1119695-PROBIT           BELARUS                        Underweight         142    4005
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight       352     377
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          25     377
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight       482     577
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          95     577


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
![](/tmp/da717edc-449a-4082-8572-a1e7af283a9e/eb58ec30-6c36-48aa-953f-3d817f38af3e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8970291   -1.0650978   -0.7289603
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.7219529   -0.8869264   -0.5569794
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9847589   -1.1433163   -0.8262015
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.9243287   -1.0378364   -0.8108210
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.6864563   -0.8188112   -0.5541014
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.8896265   -1.1145441   -0.6647089
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.3583856   -1.5977658   -1.1190055
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.9114667   -1.3068962   -0.5160371
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0221786   -1.5211930   -0.5231642
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3362688    1.1715726    1.5009651
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4745181   -0.5148651   -0.4341711
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1614337   -1.2880751   -1.0347924
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0751231   -0.0740322    0.2242783
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.3835660   -1.5570021   -1.2101299
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.3131200   -1.4218634   -1.2043765
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.0463883   -1.1775939   -0.9151826
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2189365   -1.3535654   -1.0843075
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.3291537   -1.4244882   -1.2338191
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.3433422   -1.4389440   -1.2477405
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0317883   -1.1175774   -0.9459992
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1615449   -1.2355217   -1.0875681
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5359022   -0.5862998   -0.4855046
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1124592    0.0169090    0.2080093
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8870542   -0.9288006   -0.8453078
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.6446027   -1.7228724   -1.5663331
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.8709162   -2.0025685   -1.7392638
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0648430   -0.1036743    0.2333604
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.7824493   -1.9902164   -1.5746823
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.5906229   -1.7289213   -1.4523245
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5030845   -2.6360912   -2.3700778
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -2.0754689   -2.1890542   -1.9618837
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.4931486   -1.5914371   -1.3948600
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.4029734   -1.4916554   -1.3142914
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1013191   -0.5553650    0.3527268
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -2.1558660   -2.4687820   -1.8429499
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.8531595   -1.9883030   -1.7180160


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0455285   -1.1715695   -0.9194875
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.7397283   -0.8996215   -0.5798350
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0200505   -1.1624932   -0.8776078
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9386232   -1.0507144   -0.8265319
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.6921930   -0.8218578   -0.5625282
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9267769   -1.1425813   -0.7109724
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4803846   -1.6742160   -1.2865532
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.5292857   -0.8821252   -0.1764462
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1100000   -1.5086894   -0.7113106
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3263412    1.1672322    1.4854501
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4772566   -0.5017796   -0.4527336
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0532131   -0.0914567    0.1978830
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2148369   -1.3332371   -1.0964367
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3272488   -1.4359649   -1.2185326
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0728012   -1.2026830   -0.9429194
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3601215   -1.4821830   -1.2380600
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4072209   -1.4983514   -1.3160903
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0848568   -1.1613109   -1.0084028
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5405711   -0.5899965   -0.4911457
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1153731    0.0222128    0.2085334
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.9008757   -0.9285733   -0.8731780
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6577751   -1.7275296   -1.5880207
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0418452   -0.1263708    0.2100613
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8439159   -1.9704751   -1.7173568
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6220299   -1.7590593   -1.4850005
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6058879   -2.7403043   -2.4714714
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5839236   -1.6672059   -1.5006413
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1322181   -0.4300523    0.1656161
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -2.4135279   -2.5366872   -2.2903685
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8744367   -1.9556750   -1.7931984


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1484994   -0.2924361   -0.0045627
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0177754   -0.0514863    0.0159355
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0352916   -0.1075810    0.0369978
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0142945   -0.0325879    0.0039990
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0057367   -0.0189977    0.0075243
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0371504   -0.0836869    0.0093861
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1219990   -0.3502992    0.1063012
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.3821810   -0.0818812    0.8462431
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0878214   -0.2533878    0.0777451
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0099276   -0.0387451    0.0188898
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0027385   -0.0346662    0.0291893
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0442440   -0.0900542    0.0015662
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0219099   -0.0470607    0.0032409
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1687291    0.0317098    0.3057485
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0141288   -0.0382819    0.0100242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0264129   -0.0523581   -0.0004678
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1411850   -0.2240966   -0.0582734
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0780672   -0.1178212   -0.0383132
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0640398   -0.1085436   -0.0195360
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0530685   -0.0866399   -0.0194971
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0371334   -0.0631688   -0.0110980
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0046689   -0.0111110    0.0017731
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0029139   -0.0341282    0.0399561
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0138215   -0.0456146    0.0179716
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0131724   -0.0434573    0.0171126
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0721970   -0.1316402   -0.0127539
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0229978   -0.0677374    0.0217418
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0614666   -0.2294355    0.1065023
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0314070   -0.0604000   -0.0024141
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1028033   -0.1658519   -0.0397548
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1053255   -0.1556185   -0.0550326
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0907750   -0.1472360   -0.0343141
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0265597   -0.0630447    0.0099254
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0308990   -0.4450723    0.3832743
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2576619   -0.5599431    0.0446193
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0212772   -0.1300057    0.0874512
