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

**Intervention Variable:** predfeed36

**Adjustment Set:**

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
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

agecat      studyid         country                        predfeed36    n_cell      n
----------  --------------  -----------------------------  -----------  -------  -----
Birth       EE              PAKISTAN                       1                  2      6
Birth       EE              PAKISTAN                       0                  4      6
Birth       GMS-Nepal       NEPAL                          1                396    491
Birth       GMS-Nepal       NEPAL                          0                 95    491
Birth       JiVitA-3        BANGLADESH                     1               6746   8619
Birth       JiVitA-3        BANGLADESH                     0               1873   8619
Birth       JiVitA-4        BANGLADESH                     1               1714   2128
Birth       JiVitA-4        BANGLADESH                     0                414   2128
Birth       MAL-ED          BANGLADESH                     1                 69    208
Birth       MAL-ED          BANGLADESH                     0                139    208
Birth       MAL-ED          BRAZIL                         1                  7     62
Birth       MAL-ED          BRAZIL                         0                 55     62
Birth       MAL-ED          INDIA                          1                  4     40
Birth       MAL-ED          INDIA                          0                 36     40
Birth       MAL-ED          NEPAL                          1                  1     25
Birth       MAL-ED          NEPAL                          0                 24     25
Birth       MAL-ED          PERU                           1                 57    218
Birth       MAL-ED          PERU                           0                161    218
Birth       MAL-ED          SOUTH AFRICA                   1                  2    104
Birth       MAL-ED          SOUTH AFRICA                   0                102    104
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0    111
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                111    111
6 months    EE              PAKISTAN                       1                  4      9
6 months    EE              PAKISTAN                       0                  5      9
6 months    GMS-Nepal       NEPAL                          1                422    527
6 months    GMS-Nepal       NEPAL                          0                105    527
6 months    JiVitA-3        BANGLADESH                     1               6576   8535
6 months    JiVitA-3        BANGLADESH                     0               1959   8535
6 months    JiVitA-4        BANGLADESH                     1               3252   4188
6 months    JiVitA-4        BANGLADESH                     0                936   4188
6 months    LCNI-5          MALAWI                         1                 47    272
6 months    LCNI-5          MALAWI                         0                225    272
6 months    MAL-ED          BANGLADESH                     1                 81    240
6 months    MAL-ED          BANGLADESH                     0                159    240
6 months    MAL-ED          BRAZIL                         1                 25    209
6 months    MAL-ED          BRAZIL                         0                184    209
6 months    MAL-ED          INDIA                          1                 17    233
6 months    MAL-ED          INDIA                          0                216    233
6 months    MAL-ED          NEPAL                          1                  8    235
6 months    MAL-ED          NEPAL                          0                227    235
6 months    MAL-ED          PERU                           1                 72    272
6 months    MAL-ED          PERU                           0                200    272
6 months    MAL-ED          SOUTH AFRICA                   1                  3    250
6 months    MAL-ED          SOUTH AFRICA                   0                247    250
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  5    243
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                238    243
6 months    SAS-FoodSuppl   INDIA                          1                  0    168
6 months    SAS-FoodSuppl   INDIA                          0                168    168
24 months   EE              PAKISTAN                       1                  0      3
24 months   EE              PAKISTAN                       0                  3      3
24 months   GMS-Nepal       NEPAL                          1                362    445
24 months   GMS-Nepal       NEPAL                          0                 83    445
24 months   JiVitA-3        BANGLADESH                     1               3320   4317
24 months   JiVitA-3        BANGLADESH                     0                997   4317
24 months   JiVitA-4        BANGLADESH                     1               3144   4035
24 months   JiVitA-4        BANGLADESH                     0                891   4035
24 months   LCNI-5          MALAWI                         1                 34    184
24 months   LCNI-5          MALAWI                         0                150    184
24 months   MAL-ED          BANGLADESH                     1                 69    212
24 months   MAL-ED          BANGLADESH                     0                143    212
24 months   MAL-ED          BRAZIL                         1                 20    169
24 months   MAL-ED          BRAZIL                         0                149    169
24 months   MAL-ED          INDIA                          1                 17    224
24 months   MAL-ED          INDIA                          0                207    224
24 months   MAL-ED          NEPAL                          1                  8    227
24 months   MAL-ED          NEPAL                          0                219    227
24 months   MAL-ED          PERU                           1                 53    201
24 months   MAL-ED          PERU                           0                148    201
24 months   MAL-ED          SOUTH AFRICA                   1                  3    235
24 months   MAL-ED          SOUTH AFRICA                   0                232    235
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                209    213


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/0a2f36a6-cf38-43ea-85ec-ded37e2bd3b5/fa6fcbb8-adbf-49b9-95e5-88b6e1482cbf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          optimal              observed          -1.1436562   -1.2622730   -1.0250395
Birth       JiVitA-3    BANGLADESH                     optimal              observed          -0.7560684   -0.8082322   -0.7039047
Birth       JiVitA-4    BANGLADESH                     optimal              observed          -0.6418902   -0.7509416   -0.5328389
Birth       MAL-ED      BANGLADESH                     optimal              observed          -0.7739438   -0.9834597   -0.5644279
Birth       MAL-ED      BRAZIL                         optimal              observed           0.4987674    0.1694391    0.8280957
Birth       MAL-ED      PERU                           optimal              observed           0.2050127   -0.0012507    0.4112762
6 months    GMS-Nepal   NEPAL                          optimal              observed          -0.5898138   -0.6982484   -0.4813791
6 months    JiVitA-3    BANGLADESH                     optimal              observed          -0.5654341   -0.6052082   -0.5256599
6 months    JiVitA-4    BANGLADESH                     optimal              observed          -0.3443323   -0.3900473   -0.2986173
6 months    LCNI-5      MALAWI                         optimal              observed           0.4041184    0.2772517    0.5309850
6 months    MAL-ED      BANGLADESH                     optimal              observed          -0.2528454   -0.4397679   -0.0659229
6 months    MAL-ED      BRAZIL                         optimal              observed           1.3525494    0.9162430    1.7888557
6 months    MAL-ED      INDIA                          optimal              observed          -0.2424938   -0.7423859    0.2573983
6 months    MAL-ED      NEPAL                          optimal              observed           0.1290452   -0.0048795    0.2629698
6 months    MAL-ED      PERU                           optimal              observed           1.3133700    1.0749548    1.5517852
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.8499586    1.0981997    2.6017176
24 months   GMS-Nepal   NEPAL                          optimal              observed          -1.0797354   -1.2001747   -0.9592961
24 months   JiVitA-3    BANGLADESH                     optimal              observed          -1.2995227   -1.3659530   -1.2330924
24 months   JiVitA-4    BANGLADESH                     optimal              observed          -1.2299916   -1.2948112   -1.1651721
24 months   LCNI-5      MALAWI                         optimal              observed          -0.0434517   -0.2509441    0.1640408
24 months   MAL-ED      BANGLADESH                     optimal              observed          -0.7639703   -0.9221628   -0.6057777
24 months   MAL-ED      BRAZIL                         optimal              observed           0.5629223    0.1916912    0.9341535
24 months   MAL-ED      INDIA                          optimal              observed          -0.7550942   -1.1341704   -0.3760181
24 months   MAL-ED      NEPAL                          optimal              observed          -0.3644353   -0.4812132   -0.2476575
24 months   MAL-ED      PERU                           optimal              observed           0.2087834    0.0496077    0.3679592


