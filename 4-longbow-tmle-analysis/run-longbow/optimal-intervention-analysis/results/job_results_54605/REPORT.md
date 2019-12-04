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

agecat      studyid                    country                        hdlvry    n_cell      n
----------  -------------------------  -----------------------------  -------  -------  -----
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0             92     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              0     92
Birth       ki1000108-IRC              INDIA                          0            381    388
Birth       ki1000108-IRC              INDIA                          1              7    388
Birth       ki1000109-EE               PAKISTAN                       0            161    238
Birth       ki1000109-EE               PAKISTAN                       1             77    238
Birth       ki1000304b-SAS-CompFeed    INDIA                          0            124   1085
Birth       ki1000304b-SAS-CompFeed    INDIA                          1            961   1085
Birth       ki1017093b-PROVIDE         BANGLADESH                     0            391    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1            148    539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0            567    732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1            165    732
Birth       ki1113344-GMS-Nepal        NEPAL                          0            157    646
Birth       ki1113344-GMS-Nepal        NEPAL                          1            489    646
Birth       ki1135781-COHORTS          INDIA                          0           2938   4694
Birth       ki1135781-COHORTS          INDIA                          1           1756   4694
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0             30    334
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            304    334
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0            554   2808
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1           2254   2808
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            358    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              8    366
6 months    ki1000108-IRC              INDIA                          0            399    407
6 months    ki1000108-IRC              INDIA                          1              8    407
6 months    ki1000109-EE               PAKISTAN                       0            250    371
6 months    ki1000109-EE               PAKISTAN                       1            121    371
6 months    ki1000304b-SAS-CompFeed    INDIA                          0            147   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            944   1091
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             76    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1            304    380
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            450    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            154    604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            554    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            161    715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1889   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             32   1921
6 months    ki1113344-GMS-Nepal        NEPAL                          0            129    528
6 months    ki1113344-GMS-Nepal        NEPAL                          1            399    528
6 months    ki1135781-COHORTS          INDIA                          0           2900   4699
6 months    ki1135781-COHORTS          INDIA                          1           1799   4699
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0             39    332
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            293    332
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0           1081   4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2957   4038
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            360    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              8    368
24 months   ki1000108-IRC              INDIA                          0            401    409
24 months   ki1000108-IRC              INDIA                          1              8    409
24 months   ki1000109-EE               PAKISTAN                       0            112    166
24 months   ki1000109-EE               PAKISTAN                       1             54    166
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            433    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            145    578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            391    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            123    514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      6
24 months   ki1113344-GMS-Nepal        NEPAL                          0            118    456
24 months   ki1113344-GMS-Nepal        NEPAL                          1            338    456
24 months   ki1135781-COHORTS          INDIA                          0           2233   3556
24 months   ki1135781-COHORTS          INDIA                          1           1323   3556
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             35    291
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            256    291
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           1033   4005
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2972   4005


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/b260af54-477a-4180-95f7-8a49f12bd446/7bfbeb8d-7fc9-42eb-972c-82ec2f5958b0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.6956006   -1.4071970    0.0159958
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -1.5704054   -1.8663613   -1.2744496
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.4321840   -1.6590986   -1.2052693
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8711451   -0.9618811   -0.7804091
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8838879   -0.9636711   -0.8041048
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0339979   -1.2103814   -0.8576145
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.6168481   -0.6629459   -0.5707503
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1835038   -1.5029682   -0.8640394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.3655324   -1.4905236   -1.2405413
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.9727727   -1.8239103   -0.1216351
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.2276507   -1.3618601   -1.0934412
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -1.9683523   -2.1469114   -1.7897932
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.3831689   -1.4747593   -1.2915784
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.8321190   -2.0779667   -1.5862712
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0311864   -1.1171007   -0.9452721
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1272213   -1.2396951   -1.0147476
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.7309186   -0.8750911   -0.5867460
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1883979   -1.3266468   -1.0501490
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.9492284   -0.9939506   -0.9045062
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2424893   -1.6643230   -0.8206556
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2490550   -1.3254596   -1.1726505
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.7079313   -3.2752248   -2.1406378
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.7872343   -1.8821863   -1.6922823
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -2.7412847   -2.9781611   -2.5044083
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.5608488   -1.6581215   -1.4635761
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.3720609   -1.5043899   -1.2397319
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.8064861   -1.9616875   -1.6512847
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -2.0565849   -2.1082950   -2.0048747
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -2.0062090   -2.3045162   -1.7079017
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.6343908   -1.7075343   -1.5612473


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1000109-EE               PAKISTAN                       observed             observed          -1.8614286   -2.0501173   -1.6727398
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4401843   -1.5334809   -1.3468878
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.0909443   -1.1734385   -1.0084500
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6762420   -0.7093108   -0.6431732
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3684731   -1.5219775   -1.2149687
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.5216453   -1.5715117   -1.4717789
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4189572   -1.5607165   -1.2771979
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.0826460   -2.2022514   -1.9630406
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4699588   -1.5446559   -1.3952616
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5440573   -0.5945614   -0.4935533
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3296275   -1.4093037   -1.2499514
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -1.0458076   -1.0793244   -1.0122908
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2787349   -1.4248268   -1.1326431
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3481303   -1.3904710   -1.3057895
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5611005   -2.6603759   -2.4618252
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7987775   -1.8923914   -1.7051636
24 months   ki1000109-EE               PAKISTAN                       observed             observed          -2.6770382   -2.8210532   -2.5330231
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8717982   -1.9591776   -1.7844189
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -2.2218335   -2.2619519   -2.1817151
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.1571821   -2.2993457   -2.0150186
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7725918   -1.8111207   -1.7340629


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.3875594   -0.3243168    1.0994356
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.2910232   -0.5181768   -0.0638695
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0080004   -0.1970831    0.1810823
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0139570   -0.0633964    0.0354825
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0256066   -0.0664510    0.0152378
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0569464   -0.2093859    0.0954932
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0593939   -0.0897922   -0.0289957
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1849692   -0.4998010    0.1298625
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1561129   -0.2648806   -0.0473452
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4461845   -1.2892979    0.3969289
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.0067556   -0.0196105    0.0060993
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.1142937   -0.2433706    0.0147832
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0867899   -0.2092550    0.0356752
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.0665652   -0.2967156    0.1635851
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0605051   -0.1054688   -0.0155415
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0714570   -0.1560238    0.0131098
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1868612    0.0474423    0.3262802
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1412296   -0.2631251   -0.0193341
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0965792   -0.1266719   -0.0664865
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0362456   -0.4048140    0.3323228
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0990752   -0.1611140   -0.0370364
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.1468308   -0.4146813    0.7083429
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0115432   -0.0256740    0.0025876
24 months   ki1000109-EE               PAKISTAN                       optimal              observed           0.0642465   -0.1105582    0.2390513
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0415733   -0.0901051    0.0069584
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0692037   -0.1660905    0.0276832
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0653121   -0.1941030    0.0634788
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1652487   -0.2010487   -0.1294486
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1509732   -0.4413711    0.1394248
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1382010   -0.1999171   -0.0764849
