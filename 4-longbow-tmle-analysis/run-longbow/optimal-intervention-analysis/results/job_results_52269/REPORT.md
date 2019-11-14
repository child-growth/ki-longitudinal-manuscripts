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
* impsan
* safeh20
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
* delta_impsan
* delta_safeh20

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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0            1472   26599
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           25127   26599
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0            1071   16675
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           15604   16675
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             476    8517
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            8041    8517
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
![](/tmp/a87a21a5-924f-4da6-8519-b880f3c7b173/0dae6785-8894-4487-8f13-6678484c2c9f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.0888821   -1.4738756   -0.7038886
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.1622592   -0.5605627    0.2360443
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.6960117   -0.8985374   -0.4934861
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.9236698   -1.0391063   -0.8082334
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3878788    1.2271234    1.5486342
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1689017   -0.2416459   -0.0961574
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0547335   -0.1754757    0.0660087
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.0516946   -1.2383986   -0.8649906
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.2467977   -1.4874737   -1.0061218
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.5500453   -1.8144436   -1.2856471
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9990653   -1.1511720   -0.8469586
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1759065   -1.3212235   -1.0305895
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4337443   -0.6003759   -0.2671127
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1704701    0.0607600    0.2801803
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8814916   -0.9653634   -0.7976198
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1219433   -1.2202989   -1.0235876
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2199606   -1.3592474   -1.0806737
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4681379   -2.8717366   -2.0645391
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.7413615   -1.9721806   -1.5105424
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.4089046   -1.5680739   -1.2497353
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.4859413   -1.6864993   -1.2853833
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1688012   -0.5013231    0.1637206
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.4585848   -1.6379325   -1.2792372
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.7452048   -1.8634858   -1.6269237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.5956700   -1.7246819   -1.4666581


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.9480084   -1.0301396   -0.8658772
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3269446    1.1683850    1.4855041
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4970772   -0.5177022   -0.4764523
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.1739746   -1.2019520   -1.1459972
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.5231680   -1.5722488   -1.4740872
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.2731619   -1.3626957   -1.1836282
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5455565   -0.5948696   -0.4962435
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8685914   -0.8942954   -0.8428875
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3358351   -1.3589861   -1.3126841
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3500888   -1.3921730   -1.3080047
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7987775   -1.8923914   -1.7051636
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.5776538   -1.6988448   -1.4564629
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.6043391   -1.6616652   -1.5470130
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0204086   -2.0480344   -1.9927828
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7734527   -1.8119258   -1.7349797


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.1276864   -0.1624181    0.4177910
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.1457821   -0.5062908    0.2147266
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1890903   -0.3686989   -0.0094817
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0243385   -0.1068735    0.0581964
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0609343   -0.1434388    0.0215702
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3281756   -0.3979629   -0.2583883
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1192411   -1.2347015   -1.0037807
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.4714733   -0.6578141   -0.2851325
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1766530   -0.4015074    0.0482014
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.3156391    0.0807971    0.5504811
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0926262   -0.2261653    0.0409129
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0972554   -0.2091956    0.0146848
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1118122   -0.2705345    0.0469101
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0634715   -0.1387534    0.0118104
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0129002   -0.0674286    0.0932290
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2138918   -0.3092981   -0.1184856
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1301283   -0.2657373    0.0054808
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0907301   -0.4804445    0.2989844
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0574160   -0.2663219    0.1514899
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1935176   -0.3368514   -0.0501837
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0917126   -0.2563861    0.0729609
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0373964   -0.1219371    0.1967300
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1457543   -0.3187794    0.0272708
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2752038   -0.3892744   -0.1611332
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1777828   -0.3015854   -0.0539801
