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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** impsan

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid      country                        impsan    n_cell       n
----------  -----------  -----------------------------  -------  -------  ------
Birth       COHORTS      GUATEMALA                      1             43     449
Birth       COHORTS      GUATEMALA                      0            406     449
Birth       COHORTS      INDIA                          1           1685    4461
Birth       COHORTS      INDIA                          0           2776    4461
Birth       COHORTS      PHILIPPINES                    1            177    1126
Birth       COHORTS      PHILIPPINES                    0            949    1126
Birth       CONTENT      PERU                           1              1       2
Birth       CONTENT      PERU                           0              1       2
Birth       JiVitA-3     BANGLADESH                     1          12413   17991
Birth       JiVitA-3     BANGLADESH                     0           5578   17991
Birth       JiVitA-4     BANGLADESH                     1           1859    2394
Birth       JiVitA-4     BANGLADESH                     0            535    2394
Birth       MAL-ED       BANGLADESH                     1            168     201
Birth       MAL-ED       BANGLADESH                     0             33     201
Birth       MAL-ED       BRAZIL                         1             56      57
Birth       MAL-ED       BRAZIL                         0              1      57
Birth       MAL-ED       INDIA                          1             14      39
Birth       MAL-ED       INDIA                          0             25      39
Birth       MAL-ED       NEPAL                          1             24      25
Birth       MAL-ED       NEPAL                          0              1      25
Birth       MAL-ED       PERU                           1             50     203
Birth       MAL-ED       PERU                           0            153     203
Birth       MAL-ED       SOUTH AFRICA                   1              0      94
Birth       MAL-ED       SOUTH AFRICA                   0             94      94
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     110
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            110     110
Birth       NIH-Birth    BANGLADESH                     1            222     575
Birth       NIH-Birth    BANGLADESH                     0            353     575
Birth       NIH-Crypto   BANGLADESH                     1            610     696
Birth       NIH-Crypto   BANGLADESH                     0             86     696
Birth       PROVIDE      BANGLADESH                     1             43      45
Birth       PROVIDE      BANGLADESH                     0              2      45
6 months    COHORTS      GUATEMALA                      1             67     658
6 months    COHORTS      GUATEMALA                      0            591     658
6 months    COHORTS      INDIA                          1           1879    4964
6 months    COHORTS      INDIA                          0           3085    4964
6 months    COHORTS      PHILIPPINES                    1            143    1083
6 months    COHORTS      PHILIPPINES                    0            940    1083
6 months    CONTENT      PERU                           1            201     215
6 months    CONTENT      PERU                           0             14     215
6 months    JiVitA-3     BANGLADESH                     1          12015   16773
6 months    JiVitA-3     BANGLADESH                     0           4758   16773
6 months    JiVitA-4     BANGLADESH                     1           3734    4827
6 months    JiVitA-4     BANGLADESH                     0           1093    4827
6 months    LCNI-5       MALAWI                         1              3     812
6 months    LCNI-5       MALAWI                         0            809     812
6 months    MAL-ED       BANGLADESH                     1            202     240
6 months    MAL-ED       BANGLADESH                     0             38     240
6 months    MAL-ED       BRAZIL                         1            205     209
6 months    MAL-ED       BRAZIL                         0              4     209
6 months    MAL-ED       INDIA                          1            108     233
6 months    MAL-ED       INDIA                          0            125     233
6 months    MAL-ED       NEPAL                          1            235     236
6 months    MAL-ED       NEPAL                          0              1     236
6 months    MAL-ED       PERU                           1             65     263
6 months    MAL-ED       PERU                           0            198     263
6 months    MAL-ED       SOUTH AFRICA                   1              4     244
6 months    MAL-ED       SOUTH AFRICA                   0            240     244
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     238
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            238     238
6 months    NIH-Birth    BANGLADESH                     1            205     537
6 months    NIH-Birth    BANGLADESH                     0            332     537
6 months    NIH-Crypto   BANGLADESH                     1            615     704
6 months    NIH-Crypto   BANGLADESH                     0             89     704
6 months    PROVIDE      BANGLADESH                     1             11      11
6 months    PROVIDE      BANGLADESH                     0              0      11
24 months   COHORTS      GUATEMALA                      1             77     903
24 months   COHORTS      GUATEMALA                      0            826     903
24 months   COHORTS      INDIA                          1           1457    3724
24 months   COHORTS      INDIA                          0           2267    3724
24 months   COHORTS      PHILIPPINES                    1            124     993
24 months   COHORTS      PHILIPPINES                    0            869     993
24 months   CONTENT      PERU                           1            151     164
24 months   CONTENT      PERU                           0             13     164
24 months   JiVitA-3     BANGLADESH                     1           6085    8593
24 months   JiVitA-3     BANGLADESH                     0           2508    8593
24 months   JiVitA-4     BANGLADESH                     1           3671    4730
24 months   JiVitA-4     BANGLADESH                     0           1059    4730
24 months   LCNI-5       MALAWI                         1              2     556
24 months   LCNI-5       MALAWI                         0            554     556
24 months   MAL-ED       BANGLADESH                     1            181     212
24 months   MAL-ED       BANGLADESH                     0             31     212
24 months   MAL-ED       BRAZIL                         1            166     169
24 months   MAL-ED       BRAZIL                         0              3     169
24 months   MAL-ED       INDIA                          1            104     225
24 months   MAL-ED       INDIA                          0            121     225
24 months   MAL-ED       NEPAL                          1            227     228
24 months   MAL-ED       NEPAL                          0              1     228
24 months   MAL-ED       PERU                           1             47     196
24 months   MAL-ED       PERU                           0            149     196
24 months   MAL-ED       SOUTH AFRICA                   1              4     235
24 months   MAL-ED       SOUTH AFRICA                   0            231     235
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     207
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            207     207
24 months   NIH-Birth    BANGLADESH                     1            170     428
24 months   NIH-Birth    BANGLADESH                     0            258     428
24 months   NIH-Crypto   BANGLADESH                     1            433     503
24 months   NIH-Crypto   BANGLADESH                     0             70     503
24 months   PROVIDE      BANGLADESH                     1              9       9
24 months   PROVIDE      BANGLADESH                     0              0       9


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
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
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
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
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/d36d01d1-97c1-4fcd-ae39-a0780af3d14a/e9aa9d6c-3e54-42e8-9c69-b26963009c79/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d36d01d1-97c1-4fcd-ae39-a0780af3d14a/e9aa9d6c-3e54-42e8-9c69-b26963009c79/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d36d01d1-97c1-4fcd-ae39-a0780af3d14a/e9aa9d6c-3e54-42e8-9c69-b26963009c79/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     1                    NA                -1.0983798   -1.8573826   -0.3393769
Birth       COHORTS      GUATEMALA     0                    NA                -0.8953577   -1.0393914   -0.7513239
Birth       COHORTS      INDIA         1                    NA                -0.9625336   -1.0269437   -0.8981235
Birth       COHORTS      INDIA         0                    NA                -0.9849076   -1.0296473   -0.9401679
Birth       COHORTS      PHILIPPINES   1                    NA                -0.7773514   -1.0519297   -0.5027731
Birth       COHORTS      PHILIPPINES   0                    NA                -0.6691320   -0.7555256   -0.5827384
Birth       JiVitA-3     BANGLADESH    1                    NA                -0.7784707   -0.8030496   -0.7538918
Birth       JiVitA-3     BANGLADESH    0                    NA                -0.7835336   -0.8294015   -0.7376657
Birth       JiVitA-4     BANGLADESH    1                    NA                -0.6834099   -0.7424846   -0.6243353
Birth       JiVitA-4     BANGLADESH    0                    NA                -0.7426269   -0.8502688   -0.6349851
Birth       MAL-ED       BANGLADESH    1                    NA                -0.9865689   -1.1487586   -0.8243793
Birth       MAL-ED       BANGLADESH    0                    NA                -0.9713964   -1.3613830   -0.5814099
Birth       MAL-ED       INDIA         1                    NA                -1.1822786   -1.7244366   -0.6401206
Birth       MAL-ED       INDIA         0                    NA                -0.8752066   -1.2512596   -0.4991536
Birth       MAL-ED       PERU          1                    NA                -0.1609524   -0.3743944    0.0524896
Birth       MAL-ED       PERU          0                    NA                 0.0019036   -0.1511974    0.1550046
Birth       NIH-Birth    BANGLADESH    1                    NA                -1.3535147   -1.5183290   -1.1887004
Birth       NIH-Birth    BANGLADESH    0                    NA                -1.3523184   -1.4700345   -1.2346024
Birth       NIH-Crypto   BANGLADESH    1                    NA                -1.2322291   -1.3217361   -1.1427222
Birth       NIH-Crypto   BANGLADESH    0                    NA                -1.3056356   -1.5795554   -1.0317158
6 months    COHORTS      GUATEMALA     1                    NA                 0.3887559    0.0934855    0.6840262
6 months    COHORTS      GUATEMALA     0                    NA                 0.1408458    0.0492386    0.2324530
6 months    COHORTS      INDIA         1                    NA                -0.6024996   -0.6586191   -0.5463802
6 months    COHORTS      INDIA         0                    NA                -0.7639339   -0.8064999   -0.7213679
6 months    COHORTS      PHILIPPINES   1                    NA                -0.2297080   -0.5438699    0.0844539
6 months    COHORTS      PHILIPPINES   0                    NA                -0.2941656   -0.3691882   -0.2191430
6 months    CONTENT      PERU          1                    NA                 1.0697584    0.9467959    1.1927210
6 months    CONTENT      PERU          0                    NA                 0.9025423    0.5681168    1.2369678
6 months    JiVitA-3     BANGLADESH    1                    NA                -0.5855473   -0.6097621   -0.5613324
6 months    JiVitA-3     BANGLADESH    0                    NA                -0.6424914   -0.6930619   -0.5919208
6 months    JiVitA-4     BANGLADESH    1                    NA                -0.3752557   -0.4177575   -0.3327539
6 months    JiVitA-4     BANGLADESH    0                    NA                -0.4954450   -0.5997921   -0.3910979
6 months    MAL-ED       BANGLADESH    1                    NA                -0.1307434   -0.2717777    0.0102909
6 months    MAL-ED       BANGLADESH    0                    NA                -0.1404321   -0.4668374    0.1859731
6 months    MAL-ED       INDIA         1                    NA                -0.6829104   -0.8672013   -0.4986194
6 months    MAL-ED       INDIA         0                    NA                -0.7348181   -0.9124927   -0.5571434
6 months    MAL-ED       PERU          1                    NA                 1.0070591    0.7138155    1.3003026
6 months    MAL-ED       PERU          0                    NA                 1.0499418    0.8987955    1.2010880
6 months    NIH-Birth    BANGLADESH    1                    NA                -0.3437276   -0.4836312   -0.2038240
6 months    NIH-Birth    BANGLADESH    0                    NA                -0.5054707   -0.6245353   -0.3864061
6 months    NIH-Crypto   BANGLADESH    1                    NA                 0.0352561   -0.0480948    0.1186069
6 months    NIH-Crypto   BANGLADESH    0                    NA                -0.0153037   -0.2969238    0.2663165
24 months   COHORTS      GUATEMALA     1                    NA                 0.0060547   -0.2285197    0.2406292
24 months   COHORTS      GUATEMALA     0                    NA                -0.2979554   -0.3612315   -0.2346792
24 months   COHORTS      INDIA         1                    NA                -0.6036874   -0.6600972   -0.5472776
24 months   COHORTS      INDIA         0                    NA                -0.7057661   -0.7491115   -0.6624208
24 months   COHORTS      PHILIPPINES   1                    NA                -0.6867411   -0.9064120   -0.4670702
24 months   COHORTS      PHILIPPINES   0                    NA                -0.6888221   -0.7593095   -0.6183348
24 months   CONTENT      PERU          1                    NA                 0.5814482    0.4372173    0.7256792
24 months   CONTENT      PERU          0                    NA                 0.5176200    0.2644338    0.7708061
24 months   JiVitA-3     BANGLADESH    1                    NA                -1.2860518   -1.3147750   -1.2573287
24 months   JiVitA-3     BANGLADESH    0                    NA                -1.3460396   -1.4021578   -1.2899215
24 months   JiVitA-4     BANGLADESH    1                    NA                -1.2176588   -1.2542938   -1.1810239
24 months   JiVitA-4     BANGLADESH    0                    NA                -1.2779257   -1.3625147   -1.1933368
24 months   MAL-ED       BANGLADESH    1                    NA                -0.7737092   -0.9044148   -0.6430035
24 months   MAL-ED       BANGLADESH    0                    NA                -1.0648310   -1.4043850   -0.7252770
24 months   MAL-ED       INDIA         1                    NA                -0.8268439   -1.0072354   -0.6464524
24 months   MAL-ED       INDIA         0                    NA                -1.0681176   -1.2169821   -0.9192532
24 months   MAL-ED       PERU          1                    NA                 0.1341807   -0.0954414    0.3638027
24 months   MAL-ED       PERU          0                    NA                 0.0892369   -0.0553575    0.2338313
24 months   NIH-Birth    BANGLADESH    1                    NA                -0.8533138   -0.9974231   -0.7092044
24 months   NIH-Birth    BANGLADESH    0                    NA                -0.9437823   -1.0735382   -0.8140263
24 months   NIH-Crypto   BANGLADESH    1                    NA                -0.6254975   -0.7305630   -0.5204320
24 months   NIH-Crypto   BANGLADESH    0                    NA                -0.5288950   -0.7596281   -0.2981620


