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
Birth       ki1101329-Keneba           GAMBIA                         Full or late term       709    1439
Birth       ki1101329-Keneba           GAMBIA                         Preterm                 206    1439
Birth       ki1101329-Keneba           GAMBIA                         Early term              524    1439
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      9668   17161
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                2755   17161
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term             4738   17161
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      8511   15989
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                3047   15989
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term             4431   15989
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term      4309    8173
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                1598    8173
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term             2266    8173


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







# Results Detail

## Results Plots
![](/tmp/0e7e4f00-da40-4183-9fc3-3c5e154aaf5a/005e3730-7747-4902-955e-680a0305fe5b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2369490   -0.7542340    0.2803360
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.7644248   -0.9964969   -0.5323527
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.6420309   -0.9669276   -0.3171342
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.9578436   -1.1180893   -0.7975980
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -1.3481886   -1.4644017   -1.2319755
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.2046450   -1.4177070   -0.9915830
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.9487396   -1.2975141   -0.5999651
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.8770334   -0.9787252   -0.7753415
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6059086   -0.6780958   -0.5337214
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7538159   -0.7822244   -0.7254075
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.6872134   -0.9860599   -0.3883669
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.6317331   -0.8248170   -0.4386493
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.7050477   -1.2013790   -0.2087164
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.2350489    0.0640858    0.4060119
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1387975    0.0620023    0.2155927
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1080909   -0.2106315   -0.0055503
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5672390    0.4883381    0.6461398
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1217797   -0.0709964    0.3145558
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6699844   -0.7878502   -0.5521187
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2838423   -0.3540590   -0.2136256
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5974241   -0.6287208   -0.5661274
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4683620   -0.6584584   -0.2782655
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.6583963   -0.7755365   -0.5412560
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.6825733   -0.9990553   -0.3660914
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5611448   -0.7858747   -0.3364149
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7322962   -0.8312084   -0.6333839
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.7060203    0.5767351    0.8353055
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1854283   -0.2955492   -0.0753074
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.6358900   -0.7239832   -0.5477967
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5691820   -0.6268518   -0.5115123
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2707471   -1.3065106   -1.2349835


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0135366   -1.2024730   -0.8246002
Birth       ki1000109-EE               PAKISTAN                       observed             observed          -0.3333051   -0.5209779   -0.1456323
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       ki1101329-Keneba           GAMBIA                         observed             observed          -1.2295969   -1.2924879   -1.1667060
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1448633   -1.3544229   -0.9353037
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0358042   -1.1559527   -0.9156557
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -1.0098535   -1.0741510   -0.9455561
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7417745   -0.7882773   -0.6952718
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7794837   -0.7988174   -0.7601500
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.4909778   -0.6451612   -0.3367945
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5999270   -0.7403711   -0.4594828
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -0.7747022   -0.8887874   -0.6606170
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0815655    0.0271217    0.1360092
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1978013   -0.2594875   -0.1361150
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5792439    0.5193388    0.6391490
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1864566    0.1024304    0.2704827
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.6460976   -0.7081436   -0.5840516
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2920968   -0.3336448   -0.2505489
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5906060   -0.6106295   -0.5705826
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5369143   -0.6415957   -0.4322329
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7414957   -0.8350522   -0.6479392
24 months   ki1000109-EE               PAKISTAN                       observed             observed          -1.0120238   -1.1588493   -0.8651984
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.7953404   -0.8531640   -0.7375168
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6874295    0.5756922    0.7991668
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2397001   -0.3082360   -0.1711643
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.5717874   -0.6260792   -0.5174955
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6079283   -0.6449298   -0.5709269
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2935654   -1.3174540   -1.2696768


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2278766   -0.6323165    0.1765634
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2491118   -0.3960248   -0.1021988
Birth       ki1000109-EE               PAKISTAN                       optimal              observed           0.3087258    0.0473444    0.5701073
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2863077   -0.4330746   -0.1395408
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.1185916    0.0150647    0.2221185
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0597816   -0.0106668    0.1302301
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0870646   -0.4062484    0.2321192
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.1328202   -0.2076564   -0.0579840
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1358660   -0.1923850   -0.0793469
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0256678   -0.0445220   -0.0068136
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.1962355   -0.0716755    0.4641466
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.0318062   -0.1011551    0.1647674
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.0696545   -0.5532924    0.4139834
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2052866   -0.3541692   -0.0564041
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0572321   -0.1138515   -0.0006126
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0897104   -0.1707465   -0.0086743
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0120049   -0.0385862    0.0625960
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0646769   -0.0959934    0.2253472
6 months    ki1135781-COHORTS          INDIA                          optimal              observed           0.0238869   -0.0776702    0.1254440
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0082545   -0.0651579    0.0486489
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0068181   -0.0181190    0.0317551
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0685523   -0.2357997    0.0986951
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0830994   -0.1551062   -0.0110927
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.3294505   -0.6271057   -0.0317953
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0492054   -0.2581138    0.1597030
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0630442   -0.1421686    0.0160802
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0185908   -0.0740992    0.0369177
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0542719   -0.1428934    0.0343497
24 months   ki1135781-COHORTS          INDIA                          optimal              observed           0.0641026   -0.0076198    0.1358250
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0387463   -0.0849648    0.0074722
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0228183   -0.0492300    0.0035934
