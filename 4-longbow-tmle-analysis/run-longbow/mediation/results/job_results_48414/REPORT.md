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
![](/tmp/acd17a47-7cc6-4837-859d-72bf243e49a3/7bd35e25-1197-4aa3-9646-346aab7f2976/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/acd17a47-7cc6-4837-859d-72bf243e49a3/7bd35e25-1197-4aa3-9646-346aab7f2976/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/acd17a47-7cc6-4837-859d-72bf243e49a3/7bd35e25-1197-4aa3-9646-346aab7f2976/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.1201200   -0.4648776    0.2246375
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -0.2328840   -0.3864994   -0.0792685
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                 0.1728621   -0.1288497    0.4745739
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 1.0084826    0.7996933    1.2172719
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 1.0626835    0.6837072    1.4416598
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.7869662    0.4209524    1.1529799
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.4327205   -0.6782692   -0.1871718
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -0.8380747   -1.0125964   -0.6635531
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -0.5215314   -0.7695546   -0.2735082
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.3400036    0.1083353    0.5716718
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.1936420   -0.4199105    0.0326264
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                 0.1704571   -0.0368133    0.3777275
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 1.2894594    1.0855957    1.4933230
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                 0.9816149    0.7984070    1.1648228
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                 0.9183196    0.6556577    1.1809814
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.6374906    0.4602427    0.8147385
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -0.0402500   -0.4768422    0.3963422
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                 0.3864744   -0.0550914    0.8280401
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.5576616    0.3426185    0.7727047
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                 0.4209114    0.2002764    0.6415464
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.6649261    0.4329443    0.8969080
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.4554415   -0.8076249   -0.1032581
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -0.7051776   -0.8330346   -0.5773205
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -0.5811114   -0.7337729   -0.4284500
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.1788139   -0.3892730    0.0316452
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -0.5164836   -0.6212174   -0.4117498
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.3321153   -0.6005253   -0.0637053
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.1495575   -0.0698309    0.3689459
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -0.3744182   -0.4750969   -0.2737394
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.0725695   -0.2893279    0.1441888
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.1982989    0.0187080    0.3778899
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -0.0876080   -0.1902183    0.0150024
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                 0.1199460   -0.0588409    0.2987330
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1115326    0.0440935    0.1789717
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                 0.0009011   -0.1276392    0.1294415
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.0140473   -0.1104626    0.1385572
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.5917394    0.5331554    0.6503234
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.5022544    0.4009850    0.6035238
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.5643900    0.4929750    0.6358050
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.3931245    0.3563266    0.4299224
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                 0.0712874    0.0086913    0.1338834
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                 0.2722642    0.2195496    0.3249789
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.7248700    0.5491026    0.9006375
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                 0.3766474    0.2822626    0.4710322
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                 0.4888574    0.3518512    0.6258637
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.5514855   -0.8491246   -0.2538463
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -0.9570545   -1.1032169   -0.8108921
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.6009089   -0.9140058   -0.2878120
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.5477639    0.2874976    0.8080302
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 0.4421434   -0.0245097    0.9087965
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                -0.0190142   -0.4358199    0.3977915
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.4764561   -0.7621787   -0.1907336
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.0859238   -1.2373153   -0.9345323
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -0.9308027   -1.1361579   -0.7254475
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.1105150   -0.3203766    0.0993466
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.6371929   -0.8181800   -0.4562058
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.3856826   -0.5658829   -0.2054824
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.3035325    0.1365505    0.4705146
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                -0.0250066   -0.2425070    0.1924939
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                 0.1928318   -0.0915947    0.4772583
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.4720622    0.3340625    0.6100619
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                 0.0707267   -0.2891884    0.4306418
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                 0.3463841    0.0068158    0.6859524
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2077352    0.0123124    0.4031580
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.1198310   -0.3225683    0.0829064
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.0659851   -0.1897267    0.3216970
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.5239732   -0.7614017   -0.2865447
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -1.0332722   -1.1502054   -0.9163391
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.6283810   -0.8698637   -0.3868982
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4389463   -0.6438622   -0.2340304
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.1031801   -1.1986236   -1.0077365
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.6211131   -0.8419862   -0.4002399
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.3161331   -0.5353916   -0.0968746
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -0.7665615   -0.8869636   -0.6461595
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -0.5286440   -0.7482308   -0.3090571
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.7069729    0.5931786    0.8207671
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.5586726    0.3326042    0.7847411
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.6235776    0.4460163    0.8011389
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -1.2145370   -1.3799390   -1.0491350
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.2252962   -1.4054530   -1.0451393
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.0684998   -1.2597894   -0.8772102
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.2640920    0.0164490    0.5117349
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -0.1597942   -0.2638691   -0.0557194
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                 0.0655299   -0.0928540    0.2239138


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
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.1127639   -0.4906237    0.2650958
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.2929821   -0.1652009    0.7511652
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg            0.0542009   -0.3791942    0.4875961
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.2215164   -0.6431652    0.2001324
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.4053542   -0.7065565   -0.1041520
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.0888109   -0.4390024    0.2613806
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.5336456   -0.8575672   -0.2097240
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.1695465   -0.4802575    0.1411645
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.3078445   -0.5828904   -0.0327986
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.3711398   -0.7044904   -0.0377892
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.6777406   -1.1495511   -0.2059301
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2510162   -0.7272991    0.2252667
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.1367502   -0.4451171    0.1716167
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.1072646   -0.2096436    0.4241727
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.2497360   -0.5110818    0.0116097
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.1256699   -0.4183825    0.1670427
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3376697   -0.5729011   -0.1024383
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1533014   -0.4950425    0.1884396
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.5239757   -0.7657595   -0.2821918
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.2221270   -0.5305899    0.0863358
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.2859069   -0.4920990   -0.0797148
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.0783529   -0.3316281    0.1749224
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.1106315   -0.2556417    0.0343787
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0974853   -0.2388846    0.0439139
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.0894850   -0.1669690   -0.0120010
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0273494   -0.0780068    0.0233080
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.3218371   -0.3942204   -0.2494538
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.1208603   -0.1849637   -0.0567568
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.3482226   -0.5479661   -0.1484791
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.2360126   -0.4592660   -0.0127592
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.4055691   -0.7367580   -0.0743802
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           -0.0494235   -0.4824522    0.3836053
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.1056205   -0.6371511    0.4259101
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.5667781   -1.0579060   -0.0756501
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.6094676   -0.9331044   -0.2858309
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.4543466   -0.8066930   -0.1020001
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.5266779   -0.8049284   -0.2484274
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.2751676   -0.5515051    0.0011699
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.3285391   -0.6029745   -0.0541037
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.1107007   -0.4423700    0.2209685
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.4013355   -0.7874940   -0.0151769
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.1256781   -0.4917803    0.2404240
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3275662   -0.6099615   -0.0451708
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1417501   -0.4604049    0.1769048
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.5092990   -0.7734433   -0.2451547
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1044077   -0.4425989    0.2337835
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.6642337   -0.8899069   -0.4385606
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.1821667   -0.4831217    0.1187882
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.4504284   -0.6997062   -0.2011506
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.2125108   -0.5223385    0.0973169
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1483002   -0.3514141    0.0548136
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0833953   -0.2571944    0.0904038
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0107592   -0.2573036    0.2357853
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg            0.1460372   -0.1069234    0.3989978
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4238862   -0.6922601   -0.1555123
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.1985620   -0.4920356    0.0949116


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.0196760   -0.3248016    0.2854497
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0439874   -0.1597152    0.0717405
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.2660738   -0.5068169   -0.0253307
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2289584   -0.4171894   -0.0407274
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.2330807   -0.3967636   -0.0693978
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.1084477   -0.2060491   -0.0108463
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0406103   -0.2111227    0.1299021
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.2120171   -0.4581262    0.0340921
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2600963   -0.4630045   -0.0571880
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.3575466   -0.5550159   -0.1600773
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.1685367   -0.3224151   -0.0146583
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0335065   -0.0747750    0.0077619
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0083322   -0.0194966    0.0028322
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0977853   -0.1241105   -0.0714601
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.2730301   -0.4394434   -0.1066169
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.2693400   -0.5357453   -0.0029348
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.1194901   -0.2725128    0.0335326
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.4761102   -0.7402484   -0.2119720
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2659324   -0.4326497   -0.0992150
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.1836320   -0.3363369   -0.0309271
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0624468   -0.1404576    0.0155640
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1576417   -0.3126517   -0.0026317
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.3876058   -0.6149028   -0.1603089
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4475528   -0.6302054   -0.2649002
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.2942171   -0.4785705   -0.1098636
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0192342   -0.0545213    0.0160529
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0280237   -0.0969376    0.1529849
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.3108002   -0.5401235   -0.0814768
