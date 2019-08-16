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
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term        57      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  10      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term               23      90
Birth       ki1000108-IRC              INDIA                          Full or late term       238     369
Birth       ki1000108-IRC              INDIA                          Preterm                  36     369
Birth       ki1000108-IRC              INDIA                          Early term               95     369
Birth       ki1000109-EE               PAKISTAN                       Full or late term         0       2
Birth       ki1000109-EE               PAKISTAN                       Preterm                   1       2
Birth       ki1000109-EE               PAKISTAN                       Early term                1       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          Full or late term         1     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm                 171     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Early term               15     187
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term         7      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                   5      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term               15      27
Birth       ki1101329-Keneba           GAMBIA                         Full or late term       734    1515
Birth       ki1101329-Keneba           GAMBIA                         Preterm                 235    1515
Birth       ki1101329-Keneba           GAMBIA                         Early term              546    1515
Birth       ki1119695-PROBIT           BELARUS                        Full or late term      7095   13884
Birth       ki1119695-PROBIT           BELARUS                        Preterm                 472   13884
Birth       ki1119695-PROBIT           BELARUS                        Early term             6317   13884
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term       341     617
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                  95     617
Birth       ki1135781-COHORTS          GUATEMALA                      Early term              181     617
Birth       ki1135781-COHORTS          INDIA                          Full or late term       570    1293
Birth       ki1135781-COHORTS          INDIA                          Preterm                 285    1293
Birth       ki1135781-COHORTS          INDIA                          Early term              438    1293
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term      1164    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                 649    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term             1211    3024
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      9542   18434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                3774   18434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term             5118   18434
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       212     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  52     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term               83     347
6 months    ki1000108-IRC              INDIA                          Full or late term       249     388
6 months    ki1000108-IRC              INDIA                          Preterm                  42     388
6 months    ki1000108-IRC              INDIA                          Early term               97     388
6 months    ki1000109-EE               PAKISTAN                       Full or late term        25     372
6 months    ki1000109-EE               PAKISTAN                       Preterm                 239     372
6 months    ki1000109-EE               PAKISTAN                       Early term              108     372
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term        25    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                1210    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term               92    1327
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       155     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 251     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term              309     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term      1167    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 291    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              445    1903
6 months    ki1101329-Keneba           GAMBIA                         Full or late term       658    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                 207    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term              509    1374
6 months    ki1119695-PROBIT           BELARUS                        Full or late term      8008   15761
6 months    ki1119695-PROBIT           BELARUS                        Preterm                 551   15761
6 months    ki1119695-PROBIT           BELARUS                        Early term             7202   15761
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term       389     713
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                 113     713
6 months    ki1135781-COHORTS          GUATEMALA                      Early term              211     713
6 months    ki1135781-COHORTS          INDIA                          Full or late term       568    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                 299    1312
6 months    ki1135781-COHORTS          INDIA                          Early term              445    1312
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term      1028    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                 573    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term             1086    2687
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      6610   12482
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                2401   12482
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term             3471   12482
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
24 months   ki1101329-Keneba           GAMBIA                         Full or late term       557    1156
24 months   ki1101329-Keneba           GAMBIA                         Preterm                 167    1156
24 months   ki1101329-Keneba           GAMBIA                         Early term              432    1156
24 months   ki1119695-PROBIT           BELARUS                        Full or late term      2024    4035
24 months   ki1119695-PROBIT           BELARUS                        Preterm                 137    4035
24 months   ki1119695-PROBIT           BELARUS                        Early term             1874    4035
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term       375     663
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                 108     663
24 months   ki1135781-COHORTS          GUATEMALA                      Early term              180     663
24 months   ki1135781-COHORTS          INDIA                          Full or late term       565    1308
24 months   ki1135781-COHORTS          INDIA                          Preterm                 305    1308
24 months   ki1135781-COHORTS          INDIA                          Early term              438    1308
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term       938    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                 513    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term              973    2424
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      3401    6493
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                1296    6493
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term             1796    6493


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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/8aa23c40-33fe-46de-9341-f9a409fe5b4c/8210140b-3a29-4227-835e-a1012a270ff9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8aa23c40-33fe-46de-9341-f9a409fe5b4c/8210140b-3a29-4227-835e-a1012a270ff9/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8aa23c40-33fe-46de-9341-f9a409fe5b4c/8210140b-3a29-4227-835e-a1012a270ff9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -1.0221381   -1.3125459   -0.7317303
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.7764988   -1.5240040   -0.0289936
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.9732742   -1.3777255   -0.5688229
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                -0.2695938   -0.4759034   -0.0632841
Birth       ki1000108-IRC              INDIA                          Preterm              NA                -0.7682155   -1.3679222   -0.1685088
Birth       ki1000108-IRC              INDIA                          Early term           NA                -0.1691765   -0.5154168    0.1770638
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.8771429   -1.8202279    0.0659422
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -1.9980000   -2.4964582   -1.4995418
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -0.9226667   -1.3784537   -0.4668796
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.2450873    0.1579015    0.3322731
Birth       ki1101329-Keneba           GAMBIA                         Preterm              NA                -0.6454573   -0.8297006   -0.4612139
Birth       ki1101329-Keneba           GAMBIA                         Early term           NA                 0.0380939   -0.0631431    0.1393308
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                 1.5150480    1.3616580    1.6684381
Birth       ki1119695-PROBIT           BELARUS                        Preterm              NA                 0.4053980    0.1282580    0.6825380
Birth       ki1119695-PROBIT           BELARUS                        Early term           NA                 1.1647503    0.9815413    1.3479594
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.2393847    0.1148488    0.3639205
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.3981183   -0.6949318   -0.1013049
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           NA                -0.0610572   -0.2278783    0.1057640
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.3989972   -0.4880665   -0.3099278
Birth       ki1135781-COHORTS          INDIA                          Preterm              NA                -0.8969477   -1.0366702   -0.7572252
Birth       ki1135781-COHORTS          INDIA                          Early term           NA                -0.6851543   -0.7847388   -0.5855698
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0014048   -0.0599494    0.0571398
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -0.6284923   -0.7251123   -0.5318723
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -0.2755782   -0.3327488   -0.2184075
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -1.2706179   -1.2945893   -1.2466465
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -2.1505402   -2.1965502   -2.1045302
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -1.6911437   -1.7236301   -1.6586574
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -1.3641569   -1.5472180   -1.1810959
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -1.3488343   -1.8562843   -0.8413843
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -1.2392346   -1.5306810   -0.9477881
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                -1.1322706   -1.2997238   -0.9648174
6 months    ki1000108-IRC              INDIA                          Preterm              NA                -1.6023959   -2.1048165   -1.0999753
6 months    ki1000108-IRC              INDIA                          Early term           NA                -1.3370740   -1.5749306   -1.0992174
6 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                -1.7256810   -2.1112028   -1.3401592
6 months    ki1000109-EE               PAKISTAN                       Preterm              NA                -2.3328371   -2.4852787   -2.1803955
6 months    ki1000109-EE               PAKISTAN                       Early term           NA                -1.9610211   -2.1941481   -1.7278942
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.8613017   -1.0853762   -0.6372271
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                -1.4313014   -1.5144547   -1.3481482
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                -1.1705308   -1.3568526   -0.9842091
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.8818715   -1.0436997   -0.7200434
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -1.4421014   -1.5638521   -1.3203508
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -1.1553483   -1.2565682   -1.0541285
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.4600746   -0.5247232   -0.3954260
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.7101390   -0.8459513   -0.5743267
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                -0.6485160   -0.7503110   -0.5467209
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.7811076   -0.8647849   -0.6974303
6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                -1.2850214   -1.4260850   -1.1439578
6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                -0.8712524   -0.9558409   -0.7866638
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.1832245    0.0887815    0.2776676
6 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                -0.3203297   -0.5446566   -0.0960027
6 months    ki1119695-PROBIT           BELARUS                        Early term           NA                 0.0549527   -0.0532212    0.1631265
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -1.6663561   -1.7637145   -1.5689977
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -2.1334231   -2.3396447   -1.9272014
6 months    ki1135781-COHORTS          GUATEMALA                      Early term           NA                -1.9909790   -2.1335536   -1.8484044
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.8694426   -0.9609094   -0.7779759
6 months    ki1135781-COHORTS          INDIA                          Preterm              NA                -1.1345240   -1.2570855   -1.0119625
6 months    ki1135781-COHORTS          INDIA                          Early term           NA                -0.9586636   -1.0576126   -0.8597146
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -1.0230426   -1.0888323   -0.9572528
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -1.3421104   -1.4382065   -1.2460143
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -1.1445573   -1.2082284   -1.0808861
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -1.2134922   -1.2443600   -1.1826244
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -1.6199447   -1.6719942   -1.5678952
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -1.3908110   -1.4308216   -1.3508003
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -2.4895332   -2.6255765   -2.3534899
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -2.6165894   -2.9055910   -2.3275878
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -2.5743364   -2.7588797   -2.3897932
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -1.7087559   -1.8242394   -1.5932723
24 months   ki1000108-IRC              INDIA                          Preterm              NA                -2.1303598   -2.4377705   -1.8229491
24 months   ki1000108-IRC              INDIA                          Early term           NA                -1.8005921   -1.9945744   -1.6066097
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -1.1778713   -1.3926435   -0.9630990
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -1.6194937   -1.7555475   -1.4834399
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -1.3484536   -1.4712258   -1.2256815
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -1.5553619   -1.6407407   -1.4699831
24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                -1.8364646   -1.9927396   -1.6801895
24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                -1.4751363   -1.5707416   -1.3795310
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.1143144   -0.6109092    0.3822805
24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                -0.2409216   -0.5782014    0.0963583
24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                -0.1153391   -0.3083705    0.0776923
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -2.7874456   -2.8948120   -2.6800792
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -2.9214840   -3.1466194   -2.6963486
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                -2.9671366   -3.1196871   -2.8145861
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                -1.8412372   -1.9371385   -1.7453359
24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                -2.0385235   -2.1680035   -1.9090436
24 months   ki1135781-COHORTS          INDIA                          Early term           NA                -1.9171752   -2.0173934   -1.8169569
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -2.2988610   -2.3667517   -2.2309703
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -2.4734864   -2.5725504   -2.3744224
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -2.4312180   -2.5022807   -2.3601553
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -1.9808959   -2.0226323   -1.9391594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -2.2224767   -2.2810327   -2.1639206
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -2.0417878   -2.0921576   -1.9914179


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3102981   -0.4751168   -0.1454794
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1100000   -1.5086894   -0.7113106
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0288383   -0.0354675    0.0931441
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3254775    1.1669293    1.4840258
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.0530794   -0.0441925    0.1503513
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6072158   -0.6675691   -0.5468624
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2492460   -0.2884729   -0.2100192
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5660681   -1.5858219   -1.5463144
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.3856004   -1.5319935   -1.2392073
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2321263   -1.3660720   -1.0981806
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -2.2004704   -2.3234073   -2.0775336
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4018312   -1.4804646   -1.3231978
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5419570   -0.5926042   -0.4913098
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.8948084   -0.9510697   -0.8385471
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1069986    0.0122286    0.2017686
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8315428   -1.9081267   -1.7549589
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.9630335   -1.0220763   -0.9039908
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1409862   -1.1830414   -1.0989310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3404486   -1.3659169   -1.3149804
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5330857   -2.6360668   -2.4301046
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7805128   -1.8756216   -1.6854041
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5664092   -1.6263058   -1.5065125
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1314048   -0.4282725    0.1654630
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.8606184   -2.9431264   -2.7781104
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -1.9130810   -1.9742771   -1.8518850
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.3902929   -2.4353250   -2.3452608
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0468674   -2.0777591   -2.0159757


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level         estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ------------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.2456393   -0.5612034    1.0524821
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0488639   -0.4646915    0.5624193
Birth       ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.4986217   -1.1343178    0.1370744
Birth       ki1000108-IRC              INDIA                          Early term           Full or late term     0.1004173   -0.3036353    0.5044699
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -1.1208571   -2.1875671   -0.0541472
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.0455238   -1.0929737    1.0019261
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.8905446   -1.0945495   -0.6865396
Birth       ki1101329-Keneba           GAMBIA                         Early term           Full or late term    -0.2069934   -0.3405167   -0.0734701
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    -1.1096500   -1.3485748   -0.8707253
Birth       ki1119695-PROBIT           BELARUS                        Early term           Full or late term    -0.3502977   -0.4740631   -0.2265322
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.6375030   -0.9595967   -0.3154093
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.3004419   -0.5087861   -0.0920977
Birth       ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Preterm              Full or late term    -0.4979505   -0.6635872   -0.3323139
Birth       ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.2861571   -0.4194322   -0.1528821
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.6270875   -0.7400449   -0.5141301
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.2741734   -0.3560136   -0.1923331
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    -0.8799223   -0.9321910   -0.8276537
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    -0.4205259   -0.4580951   -0.3829566
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.0153226   -0.5253321    0.5559773
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.1249223   -0.2220581    0.4719027
6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.4701253   -1.0002731    0.0600224
6 months    ki1000108-IRC              INDIA                          Early term           Full or late term    -0.2048034   -0.4960953    0.0864885
6 months    ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Preterm              Full or late term    -0.6071561   -1.0218940   -0.1924182
6 months    ki1000109-EE               PAKISTAN                       Early term           Full or late term    -0.2353401   -0.6857335    0.2150532
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term    -0.5699998   -0.7885147   -0.3514849
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    -0.3092292   -0.6367142    0.0182558
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.5602299   -0.7627909   -0.3576690
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.2734768   -0.4645113   -0.0824423
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.2500644   -0.4003101   -0.0998187
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.1884414   -0.3090926   -0.0677902
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.5039138   -0.6672195   -0.3406082
6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    -0.0901448   -0.2092319    0.0289423
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    -0.5035542   -0.7043821   -0.3027264
6 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    -0.1282719   -0.1967964   -0.0597474
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.4670670   -0.6949680   -0.2391660
6 months    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.3246229   -0.4973523   -0.1518935
6 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    -0.2650813   -0.4173733   -0.1127894
6 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.0892210   -0.2237307    0.0452887
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.3190678   -0.4350378   -0.2030978
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.1215147   -0.2126903   -0.0303391
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    -0.4064525   -0.4635462   -0.3493587
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    -0.1773187   -0.2224413   -0.1321962
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.1270562   -0.4465432    0.1924308
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0848032   -0.3139341    0.1443277
24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.4216039   -0.7497051   -0.0935027
24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    -0.0918362   -0.3180437    0.1343713
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.4416225   -0.6957803   -0.1874647
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.1705824   -0.4181947    0.0770299
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.2811027   -0.4586170   -0.1035883
24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0802256   -0.0468620    0.2073132
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    -0.1266072   -0.6935696    0.4403552
24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    -0.0010247   -0.4578340    0.4557846
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.1340384   -0.3836875    0.1156107
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.1796910   -0.3664583    0.0070762
24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    -0.1972864   -0.3584127   -0.0361601
24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.0759380   -0.2146826    0.0628065
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.1746254   -0.2936755   -0.0555752
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.1323570   -0.2291528   -0.0355611
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    -0.2415808   -0.3118240   -0.1713376
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    -0.0608919   -0.1218769    0.0000931


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0566937   -0.1110043    0.2243917
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                -0.0407043   -0.1670634    0.0856548
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.2328571   -0.9991387    0.5334244
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.2162490   -0.2835401   -0.1489579
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.1895705   -0.2480175   -0.1311235
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.1863053   -0.2756681   -0.0969424
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.2082186   -0.2766944   -0.1397428
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.2478412   -0.2962059   -0.1994765
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.2954502   -0.3133811   -0.2775194
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0214435   -0.1424350    0.0995480
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                -0.0998557   -0.1994583   -0.0002531
6 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.4747894   -0.8568387   -0.0927402
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.5405295   -0.7601485   -0.3209106
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.3168068   -0.4593138   -0.1742998
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0818824   -0.1222476   -0.0415172
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.1137008   -0.1720883   -0.0553133
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0762259   -0.1093536   -0.0430983
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.1651867   -0.2356940   -0.0946794
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0935909   -0.1614429   -0.0257389
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.1179437   -0.1702854   -0.0656019
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.1269564   -0.1465482   -0.1073646
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0435525   -0.1240694    0.0369644
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0717570   -0.1450630    0.0015491
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.2516618   -0.4506087   -0.0527149
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0110473   -0.0724951    0.0504005
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0170904   -0.2481818    0.2140010
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0731728   -0.1464943    0.0001487
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0718439   -0.1427757   -0.0009121
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0914319   -0.1453620   -0.0375018
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0659715   -0.0916353   -0.0403078
