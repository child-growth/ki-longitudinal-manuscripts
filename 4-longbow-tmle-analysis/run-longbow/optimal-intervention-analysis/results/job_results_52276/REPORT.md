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



```
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```




# Results Detail

## Results Plots
![](/tmp/b254709d-1407-4f94-af2a-f0d0227976e7/8dcb5450-94a1-473f-8c40-f817aaffcd45/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.5438747   -0.8250208   -0.2627286
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.8650944   -0.9860571   -0.7441318
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.5309834   -0.7623812   -0.2995857
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3361160    1.1736928    1.4985392
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5396643   -0.5855678   -0.4937609
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1819531    0.0923015    0.2716046
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -1.3131295   -1.3329389   -1.2933202
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3630938   -0.4113969   -0.3147907
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.8256141   -0.8614905   -0.7897377
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0311521   -0.3258275    0.3881318
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.3136791   -1.4266598   -1.2006984
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9050084   -1.0872621   -0.7227546
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3623439   -1.4876194   -1.2370685
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4498372   -0.5171111   -0.3825633
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.5179170   -1.6404335   -1.3954006
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1253036    0.0464311    0.2041762
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8571103   -0.8834043   -0.8308162
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.0648213   -2.3508988   -1.7787437
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -1.5151918   -1.5516594   -1.4787242
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.2164637   -1.2588951   -1.1740323
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2108524   -1.2357653   -1.1859395
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1975882   -0.6312858    0.2361094
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.7334433   -1.8596527   -1.6072339
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.5842836   -1.8261760   -1.3423912
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.6330003   -2.7706728   -2.4953278
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1584853   -0.5215603    0.2045898
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.5260135   -1.6230918   -1.4289353
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -3.0213900   -3.2881209   -2.7546591
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -2.6951037   -2.7428563   -2.6473510
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6199067   -0.7211784   -0.5186349
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.4518481   -1.4638172   -1.4398790


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
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3280952   -1.4363364   -1.2198541
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0639173   -1.1916078   -0.9362269
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5457721   -0.5948454   -0.4966988
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5624368   -1.6783540   -1.4465196
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8677917   -0.8934036   -0.8421799
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8089474   -1.8800645   -1.7378303
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -1.0418789   -1.0745363   -1.0092215
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1414425   -1.1836656   -1.0992193
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3441456   -1.3814027   -1.3068885
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7544776   -1.8753255   -1.6336298
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6491807   -1.7842885   -1.5140729
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6451636   -2.7802323   -2.5100948
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.6034545   -1.6603071   -1.5466018
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.9960594   -3.0622330   -2.9298858
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -2.2131442   -2.2522996   -2.1739887
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.4207616   -2.4660144   -2.3755087
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7811362   -1.8166519   -1.7456205


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1321253   -0.2642969    0.0000463
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0176953   -0.0622340    0.0268434
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1007239   -0.3079029    0.1064551
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0091714   -0.0274375    0.0090947
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0388805   -0.0019346    0.0796956
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0308318   -0.0560970   -0.0055666
Birth       ki1135781-COHORTS          INDIA                          optimal              observed           0.6356871    0.6006076    0.6707666
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.1165390    0.0655847    0.1674933
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.6979865   -0.7577723   -0.6382006
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0198686   -0.2812713    0.3210085
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0144161   -0.0579624    0.0291301
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1589089   -0.3161008   -0.0017170
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0064010   -0.0204874    0.0076855
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0959349   -0.1577277   -0.0341421
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0445198   -0.0847618   -0.0042778
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0183050   -0.0816258    0.0450157
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0106815   -0.0174982   -0.0038647
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2558739   -0.0148733    0.5266211
6 months    ki1135781-COHORTS          INDIA                          optimal              observed           0.4733129    0.4297952    0.5168307
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0750213    0.0221589    0.1278836
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1332932   -0.1774835   -0.0891028
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2046888   -0.1946908    0.6040684
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0210343   -0.0742025    0.0321339
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0648970   -0.2705917    0.1407977
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0121632   -0.0317268    0.0074003
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0270805   -0.3091996    0.3633606
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0774410   -0.1595205    0.0046385
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0253306   -0.2288839    0.2795451
24 months   ki1135781-COHORTS          INDIA                          optimal              observed           0.4819595    0.4264507    0.5374683
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.8008549   -1.9116015   -1.6901084
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3292880   -0.3661868   -0.2923893
