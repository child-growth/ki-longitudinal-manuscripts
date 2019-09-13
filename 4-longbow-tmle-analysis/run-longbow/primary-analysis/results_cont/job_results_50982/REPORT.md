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

**Outcome Variable:** haz

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           47     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg           156     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        43     246
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg          121     184
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg            33     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        30     184
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg           36     198
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg           123     198
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg        39     198
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg           57     172
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg            52     172
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg        63     172
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg           99     276
Birth       ki0047075b-MAL-ED          PERU                           <52 kg           107     276
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg        70     276
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          166     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            23     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        39     228
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           52     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            40     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        29     121
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg           14     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg           141     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg        27     182
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg            2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg            23      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg         3      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg            4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg            20      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg         3      27
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg        10274   13767
Birth       ki1119695-PROBIT           BELARUS                        <52 kg          1131   13767
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg      2362   13767
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         5735   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          2358   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2897   10990
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg           99    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg          1019    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg       212    1330
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           71     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg           385     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        81     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          107     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg           369     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       106     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          184     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           383     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       148     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1255    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           325    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       409    1989
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg         9742   13068
6 months    ki1119695-PROBIT           BELARUS                        <52 kg          1083   13068
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg      2243   13068
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         4171    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          1675    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2096    7942
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           57     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg           308     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        64     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          111     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg           361     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       104     576
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          138     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           273     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       103     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       6
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg         3011    4013
24 months   ki1119695-PROBIT           BELARUS                        <52 kg           325    4013
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg       677    4013
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg          183     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg           132     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg       121     436
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg           77     578
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg           348     578
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg       153     578


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
![](/tmp/3d4f36a4-0a0d-4850-a347-428d6d1adb3b/7baa532d-56f8-4260-9b00-58f606eba06f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3d4f36a4-0a0d-4850-a347-428d6d1adb3b/7baa532d-56f8-4260-9b00-58f606eba06f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3d4f36a4-0a0d-4850-a347-428d6d1adb3b/7baa532d-56f8-4260-9b00-58f606eba06f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.8621853   -1.1595031   -0.5648674
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -1.1709525   -1.3428406   -0.9990643
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.7813310   -1.0842278   -0.4784343
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.6416076   -0.8451818   -0.4380333
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                -0.9041117   -1.2795542   -0.5286692
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                -0.9228647   -1.2799415   -0.5657879
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.6135250   -0.9434308   -0.2836192
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.1284941   -1.3060573   -0.9509309
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -1.0521525   -1.4150483   -0.6892568
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.6895356   -0.9670164   -0.4120549
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.9777014   -1.3150884   -0.6403144
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.4550622   -0.6742097   -0.2359147
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.6848902   -0.8869502   -0.4828302
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               NA                -1.1350543   -1.2942030   -0.9759056
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -0.9358808   -1.1665719   -0.7051897
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.5972964   -0.7474762   -0.4471167
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -1.2786552   -1.6254958   -0.9318146
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -0.8253763   -1.1787701   -0.4719826
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.6115570   -0.8977976   -0.3253163
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -1.2390505   -1.6277924   -0.8503085
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -1.0803120   -1.5713786   -0.5892453
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -1.2424079   -2.5613322    0.0765165
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -1.4583317   -1.6610679   -1.2555954
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -0.9587133   -1.3853382   -0.5320884
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 1.3976860    1.2364537    1.5589184
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.9247236    0.7594810    1.0899663
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 1.1849587    1.0342208    1.3356966
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.3509531   -0.3827646   -0.3191416
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.7756850   -0.8251398   -0.7262301
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.5721463   -0.6181725   -0.5261201
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.8965925   -1.1725102   -0.6206748
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -1.3588032   -1.5171055   -1.2005009
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.8073699   -1.0364999   -0.5782399
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.1092340   -0.0718010    0.2902689
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                -0.0788064   -0.4087140    0.2511012
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                -0.0442466   -0.4469226    0.3584295
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -1.0024387   -1.2486846   -0.7561929
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.2605705   -1.4165494   -1.1045916
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -1.2481665   -1.5207197   -0.9756134
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.3347699   -0.5165536   -0.1529862
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.8757596   -1.0962943   -0.6552249
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.4601635   -0.6313235   -0.2890034
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -1.0898299   -1.2680811   -0.9115788
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                -1.4919171   -1.6526214   -1.3312127
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -1.3138534   -1.5457352   -1.0819717
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.9651921   -1.1152283   -0.8151559
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -1.5266659   -1.8750282   -1.1783036
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -1.2197337   -1.5745439   -0.8649236
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -1.2355262   -1.4367542   -1.0342982
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -1.5553582   -1.7587634   -1.3519529
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -1.2189041   -1.4622192   -0.9755889
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.6205454   -0.8237135   -0.4173773
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -1.5396580   -1.6271161   -1.4521999
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -1.0665353   -1.1961445   -0.9369261
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.0574774   -1.3203078   -0.7946470
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -1.5384433   -1.6435541   -1.4333326
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.0925431   -1.2807324   -0.9043537
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.6929149   -0.8882446   -0.4975852
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.2652512   -1.3527398   -1.1777627
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.7857291   -0.9963669   -0.5750912
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -1.0734268   -1.2096413   -0.9372122
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -1.2909056   -1.3892878   -1.1925234
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -1.1511445   -1.3157437   -0.9865452
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.4434710   -0.5076640   -0.3792781
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.8667560   -0.9802611   -0.7532509
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.6082195   -0.7138641   -0.5025748
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.1670966    0.0684998    0.2656935
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                -0.2306464   -0.3843832   -0.0769096
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.0291830   -0.0737823    0.1321483
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.6955331   -0.7320144   -0.6590519
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.2703985   -1.3294391   -1.2113579
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.0195725   -1.0703887   -0.9687563
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -1.3618258   -1.5560325   -1.1676190
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -1.8246132   -1.9122689   -1.7369575
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                -1.4431763   -1.5793680   -1.3069846
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -1.4574575   -1.7125464   -1.2023687
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -2.1726841   -2.3359955   -2.0093728
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -1.5324578   -1.8143783   -1.2505373
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.0312478   -0.1801451    0.2426407
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                -0.0801793   -0.4812078    0.3208491
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.1866052   -0.2018181    0.5750285
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -1.4615638   -1.7735098   -1.1496178
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.9420832   -2.0994721   -1.7846943
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -1.8107927   -2.1280752   -1.4935101
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.9987196   -1.2043558   -0.7930834
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -1.6364633   -1.8569499   -1.4159768
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -1.2168694   -1.3958191   -1.0379198
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -1.4562358   -1.6445429   -1.2679287
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                -2.0092870   -2.2124274   -1.8061465
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -1.7546630   -2.0658353   -1.4434907
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -1.4927585   -1.6507962   -1.3347208
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -2.1606659   -2.5221002   -1.7992315
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -1.8003906   -2.1569304   -1.4438509
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -2.4209799   -2.6451531   -2.1968066
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -2.7754418   -2.9925411   -2.5583426
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -2.5583532   -2.8116786   -2.3050279
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.6686084   -1.9682998   -1.3689171
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -2.3358502   -2.4519713   -2.2197291
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.8583887   -2.1256350   -1.5911425
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -1.0128874   -1.1981155   -0.8276594
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.8654676   -1.9649100   -1.7660251
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -1.2213569   -1.4142099   -1.0285040
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -1.0649991   -1.2064980   -0.9235001
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -1.6261714   -1.7426744   -1.5096683
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -1.3634010   -1.5642893   -1.1625127
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0764879   -0.4077883    0.2548125
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                -0.4057696   -0.8141398    0.0026006
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                -0.2357739   -0.5905153    0.1189676
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -2.2036004   -2.4005671   -2.0066336
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -2.7639049   -2.9358460   -2.5919638
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -2.4478418   -2.6670348   -2.2286488
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -1.5683059   -1.7539551   -1.3826566
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -2.0308574   -2.1361783   -1.9255365
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                -1.6609314   -1.8180107   -1.5038521


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0455285   -1.1715695   -0.9194875
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.7397283   -0.8996215   -0.5798350
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0200505   -1.1624932   -0.8776078
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.7052907   -0.8627483   -0.5478331
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.9386232   -1.0507144   -0.8265319
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.6921930   -0.8218578   -0.5625282
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.9267769   -1.1425813   -0.7109724
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.3716484   -1.5489439   -1.1943528
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3264008    1.1675653    1.4852363
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4974449   -0.5203958   -0.4744941
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0532131   -0.0914567    0.1978830
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2148369   -1.3332371   -1.0964367
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3272488   -1.4359649   -1.2185326
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0728012   -1.2026830   -0.9429194
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3601215   -1.4821830   -1.2380600
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4006917   -1.4821813   -1.3192022
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0848568   -1.1613109   -1.0084028
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5424765   -0.5918460   -0.4931071
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1143882    0.0212298    0.2075466
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8994195   -0.9257684   -0.8730707
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6584707   -1.7281551   -1.5887863
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0418452   -0.1263708    0.2100613
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8439159   -1.9704751   -1.7173568
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6220299   -1.7590593   -1.4850005
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6058879   -2.7403043   -2.4714714
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5839236   -1.6672059   -1.5006413
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1312742   -0.4286264    0.1660780
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -2.4241972   -2.5387692   -2.3096253
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8747405   -1.9558403   -1.7936407


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.3087672   -0.6529522    0.0354177
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.0808542   -0.3440186    0.5057270
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.2625042   -0.6901273    0.1651190
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.2812571   -0.6939719    0.1314577
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.5149691   -0.8887935   -0.1411447
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.4386276   -0.9288731    0.0516180
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.2881658   -0.7268247    0.1504932
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg            0.2344734   -0.1200061    0.5889530
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.4501641   -0.7084797   -0.1918484
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.2509906   -0.5585436    0.0565625
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.6813588   -1.0604708   -0.3022467
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2280799   -0.6118493    0.1556895
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.6274935   -1.1149011   -0.1400859
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.4687550   -1.0402553    0.1027452
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.2159238   -1.5241154    1.0922678
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg            0.2836946   -1.2339188    1.8013079
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.4729624   -0.5697189   -0.3762059
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.2127274   -0.2659620   -0.1594927
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.4247319   -0.4835616   -0.3659021
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.2211932   -0.2771482   -0.1652382
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.4622107   -0.7832346   -0.1411868
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.0892226   -0.2678046    0.4462498
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.1880404   -0.5647623    0.1886815
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.1534805   -0.5955710    0.2886099
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.2581318   -0.5500590    0.0337954
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.2457278   -0.6134417    0.1219861
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.5409897   -0.8273504   -0.2546290
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.1253936   -0.3748932    0.1241061
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.4020871   -0.6423327   -0.1618416
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.2240235   -0.5169777    0.0689307
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.5614738   -0.9415750   -0.1813726
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2545416   -0.6402578    0.1311745
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3198320   -0.6065074   -0.0331566
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0166221   -0.2990874    0.3323317
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.9191126   -1.1250669   -0.7131583
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.4459898   -0.7185627   -0.1734170
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.4809659   -0.7645070   -0.1974249
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0350657   -0.3583860    0.2882546
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.5723363   -0.7858153   -0.3588574
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.0928142   -0.3804761    0.1948477
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.2174789   -0.3854785   -0.0494793
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.0777177   -0.2915395    0.1361040
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.4232850   -0.5536586   -0.2929114
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1647485   -0.2885714   -0.0409256
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.3977430   -0.5154480   -0.2800381
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1379136   -0.2036275   -0.0721997
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.5748654   -0.6442767   -0.5054540
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.3240393   -0.3865817   -0.2614970
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4627874   -0.6762895   -0.2492854
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.0813505   -0.3193084    0.1566073
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.7152266   -1.0189406   -0.4115126
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           -0.0750003   -0.4546126    0.3046120
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.1114271   -0.5682809    0.3454267
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg            0.1553574   -0.2876726    0.5983875
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.4805194   -0.8339319   -0.1271069
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.3492289   -0.7949062    0.0964484
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.6377437   -0.9393000   -0.3361874
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.2181499   -0.4911717    0.0548720
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.5530512   -0.8304034   -0.2756989
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.2984272   -0.6619488    0.0650944
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.6679074   -1.0629380   -0.2728767
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.3076321   -0.6979588    0.0826947
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3544619   -0.6681954   -0.0407285
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1373734   -0.4768490    0.2021023
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.6672417   -0.9893938   -0.3450897
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1897803   -0.5909710    0.2114104
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.8525801   -1.0626684   -0.6424918
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.2084695   -0.4757946    0.0588556
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.5611723   -0.7445244   -0.3778202
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.2984020   -0.5446104   -0.0521935
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.3292817   -0.6987578    0.0401943
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1592860   -0.5292978    0.2107258
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.5603045   -0.8215034   -0.2991056
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.2442414   -0.5391496    0.0506668
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4625516   -0.6763108   -0.2487923
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.0926255   -0.3361911    0.1509400


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.1833432   -0.4551521    0.0884657
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0981207   -0.2186498    0.0224084
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.4065255   -0.7093378   -0.1037132
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.0157551   -0.2464072    0.2148970
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.2537330   -0.4120119   -0.0954540
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0948966   -0.1797081   -0.0100851
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.3152199   -0.5668466   -0.0635932
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.1292405   -1.4057037    1.1472228
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0712852   -0.0822922   -0.0602783
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1464918   -0.1689643   -0.1240194
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.3090853   -0.5648632   -0.0533074
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0560208   -0.1603706    0.0483290
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.2123982   -0.4485509    0.0237546
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2262894   -0.3807020   -0.0718767
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.2374188   -0.3810991   -0.0937386
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.1076091   -0.1930661   -0.0221520
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1245953   -0.2835251    0.0343346
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.7801463   -0.9779666   -0.5823260
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.3499047   -0.5937673   -0.1060421
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.3919419   -0.5699103   -0.2139736
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.1252516   -0.2454695   -0.0050336
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0990055   -0.1371169   -0.0608942
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0527084   -0.0676558   -0.0377610
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.2038864   -0.2296031   -0.1781697
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.2966450   -0.4780015   -0.1152884
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.4856557   -0.7342983   -0.2370130
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.0105975   -0.1171810    0.1383760
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.3823521   -0.6731654   -0.0915389
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2764997   -0.4466347   -0.1063648
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.2938637   -0.4602949   -0.1274325
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.1292714   -0.2184972   -0.0400456
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1849080   -0.3718530    0.0020370
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.5121860   -0.7895510   -0.2348210
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.5710362   -0.7414616   -0.4006108
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.3645340   -0.4931973   -0.2358707
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0547863   -0.1292083    0.0196357
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.2205969   -0.3607178   -0.0804760
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.3064346   -0.4854069   -0.1274624
