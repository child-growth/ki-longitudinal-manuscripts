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
* W_fage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
* delta_W_fage
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
Birth       ki0047075b-MAL-ED          BANGLADESH                     0            257     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              0     257
Birth       ki0047075b-MAL-ED          BRAZIL                         0            166     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1             25     191
Birth       ki0047075b-MAL-ED          INDIA                          0            205     205
Birth       ki0047075b-MAL-ED          INDIA                          1              0     205
Birth       ki0047075b-MAL-ED          NEPAL                          0            173     173
Birth       ki0047075b-MAL-ED          NEPAL                          1              0     173
Birth       ki0047075b-MAL-ED          PERU                           0            253     287
Birth       ki0047075b-MAL-ED          PERU                           1             34     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0            146     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1            116     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            117     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6     123
Birth       ki1119695-PROBIT           BELARUS                        0          13343   13884
Birth       ki1119695-PROBIT           BELARUS                        1            541   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0          12902   13772
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1            870   13772
Birth       ki1135781-COHORTS          GUATEMALA                      0            719     767
Birth       ki1135781-COHORTS          GUATEMALA                      1             48     767
Birth       ki1135781-COHORTS          INDIA                          0           4771    4778
Birth       ki1135781-COHORTS          INDIA                          1              7    4778
Birth       ki1135781-COHORTS          PHILIPPINES                    0           2936    3010
Birth       ki1135781-COHORTS          PHILIPPINES                    1             74    3010
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
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0           7775    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            490    8265
6 months    ki1135781-COHORTS          GUATEMALA                      0            826     893
6 months    ki1135781-COHORTS          GUATEMALA                      1             67     893
6 months    ki1135781-COHORTS          INDIA                          0           4962    4971
6 months    ki1135781-COHORTS          INDIA                          1              9    4971
6 months    ki1135781-COHORTS          PHILIPPINES                    0           2608    2676
6 months    ki1135781-COHORTS          PHILIPPINES                    1             68    2676
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
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            413     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             43     456
24 months   ki1135781-COHORTS          GUATEMALA                      0            926    1013
24 months   ki1135781-COHORTS          GUATEMALA                      1             87    1013
24 months   ki1135781-COHORTS          INDIA                          0           3747    3756
24 months   ki1135781-COHORTS          INDIA                          1              9    3756
24 months   ki1135781-COHORTS          PHILIPPINES                    0           2357    2416
24 months   ki1135781-COHORTS          PHILIPPINES                    1             59    2416


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
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
![](/tmp/06c5e2a3-0ec5-43d2-997c-d7db23866ef7/98d529ec-ef5d-47a2-bab6-750f6de3d864/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.6898778   -0.8565151   -0.5232405
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -1.0293254   -1.1677167   -0.8909341
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.7255185   -0.9395322   -0.5115048
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0437438   -1.2660944   -0.8213933
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3271357    1.1616401    1.4926313
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5299188   -0.5795039   -0.4803338
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0700759   -0.2668694    0.4070212
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.9592040   -0.9997143   -0.9186937
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0862711    0.0394072    0.1331350
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2100929   -0.0133284    0.4335142
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.4137114   -1.5577225   -1.2697004
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9613273   -1.1969128   -0.7257418
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3545793   -1.4799412   -1.2292175
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5808386   -0.7257604   -0.4359169
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.5055634   -1.6354629   -1.3756639
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0782103   -0.0056219    0.1620425
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8797262   -0.9068774   -0.8525750
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.7724865   -1.8449710   -1.7000019
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -1.1159310   -1.1779796   -1.0538824
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.3772252   -1.4185534   -1.3358970
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1581419   -0.0563253    0.3726091
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.7270529   -1.8513311   -1.6027747
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.5849601   -1.8125826   -1.3573377
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5926074   -2.7295880   -2.4556268
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.3480792   -0.5045233   -0.1916351
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -2.3645959   -2.5064645   -2.2227273
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.9124109   -3.0932981   -2.7315238
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -2.5056794   -2.5541539   -2.4572049
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.8362606   -0.9545384   -0.7179827


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.7609424   -0.9178311   -0.6040538
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.7266031   -0.8549719   -0.5982342
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9338211   -1.1465079   -0.7211344
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3254775    1.1669293    1.4840258
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5014820   -0.5220753   -0.4808887
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1511213    0.0632481    0.2389944
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6774424   -0.7103357   -0.6445492
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2465548   -0.2856502   -0.2074594
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3268010   -1.4351217   -1.2184802
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0633760   -1.1911088   -0.9356432
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3601215   -1.4821830   -1.2380600
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5457721   -0.5948454   -0.4966988
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5624368   -1.6783540   -1.4465196
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8906213   -0.9166407   -0.8646018
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8089474   -1.8800645   -1.7378303
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -1.0418789   -1.0745363   -1.0092215
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1414425   -1.1836656   -1.0992193
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6058879   -2.7403043   -2.4714714
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -2.3925000   -2.5069364   -2.2780636
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.8644028   -2.9307312   -2.7980743
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -2.0008573   -2.0401168   -1.9615978
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.3962210   -2.4413335   -2.3511085


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0710646   -0.1375869   -0.0045422
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0970954   -0.0113935    0.2055844
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0010845   -0.1790577    0.1768886
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1099227    0.0185395    0.2013059
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0016582   -0.0174565    0.0141401
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0284369   -0.0167104    0.0735841
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0810453   -0.2396084    0.4016991
Birth       ki1135781-COHORTS          INDIA                          optimal              observed           0.2817615    0.2324994    0.3310236
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3328259   -0.3801040   -0.2855478
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1590722   -0.3552770    0.0371327
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.0869105   -0.0153250    0.1891459
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1020487   -0.3061729    0.1020755
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0055421   -0.0197485    0.0086643
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0350666   -0.1038525    0.1739857
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0568734   -0.1243722    0.0106255
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0287883   -0.0397432    0.0973197
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0108951   -0.0198694   -0.0019207
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0364609   -0.0606538   -0.0122680
6 months    ki1135781-COHORTS          INDIA                          optimal              observed           0.0740521    0.0066698    0.1414344
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.2357828    0.1862681    0.2852974
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1163076   -0.2960622    0.0634471
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0230466   -0.0741452    0.0280521
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0378760   -0.2303239    0.1545719
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0132805   -0.0334694    0.0069084
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.2166744   -0.0669322    0.5002810
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0279041   -0.1043322    0.0485240
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0480082   -0.1214113    0.2174277
24 months   ki1135781-COHORTS          INDIA                          optimal              observed           0.5048221    0.4479215    0.5617227
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.5599604   -1.6831002   -1.4368207
