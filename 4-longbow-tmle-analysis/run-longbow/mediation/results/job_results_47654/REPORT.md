---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
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
* W_gagebrth
* W_birthwt
* W_birthlen
* vagbrth
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_vagbrth

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mwtkg         n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
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
```




# Results Detail

## Results Plots
![](/tmp/1d8b3a0f-9081-49cc-a5ef-b509163616ed/4f80406f-a809-4afc-89f4-397b429ce1f3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1d8b3a0f-9081-49cc-a5ef-b509163616ed/4f80406f-a809-4afc-89f4-397b429ce1f3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1d8b3a0f-9081-49cc-a5ef-b509163616ed/4f80406f-a809-4afc-89f4-397b429ce1f3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.1368801   -0.4824261    0.2086659
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -0.2348095   -0.3887207   -0.0808984
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                 0.2145349   -0.1017231    0.5307929
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 1.0165710    0.8071773    1.2259647
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 1.0523921    0.6763333    1.4284508
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.8227882    0.4546892    1.1908872
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.4151162   -0.6735457   -0.1566867
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -0.8256780   -1.0028162   -0.6485398
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -0.5636117   -0.7941835   -0.3330399
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.3479013    0.1168019    0.5790007
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.1933738   -0.4163040    0.0295563
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                 0.1575120   -0.0565397    0.3715638
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 1.2060718    1.0045505    1.4075931
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                 0.9821341    0.8066524    1.1576158
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                 0.9743038    0.7021281    1.2464795
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.6284611    0.4488672    0.8080551
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                 0.0241298   -0.4391902    0.4874498
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                 0.3922297   -0.0247094    0.8091689
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.5344640    0.3217959    0.7471321
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                 0.4262390    0.2012978    0.6511801
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.6627446    0.4267848    0.8987044
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.4554415   -0.8076249   -0.1032581
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -0.7051776   -0.8330346   -0.5773205
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -0.5811114   -0.7337729   -0.4284500
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.1716373   -0.3789812    0.0357067
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -0.5173258   -0.6215205   -0.4131312
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.2912892   -0.5596421   -0.0229363
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.1703320   -0.0423924    0.3830564
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -0.3692893   -0.4701640   -0.2684147
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.0725758   -0.2868983    0.1417467
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.2431989    0.0705961    0.4158017
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -0.0929570   -0.1970224    0.0111085
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                 0.1187658   -0.0596951    0.2972267
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1167752    0.0493428    0.1842076
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0109456   -0.1450609    0.1231697
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.0082436   -0.1177900    0.1342773
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.5913344    0.5331531    0.6495158
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.5019412    0.3975010    0.6063815
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.5649459    0.4915864    0.6383055
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.3963598    0.3596859    0.4330337
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                 0.0669240    0.0038722    0.1299759
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                 0.2651121    0.2126341    0.3175902
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.6942478    0.5188128    0.8696829
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                 0.3800588    0.2861781    0.4739395
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                 0.4943985    0.3566201    0.6321769
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.5312641   -0.8414423   -0.2210860
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -0.9581447   -1.1045387   -0.8117508
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.6232505   -0.9293770   -0.3171239
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.5342498    0.2792192    0.7892805
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 0.4679752    0.0116672    0.9242832
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.0587320   -0.3906436    0.5081075
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.4940938   -0.7634129   -0.2247746
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.0844425   -1.2362605   -0.9326245
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -0.9222597   -1.1298772   -0.7146422
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.1095145   -0.3189307    0.0999017
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.6329023   -0.8079057   -0.4578988
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.3789175   -0.5588076   -0.1990273
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.3254250    0.1651974    0.4856527
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                -0.0481417   -0.2707769    0.1744936
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                 0.1859402   -0.0999037    0.4717841
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.4653368    0.3278838    0.6027898
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                 0.0775380   -0.2799293    0.4350054
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                 0.3321117   -0.0214895    0.6857129
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2423669    0.0405932    0.4441407
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.1107547   -0.3070620    0.0855526
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.1520507   -0.0909197    0.3950210
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.4748413   -0.7139208   -0.2357618
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -1.0355081   -1.1525756   -0.9184405
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.5897101   -0.8411401   -0.3382800
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4282920   -0.6355963   -0.2209876
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.1033115   -1.1981818   -1.0084412
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.6190099   -0.8427960   -0.3952237
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.3231717   -0.5401272   -0.1062161
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -0.7863896   -0.9055959   -0.6671832
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -0.4918701   -0.7002545   -0.2834858
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.7068633    0.5942477    0.8194789
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.5579732    0.3360302    0.7799161
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.6137780    0.4164100    0.8111459
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -1.2046011   -1.3772853   -1.0319169
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.2445647   -1.4300594   -1.0590700
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.0656038   -1.2565041   -0.8747035
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.2729405    0.0119853    0.5338957
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -0.1577071   -0.2615618   -0.0538523
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                 0.0807353   -0.0750219    0.2364925


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9644952    0.7999744    1.1290160
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.6987943   -0.8241325   -0.5734561
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0563787    0.9342938    1.1784635
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5290428    0.3750394    0.6830463
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5170513    0.3872178    0.6468847
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6674586   -0.8042294   -0.5306877
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.2079891   -0.2925599   -0.1234183
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0780261    0.0247830    0.1312691
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5834072    0.5254491    0.6413653
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.2953392    0.2687669    0.3219114
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4518399    0.3806212    0.5230586
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4282738    0.2252365    0.6313111
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9525664   -1.0684455   -0.8366872
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4096154    0.2902946    0.5289362
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0500935   -0.0748234    0.1750103
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8864991   -0.9695215   -0.8034768
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6877387    0.5737746    0.8017027
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1865133   -1.2873598   -1.0856668
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0467082   -0.1287046    0.0352882


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.0979294   -0.4767428    0.2808840
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.3514150   -0.1164304    0.8192603
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg            0.0358210   -0.3959901    0.4676322
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.1937828   -0.6201033    0.2325377
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.4105618   -0.7240149   -0.0971087
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.1484955   -0.4951687    0.1981776
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.5412751   -0.8613007   -0.2212495
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.1903893   -0.5048837    0.1241051
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.2239377   -0.4903841    0.0425088
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.2317680   -0.5692843    0.1057483
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.6043314   -1.1023955   -0.1062672
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2362314   -0.6914674    0.2190046
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.1082250   -0.4181174    0.2016673
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.1282806   -0.1895722    0.4461334
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.2497360   -0.5110818    0.0116097
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.1256699   -0.4183825    0.1670427
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3456886   -0.5782668   -0.1131103
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1196519   -0.4590697    0.2197658
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.5396213   -0.7748971   -0.3043456
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.2429078   -0.5443213    0.0585057
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.3361558   -0.5377194   -0.1345923
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.1244331   -0.3730914    0.1242253
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.1277208   -0.2776600    0.0222184
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1085316   -0.2512420    0.0341789
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.0893932   -0.1730981   -0.0056883
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0263885   -0.0801136    0.0273367
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.3294358   -0.4021586   -0.2567130
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.1312477   -0.1950922   -0.0674032
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.3141890   -0.5133451   -0.1150329
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.1998493   -0.4230337    0.0233351
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.4268806   -0.7698330   -0.0839282
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           -0.0919863   -0.5274654    0.3434928
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.0662747   -0.5870895    0.4545402
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.4755179   -0.9928748    0.0418391
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.5903488   -0.8999345   -0.2807630
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.4281659   -0.7689567   -0.0873752
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.5233877   -0.7971942   -0.2495812
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.2694029   -0.5448499    0.0060440
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.3735667   -0.6480066   -0.0991268
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.1394848   -0.4694065    0.1904369
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.3877987   -0.7709869   -0.0046106
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.1332250   -0.5119687    0.2455186
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3531216   -0.6361414   -0.0701018
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0903162   -0.4021941    0.2215616
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.5606668   -0.8254191   -0.2959144
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1148688   -0.4608823    0.2311447
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.6750195   -0.9023841   -0.4476549
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.1907179   -0.4955509    0.1141152
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.4632179   -0.7105744   -0.2158614
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.1686985   -0.4693432    0.1319463
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1488901   -0.3440785    0.0462982
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0930853   -0.2870219    0.1008513
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0399636   -0.2972930    0.2173659
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg            0.1389973   -0.1175605    0.3955550
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4306476   -0.7112432   -0.1500519
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.1922052   -0.4965127    0.1121023


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.0029159   -0.3093237    0.3034920
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0520758   -0.1694243    0.0652727
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.2836781   -0.5355662   -0.0317901
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2368561   -0.4233045   -0.0504077
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.1496931   -0.3089043    0.0095180
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0994183   -0.1986687   -0.0001679
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0174127   -0.1852210    0.1503956
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.2120171   -0.4581262    0.0340921
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2672729   -0.4673865   -0.0671592
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.3783211   -0.5691386   -0.1875035
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.2134366   -0.3614617   -0.0654115
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0387491   -0.0802900    0.0027917
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0079272   -0.0192924    0.0034379
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1010206   -0.1272343   -0.0748069
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.2424079   -0.4083731   -0.0764428
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.2895613   -0.5670680   -0.0120547
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.1059760   -0.2545170    0.0425649
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.4584726   -0.7071584   -0.2097868
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2669328   -0.4339584   -0.0999072
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.2055245   -0.3525265   -0.0585225
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0557214   -0.1333775    0.0219347
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1922735   -0.3536491   -0.0308978
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.4367378   -0.6645871   -0.2088884
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4582072   -0.6429466   -0.2734677
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.2871785   -0.4701615   -0.1041955
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0191246   -0.0550039    0.0167547
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0180878   -0.1131691    0.1493447
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.3196487   -0.5616679   -0.0776294