### Parameter: E(Y)


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     NA                   NA                -0.9294432   -1.0701697   -0.7887168
Birth       COHORTS      INDIA         NA                   NA                -0.9771733   -1.0119896   -0.9423570
Birth       COHORTS      PHILIPPINES   NA                   NA                -0.6841030   -0.7582767   -0.6099293
Birth       JiVitA-3     BANGLADESH    NA                   NA                -0.7777528   -0.7967725   -0.7587330
Birth       JiVitA-4     BANGLADESH    NA                   NA                -0.6882498   -0.7406539   -0.6358456
Birth       MAL-ED       BANGLADESH    NA                   NA                -0.9728358   -1.1217009   -0.8239707
Birth       MAL-ED       INDIA         NA                   NA                -0.9441026   -1.2397919   -0.6484132
Birth       MAL-ED       PERU          NA                   NA                -0.0381281   -0.1669868    0.0907307
Birth       NIH-Birth    BANGLADESH    NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto   BANGLADESH    NA                   NA                -1.2402802   -1.3249395   -1.1556208
6 months    COHORTS      GUATEMALA     NA                   NA                 0.1458511    0.0589571    0.2327450
6 months    COHORTS      INDIA         NA                   NA                -0.7104855   -0.7428053   -0.6781657
6 months    COHORTS      PHILIPPINES   NA                   NA                -0.2830286   -0.3471028   -0.2189545
6 months    CONTENT      PERU          NA                   NA                 1.0644279    0.9468682    1.1819876
6 months    JiVitA-3     BANGLADESH    NA                   NA                -0.5931476   -0.6127125   -0.5735828
6 months    JiVitA-4     BANGLADESH    NA                   NA                -0.3901595   -0.4274150   -0.3529041
6 months    MAL-ED       BANGLADESH    NA                   NA                -0.1333333   -0.2623761   -0.0042906
6 months    MAL-ED       INDIA         NA                   NA                -0.7018062   -0.8289790   -0.5746333
6 months    MAL-ED       PERU          NA                   NA                 1.0372972    0.9141109    1.1604836
6 months    NIH-Birth    BANGLADESH    NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto   BANGLADESH    NA                   NA                 0.0336790   -0.0458848    0.1132428
24 months   COHORTS      GUATEMALA     NA                   NA                -0.2861905   -0.3461594   -0.2262216
24 months   COHORTS      INDIA         NA                   NA                -0.6606874   -0.6938402   -0.6275347
24 months   COHORTS      PHILIPPINES   NA                   NA                -0.6564149   -0.7144543   -0.5983756
24 months   CONTENT      PERU          NA                   NA                 0.5902439    0.4560143    0.7244735
24 months   JiVitA-3     BANGLADESH    NA                   NA                -1.2970418   -1.3203361   -1.2737475
24 months   JiVitA-4     BANGLADESH    NA                   NA                -1.2231776   -1.2550332   -1.1913220
24 months   MAL-ED       BANGLADESH    NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED       INDIA         NA                   NA                -0.9490222   -1.0651720   -0.8328724
24 months   MAL-ED       PERU          NA                   NA                 0.0972406   -0.0271085    0.2215898
24 months   NIH-Birth    BANGLADESH    NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto   BANGLADESH    NA                   NA                -0.6115706   -0.7075788   -0.5155624


