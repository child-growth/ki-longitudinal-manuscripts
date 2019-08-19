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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/50133c70-68b3-4c5f-8017-58cbfeeef433/0f060e78-47ae-4476-af94-e052fef6dde7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.7233640   -1.3194313   -0.1272967
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.0724653   -0.2206499    0.3655805
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.4028948   -2.2411656   -0.5646241
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.2474177    0.1619238    0.3329115
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.5228939    1.3667488    1.6790390
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2346493    0.1101571    0.3591415
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.3991870   -0.4878358   -0.3105382
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0013546   -0.0598994    0.0571901
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2723906   -1.2964364   -1.2483448
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.4036242   -1.6567398   -1.1505085
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.0656037   -1.2563914   -0.8748159
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -1.7736990   -2.0846695   -1.4627286
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.8625330   -1.0869261   -0.6381400
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8785899   -1.0382845   -0.7188952
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4584887   -0.5229974   -0.3939800
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8077194   -0.8894171   -0.7260217
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1657565    0.0609613    0.2705517
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.6593232   -1.7572274   -1.5614190
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.8674487   -0.9591260   -0.7757713
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.0110574   -1.0764985   -0.9456164
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2112675   -1.2430207   -1.1795144
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4872993   -2.6240577   -2.3505409
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.7107334   -1.8607507   -1.5607162
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2103593   -1.4283878   -0.9923307
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.4788224   -1.5744678   -1.3831770
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1713478   -0.4569099    0.1142144
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.8229547   -2.9341027   -2.7118067
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.8681438   -1.9658132   -1.7704745
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.3080692   -2.3774596   -2.2386788
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.9848723   -2.0269210   -1.9428236


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3102981   -0.4751168   -0.1454794
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1100000   -1.5086894   -0.7113106
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0288383   -0.0354675    0.0931441
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3254775    1.1669293    1.4840258
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.0530794   -0.0441925    0.1503513
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6072158   -0.6675691   -0.5468624
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2492460   -0.2884729   -0.2100192
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5660681   -1.5858219   -1.5463144
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.3856004   -1.5319935   -1.2392073
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2321263   -1.3660720   -1.0981806
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.2004704   -2.3234073   -2.0775336
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4018312   -1.4804646   -1.3231978
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5419570   -0.5926042   -0.4913098
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.8948084   -0.9510697   -0.8385471
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1069986    0.0122286    0.2017686
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8315428   -1.9081267   -1.7549589
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.9630335   -1.0220763   -0.9039908
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1409862   -1.1830414   -1.0989310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3404486   -1.3659169   -1.3149804
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5330857   -2.6360668   -2.4301046
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7805128   -1.8756216   -1.6854041
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5664092   -1.6263058   -1.5065125
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.8606184   -2.9431264   -2.7781104
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -1.9130810   -1.9742771   -1.8518850
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.3902929   -2.4353250   -2.3452608
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0468674   -2.0777591   -2.0159757


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2420804   -0.8105009    0.3263400
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.3827634   -0.6379098   -0.1276170
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.2928948   -0.4134571    0.9992468
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2185794   -0.2859564   -0.1512024
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1974164   -0.2505523   -0.1442805
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1815699   -0.2708989   -0.0922409
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2080288   -0.2761634   -0.1398942
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2478914   -0.2962133   -0.1995695
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2936775   -0.3116689   -0.2756861
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0180238   -0.2137607    0.2498082
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1665226   -0.2885205   -0.0445247
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.4267714   -0.7340228   -0.1195200
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5392982   -0.7593971   -0.3191992
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3200884   -0.4603198   -0.1798571
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0834683   -0.1238004   -0.0431362
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0870890   -0.1481036   -0.0260744
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0587579   -0.1041321   -0.0133838
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1722196   -0.2433854   -0.1010537
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0955848   -0.1636856   -0.0274841
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1299288   -0.1821576   -0.0777000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1291811   -0.1493284   -0.1090339
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0457864   -0.1267150    0.0351422
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0697794   -0.1821940    0.0426352
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2191738   -0.4194544   -0.0188933
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0875868   -0.1630455   -0.0121281
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0399430   -0.1698026    0.2496885
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0376637   -0.1291362    0.0538088
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0449372   -0.1173799    0.0275055
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0822237   -0.1380583   -0.0263890
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0619951   -0.0879328   -0.0360573
