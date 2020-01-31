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
* W_mwtkg
* W_mbmi
* single
* W_nrooms
* brthmon
* W_parity
* impfloor
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        vagbrth    n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              11      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              81      92
Birth       ki1000108-IRC              INDIA                          0              68     388
Birth       ki1000108-IRC              INDIA                          1             320     388
Birth       ki1017093b-PROVIDE         BANGLADESH                     0             108     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1             431     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0             186     477
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1             291     477
Birth       ki1119695-PROBIT           BELARUS                        0            1597   13890
Birth       ki1119695-PROBIT           BELARUS                        1           12293   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0            1166   13761
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1           12595   13761
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0             539   22418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           21879   22418
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0              76    2822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1            2746    2822
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              25     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1             344     369
6 months    ki1000108-IRC              INDIA                          0              69     407
6 months    ki1000108-IRC              INDIA                          1             338     407
6 months    ki1017093b-PROVIDE         BANGLADESH                     0             139     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1             465     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             187     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             270     457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             189    2005
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            1816    2005
6 months    ki1119695-PROBIT           BELARUS                        0            1799   15761
6 months    ki1119695-PROBIT           BELARUS                        1           13962   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0             740    8601
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            7861    8601
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0            1077   16732
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           15655   16732
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0             336    4052
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            3716    4052
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              24     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             347     371
24 months   ki1000108-IRC              INDIA                          0              69     409
24 months   ki1000108-IRC              INDIA                          1             340     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0             137     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1             441     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              99     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             161     260
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               4       6
24 months   ki1119695-PROBIT           BELARUS                        0             472    4035
24 months   ki1119695-PROBIT           BELARUS                        1            3563    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0             133    1619
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            1486    1619
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
![](/tmp/ead30366-f308-4b30-b115-dcea235397c4/76af8826-d98b-4650-92a3-2eafa887c78f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.1148498   -1.4619426   -0.7677570
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.1936667   -0.5514553    0.1641219
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7413683   -0.9434043   -0.5393324
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.9353727   -1.0426724   -0.8280731
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3866738    1.2221163    1.5512314
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1872346   -0.2596039   -0.1148654
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2115842   -1.2912654   -1.1319030
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1017915   -1.3456468   -0.8579361
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.6138476   -1.9562030   -1.2714922
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.0248864   -1.3660512   -0.6837216
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9947816   -1.1814467   -0.8081164
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1732929   -1.3129548   -1.0336310
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3898066   -0.5542449   -0.2253683
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1732455    0.0716150    0.2748760
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.9035701   -0.9844818   -0.8226583
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.0255494   -1.1110309   -0.9400680
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1166782   -1.2437776   -0.9895788
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.5984071   -2.9810151   -2.2157990
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.5773550   -1.7807372   -1.3739728
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.5040912   -1.6775331   -1.3306492
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.4912378   -1.6798221   -1.3026535
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1543582   -0.3478837    0.0391673
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.4831664   -1.6603873   -1.3059454
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.7029636   -1.8311664   -1.5747608
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.5243205   -1.6559099   -1.3927312


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.9480084   -1.0301396   -0.8658772
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3269446    1.1683850    1.4855041
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4970772   -0.5177022   -0.4764523
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5892417   -1.6084834   -1.5700000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.5231680   -1.5722488   -1.4740872
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.2731619   -1.3626957   -1.1836282
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5455565   -0.5948696   -0.4962435
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8685914   -0.8942954   -0.8428875
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3134013   -1.3366073   -1.2901952
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3500888   -1.3921730   -1.3080047
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7987775   -1.8923914   -1.7051636
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.5776538   -1.6988448   -1.4564629
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.6043391   -1.6616652   -1.5470130
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0144245   -2.0420946   -1.9867544
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7734527   -1.8119258   -1.7349797


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.1536541   -0.1046855    0.4119937
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.1143745   -0.4277985    0.1990494
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1437337   -0.3229481    0.0354807
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0126357   -0.0947214    0.0694501
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0597293   -0.1360966    0.0166381
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3098426   -0.3792892   -0.2403960
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.3776575   -0.4560322   -0.2992828
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.4213765   -0.6636319   -0.1791211
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.1903968   -0.1319810    0.5127747
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.2095198   -0.4997834    0.0807438
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0969100   -0.2619701    0.0681502
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0998690   -0.2072257    0.0074876
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1557499   -0.3126484    0.0011486
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0662469   -0.1321633   -0.0003304
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0349786   -0.0417854    0.1117426
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2878518   -0.3705623   -0.2051414
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2334106   -0.3548980   -0.1119233
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0395391   -0.3299644    0.4090427
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.2214225   -0.4104354   -0.0324096
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0983310   -0.2525990    0.0559371
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0864160   -0.2367598    0.0639277
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0229534   -0.2252223    0.2711291
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1211727   -0.2924265    0.0500810
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.3114609   -0.4345693   -0.1883526
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2491322   -0.3740337   -0.1242307
