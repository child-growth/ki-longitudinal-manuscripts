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
![](/tmp/c89887d1-1f35-4072-bdf7-913a2fe65215/de3cf35d-02b2-4036-bf85-1498c5fb1008/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c89887d1-1f35-4072-bdf7-913a2fe65215/de3cf35d-02b2-4036-bf85-1498c5fb1008/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c89887d1-1f35-4072-bdf7-913a2fe65215/de3cf35d-02b2-4036-bf85-1498c5fb1008/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.1087568   -0.4556066    0.2380930
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -0.2439528   -0.3973618   -0.0905438
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                 0.1737076   -0.1311940    0.4786091
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 1.0019407    0.7927646    1.2111167
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 0.9485045    0.5798633    1.3171458
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.7671495    0.3817300    1.1525690
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.4220146   -0.6681548   -0.1758744
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -0.8342595   -1.0099636   -0.6585554
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -0.5525634   -0.7882062   -0.3169206
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.3596689    0.1244762    0.5948616
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.2097914   -0.4316821    0.0120994
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                 0.1642497   -0.0475828    0.3760822
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 1.2492157    1.0525968    1.4458346
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                 1.0028738    0.8111124    1.1946351
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                 0.9557317    0.6760035    1.2354598
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.6331339    0.4558925    0.8103752
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -0.0826550   -0.5261044    0.3607944
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                 0.3895311   -0.0595960    0.8386582
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.5309567    0.3209163    0.7409970
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                 0.4255500    0.2008324    0.6502676
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.6620993    0.4237791    0.9004194
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.4554415   -0.8076249   -0.1032581
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -0.7051776   -0.8330346   -0.5773205
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -0.5811114   -0.7337729   -0.4284500
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.1976042   -0.4081867    0.0129783
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -0.5185434   -0.6236134   -0.4134733
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.3182517   -0.5865426   -0.0499607
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.1530160   -0.0569971    0.3630290
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -0.3612989   -0.4626481   -0.2599498
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.0826516   -0.2991824    0.1338792
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.2209061    0.0433198    0.3984925
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -0.0931164   -0.1964035    0.0101708
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                 0.1164523   -0.0616823    0.2945868
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1156882    0.0479816    0.1833947
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0054667   -0.1382707    0.1273374
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.0239364   -0.1028240    0.1506967
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.5914530    0.5329278    0.6499781
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.5033902    0.4022081    0.6045723
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.5686905    0.4958139    0.6415670
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.3986628    0.3621251    0.4352006
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                 0.0678432    0.0054925    0.1301939
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                 0.2715042    0.2189480    0.3240604
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.7212457    0.5457554    0.8967361
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                 0.3812207    0.2867022    0.4757392
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                 0.4988695    0.3610983    0.6366408
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.5559780   -0.8605531   -0.2514030
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -0.9594450   -1.1042902   -0.8145997
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.5757795   -0.8801921   -0.2713669
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.5527636    0.2958447    0.8096826
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 0.5076206    0.0369827    0.9782586
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.0806478   -0.3901844    0.5514800
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.4906221   -0.7793199   -0.2019243
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.0824332   -1.2340689   -0.9307975
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -0.9325683   -1.1413368   -0.7237997
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.1109568   -0.3211642    0.0992506
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.6490660   -0.8328829   -0.4652490
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.3702532   -0.5467252   -0.1937812
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.2602505    0.0957969    0.4247041
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                -0.0594690   -0.2944180    0.1754799
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                 0.2085692   -0.1042071    0.5213454
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.4636623    0.3257582    0.6015665
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                 0.1139462   -0.2496449    0.4775373
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                 0.3424802   -0.0053528    0.6903131
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2201161    0.0162219    0.4240104
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.1359906   -0.3349211    0.0629398
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.1024826   -0.1625744    0.3675395
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.4615670   -0.6947797   -0.2283544
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -1.0349804   -1.1521793   -0.9177814
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.6060707   -0.8455473   -0.3665941
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4346610   -0.6457912   -0.2235307
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.1024896   -1.1967350   -1.0082442
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.6349346   -0.8571654   -0.4127039
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.3438658   -0.5632281   -0.1245036
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -0.7769858   -0.9006585   -0.6533131
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -0.4936377   -0.7099383   -0.2773372
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.7052024    0.5907630    0.8196418
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.5536657    0.3120512    0.7952803
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.6256248    0.4523641    0.7988855
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -1.2128104   -1.3828921   -1.0427286
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.2346399   -1.4192239   -1.0500559
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.0547312   -1.2378260   -0.8716364
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.2842194    0.0362310    0.5322079
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -0.1555026   -0.2596596   -0.0513457
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                 0.0960954   -0.0607825    0.2529733


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
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.1351960   -0.5152970    0.2449050
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.2824644   -0.1782854    0.7432141
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.0534361   -0.4767132    0.3698409
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.2347912   -0.6732443    0.2036620
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.4122449   -0.7145336   -0.1099562
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.1305488   -0.4721521    0.2110545
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.5694603   -0.8925395   -0.2463811
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.1954192   -0.5127576    0.1219191
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.2463419   -0.5207071    0.0280233
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.2934840   -0.6357163    0.0487483
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.7157889   -1.1942389   -0.2373388
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2436027   -0.7283415    0.2411361
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.1054066   -0.4130697    0.2022564
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.1311426   -0.1868353    0.4491205
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.2497360   -0.5110818    0.0116097
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.1256699   -0.4183825    0.1670427
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3209392   -0.5574192   -0.0844592
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1206474   -0.4620121    0.2207172
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.5143149   -0.7460815   -0.2825483
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.2356676   -0.5366201    0.0652850
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.3140225   -0.5193963   -0.1086487
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.1044538   -0.3561419    0.1472342
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.1211548   -0.2702928    0.0279832
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0917518   -0.2353549    0.0518513
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.0880627   -0.1672435   -0.0088819
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0227625   -0.0765669    0.0310419
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.3308196   -0.4028376   -0.2588017
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.1271587   -0.1909636   -0.0633538
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.3400250   -0.5398630   -0.1401870
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.2223762   -0.4454392    0.0006868
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.4034669   -0.7408318   -0.0661021
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           -0.0198015   -0.4515917    0.4119888
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.0451430   -0.5815347    0.4912487
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.4721158   -1.0099673    0.0657356
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.5918111   -0.9180456   -0.2655767
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.4419462   -0.7984476   -0.0854448
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.5381092   -0.8170999   -0.2591184
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.2592964   -0.5339117    0.0153189
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.3197196   -0.6069546   -0.0324845
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.0516814   -0.4044183    0.3010556
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.3497161   -0.7386559    0.0392236
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.1211821   -0.4951433    0.2527790
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3561068   -0.6429386   -0.0692750
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1176336   -0.4512902    0.2160230
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.5734133   -0.8329540   -0.3138727
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1445036   -0.4776898    0.1886825
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.6678286   -0.8989230   -0.4367343
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.2002737   -0.5065337    0.1059864
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.4331200   -0.6844391   -0.1818008
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.1497719   -0.4572514    0.1577076
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1515367   -0.3691925    0.0661191
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0795776   -0.2496966    0.0905414
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0218295   -0.2763012    0.2326422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg            0.1580791   -0.0911320    0.4072903
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4397221   -0.7084057   -0.1710385
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.1881241   -0.4825313    0.1062831


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.0310392   -0.3385211    0.2764427
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0374455   -0.1522042    0.0773132
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.2767797   -0.5180749   -0.0354846
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2486237   -0.4400640   -0.0571835
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.1928370   -0.3493235   -0.0363505
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.1040910   -0.2030287   -0.0051533
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0139054   -0.1794683    0.1516576
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.2120171   -0.4581262    0.0340921
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2413059   -0.4446839   -0.0379279
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.3610051   -0.5491490   -0.1728611
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.1911439   -0.3436470   -0.0386407
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0376621   -0.0792818    0.0039576
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0080458   -0.0189681    0.0028766
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1033237   -0.1294016   -0.0772457
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.2694058   -0.4357928   -0.1030188
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.2648474   -0.5373539    0.0076590
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.1244898   -0.2757278    0.0267481
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.4619443   -0.7285540   -0.1953346
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2654906   -0.4316199   -0.0993612
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.1403500   -0.2876575    0.0069574
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0540469   -0.1321500    0.0240561
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1700227   -0.3316955   -0.0083499
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.4500120   -0.6727572   -0.2272669
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4518382   -0.6404015   -0.2632749
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.2664844   -0.4518127   -0.0811561
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0174637   -0.0514812    0.0165538
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0262971   -0.1027342    0.1553283
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.3309276   -0.5607488   -0.1011064
