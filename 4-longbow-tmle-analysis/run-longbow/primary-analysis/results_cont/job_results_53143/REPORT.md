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
![](/tmp/0d10c6c2-82ef-41b0-b4be-d06443397a06/35e68093-e9ba-4a8a-aa30-d15fb9f3d51b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0d10c6c2-82ef-41b0-b4be-d06443397a06/35e68093-e9ba-4a8a-aa30-d15fb9f3d51b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0d10c6c2-82ef-41b0-b4be-d06443397a06/35e68093-e9ba-4a8a-aa30-d15fb9f3d51b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.6480455   -1.4427618    0.1466708
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.9362396   -1.1684195   -0.7040597
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.2080771   -0.5824170    0.1662628
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.3415642   -0.5180489   -0.1650795
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.6878466   -0.9036688   -0.4720245
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.9182757   -0.9991409   -0.8374104
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.9675872   -1.0978570   -0.8373174
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.9331751   -1.0390015   -0.8273486
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 1.3603641    1.1863580    1.5343702
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                 1.3256397    1.1645646    1.4867149
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1856064   -0.2583983   -0.1128146
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.5255505   -0.5470667   -0.5040343
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.2174352   -1.2987753   -1.1360951
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.5986134   -1.6181314   -1.5790953
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.0745235   -1.3428831   -0.8061640
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.5330147   -1.5830554   -1.4829740
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.3184882   -1.8307247   -0.8062516
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.4167526   -1.5638861   -1.2696191
6 months    ki1000108-IRC              INDIA                          0                    NA                -1.1118394   -1.4928955   -0.7307833
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.2524109   -1.3900781   -1.1147437
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.0071983   -1.1815863   -0.8328102
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.1234010   -1.2080406   -1.0387614
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.1750669   -1.3171251   -1.0330087
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.3421471   -1.4580238   -1.2262704
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4037529   -0.5700325   -0.2374733
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5587001   -0.6103593   -0.5070410
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.1859450    0.0764173    0.2954726
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0971138    0.0005913    0.1936363
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.8619039   -0.9468185   -0.7769892
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.8692870   -0.8962529   -0.8423212
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.0252351   -1.1129026   -0.9375677
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3331317   -1.3562057   -1.3100576
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.1253241   -1.2579885   -0.9926596
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.3698398   -1.4136441   -1.3260355
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -2.5439793   -2.9554387   -2.1325199
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.5687759   -2.6716480   -2.4659039
24 months   ki1000108-IRC              INDIA                          0                    NA                -1.6618337   -1.8838221   -1.4398453
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.8267529   -1.9300457   -1.7234600
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.4540040   -1.6265203   -1.2814876
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.6500319   -1.7451261   -1.5549377
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.5098196   -1.7019135   -1.3177257
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.6256135   -1.7818229   -1.4694040
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.1504763   -0.3844403    0.0834878
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.1336109   -0.4493538    0.1821321
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -1.4395856   -1.6154694   -1.2637019
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.6191746   -1.6793245   -1.5590246
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.6965669   -1.8314887   -1.5616451
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.0316596   -2.0591852   -2.0041340
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.5193380   -1.6562891   -1.3823868
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.7943607   -1.8337185   -1.7550028


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9480084   -1.0301396   -0.8658772
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3269446    1.1683850    1.4855041
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4970772   -0.5177022   -0.4764523
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5892417   -1.6084834   -1.5700000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.5231680   -1.5722488   -1.4740872
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2731619   -1.3626957   -1.1836282
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5455565   -0.5948696   -0.4962435
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8685914   -0.8942954   -0.8428875
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3134013   -1.3366073   -1.2901952
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3500888   -1.3921730   -1.3080047
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.5776538   -1.6988448   -1.4564629
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6043391   -1.6616652   -1.5470130
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0144245   -2.0420946   -1.9867544
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7734527   -1.8119258   -1.7349797


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.2881941   -1.1233308    0.5469426
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                 -0.1334871   -0.5477220    0.2807477
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.2304291   -0.4601129   -0.0007452
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0344121   -0.1335088    0.2023331
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                 -0.0347244   -0.1435591    0.0741104
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.3399441   -0.4158036   -0.2640845
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.3811781   -0.4634163   -0.2989400
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.4584912   -0.7316189   -0.1853634
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0982644   -0.6328973    0.4363684
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 -0.1405715   -0.5446865    0.2635436
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1162027   -0.3101233    0.0777179
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1670802   -0.3504808    0.0163203
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1549472   -0.3283991    0.0185046
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 -0.0888312   -0.1733560   -0.0043064
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0073832   -0.0960324    0.0812660
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.3078965   -0.3970770   -0.2187160
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.2445158   -0.3829649   -0.1060666
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0247966   -0.4491736    0.3995803
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.1649192   -0.4105048    0.0806664
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1960280   -0.3931098    0.0010539
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1157939   -0.3627661    0.1311784
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                  0.0168654   -0.2622828    0.2960137
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.1795890   -0.3642810    0.0051031
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.3350927   -0.4706332   -0.1995521
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.2750227   -0.4146044   -0.1354410


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.3131502   -1.0713761    0.4450757
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.0999641   -0.4397806    0.2398523
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1972554   -0.3906863   -0.0038245
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0195788   -0.0840302    0.1231878
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -0.0334195   -0.1295562    0.0627171
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.3114708   -0.3813391   -0.2416025
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.3718064   -0.4515359   -0.2920770
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.4486444   -0.7143532   -0.1829357
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1049626   -0.6058411    0.3959159
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.1225668   -0.4593298    0.2141961
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0844932   -0.2387940    0.0698076
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0980951   -0.2076005    0.0114104
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1418036   -0.3004515    0.0168442
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0789464   -0.1536889   -0.0042038
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0066876   -0.0882894    0.0749142
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.2881661   -0.3730777   -0.2032546
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.2247648   -0.3523260   -0.0972036
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0148886   -0.4134106    0.3836333
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.1369438   -0.3420006    0.0681130
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1484182   -0.3026718    0.0058354
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0678343   -0.2226897    0.0870211
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0190715   -0.2307846    0.2689275
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1647535   -0.3345370    0.0050300
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.3178576   -0.4477675   -0.1879476
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.2541148   -0.3844317   -0.1237978
