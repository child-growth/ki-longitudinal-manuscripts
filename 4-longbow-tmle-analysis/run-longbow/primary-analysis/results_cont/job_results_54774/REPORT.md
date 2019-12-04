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

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        gagebrth             n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ------------------  -------  ------  -----------------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term        58      92  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  11      92  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term               23      92  haz              
Birth       ki1000108-IRC              INDIA                          Full or late term       238     369  haz              
Birth       ki1000108-IRC              INDIA                          Preterm                  36     369  haz              
Birth       ki1000108-IRC              INDIA                          Early term               95     369  haz              
Birth       ki1000109-EE               PAKISTAN                       Full or late term        11     240  haz              
Birth       ki1000109-EE               PAKISTAN                       Preterm                 182     240  haz              
Birth       ki1000109-EE               PAKISTAN                       Early term               47     240  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       162     732  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 257     732  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term              313     732  haz              
Birth       ki1101329-Keneba           GAMBIA                         Full or late term       734    1515  haz              
Birth       ki1101329-Keneba           GAMBIA                         Preterm                 235    1515  haz              
Birth       ki1101329-Keneba           GAMBIA                         Early term              546    1515  haz              
Birth       ki1119695-PROBIT           BELARUS                        Full or late term      7098   13890  haz              
Birth       ki1119695-PROBIT           BELARUS                        Preterm                 472   13890  haz              
Birth       ki1119695-PROBIT           BELARUS                        Early term             6320   13890  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term       341     617  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                  95     617  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      Early term              181     617  haz              
Birth       ki1135781-COHORTS          INDIA                          Full or late term       570    1293  haz              
Birth       ki1135781-COHORTS          INDIA                          Preterm                 285    1293  haz              
Birth       ki1135781-COHORTS          INDIA                          Early term              438    1293  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term      1164    3024  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                 649    3024  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term             1211    3024  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term     10944   21442  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                4514   21442  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term             5984   21442  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       212     347  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  52     347  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term               83     347  haz              
6 months    ki1000108-IRC              INDIA                          Full or late term       249     388  haz              
6 months    ki1000108-IRC              INDIA                          Preterm                  42     388  haz              
6 months    ki1000108-IRC              INDIA                          Early term               97     388  haz              
6 months    ki1000109-EE               PAKISTAN                       Full or late term        17     373  haz              
6 months    ki1000109-EE               PAKISTAN                       Preterm                 297     373  haz              
6 months    ki1000109-EE               PAKISTAN                       Early term               59     373  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       155     715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 251     715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term              309     715  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term      1167    1903  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 291    1903  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              445    1903  haz              
6 months    ki1101329-Keneba           GAMBIA                         Full or late term       658    1374  haz              
6 months    ki1101329-Keneba           GAMBIA                         Preterm                 207    1374  haz              
6 months    ki1101329-Keneba           GAMBIA                         Early term              509    1374  haz              
6 months    ki1119695-PROBIT           BELARUS                        Full or late term      8008   15761  haz              
6 months    ki1119695-PROBIT           BELARUS                        Preterm                 551   15761  haz              
6 months    ki1119695-PROBIT           BELARUS                        Early term             7202   15761  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term       389     713  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                 113     713  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      Early term              211     713  haz              
6 months    ki1135781-COHORTS          INDIA                          Full or late term       568    1312  haz              
6 months    ki1135781-COHORTS          INDIA                          Preterm                 299    1312  haz              
6 months    ki1135781-COHORTS          INDIA                          Early term              445    1312  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term      1028    2687  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                 573    2687  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term             1086    2687  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      8527   16010  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                3045   16010  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term             4438   16010  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       213     349  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  52     349  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term               84     349  haz              
24 months   ki1000108-IRC              INDIA                          Full or late term       250     390  haz              
24 months   ki1000108-IRC              INDIA                          Preterm                  42     390  haz              
24 months   ki1000108-IRC              INDIA                          Early term               98     390  haz              
24 months   ki1000109-EE               PAKISTAN                       Full or late term         7     167  haz              
24 months   ki1000109-EE               PAKISTAN                       Preterm                 131     167  haz              
24 months   ki1000109-EE               PAKISTAN                       Early term               29     167  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term        79     514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 208     514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term              227     514  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         5       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                1       6  haz              
24 months   ki1101329-Keneba           GAMBIA                         Full or late term       557    1156  haz              
24 months   ki1101329-Keneba           GAMBIA                         Preterm                 167    1156  haz              
24 months   ki1101329-Keneba           GAMBIA                         Early term              432    1156  haz              
24 months   ki1119695-PROBIT           BELARUS                        Full or late term      2024    4035  haz              
24 months   ki1119695-PROBIT           BELARUS                        Preterm                 137    4035  haz              
24 months   ki1119695-PROBIT           BELARUS                        Early term             1874    4035  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term       375     661  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                 107     661  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      Early term              179     661  haz              
24 months   ki1135781-COHORTS          INDIA                          Full or late term       565    1308  haz              
24 months   ki1135781-COHORTS          INDIA                          Preterm                 305    1308  haz              
24 months   ki1135781-COHORTS          INDIA                          Early term              438    1308  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term       938    2424  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                 513    2424  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term              973    2424  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      4327    8202  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                1604    8202  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term             2271    8202  haz              


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/86d3ff30-4a3a-4111-afdc-7782a81e0b3d/58783efd-9331-45ce-bb84-9120c3aaf933/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/86d3ff30-4a3a-4111-afdc-7782a81e0b3d/58783efd-9331-45ce-bb84-9120c3aaf933/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/86d3ff30-4a3a-4111-afdc-7782a81e0b3d/58783efd-9331-45ce-bb84-9120c3aaf933/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.9690585   -1.2770059   -0.6611110
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.8831072   -1.6671574   -0.0990571
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.9334477   -1.4028462   -0.4640492
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                -0.2643301   -0.4698541   -0.0588061
Birth       ki1000108-IRC              INDIA                          Preterm              NA                -0.9032593   -1.4745638   -0.3319548
Birth       ki1000108-IRC              INDIA                          Early term           NA                -0.1907673   -0.5218555    0.1403209
Birth       ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.4983809   -2.3037907    1.3070289
Birth       ki1000109-EE               PAKISTAN                       Preterm              NA                -1.9574204   -2.1628149   -1.7520260
Birth       ki1000109-EE               PAKISTAN                       Early term           NA                -1.8393610   -2.2517310   -1.4269910
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.5547215   -0.7026114   -0.4068316
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -1.3654620   -1.4781317   -1.2527923
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -0.7110500   -0.8149055   -0.6071946
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.2385590    0.1516930    0.3254251
Birth       ki1101329-Keneba           GAMBIA                         Preterm              NA                -0.6512361   -0.8330570   -0.4694152
Birth       ki1101329-Keneba           GAMBIA                         Early term           NA                 0.0480983   -0.0532748    0.1494714
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                 1.5142625    1.3601326    1.6683923
Birth       ki1119695-PROBIT           BELARUS                        Preterm              NA                 0.4158915    0.1420333    0.6897497
Birth       ki1119695-PROBIT           BELARUS                        Early term           NA                 1.1652417    0.9837089    1.3467744
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.2429644    0.1188121    0.3671166
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.4048099   -0.7014720   -0.1081477
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           NA                -0.0643205   -0.2315446    0.1029037
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.3942142   -0.4827458   -0.3056827
Birth       ki1135781-COHORTS          INDIA                          Preterm              NA                -0.9033044   -1.0430615   -0.7635473
Birth       ki1135781-COHORTS          INDIA                          Early term           NA                -0.6847089   -0.7833192   -0.5860987
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0003815   -0.0586615    0.0578985
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -0.6340083   -0.7310734   -0.5369432
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -0.2776989   -0.3347675   -0.2206303
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -1.2769317   -1.3004504   -1.2534130
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -2.2350594   -2.2797708   -2.1903480
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -1.7086056   -1.7392346   -1.6779766
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -1.3699285   -1.5512708   -1.1885862
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -1.5966371   -2.0589683   -1.1343059
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -1.2830918   -1.5699769   -0.9962066
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                -1.1270746   -1.2952615   -0.9588877
6 months    ki1000108-IRC              INDIA                          Preterm              NA                -1.6830622   -2.1685758   -1.1975486
6 months    ki1000108-IRC              INDIA                          Early term           NA                -1.2886381   -1.5258747   -1.0514015
6 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                -1.6000806   -2.1382330   -1.0619282
6 months    ki1000109-EE               PAKISTAN                       Preterm              NA                -2.1773013   -2.3083873   -2.0462152
6 months    ki1000109-EE               PAKISTAN                       Early term           NA                -1.7192568   -2.0263631   -1.4121505
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.8708367   -1.0286910   -0.7129823
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -1.4469047   -1.5702695   -1.3235399
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -1.1611927   -1.2627650   -1.0596205
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.4579163   -0.5225213   -0.3933113
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.7077095   -0.8434936   -0.5719255
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                -0.6478590   -0.7492346   -0.5464834
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.7838956   -0.8676482   -0.7001431
6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                -1.2739981   -1.4152794   -1.1327168
6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                -0.8722912   -0.9567496   -0.7878327
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.1847671    0.0891914    0.2803427
6 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                -0.3138373   -0.5455194   -0.0821552
6 months    ki1119695-PROBIT           BELARUS                        Early term           NA                 0.0532850   -0.0539711    0.1605410
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -1.6625235   -1.7600520   -1.5649950
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -2.1363363   -2.3440009   -1.9286718
6 months    ki1135781-COHORTS          GUATEMALA                      Early term           NA                -1.9853390   -2.1277389   -1.8429391
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.8685192   -0.9598783   -0.7771601
6 months    ki1135781-COHORTS          INDIA                          Preterm              NA                -1.1359727   -1.2584104   -1.0135349
6 months    ki1135781-COHORTS          INDIA                          Early term           NA                -0.9563815   -1.0549130   -0.8578500
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -1.0221102   -1.0878190   -0.9564014
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -1.3437561   -1.4397613   -1.2477509
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -1.1458583   -1.2093934   -1.0823231
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -1.1840979   -1.2118593   -1.1563366
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -1.6260349   -1.6713441   -1.5807257
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -1.3585127   -1.3945131   -1.3225123
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -2.4884758   -2.6216543   -2.3552973
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -2.6312426   -2.9113687   -2.3511164
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -2.5874371   -2.7754337   -2.3994404
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -1.7171033   -1.8322063   -1.6020002
24 months   ki1000108-IRC              INDIA                          Preterm              NA                -2.1535440   -2.4576781   -1.8494100
24 months   ki1000108-IRC              INDIA                          Early term           NA                -1.8260130   -2.0173850   -1.6346410
24 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                -2.7907143   -3.4336728   -2.1477558
24 months   ki1000109-EE               PAKISTAN                       Preterm              NA                -2.7506234   -2.9154457   -2.5858011
24 months   ki1000109-EE               PAKISTAN                       Early term           NA                -2.2766092   -2.5637372   -1.9894811
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -1.1816660   -1.3932189   -0.9701131
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -1.6202472   -1.7553575   -1.4851370
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -1.3680862   -1.4912542   -1.2449182
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -1.5681849   -1.6533653   -1.4830046
24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                -1.8688004   -2.0255943   -1.7120065
24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                -1.4925725   -1.5883103   -1.3968347
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.1244111   -0.5962044    0.3473822
24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                -0.3385260   -0.6729113   -0.0041406
24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                -0.1087172   -0.3021426    0.0847083
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -2.9318910   -3.0401887   -2.8235933
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -3.0645233   -3.2858019   -2.8432446
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                -3.1129667   -3.2645431   -2.9613904
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                -2.0521547   -2.1459225   -1.9583869
24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                -2.2418668   -2.3670421   -2.1166915
24 months   ki1135781-COHORTS          INDIA                          Early term           NA                -2.1303819   -2.2292706   -2.0314932
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -2.3323623   -2.4018675   -2.2628571
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -2.5127257   -2.6150679   -2.4103834
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -2.4507122   -2.5232106   -2.3782138
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -1.9394227   -1.9769131   -1.9019322
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -2.2228698   -2.2757913   -2.1699484
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -2.0122505   -2.0584975   -1.9660036


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3102981   -0.4751168   -0.1454794
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -1.8608750   -2.0482045   -1.6735455
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0278680   -0.0365315    0.0922674
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3269446    1.1683850    1.4855041
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.0530794   -0.0441925    0.1503513
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6072158   -0.6675691   -0.5468624
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2492460   -0.2884729   -0.2100192
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5980879   -1.6176172   -1.5785586
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.3856004   -1.5319935   -1.2392073
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2321263   -1.3660720   -1.0981806
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -2.0835567   -2.2027557   -1.9643578
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5419570   -0.5926042   -0.4913098
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.8948084   -0.9510697   -0.8385471
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1069986    0.0122286    0.2017686
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8315428   -1.9081267   -1.7549589
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.9630335   -1.0220763   -0.9039908
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1409862   -1.1830414   -1.0989310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3168751   -1.3402193   -1.2935309
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5319389   -2.6335015   -2.4303762
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7964915   -1.8912047   -1.7017782
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -2.6699900   -2.8138051   -2.5261749
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5800865   -1.6398819   -1.5202911
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1314048   -0.4282725    0.1654630
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.9911195   -3.0733804   -2.9088586
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.1289450   -2.1901830   -2.0677069
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.4144884   -2.4596605   -2.3693164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0156596   -2.0439781   -1.9873411


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level         estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ------------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.0859512   -0.7796148    0.9515172
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0356107   -0.5707588    0.6419803
Birth       ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.6389292   -1.2466339   -0.0312246
Birth       ki1000108-IRC              INDIA                          Early term           Full or late term     0.0735628   -0.3161667    0.4632922
Birth       ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       Preterm              Full or late term    -1.4590395   -3.2751100    0.3570310
Birth       ki1000109-EE               PAKISTAN                       Early term           Full or late term    -1.3409801   -3.1940590    0.5120989
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.8107404   -0.9965861   -0.6248948
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.1563285   -0.3367694    0.0241124
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.8897951   -1.0913485   -0.6882417
Birth       ki1101329-Keneba           GAMBIA                         Early term           Full or late term    -0.1904607   -0.3241168   -0.0568047
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    -1.0983710   -1.3358765   -0.8608654
Birth       ki1119695-PROBIT           BELARUS                        Early term           Full or late term    -0.3490208   -0.4719303   -0.2261113
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.6477742   -0.9690130   -0.3265355
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.3072848   -0.5146332   -0.0999365
Birth       ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Preterm              Full or late term    -0.5090902   -0.6745386   -0.3436417
Birth       ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.2904947   -0.4228098   -0.1581796
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.6336268   -0.7467563   -0.5204973
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.2773174   -0.3587482   -0.1958866
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    -0.9581277   -1.0091044   -0.9071510
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    -0.4316739   -0.4674489   -0.3958989
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.2267086   -0.7227268    0.2693096
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0868367   -0.2524154    0.4260888
6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.5559877   -1.0696847   -0.0422907
6 months    ki1000108-IRC              INDIA                          Early term           Full or late term    -0.1615635   -0.4515322    0.1284051
6 months    ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Preterm              Full or late term    -0.5772206   -1.1298171   -0.0246241
6 months    ki1000109-EE               PAKISTAN                       Early term           Full or late term    -0.1191762   -0.7361113    0.4977589
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.5760680   -0.7764955   -0.3756406
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.2903561   -0.4781355   -0.1025766
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.2497932   -0.3998943   -0.0996922
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.1899427   -0.3101947   -0.0696907
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.4901025   -0.6536580   -0.3265469
6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    -0.0883955   -0.2073931    0.0306020
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    -0.4986043   -0.7056904   -0.2915183
6 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    -0.1314821   -0.1997936   -0.0631705
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.4738128   -0.7034165   -0.2442091
6 months    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.3228154   -0.4955713   -0.1500596
6 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    -0.2674534   -0.4197546   -0.1151523
6 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.0878623   -0.2219162    0.0461916
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.3216459   -0.4375916   -0.2057002
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.1237481   -0.2146946   -0.0328015
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    -0.4419370   -0.4918107   -0.3920633
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    -0.1744148   -0.2138163   -0.1350132
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.1427668   -0.4532439    0.1677104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0989613   -0.3297389    0.1318163
24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.4364408   -0.7612901   -0.1115914
24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    -0.1089097   -0.3327767    0.1149573
24 months   ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       Preterm              Full or late term     0.0400909   -0.6236576    0.7038393
24 months   ki1000109-EE               PAKISTAN                       Early term           Full or late term     0.5141051   -0.1900526    1.2182628
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.4385812   -0.6898308   -0.1873317
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.1864202   -0.4313286    0.0584883
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.3006155   -0.4784158   -0.1228151
24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0756124   -0.0517875    0.2030123
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    -0.2141149   -0.7239919    0.2957622
24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.0156939   -0.3956522    0.4270401
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.1326323   -0.3789218    0.1136572
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.1810757   -0.3676993    0.0055479
24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    -0.1897121   -0.3440737   -0.0353504
24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.0782272   -0.2127933    0.0563389
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.1803634   -0.3040851   -0.0566417
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.1183499   -0.2188180   -0.0178818
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    -0.2834472   -0.3462488   -0.2206456
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    -0.0728278   -0.1270123   -0.0186434


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0078628   -0.1945519    0.2102775
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                -0.0459680   -0.1701923    0.0782563
Birth       ki1000109-EE               PAKISTAN                       Full or late term    NA                -1.3624941   -3.1182984    0.3933102
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.3547730   -0.4867871   -0.2227589
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.2106910   -0.2777488   -0.1436333
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.1873179   -0.2454238   -0.1292121
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.1898849   -0.2784448   -0.1013251
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.2130016   -0.2812560   -0.1447471
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.2488645   -0.2969678   -0.2007612
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.3211562   -0.3387754   -0.3035369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0156719   -0.1337782    0.1024344
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                -0.1050517   -0.2040375   -0.0060659
6 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.4834761   -1.0124829    0.0455306
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.3278417   -0.4665261   -0.1891573
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0840407   -0.1243743   -0.0437071
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.1109128   -0.1693562   -0.0524693
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0777684   -0.1107438   -0.0447931
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.1690193   -0.2398953   -0.0981432
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0945143   -0.1624171   -0.0266115
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.1188760   -0.1711375   -0.0666146
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.1327772   -0.1497855   -0.1157688
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0434631   -0.1241086    0.0371825
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0793882   -0.1521685   -0.0066079
24 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.1207243   -0.5112745    0.7527231
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.2595986   -0.4553918   -0.0638054
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0119016   -0.0733647    0.0495616
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0069937   -0.2084479    0.1944605
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0592285   -0.1318563    0.0133993
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0767902   -0.1451566   -0.0084239
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0821261   -0.1381636   -0.0260887
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0762369   -0.0985492   -0.0539247