### Parameter: E(Y)


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          observed             observed          -1.1085743   -1.2077878   -1.0093609
Birth       JiVitA-3    BANGLADESH                     observed             observed          -0.7892308   -0.8133344   -0.7651272
Birth       JiVitA-4    BANGLADESH                     observed             observed          -0.7018985   -0.7560164   -0.6477806
Birth       MAL-ED      BANGLADESH                     observed             observed          -0.9480769   -1.0934921   -0.8026617
Birth       MAL-ED      BRAZIL                         observed             observed           0.4029032    0.0896793    0.7161272
Birth       MAL-ED      PERU                           observed             observed          -0.0458257   -0.1696487    0.0779973
6 months    GMS-Nepal   NEPAL                          observed             observed          -0.6001075   -0.6890924   -0.5111227
6 months    JiVitA-3    BANGLADESH                     observed             observed          -0.5995202   -0.6251579   -0.5738825
6 months    JiVitA-4    BANGLADESH                     observed             observed          -0.3960017   -0.4356255   -0.3563778
6 months    LCNI-5      MALAWI                         observed             observed           0.3925000    0.2735307    0.5114693
6 months    MAL-ED      BANGLADESH                     observed             observed          -0.1354583   -0.2647102   -0.0062065
6 months    MAL-ED      BRAZIL                         observed             observed           0.9720774    0.8078144    1.1363403
6 months    MAL-ED      INDIA                          observed             observed          -0.7161910   -0.8437667   -0.5886153
6 months    MAL-ED      NEPAL                          observed             observed           0.1140284   -0.0176364    0.2456931
6 months    MAL-ED      PERU                           observed             observed           1.0511642    0.9291821    1.1731463
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5508093    0.4191033    0.6825154
24 months   GMS-Nepal   NEPAL                          observed             observed          -1.1236255   -1.2167712   -1.0304797
24 months   JiVitA-3    BANGLADESH                     observed             observed          -1.3352235   -1.3688736   -1.3015735
24 months   JiVitA-4    BANGLADESH                     observed             observed          -1.2344089   -1.2708428   -1.1979750
24 months   LCNI-5      MALAWI                         observed             observed          -0.0770652   -0.2204213    0.0662909
24 months   MAL-ED      BANGLADESH                     observed             observed          -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED      BRAZIL                         observed             observed           0.4626233    0.2567495    0.6684971
24 months   MAL-ED      INDIA                          observed             observed          -0.9581250   -1.0746982   -0.8415518
24 months   MAL-ED      NEPAL                          observed             observed          -0.3725991   -0.4867052   -0.2584930
24 months   MAL-ED      PERU                           observed             observed           0.1111982   -0.0118399    0.2342362


