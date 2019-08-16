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

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        gagebrth             n_cell       n
----------  -------------------------  -----------------------------  ------------------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term        54      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  10      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term               23      87
Birth       ki1000108-IRC              INDIA                          Full or late term       213     328
Birth       ki1000108-IRC              INDIA                          Preterm                  32     328
Birth       ki1000108-IRC              INDIA                          Early term               83     328
Birth       ki1000109-EE               PAKISTAN                       Full or late term         0       1
Birth       ki1000109-EE               PAKISTAN                       Preterm                   1       1
Birth       ki1000109-EE               PAKISTAN                       Early term                0       1
Birth       ki1000304b-SAS-CompFeed    INDIA                          Full or late term         1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm                 151     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Early term               14     166
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term         6      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                   3      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term               14      23
Birth       ki1101329-Keneba           GAMBIA                         Full or late term       680    1401
Birth       ki1101329-Keneba           GAMBIA                         Preterm                 207    1401
Birth       ki1101329-Keneba           GAMBIA                         Early term              514    1401
Birth       ki1119695-PROBIT           BELARUS                        Full or late term      7071   13824
Birth       ki1119695-PROBIT           BELARUS                        Preterm                 468   13824
Birth       ki1119695-PROBIT           BELARUS                        Early term             6285   13824
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term       323     572
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                  78     572
Birth       ki1135781-COHORTS          GUATEMALA                      Early term              171     572
Birth       ki1135781-COHORTS          INDIA                          Full or late term       553    1229
Birth       ki1135781-COHORTS          INDIA                          Preterm                 259    1229
Birth       ki1135781-COHORTS          INDIA                          Early term              417    1229
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term      1135    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                 579    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term             1160    2874
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      8412   14828
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                2367   14828
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term             4049   14828
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       212     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  51     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term               83     346
6 months    ki1000108-IRC              INDIA                          Full or late term       249     388
6 months    ki1000108-IRC              INDIA                          Preterm                  42     388
6 months    ki1000108-IRC              INDIA                          Early term               97     388
6 months    ki1000109-EE               PAKISTAN                       Full or late term        25     376
6 months    ki1000109-EE               PAKISTAN                       Preterm                 243     376
6 months    ki1000109-EE               PAKISTAN                       Early term              108     376
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term        25    1325
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                1208    1325
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term               92    1325
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       155     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 251     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term              309     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term      1167    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 290    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              445    1902
6 months    ki1101329-Keneba           GAMBIA                         Full or late term       658    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                 207    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term              509    1374
6 months    ki1119695-PROBIT           BELARUS                        Full or late term      8005   15757
6 months    ki1119695-PROBIT           BELARUS                        Preterm                 551   15757
6 months    ki1119695-PROBIT           BELARUS                        Early term             7201   15757
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term       389     714
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                 114     714
6 months    ki1135781-COHORTS          GUATEMALA                      Early term              211     714
6 months    ki1135781-COHORTS          INDIA                          Full or late term       568    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                 299    1312
6 months    ki1135781-COHORTS          INDIA                          Early term              445    1312
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term      1028    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                 572    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term             1085    2685
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      6597   12464
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                2401   12464
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term             3466   12464
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       214     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  52     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term               84     350
24 months   ki1000108-IRC              INDIA                          Full or late term       250     390
24 months   ki1000108-IRC              INDIA                          Preterm                  42     390
24 months   ki1000108-IRC              INDIA                          Early term               98     390
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term        79     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 208     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term              227     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                1       6
24 months   ki1101329-Keneba           GAMBIA                         Full or late term       558    1157
24 months   ki1101329-Keneba           GAMBIA                         Preterm                 168    1157
24 months   ki1101329-Keneba           GAMBIA                         Early term              431    1157
24 months   ki1119695-PROBIT           BELARUS                        Full or late term      1990    3971
24 months   ki1119695-PROBIT           BELARUS                        Preterm                 136    3971
24 months   ki1119695-PROBIT           BELARUS                        Early term             1845    3971
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term       377     667
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                 109     667
24 months   ki1135781-COHORTS          GUATEMALA                      Early term              181     667
24 months   ki1135781-COHORTS          INDIA                          Full or late term       559    1298
24 months   ki1135781-COHORTS          INDIA                          Preterm                 303    1298
24 months   ki1135781-COHORTS          INDIA                          Early term              436    1298
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term       939    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                 517    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term              972    2428
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      3388    6470
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                1292    6470
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term             1790    6470


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
![](/tmp/6a44fc3e-943a-4d51-ab57-6605567974c8/0a44f620-bcab-4027-a167-923e0750b29c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6a44fc3e-943a-4d51-ab57-6605567974c8/0a44f620-bcab-4027-a167-923e0750b29c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6a44fc3e-943a-4d51-ab57-6605567974c8/0a44f620-bcab-4027-a167-923e0750b29c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.5093441   -0.9630957   -0.0555925
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.9236694   -1.9098144    0.0624757
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.7597309   -1.4173098   -0.1021521
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                -0.7695301   -1.0009205   -0.5381398
Birth       ki1000108-IRC              INDIA                          Preterm              NA                -1.7267064   -2.4350451   -1.0183678
Birth       ki1000108-IRC              INDIA                          Early term           NA                -1.3858899   -1.7461826   -1.0255973
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                 1.7182764    1.5976659    1.8388869
Birth       ki1101329-Keneba           GAMBIA                         Preterm              NA                 1.5170001    1.2761746    1.7578257
Birth       ki1101329-Keneba           GAMBIA                         Early term           NA                 1.7449925    1.6133053    1.8766797
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                -1.0895441   -1.3041079   -0.8749803
Birth       ki1119695-PROBIT           BELARUS                        Preterm              NA                -1.1761595   -1.4505480   -0.9017710
Birth       ki1119695-PROBIT           BELARUS                        Early term           NA                -1.2027204   -1.4336636   -0.9717772
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -1.0389071   -1.1999087   -0.8779054
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.9635464   -1.3156790   -0.6114138
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           NA                -1.0691510   -1.2764064   -0.8618955
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.9378923   -1.0378333   -0.8379513
Birth       ki1135781-COHORTS          INDIA                          Preterm              NA                -1.1249428   -1.2662690   -0.9836165
Birth       ki1135781-COHORTS          INDIA                          Early term           NA                -1.0328115   -1.1377466   -0.9278763
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.6034570   -0.6757288   -0.5311852
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -0.8922497   -0.9980082   -0.7864912
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -0.8044374   -0.8769793   -0.7318955
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.7086872   -0.7348460   -0.6825284
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -0.8013912   -0.8455274   -0.7572549
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -0.7222218   -0.7569565   -0.6874871
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.4855197   -0.6908517   -0.2801876
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.4690483   -0.8904045   -0.0476921
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.4513462   -0.7306734   -0.1720190
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                -0.5334274   -0.7041682   -0.3626865
6 months    ki1000108-IRC              INDIA                          Preterm              NA                -0.8195760   -1.3632032   -0.2759488
6 months    ki1000108-IRC              INDIA                          Early term           NA                -0.6059905   -0.8922106   -0.3197703
6 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.4766439   -0.8230215   -0.1302663
6 months    ki1000109-EE               PAKISTAN                       Preterm              NA                -0.7398560   -0.8852808   -0.5944311
6 months    ki1000109-EE               PAKISTAN                       Early term           NA                -0.7295453   -0.9425665   -0.5165241
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.9159325   -1.3198281   -0.5120369
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                -0.6804099   -0.8349442   -0.5258756
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                -0.3773053   -0.5547838   -0.1998267
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.2187806    0.0495508    0.3880104
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -0.0965873   -0.2342262    0.0410515
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                 0.0552840   -0.0631868    0.1737549
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1218958    0.0530177    0.1907739
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.0575745   -0.2038065    0.0886575
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                 0.0674751   -0.0457758    0.1807261
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.2597385   -0.3502581   -0.1692189
6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                -0.2061471   -0.3553942   -0.0569000
6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                -0.1128380   -0.2158966   -0.0097793
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.5927505    0.5314532    0.6540479
6 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                 0.5344788    0.3783111    0.6906466
6 months    ki1119695-PROBIT           BELARUS                        Early term           NA                 0.5671683    0.5020247    0.6323120
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.1788967    0.0624712    0.2953222
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                 0.1472438   -0.0693189    0.3638066
6 months    ki1135781-COHORTS          GUATEMALA                      Early term           NA                 0.2269164    0.0777533    0.3760794
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.6184354   -0.7126759   -0.5241949
6 months    ki1135781-COHORTS          INDIA                          Preterm              NA                -0.6201641   -0.7481642   -0.4921640
6 months    ki1135781-COHORTS          INDIA                          Early term           NA                -0.6960735   -0.8043320   -0.5878150
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.2639576   -0.3290106   -0.1989045
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -0.2708285   -0.3627000   -0.1789569
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -0.3267854   -0.3934447   -0.2601261
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.5909175   -0.6201932   -0.5616418
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -0.6269748   -0.6716692   -0.5822803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -0.6266229   -0.6645125   -0.5887332
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.5188654   -0.6556178   -0.3821130
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.7895302   -1.0918664   -0.4871940
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.4530373   -0.6435161   -0.2625584
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.6591151   -0.7748641   -0.5433661
24 months   ki1000108-IRC              INDIA                          Preterm              NA                -1.0475740   -1.3445590   -0.7505890
24 months   ki1000108-IRC              INDIA                          Early term           NA                -0.7483252   -0.9313452   -0.5653051
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.4329230   -0.6617126   -0.2041334
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -0.7447807   -0.8947872   -0.5947742
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -0.5547937   -0.7009206   -0.4086668
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.8053815   -0.8871991   -0.7235640
24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                -0.8490709   -1.0066346   -0.6915073
24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                -0.7556906   -0.8521980   -0.6591832
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.7108304    0.5750727    0.8465881
24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                 0.6234803    0.1857241    1.0612365
24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                 0.6720372    0.5468717    0.7972027
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.1712449   -0.2641887   -0.0783011
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.4269716   -0.5881527   -0.2657906
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                -0.2697406   -0.3963437   -0.1431375
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.5550043   -0.6353219   -0.4746867
24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                -0.6001800   -0.7148781   -0.4854819
24 months   ki1135781-COHORTS          INDIA                          Early term           NA                -0.5710807   -0.6665996   -0.4755619
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.5709875   -0.6287997   -0.5131752
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -0.6150576   -0.6955668   -0.5345484
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -0.6382799   -0.6983848   -0.5781750
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -1.2838533   -1.3215576   -1.2461490
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -1.3610939   -1.4208844   -1.3013035
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -1.2998714   -1.3494803   -1.2502626


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5788506   -0.9164861   -0.2412151
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0135366   -1.2024730   -0.8246002
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 1.6988437    1.6151574    1.7825300
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1463469   -1.3562674   -0.9364264
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0358042   -1.1559527   -0.9156557
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -1.0098535   -1.0741510   -0.9455561
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7417745   -0.7882773   -0.6952718
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7269895   -0.7473033   -0.7066757
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4909778   -0.6451612   -0.3367945
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5999270   -0.7403711   -0.4594828
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.7212766   -0.8346857   -0.6078675
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6667585   -0.8065718   -0.5269452
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0815655    0.0271217    0.1360092
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1978234   -0.2595091   -0.1361378
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5789633    0.5190130    0.6389137
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1864566    0.1024304    0.2704827
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.6460976   -0.7081436   -0.5840516
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2920968   -0.3336448   -0.2505489
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.6084556   -0.6302315   -0.5866796
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5369143   -0.6415957   -0.4322329
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7414957   -0.8350522   -0.6479392
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.7953404   -0.8531640   -0.7375168
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6863435    0.5745700    0.7981170
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2397001   -0.3082360   -0.1711643
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.5717874   -0.6260792   -0.5174955
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6079283   -0.6449298   -0.5709269
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3045023   -1.3312349   -1.2777698


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level         estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ------------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.4143253   -1.5012864    0.6726359
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.2503869   -1.0498724    0.5490987
Birth       ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.9571763   -1.7031101   -0.2112425
Birth       ki1000108-IRC              INDIA                          Early term           Full or late term    -0.6163598   -1.0438206   -0.1888990
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.2012762   -0.4705769    0.0680244
Birth       ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0267161   -0.1520213    0.2054535
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    -0.0866155   -0.3243490    0.1511180
Birth       ki1119695-PROBIT           BELARUS                        Early term           Full or late term    -0.1131764   -0.2571993    0.0308466
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.0753606   -0.3117031    0.4624244
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.0302439   -0.2929951    0.2325073
Birth       ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Preterm              Full or late term    -0.1870505   -0.3597078   -0.0143931
Birth       ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.0949192   -0.2400774    0.0502391
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.2887926   -0.4165978   -0.1609874
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.2009804   -0.3029547   -0.0990060
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    -0.0927040   -0.1431175   -0.0422904
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    -0.0135346   -0.0544830    0.0274138
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.0164714   -0.4530656    0.4860083
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0341735   -0.3124677    0.3808146
6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.2861486   -0.8564834    0.2841862
6 months    ki1000108-IRC              INDIA                          Early term           Full or late term    -0.0725631   -0.4056854    0.2605592
6 months    ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Preterm              Full or late term    -0.2632120   -0.6392360    0.1128119
6 months    ki1000109-EE               PAKISTAN                       Early term           Full or late term    -0.2529014   -0.6599066    0.1541039
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term     0.2355226   -0.2266407    0.6976859
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term     0.5386272    0.1398854    0.9373690
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.3153680   -0.5340837   -0.0966523
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.1634966   -0.3700804    0.0430872
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.1794703   -0.3412545   -0.0176861
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.0544207   -0.1871574    0.0783161
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     0.0535914   -0.1210788    0.2282615
6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.1469005    0.0098288    0.2839722
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    -0.0582717   -0.2120508    0.0955074
6 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    -0.0255822   -0.0629274    0.0117630
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.0316529   -0.2774479    0.2141421
6 months    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     0.0480197   -0.1409495    0.2369888
6 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    -0.0017287   -0.1607226    0.1572653
6 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.0776381   -0.2207113    0.0654351
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.0068709   -0.1195299    0.1057880
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.0628279   -0.1559449    0.0302892
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    -0.0360573   -0.0882298    0.0161152
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    -0.0357054   -0.0820846    0.0106739
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.2706648   -0.6026954    0.0613657
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0658281   -0.1691272    0.3007834
24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.3884589   -0.7069930   -0.0699248
24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    -0.0892101   -0.3069737    0.1285535
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.3118578   -0.5852647   -0.0384508
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.1218707   -0.3939548    0.1502133
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.0436894   -0.2212759    0.1338971
24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0496910   -0.0768849    0.1762668
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    -0.0873501   -0.5287959    0.3540957
24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    -0.0387932   -0.1620058    0.0844194
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.2557267   -0.4419707   -0.0694828
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.0984957   -0.2556019    0.0586105
24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    -0.0451757   -0.1847612    0.0944098
24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.0160765   -0.1406132    0.1084602
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.0440701   -0.1431369    0.0549967
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.0672924   -0.1507674    0.0161826
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    -0.0772406   -0.1482752   -0.0062061
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    -0.0160181   -0.0781466    0.0461103


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0695065   -0.3304742    0.1914613
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                -0.2440065   -0.3883507   -0.0996623
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0194327   -0.1060952    0.0672298
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0568029   -0.1320388    0.0184330
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0031029   -0.1025990    0.1088048
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0719612   -0.1438910   -0.0000315
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.1383175   -0.1950160   -0.0816190
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0183023   -0.0340025   -0.0026021
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0054582   -0.1255348    0.1146184
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                -0.0664996   -0.1767730    0.0437737
6 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.2446327   -0.5862721    0.0970067
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                 0.2491740   -0.1930983    0.6914463
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.1890184   -0.3396591   -0.0383777
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0403304   -0.0840863    0.0034256
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0619150   -0.0028115    0.1266416
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0137872   -0.0328939    0.0053195
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0075599   -0.0693230    0.0844427
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0276621   -0.0985753    0.0432510
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0281393   -0.0803415    0.0240629
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0175380   -0.0366991    0.0016230
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0180489   -0.1012707    0.0651729
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0823806   -0.1536098   -0.0111515
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.1774272   -0.3909400    0.0360856
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0100412   -0.0499394    0.0700217
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0244869   -0.0876372    0.0386634
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0684553   -0.1289967   -0.0079138
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0167831   -0.0786826    0.0451164
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0369409   -0.0832198    0.0093381
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0206490   -0.0466912    0.0053932