### Parameter: ATE


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS      GUATEMALA     0                    1                  0.2030221   -0.5688812    0.9749254
Birth       COHORTS      INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS      INDIA         0                    1                 -0.0223740   -0.1006712    0.0559232
Birth       COHORTS      PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS      PHILIPPINES   0                    1                  0.1082194   -0.1795958    0.3960346
Birth       JiVitA-3     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3     BANGLADESH    0                    1                 -0.0050629   -0.0549870    0.0448612
Birth       JiVitA-4     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4     BANGLADESH    0                    1                 -0.0592170   -0.1820561    0.0636221
Birth       MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       BANGLADESH    0                    1                  0.0151725   -0.4085772    0.4389222
Birth       MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       INDIA         0                    1                  0.3070720   -0.3594806    0.9736246
Birth       MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU          0                    1                  0.1628560   -0.0997680    0.4254800
Birth       NIH-Birth    BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH    0                    1                  0.0011963   -0.2015555    0.2039481
Birth       NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH    0                    1                 -0.0734065   -0.3625756    0.2157626
6 months    COHORTS      GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS      GUATEMALA     0                    1                 -0.2479101   -0.5560308    0.0602107
6 months    COHORTS      INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS      INDIA         0                    1                 -0.1614343   -0.2317192   -0.0911494
6 months    COHORTS      PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS      PHILIPPINES   0                    1                 -0.0644576   -0.3877983    0.2588831
6 months    CONTENT      PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    CONTENT      PERU          0                    1                 -0.1672161   -0.5256846    0.1912523
6 months    JiVitA-3     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3     BANGLADESH    0                    1                 -0.0569441   -0.1120532   -0.0018350
6 months    JiVitA-4     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4     BANGLADESH    0                    1                 -0.1201893   -0.2313105   -0.0090680
6 months    MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       BANGLADESH    0                    1                 -0.0096887   -0.3641761    0.3447987
6 months    MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA         0                    1                 -0.0519077   -0.3089402    0.2051248
6 months    MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU          0                    1                  0.0428827   -0.2925841    0.3783495
6 months    NIH-Birth    BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH    0                    1                 -0.1617431   -0.3454196    0.0219334
6 months    NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH    0                    1                 -0.0505597   -0.3444882    0.2433687
24 months   COHORTS      GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS      GUATEMALA     0                    1                 -0.3040101   -0.5471753   -0.0608449
24 months   COHORTS      INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS      INDIA         0                    1                 -0.1020788   -0.1722179   -0.0319397
24 months   COHORTS      PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS      PHILIPPINES   0                    1                 -0.0020810   -0.2330308    0.2288688
24 months   CONTENT      PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   CONTENT      PERU          0                    1                 -0.0638283   -0.3555459    0.2278894
24 months   JiVitA-3     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3     BANGLADESH    0                    1                 -0.0599878   -0.1210300    0.0010544
24 months   JiVitA-4     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4     BANGLADESH    0                    1                 -0.0602669   -0.1508949    0.0303611
24 months   MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       BANGLADESH    0                    1                 -0.2911218   -0.6559752    0.0737316
24 months   MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA         0                    1                 -0.2412737   -0.4753831   -0.0071644
24 months   MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU          0                    1                 -0.0449438   -0.3106494    0.2207618
24 months   NIH-Birth    BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH    0                    1                 -0.0904685   -0.2829166    0.1019796
24 months   NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH    0                    1                  0.0966025   -0.1568268    0.3500317


