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

agecat      studyid          country                        single    n_cell       n
----------  ---------------  -----------------------------  -------  -------  ------
Birth       COHORTS          GUATEMALA                      0            719     767
Birth       COHORTS          GUATEMALA                      1             48     767
Birth       COHORTS          INDIA                          0           4771    4778
Birth       COHORTS          INDIA                          1              7    4778
Birth       COHORTS          PHILIPPINES                    0           2936    3010
Birth       COHORTS          PHILIPPINES                    1             74    3010
Birth       JiVitA-4         BANGLADESH                     0           2814    2819
Birth       JiVitA-4         BANGLADESH                     1              5    2819
Birth       MAL-ED           BANGLADESH                     0            231     231
Birth       MAL-ED           BANGLADESH                     1              0     231
Birth       MAL-ED           BRAZIL                         0             57      65
Birth       MAL-ED           BRAZIL                         1              8      65
Birth       MAL-ED           INDIA                          0             47      47
Birth       MAL-ED           INDIA                          1              0      47
Birth       MAL-ED           NEPAL                          0             27      27
Birth       MAL-ED           NEPAL                          1              0      27
Birth       MAL-ED           PERU                           0            209     233
Birth       MAL-ED           PERU                           1             24     233
Birth       MAL-ED           SOUTH AFRICA                   0             63     123
Birth       MAL-ED           SOUTH AFRICA                   1             60     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            122     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              3     125
Birth       PROBIT           BELARUS                        0          13351   13893
Birth       PROBIT           BELARUS                        1            542   13893
Birth       ZVITAMBO         ZIMBABWE                       0          12942   13817
Birth       ZVITAMBO         ZIMBABWE                       1            875   13817
6 months    COHORTS          GUATEMALA                      0            826     893
6 months    COHORTS          GUATEMALA                      1             67     893
6 months    COHORTS          INDIA                          0           4962    4971
6 months    COHORTS          INDIA                          1              9    4971
6 months    COHORTS          PHILIPPINES                    0           2608    2676
6 months    COHORTS          PHILIPPINES                    1             68    2676
6 months    Guatemala BSC    GUATEMALA                      0            248     277
6 months    Guatemala BSC    GUATEMALA                      1             29     277
6 months    JiVitA-4         BANGLADESH                     0           4814    4822
6 months    JiVitA-4         BANGLADESH                     1              8    4822
6 months    MAL-ED           BANGLADESH                     0            241     241
6 months    MAL-ED           BANGLADESH                     1              0     241
6 months    MAL-ED           BRAZIL                         0            179     209
6 months    MAL-ED           BRAZIL                         1             30     209
6 months    MAL-ED           INDIA                          0            234     234
6 months    MAL-ED           INDIA                          1              0     234
6 months    MAL-ED           NEPAL                          0            236     236
6 months    MAL-ED           NEPAL                          1              0     236
6 months    MAL-ED           PERU                           0            240     273
6 months    MAL-ED           PERU                           1             33     273
6 months    MAL-ED           SOUTH AFRICA                   0            140     254
6 months    MAL-ED           SOUTH AFRICA                   1            114     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            239     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              8     247
6 months    PROBIT           BELARUS                        0          15117   15760
6 months    PROBIT           BELARUS                        1            643   15760
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1835    2013
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            178    2013
6 months    ZVITAMBO         ZIMBABWE                       0           8125    8638
6 months    ZVITAMBO         ZIMBABWE                       1            513    8638
24 months   COHORTS          GUATEMALA                      0            923    1010
24 months   COHORTS          GUATEMALA                      1             87    1010
24 months   COHORTS          INDIA                          0           3744    3753
24 months   COHORTS          INDIA                          1              9    3753
24 months   COHORTS          PHILIPPINES                    0           2357    2416
24 months   COHORTS          PHILIPPINES                    1             59    2416
24 months   JiVitA-4         BANGLADESH                     0           4738    4744
24 months   JiVitA-4         BANGLADESH                     1              6    4744
24 months   MAL-ED           BANGLADESH                     0            212     212
24 months   MAL-ED           BANGLADESH                     1              0     212
24 months   MAL-ED           BRAZIL                         0            148     169
24 months   MAL-ED           BRAZIL                         1             21     169
24 months   MAL-ED           INDIA                          0            225     225
24 months   MAL-ED           INDIA                          1              0     225
24 months   MAL-ED           NEPAL                          0            228     228
24 months   MAL-ED           NEPAL                          1              0     228
24 months   MAL-ED           PERU                           0            176     201
24 months   MAL-ED           PERU                           1             25     201
24 months   MAL-ED           SOUTH AFRICA                   0            131     238
24 months   MAL-ED           SOUTH AFRICA                   1            107     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            208     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6     214
24 months   PROBIT           BELARUS                        0           3890    4035
24 months   PROBIT           BELARUS                        1            145    4035
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0       6
24 months   ZVITAMBO         ZIMBABWE                       0           1533    1637
24 months   ZVITAMBO         ZIMBABWE                       1            104    1637


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/9f29c6fb-d079-4673-87fb-9a378fb416e1/676308d5-0264-42df-a788-2352d74758e5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      optimal              observed           0.1820870    0.0924806    0.2716933
Birth       COHORTS          INDIA                          optimal              observed          -0.9591333   -0.9971256   -0.9211410
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.5693396   -0.6174090   -0.5212702
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -0.8658899   -0.9028798   -0.8289000
Birth       MAL-ED           BRAZIL                         optimal              observed          -0.5533102   -0.8349550   -0.2716653
Birth       MAL-ED           PERU                           optimal              observed          -0.9887949   -1.1325719   -0.8450179
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.5570612   -0.7867385   -0.3273840
Birth       PROBIT           BELARUS                        optimal              observed           1.3183761    1.1525662    1.4841861
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5041984   -0.5545922   -0.4538046
6 months    COHORTS          GUATEMALA                      optimal              observed          -1.9632092   -2.2748794   -1.6515390
6 months    COHORTS          INDIA                          optimal              observed          -1.0509426   -1.1163595   -0.9855257
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.8759729   -0.9224008   -0.8295450
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -1.5178422   -1.6402484   -1.3954360
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -1.2081082   -1.2331041   -1.1831122
6 months    MAL-ED           BRAZIL                         optimal              observed          -0.0638369   -0.3853321    0.2576582
6 months    MAL-ED           PERU                           optimal              observed          -1.3098506   -1.4227944   -1.1969068
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.9417680   -1.1284216   -0.7551144
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3628537   -1.4882724   -1.2374350
6 months    PROBIT           BELARUS                        optimal              observed           0.1936319    0.0964736    0.2907901
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2856624   -0.3590073   -0.2123174
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8577679   -0.8840835   -0.8314522
24 months   COHORTS          GUATEMALA                      optimal              observed          -2.9968041   -3.2598624   -2.7337458
24 months   COHORTS          INDIA                          optimal              observed          -2.6107441   -2.6582685   -2.5632197
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.6158924   -0.7183446   -0.5134402
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -1.4754241   -1.4883867   -1.4624615
24 months   MAL-ED           BRAZIL                         optimal              observed           0.0182535   -0.3218600    0.3583669
24 months   MAL-ED           PERU                           optimal              observed          -1.7241198   -1.8507434   -1.5974963
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -1.6025191   -1.8631040   -1.3419343
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.6331512   -2.7708312   -2.4954713
24 months   PROBIT           BELARUS                        optimal              observed          -0.1342501   -0.2675916   -0.0009087
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -1.5948462   -1.7478906   -1.4418018


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      observed             observed           0.1511213    0.0632481    0.2389944
Birth       COHORTS          INDIA                          observed             observed          -0.6774424   -0.7103357   -0.6445492
Birth       COHORTS          PHILIPPINES                    observed             observed          -0.2465548   -0.2856502   -0.2074594
Birth       JiVitA-4         BANGLADESH                     observed             observed          -1.5236006   -1.5727441   -1.4744571
Birth       MAL-ED           BRAZIL                         observed             observed          -0.6760000   -0.9521457   -0.3998543
Birth       MAL-ED           PERU                           observed             observed          -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED           SOUTH AFRICA                   observed             observed          -0.6317073   -0.8249555   -0.4384591
Birth       PROBIT           BELARUS                        observed             observed           1.3114417    1.1524752    1.4704082
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.5007838   -0.5213479   -0.4802197
6 months    COHORTS          GUATEMALA                      observed             observed          -1.8089474   -1.8800645   -1.7378303
6 months    COHORTS          INDIA                          observed             observed          -1.0418789   -1.0745363   -1.0092215
6 months    COHORTS          PHILIPPINES                    observed             observed          -1.1414425   -1.1836656   -1.0992193
6 months    Guatemala BSC    GUATEMALA                      observed             observed          -1.5624368   -1.6783540   -1.4465196
6 months    JiVitA-4         BANGLADESH                     observed             observed          -1.3441456   -1.3814027   -1.3068885
6 months    MAL-ED           BRAZIL                         observed             observed           0.0475758   -0.0963508    0.1915023
6 months    MAL-ED           PERU                           observed             observed          -1.3236661   -1.4316775   -1.2156546
6 months    MAL-ED           SOUTH AFRICA                   observed             observed          -1.0633202   -1.1909180   -0.9357224
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    PROBIT           BELARUS                        observed             observed           0.0980074    0.0062724    0.1897424
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5457721   -0.5948454   -0.4966988
6 months    ZVITAMBO         ZIMBABWE                       observed             observed          -0.8677917   -0.8934036   -0.8421799
24 months   COHORTS          GUATEMALA                      observed             observed          -2.9960594   -3.0622330   -2.9298858
24 months   COHORTS          INDIA                          observed             observed          -2.2131442   -2.2522996   -2.1739887
24 months   COHORTS          PHILIPPINES                    observed             observed          -2.4207616   -2.4660144   -2.3755087
24 months   JiVitA-4         BANGLADESH                     observed             observed          -1.7811362   -1.8166519   -1.7456205
24 months   MAL-ED           BRAZIL                         observed             observed           0.0061144   -0.1625850    0.1748138
24 months   MAL-ED           PERU                           observed             observed          -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED           SOUTH AFRICA                   observed             observed          -1.6450595   -1.7797240   -1.5103950
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6455607   -2.7807256   -2.5103959
24 months   PROBIT           BELARUS                        observed             observed          -0.1442891   -0.4253755    0.1367972
24 months   ZVITAMBO         ZIMBABWE                       observed             observed          -1.6034545   -1.6603071   -1.5466018


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      optimal              observed          -0.0309657   -0.0562228   -0.0057086
Birth       COHORTS          INDIA                          optimal              observed           0.2816909    0.2345013    0.3288804
Birth       COHORTS          PHILIPPINES                    optimal              observed           0.3227848    0.2717927    0.3737769
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -0.6577107   -0.7184082   -0.5970131
Birth       MAL-ED           BRAZIL                         optimal              observed          -0.1226898   -0.2543019    0.0089222
Birth       MAL-ED           PERU                           optimal              observed           0.1060052    0.0136249    0.1983855
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.0746461   -0.2759554    0.1266632
Birth       PROBIT           BELARUS                        optimal              observed          -0.0069344   -0.0245607    0.0106919
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed           0.0034146   -0.0423605    0.0491897
6 months    COHORTS          GUATEMALA                      optimal              observed           0.1542618   -0.1430461    0.4515698
6 months    COHORTS          INDIA                          optimal              observed           0.0090637   -0.0611815    0.0793090
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.2654696   -0.3212243   -0.2097148
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -0.0445946   -0.0844615   -0.0047277
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.1360374   -0.1802289   -0.0918460
6 months    MAL-ED           BRAZIL                         optimal              observed           0.1114127   -0.1613297    0.3841551
6 months    MAL-ED           PERU                           optimal              observed          -0.0138155   -0.0574655    0.0298345
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.1215522   -0.2772674    0.0341630
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0058912   -0.0200863    0.0083038
6 months    PROBIT           BELARUS                        optimal              observed          -0.0956245   -0.1852152   -0.0060338
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2601097   -0.3294474   -0.1907720
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0100239   -0.0168556   -0.0031921
24 months   COHORTS          GUATEMALA                      optimal              observed           0.0007447   -0.2503608    0.2518502
24 months   COHORTS          INDIA                          optimal              observed           0.3976000    0.3422211    0.4529789
24 months   COHORTS          PHILIPPINES                    optimal              observed          -1.8048692   -1.9168540   -1.6928844
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -0.3057121   -0.3428819   -0.2685423
24 months   MAL-ED           BRAZIL                         optimal              observed          -0.0121391   -0.3211188    0.2968407
24 months   MAL-ED           PERU                           optimal              observed          -0.0283511   -0.0793466    0.0226444
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -0.0425404   -0.2656616    0.1805809
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0124095   -0.0327535    0.0079344
24 months   PROBIT           BELARUS                        optimal              observed          -0.0100390   -0.2546538    0.2345758
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0086082   -0.1501291    0.1329126
