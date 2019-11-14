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

agecat      studyid                    country                        gagebrth             n_cell       n
----------  -------------------------  -----------------------------  ------------------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term        53      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  11      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term               22      86
Birth       ki1000108-IRC              INDIA                          Full or late term       213     328
Birth       ki1000108-IRC              INDIA                          Preterm                  32     328
Birth       ki1000108-IRC              INDIA                          Early term               83     328
Birth       ki1000109-EE               PAKISTAN                       Full or late term         9     177
Birth       ki1000109-EE               PAKISTAN                       Preterm                 132     177
Birth       ki1000109-EE               PAKISTAN                       Early term               36     177
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       160     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 240     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term              307     707
Birth       ki1101329-Keneba           GAMBIA                         Full or late term         2      11
Birth       ki1101329-Keneba           GAMBIA                         Preterm                   2      11
Birth       ki1101329-Keneba           GAMBIA                         Early term                7      11
Birth       ki1119695-PROBIT           BELARUS                        Full or late term      7074   13830
Birth       ki1119695-PROBIT           BELARUS                        Preterm                 468   13830
Birth       ki1119695-PROBIT           BELARUS                        Early term             6288   13830
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term       323     572
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                  78     572
Birth       ki1135781-COHORTS          GUATEMALA                      Early term              171     572
Birth       ki1135781-COHORTS          INDIA                          Full or late term       553    1229
Birth       ki1135781-COHORTS          INDIA                          Preterm                 259    1229
Birth       ki1135781-COHORTS          INDIA                          Early term              417    1229
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term      1135    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                 579    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term             1160    2874
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term     11811   20971
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                3396   20971
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term             5764   20971
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       212     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  51     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term               83     346
6 months    ki1000108-IRC              INDIA                          Full or late term       249     388
6 months    ki1000108-IRC              INDIA                          Preterm                  42     388
6 months    ki1000108-IRC              INDIA                          Early term               97     388
6 months    ki1000109-EE               PAKISTAN                       Full or late term        17     375
6 months    ki1000109-EE               PAKISTAN                       Preterm                 299     375
6 months    ki1000109-EE               PAKISTAN                       Early term               59     375
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term       155     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 251     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term              309     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term      1167    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 290    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              445    1902
6 months    ki1101329-Keneba           GAMBIA                         Full or late term       658    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                 207    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term              509    1374
6 months    ki1119695-PROBIT           BELARUS                        Full or late term      8006   15758
6 months    ki1119695-PROBIT           BELARUS                        Preterm                 551   15758
6 months    ki1119695-PROBIT           BELARUS                        Early term             7201   15758
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term       389     714
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                 114     714
6 months    ki1135781-COHORTS          GUATEMALA                      Early term              211     714
6 months    ki1135781-COHORTS          INDIA                          Full or late term       568    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                 299    1312
6 months    ki1135781-COHORTS          INDIA                          Early term              445    1312
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term      1028    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                 572    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term             1085    2685
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      8483   15932
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                3033   15932
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term             4416   15932
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term       214     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                  52     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term               84     350
24 months   ki1000108-IRC              INDIA                          Full or late term       250     390
24 months   ki1000108-IRC              INDIA                          Preterm                  42     390
24 months   ki1000108-IRC              INDIA                          Early term               98     390
24 months   ki1000109-EE               PAKISTAN                       Full or late term         7     168
24 months   ki1000109-EE               PAKISTAN                       Preterm                 132     168
24 months   ki1000109-EE               PAKISTAN                       Early term               29     168
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term        79     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                 208     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term              227     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                1       6
24 months   ki1101329-Keneba           GAMBIA                         Full or late term       558    1157
24 months   ki1101329-Keneba           GAMBIA                         Preterm                 168    1157
24 months   ki1101329-Keneba           GAMBIA                         Early term              431    1157
24 months   ki1119695-PROBIT           BELARUS                        Full or late term      1991    3972
24 months   ki1119695-PROBIT           BELARUS                        Preterm                 136    3972
24 months   ki1119695-PROBIT           BELARUS                        Early term             1845    3972
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term       377     667
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                 109     667
24 months   ki1135781-COHORTS          GUATEMALA                      Early term              181     667
24 months   ki1135781-COHORTS          INDIA                          Full or late term       559    1298
24 months   ki1135781-COHORTS          INDIA                          Preterm                 303    1298
24 months   ki1135781-COHORTS          INDIA                          Early term              436    1298
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term       939    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                 517    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term              972    2428
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      4280    8111
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                1585    8111
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term             2246    8111


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

* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
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
![](/tmp/9af4e2dc-83ff-4dcc-b91e-a376eb59daab/7eac8c76-1bb5-4d3e-82ba-774f0fd2792d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9af4e2dc-83ff-4dcc-b91e-a376eb59daab/7eac8c76-1bb5-4d3e-82ba-774f0fd2792d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9af4e2dc-83ff-4dcc-b91e-a376eb59daab/7eac8c76-1bb5-4d3e-82ba-774f0fd2792d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.3637117   -0.7680995    0.0406761
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.8807392   -1.8047055    0.0432270
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.5469074   -1.0908841   -0.0029308
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                -0.7811519   -1.0110388   -0.5512650
Birth       ki1000108-IRC              INDIA                          Preterm              NA                -1.7010954   -2.4260684   -0.9761224
Birth       ki1000108-IRC              INDIA                          Early term           NA                -1.3709270   -1.7376902   -1.0041638
Birth       ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.9300000   -1.8283144   -0.0316856
Birth       ki1000109-EE               PAKISTAN                       Preterm              NA                -0.2882955   -0.4939564   -0.0826345
Birth       ki1000109-EE               PAKISTAN                       Early term           NA                -0.3491667   -0.8202901    0.1219568
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.9538849   -1.1126022   -0.7951676
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -1.5361164   -1.6839689   -1.3882639
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -1.1647401   -1.2979002   -1.0315801
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                -1.0921694   -1.3086757   -0.8756631
Birth       ki1119695-PROBIT           BELARUS                        Preterm              NA                -1.1921529   -1.4585132   -0.9257927
Birth       ki1119695-PROBIT           BELARUS                        Early term           NA                -1.1830640   -1.4132118   -0.9529162
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -1.0443011   -1.2053504   -0.8832517
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.9388782   -1.2927720   -0.5849843
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           NA                -1.0600964   -1.2688723   -0.8513205
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.9460616   -1.0458913   -0.8462318
Birth       ki1135781-COHORTS          INDIA                          Preterm              NA                -1.1287857   -1.2709815   -0.9865899
Birth       ki1135781-COHORTS          INDIA                          Early term           NA                -1.0342643   -1.1382500   -0.9302786
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.6048219   -0.6771416   -0.5325022
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -0.8910696   -0.9964584   -0.7856808
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -0.8015698   -0.8740974   -0.7290423
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.7226648   -0.7447767   -0.7005529
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -0.8590692   -0.8998692   -0.8182691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -0.7568590   -0.7864912   -0.7272267
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.4906492   -0.6946568   -0.2866416
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.5329645   -0.9465798   -0.1193493
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.4454684   -0.7328961   -0.1580408
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                -0.5423674   -0.7118904   -0.3728443
6 months    ki1000108-IRC              INDIA                          Preterm              NA                -0.7730759   -1.2761555   -0.2699963
6 months    ki1000108-IRC              INDIA                          Early term           NA                -0.6439777   -0.9342258   -0.3537295
6 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.4651003   -0.9728217    0.0426210
6 months    ki1000109-EE               PAKISTAN                       Preterm              NA                -0.8218968   -0.9532135   -0.6905801
6 months    ki1000109-EE               PAKISTAN                       Early term           NA                -0.6127941   -0.8488678   -0.3767204
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.2126941    0.0426194    0.3827688
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -0.1165110   -0.2537074    0.0206853
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                 0.0575445   -0.0601348    0.1752238
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1225461    0.0536519    0.1914402
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.0585579   -0.2053714    0.0882556
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                 0.0652186   -0.0488111    0.1792483
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.2581622   -0.3484828   -0.1678416
6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                -0.2146205   -0.3634211   -0.0658199
6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                -0.1105866   -0.2139372   -0.0072361
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.5930867    0.5318436    0.6543298
6 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                 0.5277926    0.3690082    0.6865771
6 months    ki1119695-PROBIT           BELARUS                        Early term           NA                 0.5675538    0.5032770    0.6318305
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.1770052    0.0613610    0.2926494
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                 0.1629137   -0.0562630    0.3820905
6 months    ki1135781-COHORTS          GUATEMALA                      Early term           NA                 0.2281953    0.0817245    0.3746661
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.6177348   -0.7121099   -0.5233597
6 months    ki1135781-COHORTS          INDIA                          Preterm              NA                -0.6027316   -0.7315418   -0.4739215
6 months    ki1135781-COHORTS          INDIA                          Early term           NA                -0.7039231   -0.8104309   -0.5974152
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.2640082   -0.3291298   -0.1988866
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -0.2715089   -0.3637806   -0.1792371
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -0.3265102   -0.3931036   -0.2599168
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.5755393   -0.6017429   -0.5493357
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -0.6096475   -0.6510490   -0.5682461
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -0.6017919   -0.6352355   -0.5683483
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.5174673   -0.6535106   -0.3814240
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.7775865   -1.0767610   -0.4784120
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                -0.4243994   -0.6138652   -0.2349337
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.6586202   -0.7761922   -0.5410483
24 months   ki1000108-IRC              INDIA                          Preterm              NA                -1.1705391   -1.4562146   -0.8848636
24 months   ki1000108-IRC              INDIA                          Early term           NA                -0.7701149   -0.9613068   -0.5789230
24 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                -1.1957143   -2.1506345   -0.2407940
24 months   ki1000109-EE               PAKISTAN                       Preterm              NA                -1.0760480   -1.2403659   -0.9117300
24 months   ki1000109-EE               PAKISTAN                       Early term           NA                -0.6762644   -0.9801639   -0.3723648
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.4509888   -0.6782271   -0.2237504
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                -0.7349387   -0.8847642   -0.5851132
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                -0.5540231   -0.6984549   -0.4095913
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.8043735   -0.8862786   -0.7224685
24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                -0.8742325   -1.0325106   -0.7159545
24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                -0.7586399   -0.8552981   -0.6619816
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.7058059    0.5789303    0.8326814
24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                 0.6420975    0.2596843    1.0245108
24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                 0.6700117    0.5450325    0.7949909
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.1675931   -0.2602265   -0.0749597
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                -0.4358500   -0.6025159   -0.2691840
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                -0.2685521   -0.3959470   -0.1411572
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.5566862   -0.6369395   -0.4764329
24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                -0.5878505   -0.7014324   -0.4742686
24 months   ki1135781-COHORTS          INDIA                          Early term           NA                -0.5683400   -0.6636258   -0.4730542
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.5672446   -0.6249827   -0.5095065
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                -0.6133279   -0.6936939   -0.5329619
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                -0.6395595   -0.6997148   -0.5794042
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -1.2713892   -1.3045905   -1.2381879
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                -1.3754420   -1.4245567   -1.3263273
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                -1.2827954   -1.3288922   -1.2366986


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0135366   -1.2024730   -0.8246002
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -0.3333051   -0.5209779   -0.1456323
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1448633   -1.3544229   -0.9353037
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0358042   -1.1559527   -0.9156557
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -1.0098535   -1.0741510   -0.9455561
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7417745   -0.7882773   -0.6952718
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7523800   -0.7706132   -0.7341467
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5901136   -0.6101529   -0.5700743
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5369143   -0.6415957   -0.4322329
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7414957   -0.8350522   -0.6479392
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -1.0120238   -1.1588493   -0.8651984
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.7953404   -0.8531640   -0.7375168
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6874295    0.5756922    0.7991668
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2397001   -0.3082360   -0.1711643
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.5717874   -0.6260792   -0.5174955
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6079283   -0.6449298   -0.5709269
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2952842   -1.3192583   -1.2713100


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level         estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ------------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.5170276   -1.5242151    0.4901600
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.1831958   -0.8642817    0.4978902
Birth       ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.9199435   -1.6817854   -0.1581016
Birth       ki1000108-IRC              INDIA                          Early term           Full or late term    -0.5897751   -1.0225778   -0.1569724
Birth       ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       Preterm              Full or late term     0.6417045   -0.2798513    1.5632604
Birth       ki1000109-EE               PAKISTAN                       Early term           Full or late term     0.5808333   -0.4335266    1.5951933
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.5822315   -0.7993641   -0.3650989
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.2108552   -0.4189639   -0.0027465
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    -0.0999836   -0.3267026    0.1267355
Birth       ki1119695-PROBIT           BELARUS                        Early term           Full or late term    -0.0908946   -0.2373223    0.0555332
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     0.1054229   -0.2830757    0.4939215
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.0157954   -0.2795145    0.2479238
Birth       ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Preterm              Full or late term    -0.1827241   -0.3558798   -0.0095685
Birth       ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.0882027   -0.2324524    0.0560470
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.2862477   -0.4136180   -0.1588774
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.1967479   -0.2987806   -0.0947152
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    -0.1364044   -0.1805820   -0.0922268
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    -0.0341942   -0.0682053   -0.0001831
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.0423154   -0.5038568    0.4192261
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0451807   -0.3065890    0.3969504
6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.2307085   -0.7620632    0.3006462
6 months    ki1000108-IRC              INDIA                          Early term           Full or late term    -0.1016103   -0.4377312    0.2345106
6 months    ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Preterm              Full or late term    -0.3567964   -0.8808682    0.1672753
6 months    ki1000109-EE               PAKISTAN                       Early term           Full or late term    -0.1476938   -0.7070889    0.4117014
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.3292052   -0.5477655   -0.1106448
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.1551496   -0.3620668    0.0517676
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.1811040   -0.3432977   -0.0189103
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.0573275   -0.1908366    0.0761816
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     0.0435417   -0.1306688    0.2177522
6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.1475756    0.0104243    0.2847268
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    -0.0652941   -0.2217583    0.0911701
6 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    -0.0255329   -0.0613480    0.0102821
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.0140915   -0.2616508    0.2334678
6 months    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     0.0511901   -0.1349210    0.2373012
6 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term     0.0150032   -0.1447750    0.1747813
6 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.0861883   -0.2279133    0.0555368
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.0075007   -0.1205265    0.1055252
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.0625020   -0.1556633    0.0306593
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    -0.0341082   -0.0816703    0.0134538
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    -0.0262526   -0.0660510    0.0135458
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.2601192   -0.5892526    0.0690141
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0930678   -0.1404767    0.3266124
24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    -0.5119189   -0.8220178   -0.2018200
24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    -0.1114947   -0.3381306    0.1151412
24 months   ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       Preterm              Full or late term     0.1196663   -0.8492883    1.0886209
24 months   ki1000109-EE               PAKISTAN                       Early term           Full or late term     0.5194499   -0.4826617    1.5215615
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    -0.2839500   -0.5556550   -0.0122449
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    -0.1030343   -0.3720600    0.1659915
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    -0.0698590   -0.2483262    0.1086082
24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.0457337   -0.0813406    0.1728079
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    -0.0637083   -0.4475822    0.3201656
24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    -0.0357942   -0.1445826    0.0729943
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    -0.2682569   -0.4590486   -0.0774651
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    -0.1009590   -0.2586213    0.0567033
24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    -0.0311643   -0.1695895    0.1072609
24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    -0.0116538   -0.1357960    0.1124884
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.0460833   -0.1449692    0.0528027
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    -0.0723149   -0.1557919    0.0111621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    -0.1040528   -0.1623441   -0.0457616
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    -0.0114063   -0.0679642    0.0451517


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1011139   -0.3375751    0.1353473
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                -0.2323847   -0.3758401   -0.0889292
Birth       ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.5966949   -0.2751567    1.4685465
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.2902664   -0.4362053   -0.1443276
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0526940   -0.1291264    0.0237385
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0084969   -0.0971176    0.1141113
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0637920   -0.1356529    0.0080690
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.1369526   -0.1936402   -0.0802651
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0297152   -0.0431865   -0.0162439
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0003287   -0.1192451    0.1185878
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                -0.0575596   -0.1660496    0.0509304
6 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.3096019   -0.8068896    0.1876858
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.1829319   -0.3339945   -0.0318693
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0409806   -0.0846873    0.0027261
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0603609   -0.0041885    0.1249103
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0138428   -0.0321706    0.0044850
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0094514   -0.0666866    0.0855894
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0283628   -0.0993083    0.0425828
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0280887   -0.0803507    0.0241734
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0145743   -0.0312126    0.0020639
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0194470   -0.1023516    0.0634576
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0828755   -0.1548471   -0.0109039
24 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.1836905   -0.7422906    1.1096716
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.1593614   -0.3712800    0.0525572
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0090331   -0.0512725    0.0693388
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0183763   -0.0712690    0.0345163
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0721070   -0.1323381   -0.0118760
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0151012   -0.0769406    0.0467383
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0406838   -0.0869358    0.0055683
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0238950   -0.0464237   -0.0013663