### Parameter: PAR


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          optimal              observed           0.0350819   -0.0308976    0.1010614
Birth       JiVitA-3    BANGLADESH                     optimal              observed          -0.0331623   -0.0787840    0.0124593
Birth       JiVitA-4    BANGLADESH                     optimal              observed          -0.0600083   -0.1463785    0.0263620
Birth       MAL-ED      BANGLADESH                     optimal              observed          -0.1741331   -0.3419993   -0.0062670
Birth       MAL-ED      BRAZIL                         optimal              observed          -0.0958642   -0.2265537    0.0348253
Birth       MAL-ED      PERU                           optimal              observed          -0.2508384   -0.4308417   -0.0708352
6 months    GMS-Nepal   NEPAL                          optimal              observed          -0.0102937   -0.0644777    0.0438902
6 months    JiVitA-3    BANGLADESH                     optimal              observed          -0.0340861   -0.0645976   -0.0035747
6 months    JiVitA-4    BANGLADESH                     optimal              observed          -0.0516694   -0.0736290   -0.0297097
6 months    LCNI-5      MALAWI                         optimal              observed          -0.0116184   -0.0723811    0.0491444
6 months    MAL-ED      BANGLADESH                     optimal              observed           0.1173870   -0.0279367    0.2627108
6 months    MAL-ED      BRAZIL                         optimal              observed          -0.3804720   -0.7930373    0.0320933
6 months    MAL-ED      INDIA                          optimal              observed          -0.4736972   -0.9561315    0.0087371
6 months    MAL-ED      NEPAL                          optimal              observed          -0.0150168   -0.0399059    0.0098723
6 months    MAL-ED      PERU                           optimal              observed          -0.2622058   -0.4668848   -0.0575268
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2991493   -2.0459445   -0.5523541
24 months   GMS-Nepal   NEPAL                          optimal              observed          -0.0438901   -0.1309460    0.0431659
24 months   JiVitA-3    BANGLADESH                     optimal              observed          -0.0357008   -0.0943783    0.0229766
24 months   JiVitA-4    BANGLADESH                     optimal              observed          -0.0044173   -0.0581498    0.0493153
24 months   LCNI-5      MALAWI                         optimal              observed          -0.0336136   -0.1894276    0.1222005
24 months   MAL-ED      BANGLADESH                     optimal              observed          -0.0553222   -0.1409461    0.0303017
24 months   MAL-ED      BRAZIL                         optimal              observed          -0.1002991   -0.4234325    0.2228344
24 months   MAL-ED      INDIA                          optimal              observed          -0.2030308   -0.5730838    0.1670222
24 months   MAL-ED      NEPAL                          optimal              observed          -0.0081638   -0.0273340    0.0110064
24 months   MAL-ED      PERU                           optimal              observed          -0.0975852   -0.2251318    0.0299614
