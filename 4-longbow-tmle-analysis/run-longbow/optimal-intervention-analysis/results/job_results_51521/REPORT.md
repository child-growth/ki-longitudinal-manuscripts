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

**Intervention Variable:** vagbrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        vagbrth    n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              11      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              79      90
Birth       ki1000108-IRC              INDIA                          0              68     388
Birth       ki1000108-IRC              INDIA                          1             320     388
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               1      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              18      19
Birth       ki1119695-PROBIT           BELARUS                        0            1597   13884
Birth       ki1119695-PROBIT           BELARUS                        1           12287   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0            1162   13716
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1           12554   13716
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               3   19586
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           19583   19586
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               1     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             821     822
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              25     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1             344     369
6 months    ki1000108-IRC              INDIA                          0              69     407
6 months    ki1000108-IRC              INDIA                          1             338     407
6 months    ki1017093b-PROVIDE         BANGLADESH                     0             134     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1             449     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             187     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             270     457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             189    2005
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            1816    2005
6 months    ki1119695-PROBIT           BELARUS                        0            1799   15761
6 months    ki1119695-PROBIT           BELARUS                        1           13962   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0             707    8228
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            7521    8228
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0            1077   16732
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           15655   16732
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0             336    4052
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            3716    4052
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              25     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             347     372
24 months   ki1000108-IRC              INDIA                          0              69     409
24 months   ki1000108-IRC              INDIA                          1             340     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0             137     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1             440     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              99     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             161     260
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               4       6
24 months   ki1119695-PROBIT           BELARUS                        0             472    4035
24 months   ki1119695-PROBIT           BELARUS                        1            3563    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0              29     450
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             421     450
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             480    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            8104    8584
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0             323    4020
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            3697    4020


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/7df0c59b-ff5b-4dcc-bbdb-9645a3afcb59/ca509901-1314-4d8c-9ad0-95808d83cc4b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.1736013   -1.4510679   -0.8961348
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0835644   -0.4416061    0.2744772
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3685484    1.2056940    1.5314029
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1729046   -0.2464856   -0.0993237
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.0865494   -1.2559736   -0.9171252
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.1592347   -1.4572534   -0.8612160
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9654849   -1.1562848   -0.7746850
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1749816   -1.3151270   -1.0348361
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3946443   -0.5666286   -0.2226599
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1727053    0.0731767    0.2722339
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8969955   -0.9642340   -0.8297570
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.0118706   -1.1167864   -0.9069548
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.0794980   -1.1999763   -0.9590198
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.6289686   -3.0270740   -2.2308633
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.6273616   -1.8576067   -1.3971165
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.3859889   -1.5484200   -1.2235579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.4928122   -1.6777017   -1.3079227
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0510974   -0.2866402    0.1844454
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -2.4538207   -2.7979033   -2.1097380
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.6708926   -1.8041962   -1.5375891
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.4513165   -1.5793611   -1.3232719


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3254775    1.1669293    1.4840258
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4977661   -0.5184205   -0.4771117
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.2731619   -1.3626957   -1.1836282
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5455565   -0.5948696   -0.4962435
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8916778   -0.9177946   -0.8655610
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3134013   -1.3366073   -1.2901952
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3500888   -1.3921730   -1.3080047
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.5552692   -1.6759022   -1.4346363
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -2.3985333   -2.5145993   -2.2824674
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0134681   -2.0411635   -1.9857727
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7509129   -1.7892403   -1.7125856


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.2081569    0.0453371    0.3709767
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2244768   -0.5434226    0.0944690
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0430709   -0.1270676    0.0409258
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3248615   -0.3955004   -0.2542225
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3369014   -0.4994412   -0.1743615
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.0751715   -0.3466355    0.1962925
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1216191   -0.2913080    0.0480697
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0981804   -0.2059897    0.0096289
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1509122   -0.3150543    0.0132299
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0657067   -0.1347527    0.0033394
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0053177   -0.0562168    0.0668522
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.3015306   -0.4031991   -0.1998622
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2705908   -0.3855847   -0.1555969
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0696003   -0.3035440    0.4427446
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1551160   -0.3667218    0.0564898
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2001289   -0.3437015   -0.0565564
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0624570   -0.2113340    0.0864200
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0803074   -0.2818444    0.1212296
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0552873   -0.2828595    0.3934342
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.3425754   -0.4710078   -0.2141431
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2995964   -0.4204137   -0.1787791
