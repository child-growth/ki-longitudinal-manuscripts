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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          582   22058
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg         19979   22058
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg      1497   22058
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          407   16717
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg         15160   16717
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg      1150   16717
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          195    8533
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg          7774    8533
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg       564    8533


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
![](/tmp/f42b386d-9dba-4431-82e0-3b275ca47a83/c51940e6-3d53-42de-9c0a-7b267ab96866/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.6418828   -0.9276866   -0.3560790
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.6633629    0.2777269    1.0489989
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5369898   -1.1780887    0.1041091
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4219178   -0.9357527    0.0919171
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0251933   -0.2811001    0.2307135
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2408964   -0.9161653    0.4343724
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4594689    0.0764402    0.8424975
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1800631   -0.4754676    0.1153415
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.0681252   -1.3490486   -0.7872017
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.1758994   -1.3862456   -0.9655532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8792941   -1.0413850   -0.7172033
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1061880   -1.3123974   -0.8999785
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3705806   -0.4110994   -0.3300617
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6468173   -0.7346142   -0.5590203
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.2185807   -0.1275272    0.5646885
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.8531152    0.6392554    1.0669750
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5571732   -0.7617292   -0.3526171
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.3968851    0.1554683    0.6383020
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.3305145    1.1123467    1.5486823
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6484568    0.4677979    0.8291157
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6793144    0.4581163    0.9005124
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.4285106   -0.7731234   -0.0838979
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3297639   -0.5519577   -0.1075701
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.2664357    0.0453133    0.4875581
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1705018   -0.0070015    0.3480052
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1126746    0.0435915    0.1817577
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5978746    0.5336514    0.6620978
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.4276948    0.3918741    0.4635154
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.7228483    0.5498230    0.8958737
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5234498   -0.6158486   -0.4310510
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7527466   -1.0386790   -0.4668142
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5558938    0.2921781    0.8196094
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5097583   -0.7867302   -0.2327865
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1105480   -0.3234036    0.1023075
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.2766086    0.1113530    0.4418643
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4687532    0.3271150    0.6103913
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2751934    0.0762460    0.4741407
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4167832   -0.6392193   -0.1943470
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.5178277   -0.7574205   -0.2782349
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2474603   -0.4324059   -0.0625147
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.6776289    0.5347615    0.8204963
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0656961   -1.2568963   -0.8744959
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.2831934    0.0265515    0.5398353
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2432771   -1.3713472   -1.1152069


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9526794   -1.0978709   -0.8074880
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7504434   -0.7683264   -0.7325603
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1383956   -0.2672708   -0.0095204
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9644952    0.7999744    1.1290160
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7036879   -0.8303672   -0.5770087
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0588909    0.9369064    1.1808755
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5297055    0.3757432    0.6836678
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6660835   -0.8034722   -0.5286949
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.1987071   -0.2815473   -0.1158669
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0780261    0.0247830    0.1312691
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5834072    0.5254491    0.6413653
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.2987004    0.2725093    0.3248915
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4518519    0.3806435    0.5230602
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5929476   -0.6125268   -0.5733684
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8201887   -0.9423967   -0.6979806
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4409524    0.2364865    0.6454182
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9525664   -1.0684455   -0.8366872
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1204478    0.0005049    0.2403906
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.3975641    0.2766504    0.5184778
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0539486   -0.0712465    0.1791437
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8914360   -0.9741797   -0.8086923
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6888304    0.5749159    0.8027449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1835154   -1.2835950   -1.0834359
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0466281   -0.1286250    0.0353688
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2990730   -1.3224430   -1.2757030


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3107966   -0.5846028   -0.0369904
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2615596   -0.5622369    0.0391176
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4308151   -1.0490591    0.1874290
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3465437   -0.8241349    0.1310474
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0177931   -0.2370771    0.2014909
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0478964   -0.5341645    0.6299574
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2988497   -0.0209591    0.6186585
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.4860139   -0.6721138   -0.2999140
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2817966   -0.5430004   -0.0205927
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1301986   -0.3197220    0.0593248
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3641789   -0.5065328   -0.2218250
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0367974   -0.0572342   -0.0163605
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1118392   -0.1394875   -0.0841909
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1036261   -0.1888955   -0.0183567
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3569763   -0.6751426   -0.0388100
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1113800   -0.0684729    0.2912330
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1465148   -0.3552615    0.0622319
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2858399   -0.4811524   -0.0905275
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2716236   -0.4494262   -0.0938209
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1187513   -0.2185275   -0.0189752
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1430931   -0.3452323    0.0590462
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2375729   -0.4627336   -0.0124122
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1176399   -0.3298178    0.0945381
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.4651428   -0.6643863   -0.2658993
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1407396   -0.2971806    0.0157014
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0346485   -0.0777118    0.0084148
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0144674   -0.0382915    0.0093566
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1289944   -0.1544231   -0.1035657
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.2709965   -0.4349108   -0.1070822
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0694978   -0.1599069    0.0209113
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0674421   -0.3251981    0.1903140
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1149414   -0.2699418    0.0400590
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4428080   -0.6998023   -0.1858138
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2658993   -0.4339589   -0.0978398
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1561609   -0.3090762   -0.0032456
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0711891   -0.1497088    0.0073307
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2212448   -0.3859315   -0.0565581
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4947959   -0.7076074   -0.2819843
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3736083   -0.5883401   -0.1588766
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3628899   -0.5234030   -0.2023767
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0112015   -0.0745932    0.0969962
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1178194   -0.2849322    0.0492935
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.3298215   -0.5677517   -0.0918913
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0557959   -0.1823337    0.0707419
