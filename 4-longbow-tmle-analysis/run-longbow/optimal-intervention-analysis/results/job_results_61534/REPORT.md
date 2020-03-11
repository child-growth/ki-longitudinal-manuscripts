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

agecat      studyid          country                        vagbrth    n_cell       n
----------  ---------------  -----------------------------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          0              11      92
Birth       CMC-V-BCS-2002   INDIA                          1              81      92
Birth       IRC              INDIA                          0              68     388
Birth       IRC              INDIA                          1             320     388
Birth       JiVitA-3         BANGLADESH                     0             539   22418
Birth       JiVitA-3         BANGLADESH                     1           21879   22418
Birth       JiVitA-4         BANGLADESH                     0              76    2822
Birth       JiVitA-4         BANGLADESH                     1            2746    2822
Birth       NIH-Crypto       BANGLADESH                     0             186     477
Birth       NIH-Crypto       BANGLADESH                     1             291     477
Birth       PROBIT           BELARUS                        0            1597   13893
Birth       PROBIT           BELARUS                        1           12296   13893
Birth       PROVIDE          BANGLADESH                     0             108     539
Birth       PROVIDE          BANGLADESH                     1             431     539
Birth       ZVITAMBO         ZIMBABWE                       0            1166   13761
Birth       ZVITAMBO         ZIMBABWE                       1           12595   13761
6 months    CMC-V-BCS-2002   INDIA                          0              25     369
6 months    CMC-V-BCS-2002   INDIA                          1             344     369
6 months    IRC              INDIA                          0              69     407
6 months    IRC              INDIA                          1             338     407
6 months    JiVitA-3         BANGLADESH                     0            1077   16732
6 months    JiVitA-3         BANGLADESH                     1           15655   16732
6 months    JiVitA-4         BANGLADESH                     0             336    4052
6 months    JiVitA-4         BANGLADESH                     1            3716    4052
6 months    NIH-Crypto       BANGLADESH                     0             187     457
6 months    NIH-Crypto       BANGLADESH                     1             270     457
6 months    PROBIT           BELARUS                        0            1799   15760
6 months    PROBIT           BELARUS                        1           13961   15760
6 months    PROVIDE          BANGLADESH                     0             139     604
6 months    PROVIDE          BANGLADESH                     1             465     604
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             189    2005
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            1816    2005
6 months    ZVITAMBO         ZIMBABWE                       0             740    8601
6 months    ZVITAMBO         ZIMBABWE                       1            7861    8601
24 months   CMC-V-BCS-2002   INDIA                          0              24     371
24 months   CMC-V-BCS-2002   INDIA                          1             347     371
24 months   IRC              INDIA                          0              69     409
24 months   IRC              INDIA                          1             340     409
24 months   JiVitA-3         BANGLADESH                     0             480    8584
24 months   JiVitA-3         BANGLADESH                     1            8104    8584
24 months   JiVitA-4         BANGLADESH                     0             323    4020
24 months   JiVitA-4         BANGLADESH                     1            3697    4020
24 months   NIH-Crypto       BANGLADESH                     0              99     260
24 months   NIH-Crypto       BANGLADESH                     1             161     260
24 months   PROBIT           BELARUS                        0             472    4035
24 months   PROBIT           BELARUS                        1            3563    4035
24 months   PROVIDE          BANGLADESH                     0             137     578
24 months   PROVIDE          BANGLADESH                     1             441     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               4       6
24 months   ZVITAMBO         ZIMBABWE                       0             133    1619
24 months   ZVITAMBO         ZIMBABWE                       1            1486    1619


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/626da965-a3a7-4d92-97b2-e4476267e8c4/eac3cc96-7640-47cf-acaf-26dc093d930a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.9847168   -1.2292482   -0.7401853
Birth       IRC              INDIA                          optimal              observed          -0.3661116   -0.7194919   -0.0127313
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -1.2599426   -1.3256374   -1.1942478
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -1.1184821   -1.3339691   -0.9029951
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.8820272   -0.9951576   -0.7688968
Birth       PROBIT           BELARUS                        optimal              observed           1.3503386    1.1890675    1.5116098
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.7343271   -0.9239815   -0.5446728
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1747525   -0.2474645   -0.1020405
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -1.4264971   -1.6080250   -1.2449692
6 months    IRC              INDIA                          optimal              observed          -1.2423809   -1.5774124   -0.9073495
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -1.0887643   -1.1875964   -0.9899322
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -1.2056479   -1.3270649   -1.0842310
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -1.1804447   -1.3273207   -1.0335688
6 months    PROBIT           BELARUS                        optimal              observed           0.1339018    0.0396664    0.2281372
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.9352400   -1.0872284   -0.7832515
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3922242   -0.5614548   -0.2229936
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8491294   -0.9358839   -0.7623749
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -2.3136200   -2.6172145   -2.0100255
24 months   IRC              INDIA                          optimal              observed          -1.6564745   -1.8381033   -1.4748458
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.7363947   -1.8600390   -1.6127504
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -1.5710368   -1.7058342   -1.4362395
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -1.4564292   -1.6573505   -1.2555079
24 months   PROBIT           BELARUS                        optimal              observed          -0.1449851   -0.4267224    0.1367521
24 months   PROVIDE          BANGLADESH                     optimal              observed          -1.4904761   -1.6529184   -1.3280338
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -1.4717429   -1.6470460   -1.2964399


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          observed             observed          -0.9611957   -1.1776967   -0.7446946
Birth       IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       JiVitA-3         BANGLADESH                     observed             observed          -1.5892417   -1.6084834   -1.5700000
Birth       JiVitA-4         BANGLADESH                     observed             observed          -1.5231680   -1.5722488   -1.4740872
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -0.9480084   -1.0301396   -0.8658772
Birth       PROBIT           BELARUS                        observed             observed           1.3114417    1.1524752    1.4704082
Birth       PROVIDE          BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.4970772   -0.5177022   -0.4764523
6 months    CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    JiVitA-3         BANGLADESH                     observed             observed          -1.3134013   -1.3366073   -1.2901952
6 months    JiVitA-4         BANGLADESH                     observed             observed          -1.3500888   -1.3921730   -1.3080047
6 months    NIH-Crypto       BANGLADESH                     observed             observed          -1.2731619   -1.3626957   -1.1836282
6 months    PROBIT           BELARUS                        observed             observed           0.0980074    0.0062724    0.1897424
6 months    PROVIDE          BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5455565   -0.5948696   -0.4962435
6 months    ZVITAMBO         ZIMBABWE                       observed             observed          -0.8685914   -0.8942954   -0.8428875
24 months   CMC-V-BCS-2002   INDIA                          observed             observed          -2.5588679   -2.6583730   -2.4593629
24 months   IRC              INDIA                          observed             observed          -1.7987775   -1.8923914   -1.7051636
24 months   JiVitA-3         BANGLADESH                     observed             observed          -2.0144245   -2.0420946   -1.9867544
24 months   JiVitA-4         BANGLADESH                     observed             observed          -1.7734527   -1.8119258   -1.7349797
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -1.5776538   -1.6988448   -1.4564629
24 months   PROBIT           BELARUS                        observed             observed          -0.1442891   -0.4253755    0.1367972
24 months   PROVIDE          BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ZVITAMBO         ZIMBABWE                       observed             observed          -1.6043391   -1.6616652   -1.5470130


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed           0.0235211   -0.0748962    0.1219385
Birth       IRC              INDIA                          optimal              observed           0.0580704   -0.2644793    0.3806201
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.3292991   -0.3940873   -0.2645109
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -0.4046858   -0.6185048   -0.1908668
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.0659812   -0.1517960    0.0198337
Birth       PROBIT           BELARUS                        optimal              observed          -0.0388969   -0.1141915    0.0363977
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.1507749   -0.3198238    0.0182739
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3223247   -0.3920702   -0.2525792
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed           0.0030463   -0.1704672    0.1765598
6 months    IRC              INDIA                          optimal              observed           0.0079747   -0.2792998    0.2952492
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.2246369   -0.3206854   -0.1285885
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.1444409   -0.2607966   -0.0280852
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.0927172   -0.2063421    0.0209077
6 months    PROBIT           BELARUS                        optimal              observed          -0.0358944   -0.0799389    0.0081501
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.1564515   -0.2882745   -0.0246286
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1533323   -0.3146429    0.0079782
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0194620   -0.1028439    0.0639198
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2452479   -0.5365838    0.0460880
24 months   IRC              INDIA                          optimal              observed          -0.1423030   -0.3063866    0.0217807
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.2780298   -0.3971166   -0.1589430
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -0.2024159   -0.3326446   -0.0721873
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.1212246   -0.2843433    0.0418940
24 months   PROBIT           BELARUS                        optimal              observed           0.0006960   -0.0785051    0.0798971
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.1119460   -0.2544043    0.0305122
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1325962   -0.3017105    0.0365182
