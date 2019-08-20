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

agecat      studyid                    country                        mwtkg         n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           46     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg           144     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        43     233
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg          117     176
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg            31     176
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        28     176
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg           36     195
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg           121     195
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg        38     195
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg           56     167
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg            48     167
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg        63     167
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg           97     269
Birth       ki0047075b-MAL-ED          PERU                           <52 kg           104     269
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg        68     269
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          165     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            23     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        38     226
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           51     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            37     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        28     116
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg           12     162
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg           124     162
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg        26     162
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg            2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg            23      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg         3      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg            4      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg            17      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg         2      23
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg        10233   13707
Birth       ki1119695-PROBIT           BELARUS                        <52 kg          1124   13707
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg      2350   13707
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         5455   10285
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          2142   10285
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2688   10285
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg           99    1328
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg          1016    1328
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg       213    1328
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           71     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg           384     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        81     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          106     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg           369     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       106     581
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          184     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           383     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       148     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1255    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           324    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       409    1988
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg         9740   13065
6 months    ki1119695-PROBIT           BELARUS                        <52 kg          1083   13065
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg      2242   13065
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         4156    7916
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          1671    7916
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2089    7916
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg          114     837
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg           504     837
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg       219     837
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          112     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg           361     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       104     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          138     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           273     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       103     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       6
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg         2957    3949
24 months   ki1119695-PROBIT           BELARUS                        <52 kg           322    3949
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg       670    3949
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg          167     413
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg           129     413
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg       117     413
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg           73     562
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg           337     562
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg       152     562


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

* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
![](/tmp/37e7e7c8-dc64-410c-8f74-f01e93db6a57/8a22da7a-9b79-49ae-be62-fdae6de68283/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.6798247   -0.9816139   -0.3780355
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.4759024    0.2614146    0.6903902
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7977716   -1.1544885   -0.4410547
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7322729   -0.9927382   -0.4718075
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0506458   -0.2818690    0.1805775
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1477049   -0.3530322    0.0576224
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.8843100    0.4185570    1.3500629
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.3896675   -0.7287322   -0.0506027
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1421428   -1.3604292   -0.9238563
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3908156   -0.4332424   -0.3483887
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.2213672   -0.0341435    0.4768779
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0715168    0.7253527    1.4176809
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4886128   -0.7436254   -0.2336002
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.3703391    0.1396380    0.6010402
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.2361722    1.0110352    1.4613092
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.7081790    0.4474595    0.9688986
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5053056    0.2768718    0.7337394
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5273353   -0.7708603   -0.2838102
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2045527   -0.4144583    0.0053528
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.2387199    0.0119491    0.4654906
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1886148    0.0228840    0.3543455
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0762631    0.0029346    0.1495917
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.6068346    0.5491699    0.6644992
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.4165255    0.3801495    0.4529014
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.7496800    0.5801228    0.9192372
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8391650   -1.1380391   -0.5402910
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5856599    0.3119938    0.8593259
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5042930   -0.7864328   -0.2221532
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1135861   -0.3265767    0.0994045
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1448260   -0.0447516    0.3344036
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4807142    0.3418539    0.6195745
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1834695   -0.0076075    0.3745465
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.5552709   -0.8084967   -0.3020451
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.5041537   -0.7240988   -0.2842086
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1586310   -0.3594433    0.0421814
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.7055808    0.5811516    0.8300100
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0594875   -1.2498860   -0.8690890
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.2499495   -0.0047736    0.5046725


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9724464   -1.1091046   -0.8357881
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.3832386    0.2044597    0.5620175
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0698974   -1.2115847   -0.9282102
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.9126946   -1.0520834   -0.7733058
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0660967   -0.1789362    0.0467429
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.0346018   -0.1831486    0.1139451
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7950000    0.5947353    0.9952647
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.2353086   -0.4984656    0.0278483
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1441825   -1.3547365   -0.9336286
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4819806   -0.5108811   -0.4530800
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9644952    0.7999744    1.1290160
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.6987943   -0.8241325   -0.5734561
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0563787    0.9342938    1.1784635
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5290428    0.3750394    0.6830463
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6674586   -0.8042294   -0.5306877
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2079891   -0.2925599   -0.1234183
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0780261    0.0247830    0.1312691
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5834072    0.5254491    0.6413653
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.2953392    0.2687669    0.3219114
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4518399    0.3806212    0.5230586
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4282738    0.2252365    0.6313111
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9525664   -1.0684455   -0.8366872
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4096154    0.2902946    0.5289362
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0500935   -0.0748234    0.1750103
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8864991   -0.9695215   -0.8034768
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6877387    0.5737746    0.8017027
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1865133   -1.2873598   -1.0856668
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0467082   -0.1287046    0.0352882


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2926217   -0.5719885   -0.0132549
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0926638   -0.2189954    0.0336678
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2721259   -0.5892275    0.0449758
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1804218   -0.3836529    0.0228094
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0154509   -0.1996400    0.1687382
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1131031   -0.0308742    0.2570805
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0893100   -0.4609220    0.2823021
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.1543588   -0.2299737    0.5386914
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0020398   -0.0283920    0.0243125
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0911650   -0.1214656   -0.0608644
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3611632   -0.5993162   -0.1230102
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1070216   -0.4042468    0.1902035
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2101815   -0.4545121    0.0341490
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2592939   -0.4460287   -0.0725591
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1797935   -0.3580496   -0.0015374
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1791362   -0.3832578    0.0249854
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0117457   -0.1892221    0.2127134
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1401233   -0.3268504    0.0466038
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2343574   -0.4366847   -0.0320301
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.4467090   -0.6508158   -0.2426022
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1588525   -0.3030126   -0.0146924
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0017629   -0.0474905    0.0510163
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0234274   -0.0376356   -0.0092192
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1211863   -0.1470857   -0.0952868
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.2978401   -0.4586803   -0.1369998
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0183396   -0.2550721    0.2917513
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1573860   -0.3282452    0.0134731
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4482734   -0.7083294   -0.1882174
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2628613   -0.4312370   -0.0944855
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0249255   -0.2077889    0.1579379
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0710988   -0.1489859    0.0067883
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1333760   -0.2939465    0.0271945
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3563082   -0.5968293   -0.1157871
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3823454   -0.5785787   -0.1861121
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4517192   -0.6263716   -0.2770668
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0178421   -0.0630425    0.0273582
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1270259   -0.2922943    0.0382426
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.2966576   -0.5331888   -0.0601265
