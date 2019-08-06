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
![](/tmp/34ab3aca-2286-4630-b351-9f920cac949b/0e684a8b-ed80-48ea-9e62-13937411167e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/34ab3aca-2286-4630-b351-9f920cac949b/0e684a8b-ed80-48ea-9e62-13937411167e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/34ab3aca-2286-4630-b351-9f920cac949b/0e684a8b-ed80-48ea-9e62-13937411167e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.9755619   -1.2811937   -0.6699301
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -1.3562397   -1.5104049   -1.2020744
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.8944998   -1.1236192   -0.6653804
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.0649520   -0.1119611    0.2418651
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                -0.0317320   -0.3635725    0.3001084
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.0890597   -0.2586524    0.4367718
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -1.0405510   -1.3072979   -0.7738040
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.2458024   -1.4023677   -1.0892371
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -1.2906792   -1.5724867   -1.0088716
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.3297547   -0.5148834   -0.1446260
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.8815723   -1.1001852   -0.6629594
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.4845071   -0.6622973   -0.3067170
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -1.2005326   -1.3731478   -1.0279173
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                -1.4411227   -1.6141929   -1.2680525
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -1.2727323   -1.5012555   -1.0442091
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.9712422   -1.1236647   -0.8188198
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -1.4472889   -1.8339975   -1.0605803
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -1.2170581   -1.5614653   -0.8726510
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -1.2606940   -1.4578645   -1.0635235
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -1.5595662   -1.7569008   -1.3622316
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -1.2080414   -1.4438182   -0.9722645
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.7356543   -0.9502115   -0.5210971
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -1.5143701   -1.6033615   -1.4253787
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -1.1361960   -1.2641623   -1.0082297
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.0966392   -1.3560390   -0.8372395
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -1.5384417   -1.6434616   -1.4334219
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.0903278   -1.2879123   -0.8927433
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.7926995   -0.9830026   -0.6023964
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.2425448   -1.3318650   -1.1532246
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.8463651   -1.0640668   -0.6286634
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -1.0810608   -1.2243050   -0.9378166
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -1.2650263   -1.3599432   -1.1701094
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -1.1474014   -1.3229588   -0.9718441
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.4694198   -0.5321762   -0.4066635
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.8221431   -0.9318984   -0.7123878
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.5822748   -0.6906570   -0.4738927
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.1199614    0.0210428    0.2188799
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.0169120   -0.1250588    0.1588828
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.1458404    0.0374717    0.2542091
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.7723590   -0.8081153   -0.7366027
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.1299775   -1.1867866   -1.0731683
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.9703867   -1.0193300   -0.9214434
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -1.3552691   -1.5466379   -1.1639003
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -1.8243299   -1.9120436   -1.7366162
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                -1.4400304   -1.5768278   -1.3032329
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -1.5459098   -1.7773875   -1.3144322
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -2.1811585   -2.3444311   -2.0178859
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -1.5084225   -1.7736310   -1.2432140
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.0264503   -0.1838551    0.2367557
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                -0.0888703   -0.5245603    0.3468196
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.2148111   -0.1769371    0.6065592
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -1.4617996   -1.7551074   -1.1684917
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.9518181   -2.1066233   -1.7970129
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -1.8309893   -2.1467033   -1.5152754
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.9875504   -1.1911735   -0.7839273
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -1.6099537   -1.8283447   -1.3915627
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -1.2408702   -1.4214043   -1.0603361
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -1.4021693   -1.5865622   -1.2177764
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                -1.9711917   -2.1551621   -1.7872213
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -1.7336728   -2.0452607   -1.4220848
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -1.4847920   -1.6425007   -1.3270834
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -2.1510715   -2.5170477   -1.7850953
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -1.8179455   -2.2263347   -1.4095564
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -2.4101138   -2.6169602   -2.2032675
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -2.8087357   -3.0303070   -2.5871645
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -2.6018224   -2.8809248   -2.3227199
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.6517652   -1.9451279   -1.3584026
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -2.3302876   -2.4458382   -2.2147369
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.8145628   -2.0820712   -1.5470545
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -1.0718335   -1.2452355   -0.8984316
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.8385168   -1.9381230   -1.7389106
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -1.2527033   -1.4661049   -1.0393017
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -1.0930042   -1.2448593   -0.9411491
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -1.6157693   -1.7292217   -1.5023169
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -1.3721707   -1.5851411   -1.1592003
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0875093   -0.4067007    0.2316822
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                -0.4005948   -0.8118060    0.0106164
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                -0.2187580   -0.5421867    0.1046707
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -2.2731877   -2.4594214   -2.0869539
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -2.7558690   -2.9269425   -2.5847955
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -2.4006309   -2.6133188   -2.1879430
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -1.6011681   -1.7857270   -1.4166091
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -2.0326118   -2.1379001   -1.9273236
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                -1.6675614   -1.8230302   -1.5120926


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
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
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.3806778   -0.7237975   -0.0375580
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.0810621   -0.3013814    0.4635056
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.0966840   -0.4719606    0.2785925
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg            0.0241077   -0.3626876    0.4109030
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.2052514   -0.5149900    0.1044871
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.2501282   -0.6382010    0.1379446
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.5518176   -0.8388147   -0.2648205
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.1547525   -0.4135390    0.1040340
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.2405902   -0.4856057    0.0044253
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.0721997   -0.3590852    0.2146858
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.4760467   -0.8918754   -0.0602179
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2458159   -0.6233120    0.1316801
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.2988722   -0.5751367   -0.0226076
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0526526   -0.2526684    0.3579737
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.7787158   -0.9867975   -0.5706342
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.4005417   -0.7031260   -0.0979574
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.4418025   -0.7214238   -0.1621812
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg            0.0063114   -0.3197297    0.3323525
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.4498453   -0.6602091   -0.2394815
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.0536656   -0.3429186    0.2355874
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.1839655   -0.3563232   -0.0116079
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.0663406   -0.2932468    0.1605655
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3527232   -0.4774689   -0.2279776
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1128550   -0.2367791    0.0110691
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1030493   -0.2060823   -0.0000164
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.0258791   -0.0409050    0.0926632
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.3576184   -0.4232799   -0.2919570
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.1980277   -0.2570294   -0.1390260
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4690608   -0.6798892   -0.2582324
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.0847613   -0.3206449    0.1511224
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.6352486   -0.9193285   -0.3511688
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.0374874   -0.3150404    0.3900151
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.1153206   -0.5982567    0.3676155
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg            0.1883608   -0.2549087    0.6316302
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.4900185   -0.8219580   -0.1580790
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.3691898   -0.8005117    0.0621321
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.6224034   -0.9199400   -0.3248667
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.2533198   -0.5235616    0.0169220
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.5690224   -0.8301673   -0.3078775
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.3315035   -0.6953773    0.0323703
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.6662795   -1.0659746   -0.2665843
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.3331535   -0.7716916    0.1053846
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3986219   -0.7017320   -0.0955118
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1917085   -0.5397265    0.1563094
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.6785223   -0.9925232   -0.3645214
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1627976   -0.5597876    0.2341924
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.7666833   -0.9660624   -0.5673041
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.1808698   -0.4554879    0.0937483
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.5227651   -0.7133289   -0.3322013
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.2791665   -0.5413706   -0.0169624
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.3130856   -0.6673107    0.0411396
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1312487   -0.4822733    0.2197758
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.4826813   -0.7353600   -0.2300027
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.1274433   -0.4087997    0.1539132
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4314437   -0.6438175   -0.2190700
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.0663933   -0.3074686    0.1746821


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.2301158   -0.5107437    0.0505120
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0117389   -0.1103364    0.0868587
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.1742859   -0.4295428    0.0809710
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2313046   -0.3918373   -0.0707720
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.1267162   -0.2661215    0.0126891
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.1015590   -0.1892800   -0.0138380
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0994275   -0.2532418    0.0543869
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.6650374   -0.8651862   -0.4648887
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.3107428   -0.5515215   -0.0699641
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.2921573   -0.4645022   -0.1198125
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.1176175   -0.2445200    0.0092850
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0730567   -0.1092046   -0.0369088
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0055731   -0.0191821    0.0080358
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1270605   -0.1513358   -0.1027853
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.3032016   -0.4817912   -0.1246121
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.3972034   -0.6223018   -0.1721050
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.0153949   -0.1081732    0.1389631
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.3821164   -0.6538779   -0.1103548
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2876689   -0.4562507   -0.1190871
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.3479302   -0.5143686   -0.1814918
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.1372379   -0.2276958   -0.0467800
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1957740   -0.3644307   -0.0271173
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.5290292   -0.7999234   -0.2581351
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.5120901   -0.6721314   -0.3520487
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.3365289   -0.4751233   -0.1979344
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0437649   -0.1067667    0.0192368
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1510096   -0.2821397   -0.0198794
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.2735724   -0.4513150   -0.0958298
