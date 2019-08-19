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
Birth       ki0047075b-MAL-ED          BANGLADESH                     0            241     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              0     241
Birth       ki0047075b-MAL-ED          BRAZIL                         0            159     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1             24     183
Birth       ki0047075b-MAL-ED          INDIA                          0            202     202
Birth       ki0047075b-MAL-ED          INDIA                          1              0     202
Birth       ki0047075b-MAL-ED          NEPAL                          0            168     168
Birth       ki0047075b-MAL-ED          NEPAL                          1              0     168
Birth       ki0047075b-MAL-ED          PERU                           0            247     279
Birth       ki0047075b-MAL-ED          PERU                           1             32     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0            145     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1            113     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            112     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6     118
Birth       ki1119695-PROBIT           BELARUS                        0          13286   13824
Birth       ki1119695-PROBIT           BELARUS                        1            538   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0          12064   12863
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1            799   12863
Birth       ki1135781-COHORTS          GUATEMALA                      0            654     691
Birth       ki1135781-COHORTS          GUATEMALA                      1             37     691
Birth       ki1135781-COHORTS          INDIA                          0           4456    4463
Birth       ki1135781-COHORTS          INDIA                          1              7    4463
Birth       ki1135781-COHORTS          PHILIPPINES                    0           2789    2860
Birth       ki1135781-COHORTS          PHILIPPINES                    1             71    2860
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
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1834    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            178    2012
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0            248     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1             29     277
6 months    ki1119695-PROBIT           BELARUS                        0          15114   15757
6 months    ki1119695-PROBIT           BELARUS                        1            643   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0           7746    8234
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            488    8234
6 months    ki1135781-COHORTS          GUATEMALA                      0            827     894
6 months    ki1135781-COHORTS          GUATEMALA                      1             67     894
6 months    ki1135781-COHORTS          INDIA                          0           4955    4964
6 months    ki1135781-COHORTS          INDIA                          1              9    4964
6 months    ki1135781-COHORTS          PHILIPPINES                    0           2606    2674
6 months    ki1135781-COHORTS          PHILIPPINES                    1             68    2674
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
24 months   ki1119695-PROBIT           BELARUS                        0           3829    3971
24 months   ki1119695-PROBIT           BELARUS                        1            142    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            379     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             43     422
24 months   ki1135781-COHORTS          GUATEMALA                      0            932    1021
24 months   ki1135781-COHORTS          GUATEMALA                      1             89    1021
24 months   ki1135781-COHORTS          INDIA                          0           3717    3726
24 months   ki1135781-COHORTS          INDIA                          1              9    3726
24 months   ki1135781-COHORTS          PHILIPPINES                    0           2361    2420
24 months   ki1135781-COHORTS          PHILIPPINES                    1             59    2420


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
![](/tmp/5e9e32b5-3e32-49d0-9226-725fc69e2999/4b059b6a-21b8-49af-98b3-80baa47b8b1c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5431175    0.0713188    1.0149162
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2806276   -0.5687278    0.0074726
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0447024   -0.2144075    0.3038123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.7490353    0.2101930    1.2878776
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1672645   -1.3098096   -1.0247194
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5301780   -0.5707453   -0.4896107
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.0480498   -1.6380299   -0.4580698
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -1.5086260   -1.5534561   -1.4637958
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.9537912   -1.0063610   -0.9012213
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.8283237    0.6031334    1.0535140
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.9379705    0.7501763    1.1257647
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.5435110    0.2524930    0.8345290
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2270500   -0.7848357    0.3307357
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0579821   -0.0797550    0.1957192
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0336609   -0.1549645    0.0876427
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5440604    0.4879400    0.6001808
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3186594    0.2848808    0.3524381
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1332412   -0.3366368    0.6031192
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.7099000   -0.7430338   -0.6767662
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2935253   -0.3437693   -0.2432814
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3804856   -0.0442005    0.8051717
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1339248   -0.4522180    0.1843685
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3762348    0.1368126    0.6156569
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0715059   -0.0531563    0.1961682
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.6917362    0.5741777    0.8092946
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.9895301   -1.2020688   -0.7769914
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2586237   -0.3163983   -0.2008490
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.0535389   -1.0784432   -1.0286346
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.9050567   -0.9429475   -0.8671659


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4038798    0.2296279    0.5781316
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.0562791   -0.2000837    0.0875255
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7932203    0.5962220    0.9902187
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1463469   -1.3562674   -0.9364264
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5145122   -0.5404077   -0.4886167
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0552243   -1.1617873   -0.9486614
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9765068   -1.0113301   -0.9416835
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7377902   -0.7844819   -0.6910986
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0797577    0.0268998    0.1326156
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0568833   -0.1722874    0.0585208
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3050103    0.2788985    0.3311222
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1920134    0.1173734    0.2666534
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.7104795   -0.7428008   -0.6781581
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2936948   -0.3352840   -0.2521057
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0500935   -0.0748234    0.1750103
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6863435    0.5745700    0.7981170
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1781043   -1.2781256   -1.0780830
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2796964   -0.3351582   -0.2242346
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6594122   -0.6925753   -0.6262491
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6100579   -0.6471813   -0.5729344


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1392377   -0.5852491   0.3067737
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.2070434   -0.0616614   0.4757482
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1009815   -0.3111358   0.1091729
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0441850   -0.5065826   0.5949527
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0209176   -0.1266027   0.1684379
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0156658   -0.0151421   0.0464738
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0071745   -0.5838936   0.5695447
Birth       ki1135781-COHORTS          INDIA                          optimal              observed           0.5321191    0.4927812   0.5714570
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.2160010    0.1746593   0.2573426
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1433988    0.0024773   0.2843203
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.1164251   -0.0406495   0.2734996
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0014375   -0.2507801   0.2479051
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.7441013    0.1939333   1.2942693
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0217756   -0.1030411   0.1465923
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0232224   -0.0647178   0.0182731
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0349030    0.0228389   0.0469670
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0136491   -0.0353195   0.0080212
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0587722   -0.3977769   0.5153213
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0005794   -0.0018941   0.0007352
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0001695   -0.0262706   0.0259316
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0661416   -0.3314376   0.4637207
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.2538253   -0.0278886   0.5355391
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0504669   -0.1444228   0.2453566
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0214125   -0.0524160   0.0095911
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0053927   -0.0208196   0.0100342
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1885742   -0.4033520   0.0262037
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0210727   -0.0438266   0.0016812
24 months   ki1135781-COHORTS          INDIA                          optimal              observed           0.3941267    0.3592306   0.4290227
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.2949988    0.2555952   0.3344025