### Parameter: PAR


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     1                    NA                 0.1689366   -0.5530468    0.8909199
Birth       COHORTS      INDIA         1                    NA                -0.0146397   -0.0671298    0.0378505
Birth       COHORTS      PHILIPPINES   1                    NA                 0.0932484   -0.1750147    0.3615115
Birth       JiVitA-3     BANGLADESH    1                    NA                 0.0007179   -0.0127951    0.0142310
Birth       JiVitA-4     BANGLADESH    1                    NA                -0.0048399   -0.0319799    0.0223002
Birth       MAL-ED       BANGLADESH    1                    NA                 0.0137331   -0.0539352    0.0814015
Birth       MAL-ED       INDIA         1                    NA                 0.2381760   -0.2127812    0.6891333
Birth       MAL-ED       PERU          1                    NA                 0.1228243   -0.0768406    0.3224892
Birth       NIH-Birth    BANGLADESH    1                    NA                 0.0035929   -0.1211475    0.1283334
Birth       NIH-Crypto   BANGLADESH    1                    NA                -0.0080511   -0.0424245    0.0263224
6 months    COHORTS      GUATEMALA     1                    NA                -0.2429048   -0.5298513    0.0440417
6 months    COHORTS      INDIA         1                    NA                -0.1079859   -0.1550215   -0.0609503
6 months    COHORTS      PHILIPPINES   1                    NA                -0.0533206   -0.3611746    0.2545334
6 months    CONTENT      PERU          1                    NA                -0.0053305   -0.0318744    0.0212133
6 months    JiVitA-3     BANGLADESH    1                    NA                -0.0076004   -0.0207025    0.0055018
6 months    JiVitA-4     BANGLADESH    1                    NA                -0.0149038   -0.0357229    0.0059152
6 months    MAL-ED       BANGLADESH    1                    NA                -0.0025899   -0.0586977    0.0535179
6 months    MAL-ED       INDIA         1                    NA                -0.0188958   -0.1580348    0.1202432
6 months    MAL-ED       PERU          1                    NA                 0.0302381   -0.2390317    0.2995080
6 months    NIH-Birth    BANGLADESH    1                    NA                -0.1036762   -0.2184122    0.0110599
6 months    NIH-Crypto   BANGLADESH    1                    NA                -0.0015771   -0.0344745    0.0313203
24 months   COHORTS      GUATEMALA     1                    NA                -0.2922452   -0.5230461   -0.0614443
24 months   COHORTS      INDIA         1                    NA                -0.0570001   -0.1023422   -0.0116579
24 months   COHORTS      PHILIPPINES   1                    NA                 0.0303262   -0.1855917    0.2462441
24 months   CONTENT      PERU          1                    NA                 0.0087957   -0.0214563    0.0390477
24 months   JiVitA-3     BANGLADESH    1                    NA                -0.0109899   -0.0272106    0.0052307
24 months   JiVitA-4     BANGLADESH    1                    NA                -0.0055188   -0.0232954    0.0122579
24 months   MAL-ED       BANGLADESH    1                    NA                -0.0455833   -0.0975068    0.0063403
24 months   MAL-ED       INDIA         1                    NA                -0.1221783   -0.2491079    0.0047513
24 months   MAL-ED       PERU          1                    NA                -0.0369400   -0.2417620    0.1678820
24 months   NIH-Birth    BANGLADESH    1                    NA                -0.0582653   -0.1747891    0.0582585
24 months   NIH-Crypto   BANGLADESH    1                    NA                 0.0139269   -0.0208473    0.0487012
