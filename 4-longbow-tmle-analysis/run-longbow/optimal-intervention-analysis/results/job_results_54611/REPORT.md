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

**Intervention Variable:** single

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        single    n_cell       n
----------  -------------------------  -----------------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0            231     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              0     231
Birth       ki0047075b-MAL-ED          BRAZIL                         0             57      65
Birth       ki0047075b-MAL-ED          BRAZIL                         1              8      65
Birth       ki0047075b-MAL-ED          INDIA                          0             47      47
Birth       ki0047075b-MAL-ED          INDIA                          1              0      47
Birth       ki0047075b-MAL-ED          NEPAL                          0             27      27
Birth       ki0047075b-MAL-ED          NEPAL                          1              0      27
Birth       ki0047075b-MAL-ED          PERU                           0            209     233
Birth       ki0047075b-MAL-ED          PERU                           1             24     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0             63     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1             60     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            122     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3     125
Birth       ki1119695-PROBIT           BELARUS                        0          13348   13890
Birth       ki1119695-PROBIT           BELARUS                        1            542   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0          12942   13817
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1            875   13817
Birth       ki1135781-COHORTS          GUATEMALA                      0            719     767
Birth       ki1135781-COHORTS          GUATEMALA                      1             48     767
Birth       ki1135781-COHORTS          INDIA                          0           4771    4778
Birth       ki1135781-COHORTS          INDIA                          1              7    4778
Birth       ki1135781-COHORTS          PHILIPPINES                    0           2936    3010
Birth       ki1135781-COHORTS          PHILIPPINES                    1             74    3010
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0           2814    2819
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              5    2819
6 months    ki0047075b-MAL-ED          BANGLADESH                     0            241     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0            179     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1             30     209
6 months    ki0047075b-MAL-ED          INDIA                          0            234     234
6 months    ki0047075b-MAL-ED          INDIA                          1              0     234
6 months    ki0047075b-MAL-ED          NEPAL                          0            236     236
6 months    ki0047075b-MAL-ED          NEPAL                          1              0     236
6 months    ki0047075b-MAL-ED          PERU                           0            240     273
6 months    ki0047075b-MAL-ED          PERU                           1             33     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0            140     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1            114     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            239     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              8     247
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1835    2013
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            178    2013
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0            248     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1             29     277
6 months    ki1119695-PROBIT           BELARUS                        0          15118   15761
6 months    ki1119695-PROBIT           BELARUS                        1            643   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0           8125    8638
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            513    8638
6 months    ki1135781-COHORTS          GUATEMALA                      0            826     893
6 months    ki1135781-COHORTS          GUATEMALA                      1             67     893
6 months    ki1135781-COHORTS          INDIA                          0           4962    4971
6 months    ki1135781-COHORTS          INDIA                          1              9    4971
6 months    ki1135781-COHORTS          PHILIPPINES                    0           2608    2676
6 months    ki1135781-COHORTS          PHILIPPINES                    1             68    2676
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0           4814    4822
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              8    4822
24 months   ki0047075b-MAL-ED          BANGLADESH                     0            212     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0            148     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1             21     169
24 months   ki0047075b-MAL-ED          INDIA                          0            225     225
24 months   ki0047075b-MAL-ED          INDIA                          1              0     225
24 months   ki0047075b-MAL-ED          NEPAL                          0            228     228
24 months   ki0047075b-MAL-ED          NEPAL                          1              0     228
24 months   ki0047075b-MAL-ED          PERU                           0            176     201
24 months   ki0047075b-MAL-ED          PERU                           1             25     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0            131     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1            107     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            208     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6     214
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0       6
24 months   ki1119695-PROBIT           BELARUS                        0           3890    4035
24 months   ki1119695-PROBIT           BELARUS                        1            145    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0           1533    1637
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            104    1637
24 months   ki1135781-COHORTS          GUATEMALA                      0            923    1010
24 months   ki1135781-COHORTS          GUATEMALA                      1             87    1010
24 months   ki1135781-COHORTS          INDIA                          0           3744    3753
24 months   ki1135781-COHORTS          INDIA                          1              9    3753
24 months   ki1135781-COHORTS          PHILIPPINES                    0           2357    2416
24 months   ki1135781-COHORTS          PHILIPPINES                    1             59    2416
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           4738    4744
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              6    4744


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/31b67ea7-a483-474e-bf71-1db289cd8a75/8f0e3b99-5451-4390-9dcf-559f0eb8982d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.5384068   -0.8193905   -0.2574231
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -1.1912736   -1.3227810   -1.0597662
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.6540258   -0.9169226   -0.3911290
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3318333    1.1669566    1.4967100
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4929769   -0.5425515   -0.4434022
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1942440    0.1044814    0.2840065
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.4658126   -0.5212324   -0.4103929
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5164630   -0.5579678   -0.4749581
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.8650055   -0.9020370   -0.8279741
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0203530   -0.1253576    0.1660635
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.4817940   -1.7443798   -1.2192081
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9219500   -1.1353160   -0.7085840
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3621332   -1.4875067   -1.2367598
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4769150   -0.6400329   -0.3137972
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.5194429   -1.6414391   -1.3974468
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1550064    0.0548672    0.2551456
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8612696   -0.8885070   -0.8340322
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.7783469   -1.8505832   -1.7061107
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -1.3636063   -1.4060773   -1.3211352
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.7941731   -0.8289908   -0.7593554
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2258255   -1.2510433   -1.2006078
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0809253   -0.1813572    0.3432079
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.7298347   -1.8565169   -1.6031524
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.5943152   -1.8297931   -1.3588373
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.6335000   -2.7712269   -2.4957731
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1895764   -0.4662391    0.0870864
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.4789372   -1.5929947   -1.3648798
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -3.0471907   -3.2246643   -2.8697171
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -2.7999472   -2.8455910   -2.7543034
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.9116557   -1.0461783   -0.7771332
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.4645912   -1.4766314   -1.4525509


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.6760000   -0.9521457   -0.3998543
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.8827897   -1.0001058   -0.7654736
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.6317073   -0.8249555   -0.4384591
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3269446    1.1683850    1.4855041
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5007838   -0.5213479   -0.4802197
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1511213    0.0632481    0.2389944
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6774424   -0.7103357   -0.6445492
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2465548   -0.2856502   -0.2074594
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.5236006   -1.5727441   -1.4744571
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3236661   -1.4316775   -1.2156546
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0633202   -1.1909180   -0.9357224
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5457721   -0.5948454   -0.4966988
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5624368   -1.6783540   -1.4465196
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8677917   -0.8934036   -0.8421799
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8089474   -1.8800645   -1.7378303
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -1.0418789   -1.0745363   -1.0092215
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1414425   -1.1836656   -1.0992193
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3441456   -1.3814027   -1.3068885
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6450595   -1.7797240   -1.5103950
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6455607   -2.7807256   -2.5103959
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.6034545   -1.6603071   -1.5466018
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.9960594   -3.0622330   -2.9298858
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -2.2131442   -2.2522996   -2.1739887
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.4207616   -2.4660144   -2.3755087
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7811362   -1.8166519   -1.7456205


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1375932   -0.2712169   -0.0039695
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.3084839    0.1829492    0.4340186
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0223185   -0.1806199    0.2252569
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0048888   -0.0192563    0.0094788
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0078070   -0.0528098    0.0371959
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0431227   -0.0697749   -0.0164705
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2116298   -0.2748925   -0.1483671
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.2699082    0.2255993    0.3142170
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.6585950   -0.7193573   -0.5978328
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0272228   -0.0851521    0.1395977
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.1581279   -0.0704622    0.3867180
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1413702   -0.3247889    0.0420485
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0066117   -0.0211022    0.0078788
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0688570   -0.2253463    0.0876323
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0429939   -0.0824537   -0.0035341
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0480078   -0.1317989    0.0357833
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0065221   -0.0165734    0.0035291
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0306004   -0.0536746   -0.0075263
6 months    ki1135781-COHORTS          INDIA                          optimal              observed           0.3217274    0.2727921    0.3706627
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3472694   -0.3951507   -0.2993880
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1183200   -0.1625822   -0.0740579
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0748109   -0.3132529    0.1636311
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0226363   -0.0746171    0.0293445
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0507443   -0.2457491    0.1442604
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0120608   -0.0317273    0.0076057
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0581716   -0.1184911    0.2348342
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1245173   -0.2245908   -0.0244437
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0511313   -0.1147522    0.2170148
24 months   ki1135781-COHORTS          INDIA                          optimal              observed           0.5868030    0.5325961    0.6410100
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.5091058   -1.6480983   -1.3701134
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3165450   -0.3532810   -0.2798090
