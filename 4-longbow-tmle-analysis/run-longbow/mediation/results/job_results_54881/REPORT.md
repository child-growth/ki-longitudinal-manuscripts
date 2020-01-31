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
* meducyrs
* feducyrs
* hhwealth_quart
* W_nchldlt5
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
* delta_W_nchldlt5
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
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           46     241  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg           154     241  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        41     241  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg          137     208  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg            37     208  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        34     208  whz              
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg           40     235  whz              
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg           146     235  whz              
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg        49     235  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg           79     236  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg            75     236  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg        82     236  whz              
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg          100     272  whz              
6 months    ki0047075b-MAL-ED          PERU                           <52 kg           107     272  whz              
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg        65     272  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          179     249  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            29     249  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        41     249  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           94     247  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            95     247  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        58     247  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg          103    1329  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg          1011    1329  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg       215    1329  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           71     537  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg           385     537  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        81     537  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          108     602  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg           385     602  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       109     602  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          184     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           383     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       148     715  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1255    1988  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           324    1988  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       409    1988  whz              
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg         9740   13065  whz              
6 months    ki1119695-PROBIT           BELARUS                        <52 kg          1083   13065  whz              
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg      2242   13065  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         4255    8110  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          1713    8110  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2142    8110  whz              
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg          114     837  whz              
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg           504     837  whz              
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg       219     837  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          408   16775  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg         15216   16775  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg      1151   16775  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           40     212  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg           135     212  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        37     212  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg          109     168  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg            28     168  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        31     168  whz              
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg           38     226  whz              
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg           141     226  whz              
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg        47     226  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg           76     228  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg            74     228  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg        78     228  whz              
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg           77     201  whz              
24 months   ki0047075b-MAL-ED          PERU                           <52 kg            75     201  whz              
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg        49     201  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          168     234  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            28     234  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        38     234  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           82     214  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            84     214  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        48     214  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           56     428  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg           308     428  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        64     428  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          112     578  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg           362     578  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       104     578  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          138     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           273     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       103     514  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            4       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       6  whz              
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg         2958    3950  whz              
24 months   ki1119695-PROBIT           BELARUS                        <52 kg           322    3950  whz              
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg       670    3950  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg          170     421  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg           132     421  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg       119     421  whz              
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg           73     562  whz              
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg           337     562  whz              
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg       152     562  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          195    8598  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg          7835    8598  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg       568    8598  whz              


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
![](/tmp/b9079f83-10f1-4cd9-812e-208a2018fd7f/1a7f5576-d002-4226-97d0-5e62dd530205/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b9079f83-10f1-4cd9-812e-208a2018fd7f/1a7f5576-d002-4226-97d0-5e62dd530205/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b9079f83-10f1-4cd9-812e-208a2018fd7f/1a7f5576-d002-4226-97d0-5e62dd530205/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.0708009   -0.4207533    0.2791516
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -0.2306930   -0.3826694   -0.0787165
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                 0.1701839   -0.1458355    0.4862034
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 1.0166565    0.8113257    1.2219873
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 1.0342825    0.6941825    1.3743825
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.7782469    0.3551050    1.2013889
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.4282186   -0.6593886   -0.1970486
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -0.8429974   -1.0199154   -0.6660794
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -0.5138644   -0.7621347   -0.2655941
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.3581251    0.1275452    0.5887051
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.2084707   -0.4346705    0.0177292
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                 0.1844197   -0.0253367    0.3941761
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 1.2970313    1.0893304    1.5047321
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                 0.9511480    0.7731970    1.1290989
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                 0.9053076    0.6302635    1.1803518
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.6224088    0.4435948    0.8012228
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                 0.0083231   -0.4543597    0.4710058
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                 0.4473738    0.0041413    0.8906063
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.5276207    0.3163463    0.7388951
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                 0.4468202    0.2195547    0.6740858
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.6886321    0.4411287    0.9361355
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.4525003   -0.7801354   -0.1248652
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -0.6873937   -0.8037546   -0.5710329
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -0.6622940   -0.8400062   -0.4845819
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.1712093   -0.3823558    0.0399371
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -0.5224288   -0.6282452   -0.4166125
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.3121712   -0.5788765   -0.0454659
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.2116717   -0.0055709    0.4289143
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -0.3357584   -0.4337311   -0.2377858
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.0918996   -0.2946243    0.1108251
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.2181324    0.0440349    0.3922299
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -0.0938357   -0.1977142    0.0100427
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                 0.1291207   -0.0512663    0.3095077
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1172288    0.0497726    0.1846851
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                 0.0018154   -0.1317176    0.1353484
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.0256495   -0.1001767    0.1514758
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.5922307    0.5334527    0.6510086
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.5137431    0.4102845    0.6172016
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.5679985    0.4935354    0.6424616
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.4009952    0.3648513    0.4371390
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                 0.0729583    0.0106807    0.1352360
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                 0.2699552    0.2181056    0.3218048
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.7257105    0.5478579    0.9035631
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                 0.3717810    0.2776058    0.4659561
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                 0.4899679    0.3521450    0.6277908
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.5119854   -0.6118424   -0.4121285
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                -0.5992274   -0.6194281   -0.5790267
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                -0.5576713   -0.6236824   -0.4916602
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.6064436   -0.9348132   -0.2780740
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -0.9358951   -1.0835250   -0.7882651
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.6152866   -0.9276709   -0.3029024
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.5607974    0.3045081    0.8170866
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 0.5088568    0.0570928    0.9606208
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.1856765   -0.2892220    0.6605751
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.5207559   -0.7910702   -0.2504417
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.0831458   -1.2350750   -0.9312166
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -0.8942414   -1.1037211   -0.6847616
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.1061173   -0.3195374    0.1073027
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.6522257   -0.8370783   -0.4673730
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.3408514   -0.5104178   -0.1712850
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.2671848    0.1040268    0.4303427
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                -0.1333042   -0.3559659    0.0893575
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                 0.2148477   -0.0794922    0.5091876
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.4298546    0.2900482    0.5696610
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                 0.1866843   -0.2052036    0.5785723
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                 0.3290469   -0.0086669    0.6667608
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2322808    0.0300785    0.4344832
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.1383677   -0.3386659    0.0619305
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.1072250   -0.1563331    0.3707831
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.5390839   -0.7831660   -0.2950019
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -1.0306548   -1.1480287   -0.9132808
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.6726273   -0.9130282   -0.4322264
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4162914   -0.6391162   -0.1934665
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.1004071   -1.1958654   -1.0049488
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.6311297   -0.8537957   -0.4084638
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.3443768   -0.5577769   -0.1309766
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -0.7794765   -0.8987672   -0.6601858
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -0.5175020   -0.7395010   -0.2955031
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.7062502    0.5924345    0.8200659
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.5729966    0.3468328    0.7991604
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.6255558    0.4377615    0.8133501
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -1.2003011   -1.3678132   -1.0327889
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.2511047   -1.4247122   -1.0774971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.0481130   -1.2438628   -0.8523632
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.2924084    0.0411107    0.5437062
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -0.1718698   -0.2750882   -0.0686515
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                 0.0626469   -0.0933514    0.2186451
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -1.2053265   -1.3352067   -1.0754464
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                -1.3049116   -1.3293547   -1.2804684
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                -1.2436137   -1.3349821   -1.1522454


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9648518    0.8004118    1.1292917
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7034149   -0.8300527   -0.5767771
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0548591    0.9328922    1.1768259
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5291499    0.3751396    0.6831602
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6660835   -0.8034722   -0.5286949
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1987071   -0.2815473   -0.1158669
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0780261    0.0247830    0.1312691
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5834072    0.5254491    0.6413653
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.2987004    0.2725093    0.3248915
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4518519    0.3806435    0.5230602
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5934435   -0.6129939   -0.5738931
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4443651    0.2404149    0.6483153
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9519248   -1.0678488   -0.8360007
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.3916417    0.2704414    0.5128421
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8914360   -0.9741797   -0.8086923
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6888304    0.5749159    0.8027449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1835154   -1.2835950   -1.0834359
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0466281   -0.1286250    0.0353688
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2974564   -1.3207535   -1.2741592


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.1598921   -0.5419752    0.2221911
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.2409848   -0.2297247    0.7116943
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg            0.0176260   -0.3830076    0.4182596
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.2384095   -0.7084757    0.2316566
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.4147788   -0.7062939   -0.1232636
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.0856458   -0.4256079    0.2543163
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.5665958   -0.8889410   -0.2442506
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.1737054   -0.4846821    0.1372713
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.3458833   -0.6190255   -0.0727411
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.3917236   -0.7368531   -0.0465942
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.6140857   -1.1115963   -0.1165752
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.1750350   -0.6542529    0.3041830
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0808005   -0.3915386    0.2299376
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.1610114   -0.1645769    0.4865996
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.2348934   -0.4782528    0.0084659
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.2097937   -0.4490184    0.0294310
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3512195   -0.5873226   -0.1151165
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1409619   -0.4823969    0.2004731
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.5474302   -0.7851231   -0.3097372
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.3035713   -0.6004742   -0.0066684
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.3119681   -0.5147435   -0.1091928
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.0890117   -0.3398206    0.1617973
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.1154134   -0.2649386    0.0341117
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0915793   -0.2343179    0.0511592
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.0784876   -0.1599645    0.0029893
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0242321   -0.0786892    0.0302249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.3280368   -0.3998216   -0.2562521
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.1310400   -0.1940576   -0.0680224
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.3539296   -0.5554575   -0.1524016
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.2357426   -0.4612123   -0.0102729
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           -0.0872420   -0.1883502    0.0138663
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           -0.0456859   -0.1686280    0.0772563
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.3294515   -0.6890022    0.0300993
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           -0.0088430   -0.4614925    0.4438064
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.0519406   -0.5698040    0.4659229
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.3751208   -0.9131235    0.1628818
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.5623899   -0.8728359   -0.2519438
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.3734854   -0.7163091   -0.0306618
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.5461083   -0.8276658   -0.2645509
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.2347341   -0.5062745    0.0368063
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.4004890   -0.6780357   -0.1229422
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.0523371   -0.3896454    0.2849712
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.2431702   -0.6593163    0.1729758
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.1008076   -0.4647076    0.2630924
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3706486   -0.6555896   -0.0857076
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1250558   -0.4568144    0.2067027
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.4915708   -0.7626459   -0.2204957
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1335434   -0.4764885    0.2094018
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.6841157   -0.9263735   -0.4418580
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.2148384   -0.5300846    0.1004078
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.4350997   -0.6794022   -0.1907973
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.1731253   -0.4805289    0.1342784
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1332536   -0.3356138    0.0691066
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0806944   -0.2657150    0.1043261
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0508036   -0.2925092    0.1909020
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg            0.1521881   -0.1066616    0.4110378
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4642783   -0.7345611   -0.1939955
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.2297616   -0.5257924    0.0662693
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           -0.0995850   -0.2317366    0.0325666
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           -0.0382872   -0.2021032    0.1255288


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.0668755   -0.3766698    0.2429189
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0518047   -0.1668208    0.0632113
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.2751963   -0.5036233   -0.0467693
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2476943   -0.4333834   -0.0620053
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.2421722   -0.4074556   -0.0768888
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0932589   -0.1917503    0.0052325
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0086006   -0.1592684    0.1764696
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.2135832   -0.4293050    0.0021386
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2761945   -0.4800695   -0.0723194
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4103788   -0.6067377   -0.2140199
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.1883702   -0.3385339   -0.0382065
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0392028   -0.0808255    0.0024200
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0088235   -0.0207853    0.0031383
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1022948   -0.1280662   -0.0765234
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.2738587   -0.4422631   -0.1054542
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.0814581   -0.1799643    0.0170482
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.2128488   -0.5073528    0.0816551
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.1164323   -0.2632410    0.0303764
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.4311689   -0.6807773   -0.1815604
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2687950   -0.4369490   -0.1006409
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.1559866   -0.3041923   -0.0077809
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0382128   -0.1166051    0.0401795
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1774833   -0.3368459   -0.0181208
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.3724951   -0.6055049   -0.1394853
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4751446   -0.6756594   -0.2746299
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.2659734   -0.4456730   -0.0862739
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0174198   -0.0529552    0.0181155
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0167856   -0.1104598    0.1440310
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.3390366   -0.5719354   -0.1061377
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.0921298   -0.2209233    0.0366636
