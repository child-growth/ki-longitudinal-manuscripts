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
![](/tmp/2bab0e04-9212-41e1-b21a-f100c630ae1f/cfafc533-36e5-4839-8cf4-fc465c322dc3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     optimal              observed          -0.7948239   -1.0452606   -0.5443873
Birth       COHORTS      INDIA         optimal              observed          -0.9929666   -1.0556680   -0.9302652
Birth       COHORTS      PHILIPPINES   optimal              observed          -0.6979541   -0.7998935   -0.5960146
Birth       JiVitA-3     BANGLADESH    optimal              observed          -0.7729657   -0.8074979   -0.7384334
Birth       JiVitA-4     BANGLADESH    optimal              observed          -0.6823667   -0.7636236   -0.6011097
Birth       MAL-ED       BANGLADESH    optimal              observed          -0.9907093   -1.3370295   -0.6443890
Birth       MAL-ED       INDIA         optimal              observed          -0.8587116   -1.2363980   -0.4810252
Birth       MAL-ED       PERU          optimal              observed          -0.0526061   -0.1979222    0.0927100
Birth       NIH-Birth    BANGLADESH    optimal              observed          -1.4714188   -1.6013590   -1.3414786
Birth       NIH-Crypto   BANGLADESH    optimal              observed          -1.1323757   -1.3089554   -0.9557959
6 months    COHORTS      GUATEMALA     optimal              observed           0.2883050    0.0534917    0.5231183
6 months    COHORTS      INDIA         optimal              observed          -0.6034485   -0.6604756   -0.5464213
6 months    COHORTS      PHILIPPINES   optimal              observed          -0.2621210   -0.5494460    0.0252040
6 months    CONTENT      PERU          optimal              observed           0.9894654    0.8665137    1.1124170
6 months    JiVitA-3     BANGLADESH    optimal              observed          -0.5866531   -0.6117419   -0.5615643
6 months    JiVitA-4     BANGLADESH    optimal              observed          -0.3754818   -0.4180399   -0.3329237
6 months    MAL-ED       BANGLADESH    optimal              observed          -0.2032334   -0.4722449    0.0657782
6 months    MAL-ED       INDIA         optimal              observed          -0.7313714   -0.9140964   -0.5486464
6 months    MAL-ED       PERU          optimal              observed           1.2880849    1.0393421    1.5368276
6 months    NIH-Birth    BANGLADESH    optimal              observed          -0.3371246   -0.4776870   -0.1965621
6 months    NIH-Crypto   BANGLADESH    optimal              observed          -0.0292620   -0.2001848    0.1416608
24 months   COHORTS      GUATEMALA     optimal              observed          -0.0141634   -0.1930524    0.1647256
24 months   COHORTS      INDIA         optimal              observed          -0.6057342   -0.6602084   -0.5512599
24 months   COHORTS      PHILIPPINES   optimal              observed          -0.6622788   -0.8840331   -0.4405244
24 months   CONTENT      PERU          optimal              observed           0.4107077    0.2304496    0.5909658
24 months   JiVitA-3     BANGLADESH    optimal              observed          -1.2885874   -1.3174787   -1.2596960
24 months   JiVitA-4     BANGLADESH    optimal              observed          -1.2177691   -1.2544844   -1.1810538
24 months   MAL-ED       BANGLADESH    optimal              observed          -0.8188413   -0.9591115   -0.6785712
24 months   MAL-ED       INDIA         optimal              observed          -0.8137346   -0.9950471   -0.6324222
24 months   MAL-ED       PERU          optimal              observed           0.1391682   -0.0655100    0.3438463
24 months   NIH-Birth    BANGLADESH    optimal              observed          -0.8698356   -1.0200316   -0.7196396
24 months   NIH-Crypto   BANGLADESH    optimal              observed          -0.3200384   -0.5052931   -0.1347836


### Parameter: E(Y)


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     observed             observed          -0.9294432   -1.0701697   -0.7887168
Birth       COHORTS      INDIA         observed             observed          -0.9771733   -1.0119896   -0.9423570
Birth       COHORTS      PHILIPPINES   observed             observed          -0.6841030   -0.7582767   -0.6099293
Birth       JiVitA-3     BANGLADESH    observed             observed          -0.7777528   -0.7967725   -0.7587330
Birth       JiVitA-4     BANGLADESH    observed             observed          -0.6882498   -0.7406539   -0.6358456
Birth       MAL-ED       BANGLADESH    observed             observed          -0.9728358   -1.1217009   -0.8239707
Birth       MAL-ED       INDIA         observed             observed          -0.9441026   -1.2397919   -0.6484132
Birth       MAL-ED       PERU          observed             observed          -0.0381281   -0.1669868    0.0907307
Birth       NIH-Birth    BANGLADESH    observed             observed          -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto   BANGLADESH    observed             observed          -1.2402802   -1.3249395   -1.1556208
6 months    COHORTS      GUATEMALA     observed             observed           0.1458511    0.0589571    0.2327450
6 months    COHORTS      INDIA         observed             observed          -0.7104855   -0.7428053   -0.6781657
6 months    COHORTS      PHILIPPINES   observed             observed          -0.2830286   -0.3471028   -0.2189545
6 months    CONTENT      PERU          observed             observed           1.0644279    0.9468682    1.1819876
6 months    JiVitA-3     BANGLADESH    observed             observed          -0.5931476   -0.6127125   -0.5735828
6 months    JiVitA-4     BANGLADESH    observed             observed          -0.3901595   -0.4274150   -0.3529041
6 months    MAL-ED       BANGLADESH    observed             observed          -0.1333333   -0.2623761   -0.0042906
6 months    MAL-ED       INDIA         observed             observed          -0.7018062   -0.8289790   -0.5746333
6 months    MAL-ED       PERU          observed             observed           1.0372972    0.9141109    1.1604836
6 months    NIH-Birth    BANGLADESH    observed             observed          -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto   BANGLADESH    observed             observed           0.0336790   -0.0458848    0.1132428
24 months   COHORTS      GUATEMALA     observed             observed          -0.2861905   -0.3461594   -0.2262216
24 months   COHORTS      INDIA         observed             observed          -0.6606874   -0.6938402   -0.6275347
24 months   COHORTS      PHILIPPINES   observed             observed          -0.6564149   -0.7144543   -0.5983756
24 months   CONTENT      PERU          observed             observed           0.5902439    0.4560143    0.7244735
24 months   JiVitA-3     BANGLADESH    observed             observed          -1.2970418   -1.3203361   -1.2737475
24 months   JiVitA-4     BANGLADESH    observed             observed          -1.2231776   -1.2550332   -1.1913220
24 months   MAL-ED       BANGLADESH    observed             observed          -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED       INDIA         observed             observed          -0.9490222   -1.0651720   -0.8328724
24 months   MAL-ED       PERU          observed             observed           0.0972406   -0.0271085    0.2215898
24 months   NIH-Birth    BANGLADESH    observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto   BANGLADESH    observed             observed          -0.6115706   -0.7075788   -0.5155624


### Parameter: PAR


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     optimal              observed          -0.1346193   -0.3474443    0.0782057
Birth       COHORTS      INDIA         optimal              observed           0.0157933   -0.0347945    0.0663811
Birth       COHORTS      PHILIPPINES   optimal              observed           0.0138511   -0.0629055    0.0906077
Birth       JiVitA-3     BANGLADESH    optimal              observed          -0.0047871   -0.0338876    0.0243134
Birth       JiVitA-4     BANGLADESH    optimal              observed          -0.0058831   -0.0666931    0.0549269
Birth       MAL-ED       BANGLADESH    optimal              observed           0.0178734   -0.2929480    0.3286948
Birth       MAL-ED       INDIA         optimal              observed          -0.0853909   -0.3227270    0.1519451
Birth       MAL-ED       PERU          optimal              observed           0.0144780   -0.0663368    0.0952928
Birth       NIH-Birth    BANGLADESH    optimal              observed           0.1214971    0.0264757    0.2165184
Birth       NIH-Crypto   BANGLADESH    optimal              observed          -0.1079045   -0.2624334    0.0466244
6 months    COHORTS      GUATEMALA     optimal              observed          -0.1424539   -0.3690510    0.0841431
6 months    COHORTS      INDIA         optimal              observed          -0.1070370   -0.1551778   -0.0588963
6 months    COHORTS      PHILIPPINES   optimal              observed          -0.0209076   -0.2982576    0.2564424
6 months    CONTENT      PERU          optimal              observed           0.0749625    0.0190851    0.1308400
6 months    JiVitA-3     BANGLADESH    optimal              observed          -0.0064945   -0.0214718    0.0084827
6 months    JiVitA-4     BANGLADESH    optimal              observed          -0.0146777   -0.0355829    0.0062274
6 months    MAL-ED       BANGLADESH    optimal              observed           0.0699000   -0.1750328    0.3148328
6 months    MAL-ED       INDIA         optimal              observed           0.0295652   -0.1059655    0.1650960
6 months    MAL-ED       PERU          optimal              observed          -0.2507876   -0.4719505   -0.0296247
6 months    NIH-Birth    BANGLADESH    optimal              observed          -0.1102792   -0.2253548    0.0047963
6 months    NIH-Crypto   BANGLADESH    optimal              observed           0.0629410   -0.0822426    0.2081246
24 months   COHORTS      GUATEMALA     optimal              observed          -0.2720271   -0.4475913   -0.0964629
24 months   COHORTS      INDIA         optimal              observed          -0.0549533   -0.0984584   -0.0114482
24 months   COHORTS      PHILIPPINES   optimal              observed           0.0058639   -0.2092439    0.2209717
24 months   CONTENT      PERU          optimal              observed           0.1795362    0.0067916    0.3522807
24 months   JiVitA-3     BANGLADESH    optimal              observed          -0.0084544   -0.0249594    0.0080505
24 months   JiVitA-4     BANGLADESH    optimal              observed          -0.0054085   -0.0235132    0.0126962
24 months   MAL-ED       BANGLADESH    optimal              observed          -0.0004511   -0.0859623    0.0850601
24 months   MAL-ED       INDIA         optimal              observed          -0.1352876   -0.2630508   -0.0075244
24 months   MAL-ED       PERU          optimal              observed          -0.0419275   -0.2080158    0.1241607
24 months   NIH-Birth    BANGLADESH    optimal              observed          -0.0417435   -0.1572406    0.0737536
24 months   NIH-Crypto   BANGLADESH    optimal              observed          -0.2915322   -0.4576610   -0.1254034
