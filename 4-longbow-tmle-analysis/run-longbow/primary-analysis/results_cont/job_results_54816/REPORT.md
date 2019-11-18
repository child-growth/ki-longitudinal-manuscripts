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
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
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
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term        53      86  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  11      86  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term               22      86  whz              
Birth       ki1000108-IRC              INDIA                          Full or late term       213     328  whz              
Birth       ki1000108-IRC              INDIA                          Preterm                  32     328  whz              
Birth       ki1000108-IRC              INDIA                          Early term               83     328  whz              
Birth       ki1000109-EE               PAKISTAN                       Full or late term         9     177  whz              
Birth       ki1000109-EE               PAKISTAN                       Preterm                 132     177  whz              
Birth       ki1000109-EE               PAKISTAN                       Early term               36     177  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       160     707  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 240     707  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term              307     707  whz              
Birth       ki1101329-Keneba           GAMBIA                         Full or late term       709    1439  whz              
Birth       ki1101329-Keneba           GAMBIA                         Preterm                 206    1439  whz              
Birth       ki1101329-Keneba           GAMBIA                         Early term              524    1439  whz              
Birth       ki1119695-PROBIT           BELARUS                        Full or late term      7074   13830  whz              
Birth       ki1119695-PROBIT           BELARUS                        Preterm                 468   13830  whz              
Birth       ki1119695-PROBIT           BELARUS                        Early term             6288   13830  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term       323     572  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                  78     572  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      Early term              171     572  whz              
Birth       ki1135781-COHORTS          INDIA                          Full or late term       553    1229  whz              
Birth       ki1135781-COHORTS          INDIA                          Preterm                 259    1229  whz              
Birth       ki1135781-COHORTS          INDIA                          Early term              417    1229  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term      1135    2874  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                 579    2874  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term             1160    2874  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      9668   17161  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                2755   17161  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term             4738   17161  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       212     346  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  51     346  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term               83     346  whz              
6 months    ki1000108-IRC              INDIA                          Full or late term       249     388  whz              
6 months    ki1000108-IRC              INDIA                          Preterm                  42     388  whz              
6 months    ki1000108-IRC              INDIA                          Early term               97     388  whz              
6 months    ki1000109-EE               PAKISTAN                       Full or late term        17     375  whz              
6 months    ki1000109-EE               PAKISTAN                       Preterm                 299     375  whz              
6 months    ki1000109-EE               PAKISTAN                       Early term               59     375  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       155     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 251     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term              309     715  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term      1167    1902  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 290    1902  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              445    1902  whz              
6 months    ki1101329-Keneba           GAMBIA                         Full or late term       658    1374  whz              
6 months    ki1101329-Keneba           GAMBIA                         Preterm                 207    1374  whz              
6 months    ki1101329-Keneba           GAMBIA                         Early term              509    1374  whz              
6 months    ki1119695-PROBIT           BELARUS                        Full or late term      8006   15758  whz              
6 months    ki1119695-PROBIT           BELARUS                        Preterm                 551   15758  whz              
6 months    ki1119695-PROBIT           BELARUS                        Early term             7201   15758  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term       389     714  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                 114     714  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      Early term              211     714  whz              
6 months    ki1135781-COHORTS          INDIA                          Full or late term       568    1312  whz              
6 months    ki1135781-COHORTS          INDIA                          Preterm                 299    1312  whz              
6 months    ki1135781-COHORTS          INDIA                          Early term              445    1312  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term      1028    2685  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                 572    2685  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term             1085    2685  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      8511   15989  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                3047   15989  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term             4431   15989  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       214     350  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  52     350  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term               84     350  whz              
24 months   ki1000108-IRC              INDIA                          Full or late term       250     390  whz              
24 months   ki1000108-IRC              INDIA                          Preterm                  42     390  whz              
24 months   ki1000108-IRC              INDIA                          Early term               98     390  whz              
24 months   ki1000109-EE               PAKISTAN                       Full or late term         7     168  whz              
24 months   ki1000109-EE               PAKISTAN                       Preterm                 132     168  whz              
24 months   ki1000109-EE               PAKISTAN                       Early term               29     168  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term        79     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 208     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term              227     514  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         5       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                1       6  whz              
24 months   ki1101329-Keneba           GAMBIA                         Full or late term       558    1157  whz              
24 months   ki1101329-Keneba           GAMBIA                         Preterm                 168    1157  whz              
24 months   ki1101329-Keneba           GAMBIA                         Early term              431    1157  whz              
24 months   ki1119695-PROBIT           BELARUS                        Full or late term      1991    3972  whz              
24 months   ki1119695-PROBIT           BELARUS                        Preterm                 136    3972  whz              
24 months   ki1119695-PROBIT           BELARUS                        Early term             1845    3972  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term       377     667  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                 109     667  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      Early term              181     667  whz              
24 months   ki1135781-COHORTS          INDIA                          Full or late term       559    1298  whz              
24 months   ki1135781-COHORTS          INDIA                          Preterm                 303    1298  whz              
24 months   ki1135781-COHORTS          INDIA                          Early term              436    1298  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term       939    2428  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                 517    2428  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term              972    2428  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      4309    8173  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                1598    8173  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term             2266    8173  whz              


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
![](/tmp/9a39c748-bd66-4ae0-b622-d67bf3e8143b/0bb6d5f5-47bf-495c-b6c7-a29f11c59478/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9a39c748-bd66-4ae0-b622-d67bf3e8143b/0bb6d5f5-47bf-495c-b6c7-a29f11c59478/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9a39c748-bd66-4ae0-b622-d67bf3e8143b/0bb6d5f5-47bf-495c-b6c7-a29f11c59478/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.3322660   -0.7275796    0.0630477
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.7254285   -1.6608070    0.2099501
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.4773050   -1.0238137    0.0692038
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                -0.7676355   -0.9974423   -0.5378286
Birth       ki1000108-IRC              INDIA                          Preterm              NA                -1.6563311   -2.4030798   -0.9095823
Birth       ki1000108-IRC              INDIA                          Early term           NA                -1.4009852   -1.7551534   -1.0468170
Birth       ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.9300000   -1.8283144   -0.0316856
Birth       ki1000109-EE               PAKISTAN                       Preterm              NA                -0.2882955   -0.4939564   -0.0826345
Birth       ki1000109-EE               PAKISTAN                       Early term           NA                -0.3491667   -0.8202901    0.1219568
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.9530416   -1.1104431   -0.7956400
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -1.5459410   -1.6913733   -1.4005087
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -1.1584395   -1.2876515   -1.0292275
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                -1.2670074   -1.3584403   -1.1755745
Birth       ki1101329-Keneba           GAMBIA                         Preterm              NA                -1.2659701   -1.4317986   -1.1001416
Birth       ki1101329-Keneba           GAMBIA                         Early term           NA                -1.1690574   -1.2722433   -1.0658715
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                -1.0827340   -1.2965642   -0.8689037
Birth       ki1119695-PROBIT           BELARUS                        Preterm              NA                -1.2080097   -1.4672712   -0.9487482
Birth       ki1119695-PROBIT           BELARUS                        Early term           NA                -1.2090767   -1.4413086   -0.9768448
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -1.0373672   -1.1986510   -0.8760833
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.9494474   -1.3016179   -0.5972769
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           NA                -1.0751393   -1.2833234   -0.8669552
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.9454202   -1.0448484   -0.8459919
Birth       ki1135781-COHORTS          INDIA                          Preterm              NA                -1.1303514   -1.2726271   -0.9880757
Birth       ki1135781-COHORTS          INDIA                          Early term           NA                -1.0337259   -1.1376965   -0.9297553
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.6085235   -0.6806890   -0.5363580
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -0.8904415   -0.9960294   -0.7848536
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -0.8031802   -0.8756658   -0.7306946
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.7480078   -0.7729465   -0.7230691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -0.8869588   -0.9294436   -0.8444741
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -0.7850761   -0.8168234   -0.7533287
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.5085505   -0.7146816   -0.3024194
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.5880774   -1.0114215   -0.1647333
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.4728782   -0.7529473   -0.1928090
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                -0.5455531   -0.7142947   -0.3768115
6 months    ki1000108-IRC              INDIA                          Preterm              NA                -0.8161884   -1.3029504   -0.3294264
6 months    ki1000108-IRC              INDIA                          Early term           NA                -0.6535859   -0.9446605   -0.3625112
6 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.4694742   -0.9999140    0.0609655
6 months    ki1000109-EE               PAKISTAN                       Preterm              NA                -0.8248151   -0.9559263   -0.6937039
6 months    ki1000109-EE               PAKISTAN                       Early term           NA                -0.5824369   -0.8202524   -0.3446215
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.2256440    0.0549725    0.3963156
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -0.1113815   -0.2486791    0.0259161
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                 0.0567721   -0.0623599    0.1759041
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1206104    0.0517459    0.1894750
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.0406155   -0.1855407    0.1043097
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                 0.0692798   -0.0444736    0.1830331
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.2600654   -0.3503789   -0.1697518
6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                -0.2101136   -0.3572068   -0.0630205
6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                -0.1132931   -0.2166244   -0.0099618
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.5918181    0.5311897    0.6524465
6 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                 0.5352979    0.3771778    0.6934180
6 months    ki1119695-PROBIT           BELARUS                        Early term           NA                 0.5688411    0.5039420    0.6337401
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.1759332    0.0595423    0.2923242
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                 0.1428347   -0.0678438    0.3535131
6 months    ki1135781-COHORTS          GUATEMALA                      Early term           NA                 0.2303401    0.0839498    0.3767304
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.6232801   -0.7175490   -0.5290111
6 months    ki1135781-COHORTS          INDIA                          Preterm              NA                -0.6132030   -0.7417055   -0.4847006
6 months    ki1135781-COHORTS          INDIA                          Early term           NA                -0.6957290   -0.8033888   -0.5880692
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.2680182   -0.3331358   -0.2029006
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -0.2748067   -0.3671533   -0.1824602
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -0.3264758   -0.3932651   -0.2596864
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.5746579   -0.6008490   -0.5484667
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -0.6126430   -0.6541608   -0.5711252
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -0.6019693   -0.6353115   -0.5686272
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.5183729   -0.6554147   -0.3813311
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.7918302   -1.0980757   -0.4855847
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.4662155   -0.6581782   -0.2742528
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.6634095   -0.7799306   -0.5468884
24 months   ki1000108-IRC              INDIA                          Preterm              NA                -1.0369502   -1.3326336   -0.7412667
24 months   ki1000108-IRC              INDIA                          Early term           NA                -0.7782002   -0.9677141   -0.5886863
24 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                -1.1957143   -2.1506345   -0.2407940
24 months   ki1000109-EE               PAKISTAN                       Preterm              NA                -1.0760480   -1.2403659   -0.9117300
24 months   ki1000109-EE               PAKISTAN                       Early term           NA                -0.6762644   -0.9801639   -0.3723648
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.4210271   -0.6487779   -0.1932764
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -0.7469772   -0.8980538   -0.5959006
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -0.5559408   -0.7018451   -0.4100365
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.8044639   -0.8864699   -0.7224579
24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                -0.8536842   -1.0156018   -0.6917667
24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                -0.7580038   -0.8550569   -0.6609508
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.7017733    0.5747297    0.8288170
24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                 0.6241822    0.2126302    1.0357343
24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                 0.6773198    0.5491385    0.8055011
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.1709489   -0.2637013   -0.0781965
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.4390642   -0.6009907   -0.2771377
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                -0.2667312   -0.3931750   -0.1402874
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.5610487   -0.6408687   -0.4812287
24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                -0.5939844   -0.7086298   -0.4793391
24 months   ki1135781-COHORTS          INDIA                          Early term           NA                -0.5710542   -0.6664683   -0.4756401
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.5638880   -0.6216597   -0.5061162
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -0.6224501   -0.7030564   -0.5418438
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -0.6384713   -0.6987115   -0.5782311
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -1.2684752   -1.3014040   -1.2355464
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -1.3749350   -1.4242521   -1.3256179
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -1.2821556   -1.3279398   -1.2363714


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0135366   -1.2024730   -0.8246002
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -0.3333051   -0.5209779   -0.1456323
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                -1.2295969   -1.2924879   -1.1667060
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1448633   -1.3544229   -0.9353037
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0358042   -1.1559527   -0.9156557
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -1.0098535   -1.0741510   -0.9455561
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7417745   -0.7882773   -0.6952718
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7794837   -0.7988174   -0.7601500
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4909778   -0.6451612   -0.3367945
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5999270   -0.7403711   -0.4594828
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.7747022   -0.8887874   -0.6606170
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0815655    0.0271217    0.1360092
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1978013   -0.2594875   -0.1361150
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5792439    0.5193388    0.6391490
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1864566    0.1024304    0.2704827
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.6460976   -0.7081436   -0.5840516
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2920968   -0.3336448   -0.2505489
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5906060   -0.6106295   -0.5705826
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5369143   -0.6415957   -0.4322329
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7414957   -0.8350522   -0.6479392
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -1.0120238   -1.1588493   -0.8651984
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.7953404   -0.8531640   -0.7375168
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6874295    0.5756922    0.7991668
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2397001   -0.3082360   -0.1711643
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.5717874   -0.6260792   -0.5174955
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6079283   -0.6449298   -0.5709269
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2935654   -1.3174540   -1.2696768


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level         estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ------------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.3931625   -1.4079021    0.6215771
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.1450390   -0.8201753    0.5300974
Birth       ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.8886956   -1.6701216   -0.1072696
Birth       ki1000108-IRC              INDIA                          Early term           Full or late term    -0.6333497   -1.0551404   -0.2115590
Birth       ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       Preterm              Full or late term     0.6417045   -0.2798513    1.5632604
Birth       ki1000109-EE               PAKISTAN                       Early term           Full or late term     0.5808333   -0.4335266    1.5951933
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.5928994   -0.8072873   -0.3785116
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.2053980   -0.4092029   -0.0015930
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     0.0010373   -0.1883071    0.1903817
Birth       ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0979500   -0.0398347    0.2357348
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    -0.1252758   -0.3455708    0.0950193
Birth       ki1119695-PROBIT           BELARUS                        Early term           Full or late term    -0.1263428   -0.2689539    0.0162684
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.0879198   -0.2994390    0.4752785
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.0377721   -0.3013483    0.2258040
Birth       ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Preterm              Full or late term    -0.1849312   -0.3576428   -0.0122196
Birth       ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.0883058   -0.2320495    0.0554380
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.2819180   -0.4092772   -0.1545588
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.1946567   -0.2964975   -0.0928159
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    -0.1389511   -0.1873731   -0.0905290
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    -0.0370683   -0.0748838    0.0007472
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0795270   -0.5509053    0.3918514
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0356723   -0.3125303    0.3838749
6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.2706354   -0.7860052    0.2447345
6 months    ki1000108-IRC              INDIA                          Early term           Full or late term    -0.1080328   -0.4442050    0.2281394
6 months    ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Preterm              Full or late term    -0.3553409   -0.9001631    0.1894814
6 months    ki1000109-EE               PAKISTAN                       Early term           Full or late term    -0.1129627   -0.6929690    0.4670435
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.3370255   -0.5570703   -0.1169807
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.1688719   -0.3771759    0.0394321
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.1612259   -0.3215526   -0.0008992
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.0513307   -0.1844610    0.0817997
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     0.0499517   -0.1228283    0.2227318
6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.1467722    0.0096833    0.2838612
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    -0.0565202   -0.2121233    0.0990828
6 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    -0.0229770   -0.0588800    0.0129260
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.0330986   -0.2734730    0.2072758
6 months    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     0.0544068   -0.1320927    0.2409063
6 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term     0.0100771   -0.1492216    0.1693757
6 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.0724489   -0.2149573    0.0700594
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.0067886   -0.1198151    0.1062380
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.0584576   -0.1517072    0.0347920
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    -0.0379851   -0.0857529    0.0097826
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    -0.0273115   -0.0670294    0.0124065
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.2734573   -0.6093661    0.0624515
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0521574   -0.1838022    0.2881169
24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.3735406   -0.6909322   -0.0561491
24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    -0.1147907   -0.3381491    0.1085678
24 months   ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       Preterm              Full or late term     0.1196663   -0.8492883    1.0886209
24 months   ki1000109-EE               PAKISTAN                       Early term           Full or late term     0.5194499   -0.4826617    1.5215615
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.3259501   -0.5990590   -0.0528412
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.1349137   -0.4063909    0.1365635
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.0492203   -0.2309882    0.1325475
24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0464601   -0.0810380    0.1739581
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    -0.0775911   -0.4897214    0.3345392
24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    -0.0244535   -0.1363865    0.0874794
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.2681153   -0.4548735   -0.0813571
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.0957822   -0.2525250    0.0609605
24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    -0.0329357   -0.1720440    0.1061726
24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.0100055   -0.1340575    0.1140466
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.0585622   -0.1576785    0.0405541
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.0745833   -0.1581660    0.0089994
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    -0.1064598   -0.1653037   -0.0476160
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    -0.0136804   -0.0697874    0.0424266


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1325596   -0.3619601    0.0968408
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                -0.2459011   -0.3894520   -0.1023503
Birth       ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.5966949   -0.2751567    1.4685465
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.2911098   -0.4354283   -0.1467912
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0374105   -0.0267655    0.1015864
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0621294   -0.1346112    0.0103524
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0015630   -0.1043720    0.1074980
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0644334   -0.1358156    0.0069488
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.1332510   -0.1897927   -0.0767094
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0314759   -0.0464382   -0.0165136
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0175726   -0.1037669    0.1389122
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                -0.0543739   -0.1622730    0.0535251
6 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.3052280   -0.8239151    0.2134591
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.1958818   -0.3479344   -0.0438292
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0390450   -0.0827034    0.0046134
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0622641   -0.0022837    0.1268119
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0125742   -0.0310396    0.0058912
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0105233   -0.0662105    0.0872572
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0228175   -0.0936814    0.0480465
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0240787   -0.0763062    0.0281489
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0159482   -0.0325643    0.0006680
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0185414   -0.1018640    0.0647812
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0780862   -0.1492666   -0.0069058
24 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.1836905   -0.7422906    1.1096716
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.1893231   -0.4023586    0.0237125
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0091235   -0.0512870    0.0695340
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0143438   -0.0678628    0.0391752
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0687512   -0.1291604   -0.0083421
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0107386   -0.0722483    0.0507710
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0440404   -0.0903309    0.0022501
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0250902   -0.0475072   -0.0026732
