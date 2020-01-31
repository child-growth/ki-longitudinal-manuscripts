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
* meducyrs
* feducyrs
* hhwealth_quart
* single
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* W_gagebrth
* W_birthwt
* W_birthlen
* vagbrth
* parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_vagbrth
* delta_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mwtkg         n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -----------  -------  ------  -----------------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           46     241  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg           154     241  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        41     241  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg          137     208  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg            37     208  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        34     208  haz              
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg           40     235  haz              
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg           146     235  haz              
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg        49     235  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg           79     236  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg            75     236  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg        82     236  haz              
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg          100     272  haz              
6 months    ki0047075b-MAL-ED          PERU                           <52 kg           107     272  haz              
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg        65     272  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          179     249  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            29     249  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        41     249  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           94     247  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            95     247  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        58     247  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg          103    1331  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg          1014    1331  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg       214    1331  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           71     537  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg           385     537  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        81     537  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          109     603  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg           385     603  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       109     603  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          184     715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           383     715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       148     715  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1255    1989  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           325    1989  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       409    1989  haz              
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg         9742   13068  haz              
6 months    ki1119695-PROBIT           BELARUS                        <52 kg          1083   13068  haz              
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg      2243   13068  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         4363    8254  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          1726    8254  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2165    8254  haz              
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg          114     837  haz              
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg           504     837  haz              
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg       219     837  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          407   16802  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg         15243   16802  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg      1152   16802  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           40     212  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg           135     212  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        37     212  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg          109     168  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg            28     168  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        31     168  haz              
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg           38     226  haz              
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg           141     226  haz              
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg        47     226  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg           76     228  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg            74     228  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg        78     228  haz              
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg           77     201  haz              
24 months   ki0047075b-MAL-ED          PERU                           <52 kg            75     201  haz              
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg        49     201  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          168     234  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            28     234  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        38     234  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           82     214  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            84     214  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        48     214  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           57     429  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg           308     429  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        64     429  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          111     577  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg           362     577  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       104     577  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          138     514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           273     514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       103     514  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            4       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       6  haz              
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg         3011    4013  haz              
24 months   ki1119695-PROBIT           BELARUS                        <52 kg           325    4013  haz              
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg       677    4013  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg          833    1588  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg           334    1588  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg       421    1588  haz              
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg           77     578  haz              
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg           348     578  haz              
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg       153     578  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          197    8627  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg          7859    8627  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg       571    8627  haz              


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
![](/tmp/c09ea787-eab0-4c9f-a7f2-af704928086f/336a9aa1-dcb6-4b5d-a3f8-fd2fa96464e3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c09ea787-eab0-4c9f-a7f2-af704928086f/336a9aa1-dcb6-4b5d-a3f8-fd2fa96464e3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c09ea787-eab0-4c9f-a7f2-af704928086f/336a9aa1-dcb6-4b5d-a3f8-fd2fa96464e3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -1.0016403   -1.2679245   -0.7353560
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -1.3640909   -1.5137043   -1.2144776
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.8402339   -1.0720016   -0.6084662
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.0674672   -0.1096506    0.2445851
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                -0.0685112   -0.4021805    0.2651582
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.0645711   -0.3291658    0.4583081
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.9991287   -1.2404790   -0.7577783
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.2470019   -1.4027017   -1.0913022
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -1.2032419   -1.4779933   -0.9284905
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.3516562   -0.5319782   -0.1713343
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.8584221   -1.0711599   -0.6456843
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.4769509   -0.6522186   -0.3016831
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -1.1727471   -1.3552934   -0.9902007
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                -1.4338091   -1.6050049   -1.2626133
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -1.3165078   -1.5546854   -1.0783302
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.9844667   -1.1358859   -0.8330476
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -1.4506804   -1.8384959   -1.0628650
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -1.2077124   -1.5745329   -0.8408919
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -1.2353652   -1.4313977   -1.0393327
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -1.5799423   -1.7769400   -1.3829445
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -1.2998801   -1.5409901   -1.0587702
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.8087737   -1.0111626   -0.6063849
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -1.5235616   -1.6099376   -1.4371857
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -1.0783960   -1.2346497   -0.9221423
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.1307618   -1.3968872   -0.8646364
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -1.5205257   -1.6234494   -1.4176020
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.1357460   -1.3273889   -0.9441030
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.7766815   -0.9582301   -0.5951330
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.2357140   -1.3213394   -1.1500886
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.8524800   -1.0600189   -0.6449410
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -1.1136793   -1.2533450   -0.9740135
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -1.2775095   -1.3732826   -1.1817364
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -1.1422222   -1.3173966   -0.9670478
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.4608369   -0.5243922   -0.3972817
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.8422913   -0.9546295   -0.7299532
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.5789977   -0.6882414   -0.4697539
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.1234506    0.0239200    0.2229813
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                -0.0308030   -0.1784689    0.1168629
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.1346314    0.0253002    0.2439626
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.7535904   -0.7889136   -0.7182671
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.1150248   -1.1719770   -1.0580726
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.9573165   -1.0060334   -0.9085995
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -1.3648413   -1.5566663   -1.1730163
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -1.8263963   -1.9140506   -1.7387419
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                -1.4419877   -1.5795037   -1.3044716
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -1.1318604   -1.2363479   -1.0273730
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                -1.3286548   -1.3518249   -1.3054847
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                -1.1784852   -1.2582209   -1.0987495
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -1.5419007   -1.7685077   -1.3152936
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -2.2161168   -2.3751176   -2.0571159
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -1.5562559   -1.8160309   -1.2964808
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.0119872   -0.1992878    0.2232621
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                -0.2734685   -0.7393722    0.1924352
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.2018475   -0.2167544    0.6204494
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -1.5509608   -1.8383705   -1.2635511
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.9933583   -2.1478014   -1.8389153
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -1.8390814   -2.1425026   -1.5356603
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.9942249   -1.1980566   -0.7903932
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -1.6290325   -1.8431503   -1.4149147
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -1.2728069   -1.4593137   -1.0863001
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -1.4525843   -1.6334028   -1.2717658
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                -1.9890765   -2.1785561   -1.7995970
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -1.7589572   -2.0927893   -1.4251250
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -1.5019409   -1.6596699   -1.3442119
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -2.1071768   -2.5234685   -1.6908852
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -1.8476700   -2.2278561   -1.4674838
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -2.4312363   -2.6406457   -2.2218268
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -2.8463931   -3.0709133   -2.6218729
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -2.5935765   -2.8697107   -2.3174423
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.7432604   -2.0460542   -1.4404666
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -2.3609114   -2.4759342   -2.2458887
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.9650704   -2.2210928   -1.7090480
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -1.1218754   -1.2975536   -0.9461972
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.8535862   -1.9545294   -1.7526429
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -1.2555728   -1.4601999   -1.0509456
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -1.0918928   -1.2473959   -0.9363896
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -1.5996073   -1.7127192   -1.4864953
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -1.4025474   -1.6172426   -1.1878522
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0918262   -0.4190966    0.2354442
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                -0.4045087   -0.7963158   -0.0127015
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                -0.2085909   -0.5281089    0.1109271
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -1.4587630   -1.5377163   -1.3798098
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.9067266   -2.0339241   -1.7795292
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.6574103   -1.7673153   -1.5475052
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -1.5923538   -1.7818148   -1.4028929
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -2.0468669   -2.1530491   -1.9406847
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                -1.6778095   -1.8381553   -1.5174637
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -1.8460555   -1.9552285   -1.7368825
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                -2.0295426   -2.0575145   -2.0015706
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                -1.8595451   -1.9557303   -1.7633598


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0497516   -0.0948051    0.1943083
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2059574   -1.3243030   -1.0876119
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3241023   -1.4325083   -1.2156964
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0727443   -1.2024880   -0.9430006
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4003907   -1.4819787   -1.3188027
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0895301   -1.1639589   -1.0151013
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5424765   -0.5918460   -0.4931071
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1143882    0.0212298    0.2075466
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8785195   -0.9045379   -0.8525011
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6584707   -1.7281551   -1.5887863
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3134847   -1.3366230   -1.2903464
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0059127   -0.1637934    0.1756188
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8844690   -2.0097879   -1.7591502
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6432229   -1.7795844   -1.5068615
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6002600   -1.6836163   -1.5169036
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1312742   -0.4286264    0.1660780
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6070497   -1.6645093   -1.5495902
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8854671   -1.9666281   -1.8043062
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0134183   -2.0410747   -1.9857620


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.3624507   -0.6687271   -0.0561742
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.1614064   -0.1919732    0.5147860
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.1359784   -0.5124120    0.2404553
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.0028961   -0.4377954    0.4320032
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.2478733   -0.5357215    0.0399750
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.2041132   -0.5698801    0.1616536
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.5067659   -0.7860032   -0.2275286
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.1252947   -0.3771913    0.1266020
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.2610620   -0.5124913   -0.0096327
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.1437607   -0.4449311    0.1574098
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.4662137   -0.8839815   -0.0484459
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2232456   -0.6207491    0.1742578
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3445771   -0.6214049   -0.0677493
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0645150   -0.3749149    0.2458850
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.7147879   -0.9107112   -0.5188646
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.2696223   -0.5322533   -0.0069913
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3897639   -0.6731149   -0.1064129
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0049841   -0.3310825    0.3211142
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.4590325   -0.6604761   -0.2575888
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.0757984   -0.3520629    0.2004661
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.1638303   -0.3333739    0.0057133
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.0285430   -0.2525342    0.1954482
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3814544   -0.5096694   -0.2532394
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1181607   -0.2435960    0.0072745
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1542537   -0.2592571   -0.0492502
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.0111808   -0.0614757    0.0838372
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.3614345   -0.4270293   -0.2958397
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.2037261   -0.2622695   -0.1451827
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4615550   -0.6725850   -0.2505250
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.0771464   -0.3143996    0.1601068
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           -0.1967944   -0.3007134   -0.0928754
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           -0.0466248   -0.1713279    0.0780783
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.6742161   -0.9495169   -0.3989152
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           -0.0143552   -0.3584056    0.3296953
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.2854557   -0.7979061    0.2269948
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg            0.1898604   -0.2812493    0.6609700
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.4423975   -0.7690157   -0.1157794
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.2881206   -0.7048643    0.1286231
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.6348076   -0.9300918   -0.3395234
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.2785820   -0.5551729   -0.0019911
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.5364922   -0.7998745   -0.2731100
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.3063729   -0.6862253    0.0734796
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.6052359   -1.0515846   -0.1588872
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.3457291   -0.7575979    0.0661397
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.4151569   -0.7222150   -0.1080987
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1623402   -0.5086468    0.1839663
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.6176511   -0.9390188   -0.2962833
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.2218101   -0.6154501    0.1718300
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.7317108   -0.9341422   -0.5292794
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.1336974   -0.4031480    0.1357533
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.5077145   -0.6995118   -0.3159172
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.3106546   -0.5757415   -0.0455677
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.3126825   -0.6600459    0.0346809
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1167647   -0.4623154    0.2287860
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.4479636   -0.5961159   -0.2998113
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.1986472   -0.3324539   -0.0648406
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4545131   -0.6714941   -0.2375321
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.0854557   -0.3337552    0.1628439
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           -0.1834871   -0.2939466   -0.0730275
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           -0.0134896   -0.1553980    0.1284188


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.2033528   -0.4467157    0.0400101
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0177156   -0.1182254    0.0827941
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.2068288   -0.4381419    0.0244843
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2099257   -0.3649473   -0.0549041
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.1513553   -0.3000980   -0.0026125
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0882776   -0.1747376   -0.0018175
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1333798   -0.2874614    0.0207019
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.5916169   -0.7845636   -0.3986703
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2766203   -0.5226357   -0.0306048
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.3128486   -0.4790541   -0.1466431
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.0849991   -0.2084543    0.0384561
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0816396   -0.1188959   -0.0443833
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0090624   -0.0238252    0.0057003
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1249291   -0.1488050   -0.1010533
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.2936295   -0.4727934   -0.1144655
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.1816243   -0.2823364   -0.0809122
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.4364956   -0.6571454   -0.2158457
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0060745   -0.1342977    0.1221488
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.3335082   -0.6008552   -0.0661612
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.3133628   -0.4835399   -0.1431857
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.2998867   -0.4630111   -0.1367622
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.1412820   -0.2315103   -0.0510537
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.2143245   -0.3843868   -0.0442622
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.4757975   -0.7545911   -0.1970039
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4783846   -0.6419525   -0.3148166
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.3493718   -0.4903864   -0.2083572
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0394480   -0.1117374    0.0328414
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1482867   -0.2029191   -0.0936544
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.2931133   -0.4756177   -0.1106089
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.1673628   -0.2746386   -0.0600870
