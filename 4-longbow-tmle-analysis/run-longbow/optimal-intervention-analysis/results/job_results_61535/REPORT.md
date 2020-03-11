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

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        hdlvry    n_cell      n
----------  ---------------  -----------------------------  -------  -------  -----
Birth       CMC-V-BCS-2002   INDIA                          0             92     92
Birth       CMC-V-BCS-2002   INDIA                          1              0     92
Birth       COHORTS          INDIA                          0           2938   4694
Birth       COHORTS          INDIA                          1           1756   4694
Birth       EE               PAKISTAN                       0            161    238
Birth       EE               PAKISTAN                       1             77    238
Birth       GMS-Nepal        NEPAL                          0            157    646
Birth       GMS-Nepal        NEPAL                          1            489    646
Birth       IRC              INDIA                          0            381    388
Birth       IRC              INDIA                          1              7    388
Birth       JiVitA-3         BANGLADESH                     0             30    334
Birth       JiVitA-3         BANGLADESH                     1            304    334
Birth       JiVitA-4         BANGLADESH                     0            554   2808
Birth       JiVitA-4         BANGLADESH                     1           2254   2808
Birth       NIH-Crypto       BANGLADESH                     0            567    732
Birth       NIH-Crypto       BANGLADESH                     1            165    732
Birth       PROVIDE          BANGLADESH                     0            391    539
Birth       PROVIDE          BANGLADESH                     1            148    539
Birth       SAS-CompFeed     INDIA                          0            124   1085
Birth       SAS-CompFeed     INDIA                          1            961   1085
6 months    CMC-V-BCS-2002   INDIA                          0            358    366
6 months    CMC-V-BCS-2002   INDIA                          1              8    366
6 months    COHORTS          INDIA                          0           2900   4699
6 months    COHORTS          INDIA                          1           1799   4699
6 months    EE               PAKISTAN                       0            250    371
6 months    EE               PAKISTAN                       1            121    371
6 months    GMS-Nepal        NEPAL                          0            129    528
6 months    GMS-Nepal        NEPAL                          1            399    528
6 months    IRC              INDIA                          0            399    407
6 months    IRC              INDIA                          1              8    407
6 months    JiVitA-3         BANGLADESH                     0             39    332
6 months    JiVitA-3         BANGLADESH                     1            293    332
6 months    JiVitA-4         BANGLADESH                     0           1081   4038
6 months    JiVitA-4         BANGLADESH                     1           2957   4038
6 months    NIH-Crypto       BANGLADESH                     0            554    715
6 months    NIH-Crypto       BANGLADESH                     1            161    715
6 months    PROVIDE          BANGLADESH                     0            450    604
6 months    PROVIDE          BANGLADESH                     1            154    604
6 months    SAS-CompFeed     INDIA                          0            147   1091
6 months    SAS-CompFeed     INDIA                          1            944   1091
6 months    SAS-FoodSuppl    INDIA                          0             76    380
6 months    SAS-FoodSuppl    INDIA                          1            304    380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1889   1921
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             32   1921
24 months   CMC-V-BCS-2002   INDIA                          0            360    368
24 months   CMC-V-BCS-2002   INDIA                          1              8    368
24 months   COHORTS          INDIA                          0           2233   3556
24 months   COHORTS          INDIA                          1           1323   3556
24 months   EE               PAKISTAN                       0            112    166
24 months   EE               PAKISTAN                       1             54    166
24 months   GMS-Nepal        NEPAL                          0            118    456
24 months   GMS-Nepal        NEPAL                          1            338    456
24 months   IRC              INDIA                          0            401    409
24 months   IRC              INDIA                          1              8    409
24 months   JiVitA-3         BANGLADESH                     0             35    291
24 months   JiVitA-3         BANGLADESH                     1            256    291
24 months   JiVitA-4         BANGLADESH                     0           1033   4005
24 months   JiVitA-4         BANGLADESH                     1           2972   4005
24 months   NIH-Crypto       BANGLADESH                     0            391    514
24 months   NIH-Crypto       BANGLADESH                     1            123    514
24 months   PROVIDE          BANGLADESH                     0            433    578
24 months   PROVIDE          BANGLADESH                     1            145    578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      6


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/964f1d28-b62d-4114-9941-750a5d0a3009/b4568daf-293a-4816-8cbf-a698a5d67d5f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          optimal              observed          -0.6523035   -0.7013989   -0.6032080
Birth       EE               PAKISTAN                       optimal              observed          -1.8849288   -2.1747331   -1.5951245
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.9974286   -1.1247512   -0.8701060
Birth       IRC              INDIA                          optimal              observed          -0.5999288   -1.2963275    0.0964698
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -1.1510567   -1.5008305   -0.8012828
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -1.3916063   -1.5123563   -1.2708563
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.8939294   -0.9716054   -0.8162534
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.8527417   -0.9416785   -0.7638049
Birth       SAS-CompFeed     INDIA                          optimal              observed          -1.4246252   -1.5554399   -1.2938105
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.9589099   -1.8126573   -0.1051625
6 months    COHORTS          INDIA                          optimal              observed          -1.0082246   -1.0557011   -0.9607482
6 months    EE               PAKISTAN                       optimal              observed          -1.9973994   -2.1625897   -1.8322091
6 months    GMS-Nepal        NEPAL                          optimal              observed          -1.2193115   -1.3713347   -1.0672883
6 months    IRC              INDIA                          optimal              observed          -1.2275706   -1.3617715   -1.0933697
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -1.2354049   -1.6354226   -0.8353873
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -1.2661120   -1.3525419   -1.1796821
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -1.1668497   -1.2677527   -1.0659467
6 months    PROVIDE          BANGLADESH                     optimal              observed          -1.0326819   -1.1178589   -0.9475050
6 months    SAS-CompFeed     INDIA                          optimal              observed          -1.4046692   -1.4962983   -1.3130401
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -1.6883825   -1.9141766   -1.4625885
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5414925   -0.5928128   -0.4901722
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -2.9912932   -3.3428401   -2.6397463
24 months   COHORTS          INDIA                          optimal              observed          -2.1143375   -2.1692421   -2.0594330
24 months   EE               PAKISTAN                       optimal              observed          -2.7254768   -2.9383450   -2.5126086
24 months   GMS-Nepal        NEPAL                          optimal              observed          -1.7917387   -1.9680953   -1.6153820
24 months   IRC              INDIA                          optimal              observed          -1.7871175   -1.8820590   -1.6921761
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.9899914   -2.4170244   -1.5629584
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -1.6819392   -1.7593139   -1.6045646
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -1.3994590   -1.5386403   -1.2602777
24 months   PROVIDE          BANGLADESH                     optimal              observed          -1.5699016   -1.6650108   -1.4747923


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          observed             observed          -0.6762420   -0.7093108   -0.6431732
Birth       EE               PAKISTAN                       observed             observed          -1.8614286   -2.0501173   -1.6727398
Birth       GMS-Nepal        NEPAL                          observed             observed          -1.0909443   -1.1734385   -1.0084500
Birth       IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       JiVitA-3         BANGLADESH                     observed             observed          -1.3684731   -1.5219775   -1.2149687
Birth       JiVitA-4         BANGLADESH                     observed             observed          -1.5216453   -1.5715117   -1.4717789
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       PROVIDE          BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       SAS-CompFeed     INDIA                          observed             observed          -1.4401843   -1.5334809   -1.3468878
6 months    CMC-V-BCS-2002   INDIA                          observed             observed          -1.4189572   -1.5607165   -1.2771979
6 months    COHORTS          INDIA                          observed             observed          -1.0458076   -1.0793244   -1.0122908
6 months    EE               PAKISTAN                       observed             observed          -2.0826460   -2.2022514   -1.9630406
6 months    GMS-Nepal        NEPAL                          observed             observed          -1.3296275   -1.4093037   -1.2499514
6 months    IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    JiVitA-3         BANGLADESH                     observed             observed          -1.2787349   -1.4248268   -1.1326431
6 months    JiVitA-4         BANGLADESH                     observed             observed          -1.3481303   -1.3904710   -1.3057895
6 months    NIH-Crypto       BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    PROVIDE          BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    SAS-CompFeed     INDIA                          observed             observed          -1.4699588   -1.5446559   -1.3952616
6 months    SAS-FoodSuppl    INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5440573   -0.5945614   -0.4935533
24 months   CMC-V-BCS-2002   INDIA                          observed             observed          -2.5611005   -2.6603759   -2.4618252
24 months   COHORTS          INDIA                          observed             observed          -2.2218335   -2.2619519   -2.1817151
24 months   EE               PAKISTAN                       observed             observed          -2.6770382   -2.8210532   -2.5330231
24 months   GMS-Nepal        NEPAL                          observed             observed          -1.8717982   -1.9591776   -1.7844189
24 months   IRC              INDIA                          observed             observed          -1.7987775   -1.8923914   -1.7051636
24 months   JiVitA-3         BANGLADESH                     observed             observed          -2.1571821   -2.2993457   -2.0150186
24 months   JiVitA-4         BANGLADESH                     observed             observed          -1.7725918   -1.8111207   -1.7340629
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   PROVIDE          BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          optimal              observed          -0.0239385   -0.0594606    0.0115836
Birth       EE               PAKISTAN                       optimal              observed           0.0235002   -0.1719243    0.2189247
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.0935157   -0.1959782    0.0089468
Birth       IRC              INDIA                          optimal              observed           0.2918876   -0.4044682    0.9882434
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.2174164   -0.5562551    0.1214223
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -0.1300390   -0.2373896   -0.0226883
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.0155651   -0.0592147    0.0280845
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.0323604   -0.0801912    0.0154705
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.0155591   -0.0975033    0.0663851
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4600473   -1.3055403    0.3854458
6 months    COHORTS          INDIA                          optimal              observed          -0.0375830   -0.0710177   -0.0041482
6 months    EE               PAKISTAN                       optimal              observed          -0.0852466   -0.2007017    0.0302085
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.1103160   -0.2482487    0.0276167
6 months    IRC              INDIA                          optimal              observed          -0.0068356   -0.0198034    0.0061321
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.0433300   -0.3935119    0.3068519
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.0820182   -0.1543150   -0.0097215
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.0318286   -0.1025227    0.0388655
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.0590096   -0.1026979   -0.0153212
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.0652895   -0.1390970    0.0085179
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -0.2103017   -0.4134293   -0.0071741
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0025649   -0.0095045    0.0043748
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed           0.4301927    0.0817749    0.7786104
24 months   COHORTS          INDIA                          optimal              observed          -0.1074960   -0.1464762   -0.0685158
24 months   EE               PAKISTAN                       optimal              observed           0.0484387   -0.1039351    0.2008125
24 months   GMS-Nepal        NEPAL                          optimal              observed          -0.0800596   -0.2290263    0.0689072
24 months   IRC              INDIA                          optimal              observed          -0.0116600   -0.0258097    0.0024897
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.1671907   -0.5307131    0.1963316
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -0.0906525   -0.1577083   -0.0235968
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.0418056   -0.1458922    0.0622810
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.0325206   -0.0785190    0.0134779
