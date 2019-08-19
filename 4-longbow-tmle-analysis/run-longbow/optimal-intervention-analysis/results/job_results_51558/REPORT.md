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
![](/tmp/1d0bf298-d022-4e3f-a8b6-a82e0eb4596f/6d735afc-0342-4f14-b247-c960d65c2aa1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.8223861   -1.4574708   -0.1873013
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.7510103   -0.9809951   -0.5210254
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           1.6284536    1.4895746    1.7673326
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1638990   -1.3625039   -0.9652940
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.9273949   -1.2847318   -0.5700580
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.9016356   -1.0039240   -0.7993472
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6075687   -0.6794471   -0.5356903
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7299175   -0.7605642   -0.6992708
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.7203931   -0.9641226   -0.4766637
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.5277906   -0.6980365   -0.3575447
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.4938494   -0.8870248   -0.1006739
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.4437723   -0.6274118   -0.2601328
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.2390017    0.0733981    0.4046052
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1602881    0.0787315    0.2418447
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1058182   -0.2086640   -0.0029725
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5284035    0.4519725    0.6048345
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2600844    0.1212407    0.3989282
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6382115   -0.7684480   -0.5079751
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3948530   -0.4719658   -0.3177402
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5987692   -0.6311355   -0.5664029
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5987252   -0.7780281   -0.4194222
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.6578220   -0.7740926   -0.5415515
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4624239   -0.6996981   -0.2251497
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7556647   -0.8527429   -0.6585865
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.7020833    0.5726602    0.8315063
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2368939   -0.3391101   -0.1346778
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.6264275   -0.7158638   -0.5369912
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5700090   -0.6276955   -0.5123226
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2963682   -1.3390282   -1.2537083


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5788506   -0.9164861   -0.2412151
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0135366   -1.2024730   -0.8246002
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           1.6988437    1.6151574    1.7825300
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1463469   -1.3562674   -0.9364264
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0358042   -1.1559527   -0.9156557
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -1.0098535   -1.0741510   -0.9455561
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7417745   -0.7882773   -0.6952718
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7269895   -0.7473033   -0.7066757
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.4909778   -0.6451612   -0.3367945
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5999270   -0.7403711   -0.4594828
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -0.7212766   -0.8346857   -0.6078675
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6667585   -0.8065718   -0.5269452
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0815655    0.0271217    0.1360092
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1978234   -0.2595091   -0.1361378
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5789633    0.5190130    0.6389137
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1864566    0.1024304    0.2704827
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.6460976   -0.7081436   -0.5840516
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2920968   -0.3336448   -0.2505489
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.6084556   -0.6302315   -0.5866796
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5369143   -0.6415957   -0.4322329
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7414957   -0.8350522   -0.6479392
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.7953404   -0.8531640   -0.7375168
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6863435    0.5745700    0.7981170
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2397001   -0.3082360   -0.1711643
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.5717874   -0.6260792   -0.5174955
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6079283   -0.6449298   -0.5709269
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3045023   -1.3312349   -1.2777698


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.2435355   -0.2599379    0.7470088
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2625263   -0.4075222   -0.1175304
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.0703901   -0.0474755    0.1882556
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0175520   -0.0542181    0.0893221
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1084093   -0.4358973    0.2190787
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.1082180   -0.1828979   -0.0335381
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1342058   -0.1906735   -0.0777381
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0029280   -0.0194983    0.0253543
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.2294153   -0.0012986    0.4601291
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.0721364   -0.1821973    0.0379246
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.2274272   -0.6141514    0.1592970
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2229862   -0.4606275    0.0146550
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2092394   -0.3558923   -0.0625866
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0787226   -0.1397480   -0.0176972
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0920052   -0.1731619   -0.0108485
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0505598   -0.0025234    0.1036430
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0736278   -0.1952913    0.0480357
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0078860   -0.1206680    0.1048960
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.1027562    0.0374255    0.1680868
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0096864   -0.0333029    0.0139301
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0618109   -0.1024481    0.2260698
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0836737   -0.1551127   -0.0122346
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1479263   -0.3661668    0.0703142
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0396757   -0.1161796    0.0368282
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0157398   -0.0699949    0.0385154
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0028062   -0.0784987    0.0728863
24 months   ki1135781-COHORTS          INDIA                          optimal              observed           0.0546401   -0.0144622    0.1237425
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0379193   -0.0841021    0.0082635
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0081341   -0.0392315    0.0229633
