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

**Intervention Variable:** mwtkg

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

agecat      studyid                    country                        mwtkg         n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           37     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg           131     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        41     209
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg           33      61
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg            14      61
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        14      61
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg            6      41
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg            28      41
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg         7      41
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg            9      26
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg             7      26
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg        10      26
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg           82     221
Birth       ki0047075b-MAL-ED          PERU                           <52 kg            81     221
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg        58     221
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg           69     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            10     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        21     100
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           44     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            40     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        29     113
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg           89    1091
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg           824    1091
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg       178    1091
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           79     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg           414     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        82     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg           89     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg           326     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg        95     510
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          183     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           381     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       140     704
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg        10233   13707
Birth       ki1119695-PROBIT           BELARUS                        <52 kg          1124   13707
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg      2350   13707
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         5455   10286
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          2142   10286
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2689   10286
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          427   17995
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg         16351   17995
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg      1217   17995
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           46     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg           154     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        41     241
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg          137     208
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg            37     208
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        34     208
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg           40     235
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg           146     235
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg        49     235
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg           79     236
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg            75     236
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg        82     236
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg          100     272
6 months    ki0047075b-MAL-ED          PERU                           <52 kg           107     272
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg        65     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          179     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            29     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        41     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           94     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            95     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        58     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg          103    1329
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg          1011    1329
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg       215    1329
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           71     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg           385     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        81     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          108     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg           385     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       109     602
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          184     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           383     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       148     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1255    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           324    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       409    1988
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg         9740   13065
6 months    ki1119695-PROBIT           BELARUS                        <52 kg          1083   13065
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg      2242   13065
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         4255    8110
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          1713    8110
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2142    8110
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg          114     837
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg           504     837
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg       219     837
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          408   16775
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg         15216   16775
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg      1151   16775
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           40     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg           135     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        37     212
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg          109     168
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg            28     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        31     168
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg           38     226
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg           141     226
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg        47     226
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg           76     228
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg            74     228
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg        78     228
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg           77     201
24 months   ki0047075b-MAL-ED          PERU                           <52 kg            75     201
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg        49     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          168     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            28     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        38     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           82     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            84     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        48     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           56     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg           308     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        64     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          112     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg           362     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       104     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          138     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           273     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       103     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       6
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg         2958    3950
24 months   ki1119695-PROBIT           BELARUS                        <52 kg           322    3950
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg       670    3950
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg          170     421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg           132     421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg       119     421
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg           73     562
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg           337     562
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg       152     562
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          195    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg          7835    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg       568    8598


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
![](/tmp/b4056391-aa06-4ee1-a421-449e086d6686/43489f05-abcd-4db5-a8fe-897e30cf6756/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.6562837   -0.9577264   -0.3548411
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.6877203    0.3022284    1.0732123
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5447533   -1.2134808    0.1239742
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4887274   -1.0087311    0.0312763
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.1322079   -0.1400504    0.4044663
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0355955   -0.4200672    0.4912581
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5108984    0.0823022    0.9394946
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1800631   -0.4754676    0.1153415
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.0807406   -1.3670161   -0.7944651
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.3231094   -1.5224140   -1.1238048
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8848018   -1.0458890   -0.7237146
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1046052   -1.3105951   -0.8986154
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3687916   -0.4093780   -0.3282052
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7019823   -0.7853659   -0.6185986
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.2307936   -0.0824190    0.5440063
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.8140717    0.5749371    1.0532063
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5313480   -0.7353776   -0.3273183
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.3741980    0.1409790    0.6074171
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.3205374    1.1099529    1.5311219
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.5397723    0.3498854    0.7296591
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6339333    0.4065288    0.8613379
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.4285106   -0.7731234   -0.0838979
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2216018   -0.4293586   -0.0138450
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.2754458    0.0525078    0.4983838
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.2180358    0.0371580    0.3989136
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1154512    0.0471606    0.1837417
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5951499    0.5358112    0.6544887
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.4251370    0.3893323    0.4609416
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.7021242    0.5250005    0.8792479
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.4881601   -0.5825895   -0.3937307
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8670425   -1.1436165   -0.5904685
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5806514    0.3175245    0.8437783
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4976632   -0.7602419   -0.2350846
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1033363   -0.3173245    0.1106520
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.3466563    0.1811690    0.5121436
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4621405    0.3207897    0.6034912
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2574496    0.0590165    0.4558828
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4949300   -0.7473240   -0.2425359
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3756543   -0.6128726   -0.1384359
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1530407   -0.3458829    0.0398015
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.6773612    0.5602577    0.7944647
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0471676   -1.2357645   -0.8585707
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.2486339   -0.0043351    0.5016029
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2095130   -1.3324276   -1.0865985


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9533493   -1.0984355   -0.8082631
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4018033    0.0834093    0.7201973
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9678049   -1.2522118   -0.6833979
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7684615   -1.1257770   -0.4111460
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0429864   -0.1658406    0.0798678
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.1930000   -0.4278634    0.0418634
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7583186    0.5636385    0.9529987
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6660770   -0.8389738   -0.4931801
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.3060980   -1.3843247   -1.2278714
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.2434730   -1.3276901   -1.1592559
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1429853   -1.3532634   -0.9327073
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4824198   -0.5113303   -0.4535093
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7780622   -0.7970926   -0.7590319
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1376763   -0.2664642   -0.0088885
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9648518    0.8004118    1.1292917
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7034149   -0.8300527   -0.5767771
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1104308   -0.0208643    0.2417259
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0548591    0.9328922    1.1768259
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5291499    0.3751396    0.6831602
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6660835   -0.8034722   -0.5286949
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.1987071   -0.2815473   -0.1158669
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0780261    0.0247830    0.1312691
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5834072    0.5254491    0.6413653
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.2987004    0.2725093    0.3248915
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4518519    0.3806435    0.5230602
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5934435   -0.6129939   -0.5738931
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4443651    0.2404149    0.6483153
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9519248   -1.0678488   -0.8360007
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3749123   -0.4886073   -0.2612173
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.3916417    0.2704414    0.5128421
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0547975   -0.0703378    0.1799328
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8914360   -0.9741797   -0.8086923
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6888304    0.5749159    0.8027449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1835154   -1.2835950   -1.0834359
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0466281   -0.1286250    0.0353688
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2974564   -1.3207535   -1.2741592


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2970655   -0.5831042   -0.0110269
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2859170   -0.5880524    0.0162183
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4230516   -1.0686443    0.2225411
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2797342   -0.7666214    0.2071531
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1751944   -0.4085194    0.0581307
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2285955   -0.5843646    0.1271736
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2474202   -0.1058272    0.6006675
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.4860139   -0.6721138   -0.2999140
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2691812   -0.5353262   -0.0030361
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0170114   -0.1629956    0.1970183
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3586712   -0.5001177   -0.2172248
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0383801   -0.0573553   -0.0194048
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1136282   -0.1413667   -0.0858897
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0760800   -0.1581810    0.0060211
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3684700   -0.6596194   -0.0773206
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1507801   -0.0212549    0.3228151
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1720669   -0.3803623    0.0362284
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2637672   -0.4528752   -0.0746593
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2656783   -0.4360266   -0.0953300
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0106224   -0.1468072    0.1255625
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0977120   -0.2925699    0.0971459
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2375729   -0.4627336   -0.0124122
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2258020   -0.4261409   -0.0254631
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.4741529   -0.6761500   -0.2721558
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1882736   -0.3447667   -0.0317804
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0374251   -0.0801036    0.0052534
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0117427   -0.0302580    0.0067725
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1264366   -0.1518600   -0.1010132
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.2502724   -0.4177534   -0.0827913
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1052834   -0.1967469   -0.0138199
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0477500   -0.2022936    0.2977937
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1362863   -0.2904869    0.0179144
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4542616   -0.6987247   -0.2097984
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2715760   -0.4403942   -0.1027578
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2354581   -0.3904661   -0.0804501
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0704987   -0.1488118    0.0078143
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2026521   -0.3681258   -0.0371785
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4166491   -0.6553095   -0.1779886
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.5157817   -0.7296955   -0.3018680
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4573095   -0.6270661   -0.2875528
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0114692   -0.0467303    0.0696687
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1363479   -0.3009000    0.0282043
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.2952620   -0.5294548   -0.0610693
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0879434   -0.2091068    0.0332201
