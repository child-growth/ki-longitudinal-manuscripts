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
![](/tmp/e8870632-0364-4b0e-b89d-e8848c413f31/e22e178e-abb1-4320-9647-d6b295b13dd5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e8870632-0364-4b0e-b89d-e8848c413f31/e22e178e-abb1-4320-9647-d6b295b13dd5/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e8870632-0364-4b0e-b89d-e8848c413f31/e22e178e-abb1-4320-9647-d6b295b13dd5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.6616190   -1.3439333    0.0206953
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.9336653   -1.1565460   -0.7107845
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.1350163   -0.5437701    0.2737374
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.3345119   -0.5111092   -0.1579147
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 1.3728619    1.2000816    1.5456422
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                 1.3223045    1.1616591    1.4829498
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1652860   -0.2380799   -0.0924921
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.5282018   -0.5497860   -0.5066177
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.2726962   -1.7701402   -0.7752522
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.4193853   -1.5663824   -1.2723882
6 months    ki1000108-IRC              INDIA                          0                    NA                -1.1220207   -1.5100761   -0.7339654
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.2533322   -1.3908994   -1.1157650
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.9601067   -1.1500329   -0.7701804
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.1116262   -1.1992169   -1.0240355
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.1629155   -1.3029501   -1.0228809
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.3569162   -1.4727585   -1.2410739
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4090689   -0.5788987   -0.2392391
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5562338   -0.6079563   -0.5045112
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.1784898    0.0705338    0.2864458
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0972748    0.0007999    0.1937497
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.8905059   -0.9777574   -0.8032544
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.8909603   -0.9184307   -0.8634900
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.0209009   -1.1287086   -0.9130932
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3363528   -1.3595162   -1.3131895
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.0678492   -1.1954877   -0.9402107
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.3732874   -1.4170186   -1.3295563
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -2.5073392   -3.0495539   -1.9651245
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.5579000   -2.6604110   -2.4553889
24 months   ki1000108-IRC              INDIA                          0                    NA                -1.6400731   -1.8667929   -1.4133532
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.8084926   -1.9127053   -1.7042799
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.4089147   -1.5779269   -1.2399024
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.6365616   -1.7334833   -1.5396399
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.4829464   -1.6733604   -1.2925323
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.6057558   -1.7619552   -1.4495564
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.1025581   -0.3340438    0.1289276
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.1336500   -0.4512329    0.1839330
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -2.3081846   -2.7030441   -1.9133251
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -2.4076762   -2.5281421   -2.2872102
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.6543845   -1.7899651   -1.5188039
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.0331833   -2.0607525   -2.0056141
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.4527916   -1.5813384   -1.3242448
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.7766270   -1.8157413   -1.7375126


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3254775    1.1669293    1.4840258
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4977661   -0.5184205   -0.4771117
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2731619   -1.3626957   -1.1836282
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5455565   -0.5948696   -0.4962435
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8916778   -0.9177946   -0.8655610
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3134013   -1.3366073   -1.2901952
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3500888   -1.3921730   -1.3080047
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.5552692   -1.6759022   -1.4346363
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -2.3985333   -2.5145993   -2.2824674
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0134681   -2.0411635   -1.9857727
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7509129   -1.7892403   -1.7125856


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.2720463   -0.9930445    0.4489519
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                 -0.1994956   -0.6487020    0.2497108
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                 -0.0505574   -0.1614329    0.0603181
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.3629158   -0.4388332   -0.2869984
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.1466891   -0.6677882    0.3744100
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 -0.1313115   -0.5448641    0.2822411
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1515196   -0.3605258    0.0574866
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1940007   -0.3750366   -0.0129648
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1471648   -0.3238864    0.0295567
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 -0.0812150   -0.1679750    0.0055451
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0004544   -0.0916100    0.0907012
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.3154520   -0.4241523   -0.2067516
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.3054382   -0.4390838   -0.1717926
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0505608   -0.6028915    0.5017699
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.1684196   -0.4181706    0.0813315
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.2276469   -0.4215421   -0.0337517
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1228094   -0.3694020    0.1237831
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.0310919   -0.3136407    0.2514570
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0994915   -0.5094098    0.3104267
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.3787988   -0.5153034   -0.2422942
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.3238353   -0.4548933   -0.1927774


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.3038254   -0.9507848    0.3431339
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.1730249   -0.5457341    0.1996843
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -0.0473843   -0.1452555    0.0504868
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.3324801   -0.4023677   -0.2625925
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1507546   -0.6378575    0.3363484
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.1123855   -0.4578116    0.2330406
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1269974   -0.2960947    0.0420999
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1102464   -0.2181730   -0.0023198
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1364876   -0.2985924    0.0256172
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0714912   -0.1492907    0.0063084
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0011719   -0.0851652    0.0828213
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.2925004   -0.3968596   -0.1881411
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.2822396   -0.4046711   -0.1598081
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0520291   -0.5732522    0.4691940
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.1424045   -0.3515374    0.0667284
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1772032   -0.3266720   -0.0277344
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0723229   -0.2255196    0.0808739
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0288467   -0.2799976    0.2223042
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0903487   -0.4744025    0.2937051
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.3590836   -0.4897592   -0.2284079
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.2981213   -0.4193976   -0.1768450
