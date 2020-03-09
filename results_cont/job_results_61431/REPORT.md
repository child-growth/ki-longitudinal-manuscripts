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

**Intervention Variable:** earlybf

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
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* brthmon
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

agecat      studyid        country                        earlybf    n_cell       n  outcome_variable 
----------  -------------  -----------------------------  --------  -------  ------  -----------------
Birth       EE             PAKISTAN                       1              36     170  whz              
Birth       EE             PAKISTAN                       0             134     170  whz              
Birth       GMS-Nepal      NEPAL                          1             171     586  whz              
Birth       GMS-Nepal      NEPAL                          0             415     586  whz              
Birth       JiVitA-3       BANGLADESH                     1             105   17943  whz              
Birth       JiVitA-3       BANGLADESH                     0           17838   17943  whz              
Birth       JiVitA-4       BANGLADESH                     1            1624    2396  whz              
Birth       JiVitA-4       BANGLADESH                     0             772    2396  whz              
Birth       MAL-ED         BANGLADESH                     1             140     214  whz              
Birth       MAL-ED         BANGLADESH                     0              74     214  whz              
Birth       MAL-ED         BRAZIL                         1              26      62  whz              
Birth       MAL-ED         BRAZIL                         0              36      62  whz              
Birth       MAL-ED         INDIA                          1              31      44  whz              
Birth       MAL-ED         INDIA                          0              13      44  whz              
Birth       MAL-ED         NEPAL                          1              14      26  whz              
Birth       MAL-ED         NEPAL                          0              12      26  whz              
Birth       MAL-ED         PERU                           1             172     228  whz              
Birth       MAL-ED         PERU                           0              56     228  whz              
Birth       MAL-ED         SOUTH AFRICA                   1              69     110  whz              
Birth       MAL-ED         SOUTH AFRICA                   0              41     110  whz              
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             103     115  whz              
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              12     115  whz              
Birth       NIH-Crypto     BANGLADESH                     1             613     707  whz              
Birth       NIH-Crypto     BANGLADESH                     0              94     707  whz              
Birth       SAS-CompFeed   INDIA                          1              79    1072  whz              
Birth       SAS-CompFeed   INDIA                          0             993    1072  whz              
Birth       ZVITAMBO       ZIMBABWE                       1            6142   11514  whz              
Birth       ZVITAMBO       ZIMBABWE                       0            5372   11514  whz              
6 months    EE             PAKISTAN                       1              69     364  whz              
6 months    EE             PAKISTAN                       0             295     364  whz              
6 months    GMS-Nepal      NEPAL                          1             151     511  whz              
6 months    GMS-Nepal      NEPAL                          0             360     511  whz              
6 months    JiVitA-3       BANGLADESH                     1              36   16784  whz              
6 months    JiVitA-3       BANGLADESH                     0           16748   16784  whz              
6 months    JiVitA-4       BANGLADESH                     1            3095    4833  whz              
6 months    JiVitA-4       BANGLADESH                     0            1738    4833  whz              
6 months    MAL-ED         BANGLADESH                     1             147     240  whz              
6 months    MAL-ED         BANGLADESH                     0              93     240  whz              
6 months    MAL-ED         BRAZIL                         1              95     209  whz              
6 months    MAL-ED         BRAZIL                         0             114     209  whz              
6 months    MAL-ED         INDIA                          1             140     236  whz              
6 months    MAL-ED         INDIA                          0              96     236  whz              
6 months    MAL-ED         NEPAL                          1              96     236  whz              
6 months    MAL-ED         NEPAL                          0             140     236  whz              
6 months    MAL-ED         PERU                           1             202     273  whz              
6 months    MAL-ED         PERU                           0              71     273  whz              
6 months    MAL-ED         SOUTH AFRICA                   1             156     250  whz              
6 months    MAL-ED         SOUTH AFRICA                   0              94     250  whz              
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             205     247  whz              
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              42     247  whz              
6 months    NIH-Crypto     BANGLADESH                     1             619     715  whz              
6 months    NIH-Crypto     BANGLADESH                     0              96     715  whz              
6 months    SAS-CompFeed   INDIA                          1              97    1334  whz              
6 months    SAS-CompFeed   INDIA                          0            1237    1334  whz              
6 months    ZVITAMBO       ZIMBABWE                       1            4065    7553  whz              
6 months    ZVITAMBO       ZIMBABWE                       0            3488    7553  whz              
24 months   EE             PAKISTAN                       1              32     164  whz              
24 months   EE             PAKISTAN                       0             132     164  whz              
24 months   GMS-Nepal      NEPAL                          1             131     444  whz              
24 months   GMS-Nepal      NEPAL                          0             313     444  whz              
24 months   JiVitA-3       BANGLADESH                     1               1    8603  whz              
24 months   JiVitA-3       BANGLADESH                     0            8602    8603  whz              
24 months   JiVitA-4       BANGLADESH                     1            3031    4735  whz              
24 months   JiVitA-4       BANGLADESH                     0            1704    4735  whz              
24 months   MAL-ED         BANGLADESH                     1             128     211  whz              
24 months   MAL-ED         BANGLADESH                     0              83     211  whz              
24 months   MAL-ED         BRAZIL                         1              80     169  whz              
24 months   MAL-ED         BRAZIL                         0              89     169  whz              
24 months   MAL-ED         INDIA                          1             134     227  whz              
24 months   MAL-ED         INDIA                          0              93     227  whz              
24 months   MAL-ED         NEPAL                          1              95     228  whz              
24 months   MAL-ED         NEPAL                          0             133     228  whz              
24 months   MAL-ED         PERU                           1             149     201  whz              
24 months   MAL-ED         PERU                           0              52     201  whz              
24 months   MAL-ED         SOUTH AFRICA                   1             144     235  whz              
24 months   MAL-ED         SOUTH AFRICA                   0              91     235  whz              
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             180     214  whz              
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              34     214  whz              
24 months   NIH-Crypto     BANGLADESH                     1             443     514  whz              
24 months   NIH-Crypto     BANGLADESH                     0              71     514  whz              
24 months   ZVITAMBO       ZIMBABWE                       1             201     379  whz              
24 months   ZVITAMBO       ZIMBABWE                       0             178     379  whz              


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
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
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH

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
![](/tmp/23ad16b2-5174-4dcc-a5d3-58fe6676015b/db038e05-eb19-44a2-8b44-d1e21df7475d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/23ad16b2-5174-4dcc-a5d3-58fe6676015b/db038e05-eb19-44a2-8b44-d1e21df7475d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/23ad16b2-5174-4dcc-a5d3-58fe6676015b/db038e05-eb19-44a2-8b44-d1e21df7475d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE             PAKISTAN                       1                    NA                -0.3595509   -0.7214070    0.0023052
Birth       EE             PAKISTAN                       0                    NA                -0.3811534   -0.6036691   -0.1586378
Birth       GMS-Nepal      NEPAL                          1                    NA                -1.1668145   -1.3328494   -1.0007796
Birth       GMS-Nepal      NEPAL                          0                    NA                -1.1063340   -1.2101968   -1.0024713
Birth       JiVitA-3       BANGLADESH                     1                    NA                -0.8730261   -0.9236313   -0.8224209
Birth       JiVitA-3       BANGLADESH                     0                    NA                -0.7773720   -0.7968639   -0.7578801
Birth       JiVitA-4       BANGLADESH                     1                    NA                -0.6687328   -0.7280694   -0.6093962
Birth       JiVitA-4       BANGLADESH                     0                    NA                -0.7310165   -0.8280539   -0.6339791
Birth       MAL-ED         BANGLADESH                     1                    NA                -0.8805511   -1.0583428   -0.7027595
Birth       MAL-ED         BANGLADESH                     0                    NA                -1.0796404   -1.3348973   -0.8243836
Birth       MAL-ED         BRAZIL                         1                    NA                 0.2640571   -0.2271700    0.7552842
Birth       MAL-ED         BRAZIL                         0                    NA                 0.5124420    0.0961548    0.9287293
Birth       MAL-ED         INDIA                          1                    NA                -0.8624464   -1.2161770   -0.5087157
Birth       MAL-ED         INDIA                          0                    NA                -1.1635475   -1.6160301   -0.7110649
Birth       MAL-ED         NEPAL                          1                    NA                -0.5656815   -1.0277210   -0.1036421
Birth       MAL-ED         NEPAL                          0                    NA                -0.5433345   -1.0992942    0.0126252
Birth       MAL-ED         PERU                           1                    NA                -0.0956459   -0.2346852    0.0433935
Birth       MAL-ED         PERU                           0                    NA                 0.1028593   -0.1526157    0.3583344
Birth       MAL-ED         SOUTH AFRICA                   1                    NA                -0.1636103   -0.4201511    0.0929304
Birth       MAL-ED         SOUTH AFRICA                   0                    NA                -0.1709301   -0.5967438    0.2548836
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7933946    0.5917219    0.9950673
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5625404   -0.1398811    1.2649620
Birth       NIH-Crypto     BANGLADESH                     1                    NA                -1.2460249   -1.3361723   -1.1558775
Birth       NIH-Crypto     BANGLADESH                     0                    NA                -1.2119916   -1.4334215   -0.9905617
Birth       SAS-CompFeed   INDIA                          1                    NA                -0.7487237   -1.1696455   -0.3278020
Birth       SAS-CompFeed   INDIA                          0                    NA                -0.6673548   -0.8346498   -0.5000599
Birth       ZVITAMBO       ZIMBABWE                       1                    NA                -0.4805131   -0.5165799   -0.4444463
Birth       ZVITAMBO       ZIMBABWE                       0                    NA                -0.5785771   -0.6166799   -0.5404744
6 months    EE             PAKISTAN                       1                    NA                -0.7087545   -0.9661626   -0.4513464
6 months    EE             PAKISTAN                       0                    NA                -0.7833552   -0.9103623   -0.6563482
6 months    GMS-Nepal      NEPAL                          1                    NA                -0.4488380   -0.6239707   -0.2737053
6 months    GMS-Nepal      NEPAL                          0                    NA                -0.6417224   -0.7493067   -0.5341380
6 months    JiVitA-3       BANGLADESH                     1                    NA                -0.6522508   -0.6841071   -0.6203946
6 months    JiVitA-3       BANGLADESH                     0                    NA                -0.5933310   -0.6133654   -0.5732966
6 months    JiVitA-4       BANGLADESH                     1                    NA                -0.3914783   -0.4363538   -0.3466028
6 months    JiVitA-4       BANGLADESH                     0                    NA                -0.3860876   -0.4467986   -0.3253766
6 months    MAL-ED         BANGLADESH                     1                    NA                -0.1091385   -0.2734693    0.0551923
6 months    MAL-ED         BANGLADESH                     0                    NA                -0.1659947   -0.3792807    0.0472913
6 months    MAL-ED         BRAZIL                         1                    NA                 1.0668397    0.8317231    1.3019564
6 months    MAL-ED         BRAZIL                         0                    NA                 0.8828516    0.6547603    1.1109428
6 months    MAL-ED         INDIA                          1                    NA                -0.7556871   -0.9258351   -0.5855390
6 months    MAL-ED         INDIA                          0                    NA                -0.6213081   -0.8097101   -0.4329060
6 months    MAL-ED         NEPAL                          1                    NA                -0.0039790   -0.2151217    0.2071637
6 months    MAL-ED         NEPAL                          0                    NA                 0.1832201    0.0168045    0.3496357
6 months    MAL-ED         PERU                           1                    NA                 1.0121538    0.8688682    1.1554395
6 months    MAL-ED         PERU                           0                    NA                 1.1671791    0.9407559    1.3936023
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                 0.5367394    0.3358052    0.7376736
6 months    MAL-ED         SOUTH AFRICA                   0                    NA                 0.5751619    0.3368054    0.8135184
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.4984064    0.3554324    0.6413804
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.7920250    0.4308673    1.1531828
6 months    NIH-Crypto     BANGLADESH                     1                    NA                 0.0386586   -0.0466069    0.1239242
6 months    NIH-Crypto     BANGLADESH                     0                    NA                -0.0287903   -0.2367332    0.1791526
6 months    SAS-CompFeed   INDIA                          1                    NA                -0.6193063   -1.3132515    0.0746389
6 months    SAS-CompFeed   INDIA                          0                    NA                -0.6679562   -0.7976911   -0.5382213
6 months    ZVITAMBO       ZIMBABWE                       1                    NA                 0.3117169    0.2751589    0.3482748
6 months    ZVITAMBO       ZIMBABWE                       0                    NA                 0.2957698    0.2548350    0.3367047
24 months   EE             PAKISTAN                       1                    NA                -0.9172617   -1.2283917   -0.6061316
24 months   EE             PAKISTAN                       0                    NA                -1.0240857   -1.1967524   -0.8514189
24 months   GMS-Nepal      NEPAL                          1                    NA                -1.0478346   -1.2113042   -0.8843651
24 months   GMS-Nepal      NEPAL                          0                    NA                -1.1616066   -1.2740480   -1.0491652
24 months   JiVitA-4       BANGLADESH                     1                    NA                -1.2347012   -1.2751177   -1.1942846
24 months   JiVitA-4       BANGLADESH                     0                    NA                -1.2043197   -1.2608614   -1.1477780
24 months   MAL-ED         BANGLADESH                     1                    NA                -0.7842870   -0.9428900   -0.6256841
24 months   MAL-ED         BANGLADESH                     0                    NA                -0.8624693   -1.0582677   -0.6666710
24 months   MAL-ED         BRAZIL                         1                    NA                 0.3196860    0.0116181    0.6277538
24 months   MAL-ED         BRAZIL                         0                    NA                 0.5163796    0.2412261    0.7915331
24 months   MAL-ED         INDIA                          1                    NA                -0.9802205   -1.1370104   -0.8234306
24 months   MAL-ED         INDIA                          0                    NA                -0.9151118   -1.0878829   -0.7423407
24 months   MAL-ED         NEPAL                          1                    NA                -0.4937505   -0.6722088   -0.3152921
24 months   MAL-ED         NEPAL                          0                    NA                -0.2906066   -0.4359569   -0.1452563
24 months   MAL-ED         PERU                           1                    NA                 0.0670859   -0.0836824    0.2178543
24 months   MAL-ED         PERU                           0                    NA                 0.2064169    0.0013404    0.4114933
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.4028749    0.2410352    0.5647147
24 months   MAL-ED         SOUTH AFRICA                   0                    NA                 0.4286714    0.2433545    0.6139882
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0862246   -0.0486988    0.2211480
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0022843   -0.3231511    0.3185824
24 months   NIH-Crypto     BANGLADESH                     1                    NA                -0.6471417   -0.7475236   -0.5467598
24 months   NIH-Crypto     BANGLADESH                     0                    NA                -0.3739460   -0.6333243   -0.1145678
24 months   ZVITAMBO       ZIMBABWE                       1                    NA                -1.1676830   -1.3111002   -1.0242657
24 months   ZVITAMBO       ZIMBABWE                       0                    NA                -1.2488996   -1.4175787   -1.0802206


### Parameter: E(Y)


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE             PAKISTAN                       NA                   NA                -0.3522059   -0.5428560   -0.1615557
Birth       GMS-Nepal      NEPAL                          NA                   NA                -1.1260580   -1.2184297   -1.0336863
Birth       JiVitA-3       BANGLADESH                     NA                   NA                -0.7778811   -0.7969145   -0.7588476
Birth       JiVitA-4       BANGLADESH                     NA                   NA                -0.6886269   -0.7410452   -0.6362086
Birth       MAL-ED         BANGLADESH                     NA                   NA                -0.9390654   -1.0847642   -0.7933666
Birth       MAL-ED         BRAZIL                         NA                   NA                 0.4029032    0.0896793    0.7161272
Birth       MAL-ED         INDIA                          NA                   NA                -0.9122727   -1.1899971   -0.6345483
Birth       MAL-ED         NEPAL                          NA                   NA                -0.7684615   -1.1257770   -0.4111460
Birth       MAL-ED         PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       MAL-ED         SOUTH AFRICA                   NA                   NA                -0.1690000   -0.3880340    0.0500340
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7624348    0.5710709    0.9537986
Birth       NIH-Crypto     BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       SAS-CompFeed   INDIA                          NA                   NA                -0.6676026   -0.8422097   -0.4929956
Birth       ZVITAMBO       ZIMBABWE                       NA                   NA                -0.5262098   -0.5537283   -0.4986913
6 months    EE             PAKISTAN                       NA                   NA                -0.7725778   -0.8877440   -0.6574117
6 months    GMS-Nepal      NEPAL                          NA                   NA                -0.5843738   -0.6761994   -0.4925481
6 months    JiVitA-3       BANGLADESH                     NA                   NA                -0.5935161   -0.6130518   -0.5739805
6 months    JiVitA-4       BANGLADESH                     NA                   NA                -0.3898055   -0.4270507   -0.3525603
6 months    MAL-ED         BANGLADESH                     NA                   NA                -0.1316250   -0.2604010   -0.0028490
6 months    MAL-ED         BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    MAL-ED         INDIA                          NA                   NA                -0.7079979   -0.8344175   -0.5815783
6 months    MAL-ED         NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    MAL-ED         PERU                           NA                   NA                 1.0528816    0.9313005    1.1744626
6 months    MAL-ED         SOUTH AFRICA                   NA                   NA                 0.5500267    0.3964966    0.7035568
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    NIH-Crypto     BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    SAS-CompFeed   INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    ZVITAMBO       ZIMBABWE                       NA                   NA                 0.3072633    0.2799882    0.3345385
24 months   EE             PAKISTAN                       NA                   NA                -1.0044512   -1.1543739   -0.8545285
24 months   GMS-Nepal      NEPAL                          NA                   NA                -1.1339602   -1.2266932   -1.0412272
24 months   JiVitA-4       BANGLADESH                     NA                   NA                -1.2231088   -1.2549632   -1.1912543
24 months   MAL-ED         BANGLADESH                     NA                   NA                -0.8141706   -0.9363085   -0.6920327
24 months   MAL-ED         BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   MAL-ED         INDIA                          NA                   NA                -0.9516520   -1.0670654   -0.8362385
24 months   MAL-ED         NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   MAL-ED         PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   MAL-ED         SOUTH AFRICA                   NA                   NA                 0.4152943    0.2928804    0.5377083
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   NIH-Crypto     BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ZVITAMBO       ZIMBABWE                       NA                   NA                -1.1970712   -1.3045749   -1.0895676


### Parameter: ATE


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       EE             PAKISTAN                       0                    1                 -0.0216025   -0.4490635    0.4058585
Birth       GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal      NEPAL                          0                    1                  0.0604805   -0.1243650    0.2453260
Birth       JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3       BANGLADESH                     0                    1                  0.0956541    0.0412853    0.1500229
Birth       JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4       BANGLADESH                     0                    1                 -0.0622837   -0.1729399    0.0483725
Birth       MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BANGLADESH                     0                    1                 -0.1990893   -0.5100877    0.1119091
Birth       MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BRAZIL                         0                    1                  0.2483849   -0.3992792    0.8960490
Birth       MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         INDIA                          0                    1                 -0.3011012   -0.8790096    0.2768072
Birth       MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         NEPAL                          0                    1                  0.0223470   -0.7596330    0.8043270
Birth       MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         PERU                           0                    1                  0.1985052   -0.0927313    0.4897418
Birth       MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         SOUTH AFRICA                   0                    1                 -0.0073198   -0.5090998    0.4944602
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2308541   -0.9586171    0.4969089
Birth       NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto     BANGLADESH                     0                    1                  0.0340333   -0.2030629    0.2711295
Birth       SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed   INDIA                          0                    1                  0.0813689   -0.2746785    0.4374163
Birth       ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO       ZIMBABWE                       0                    1                 -0.0980640   -0.1466102   -0.0495179
6 months    EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    EE             PAKISTAN                       0                    1                 -0.0746007   -0.3618672    0.2126658
6 months    GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal      NEPAL                          0                    1                 -0.1928844   -0.3986813    0.0129125
6 months    JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3       BANGLADESH                     0                    1                  0.0589198    0.0210947    0.0967450
6 months    JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4       BANGLADESH                     0                    1                  0.0053907   -0.0669758    0.0777572
6 months    MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BANGLADESH                     0                    1                 -0.0568562   -0.3260625    0.2123501
6 months    MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BRAZIL                         0                    1                 -0.1839882   -0.5104363    0.1424600
6 months    MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         INDIA                          0                    1                  0.1343790   -0.1199795    0.3887375
6 months    MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         NEPAL                          0                    1                  0.1871991   -0.0802547    0.4546529
6 months    MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         PERU                           0                    1                  0.1550252   -0.1124137    0.4224642
6 months    MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         SOUTH AFRICA                   0                    1                  0.0384225   -0.2743877    0.3512327
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.2936186   -0.0987121    0.6859494
6 months    NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto     BANGLADESH                     0                    1                 -0.0674490   -0.2919436    0.1570457
6 months    SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed   INDIA                          0                    1                 -0.0486499   -0.7072480    0.6099483
6 months    ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO       ZIMBABWE                       0                    1                 -0.0159470   -0.0703198    0.0384258
24 months   EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   EE             PAKISTAN                       0                    1                 -0.1068240   -0.4650728    0.2514248
24 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal      NEPAL                          0                    1                 -0.1137720   -0.3124360    0.0848921
24 months   JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4       BANGLADESH                     0                    1                  0.0303815   -0.0392069    0.0999698
24 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BANGLADESH                     0                    1                 -0.0781823   -0.3293007    0.1729361
24 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BRAZIL                         0                    1                  0.1966936   -0.2126039    0.6059912
24 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         INDIA                          0                    1                  0.0651087   -0.1687060    0.2989234
24 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         NEPAL                          0                    1                  0.2031439   -0.0266538    0.4329415
24 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         PERU                           0                    1                  0.1393309   -0.1163434    0.3950052
24 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         SOUTH AFRICA                   0                    1                  0.0257964   -0.2194381    0.2710310
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0885090   -0.4361377    0.2591198
24 months   NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto     BANGLADESH                     0                    1                  0.2731957   -0.0028923    0.5492836
24 months   ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO       ZIMBABWE                       0                    1                 -0.0812167   -0.3032607    0.1408273


### Parameter: PAR


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE             PAKISTAN                       1                    NA                 0.0073451   -0.3313554    0.3460455
Birth       GMS-Nepal      NEPAL                          1                    NA                 0.0407565   -0.0899791    0.1714921
Birth       JiVitA-3       BANGLADESH                     1                    NA                 0.0951451    0.0421283    0.1481618
Birth       JiVitA-4       BANGLADESH                     1                    NA                -0.0198941   -0.0556916    0.0159035
Birth       MAL-ED         BANGLADESH                     1                    NA                -0.0585143   -0.1653422    0.0483136
Birth       MAL-ED         BRAZIL                         1                    NA                 0.1388461   -0.2378822    0.5155744
Birth       MAL-ED         INDIA                          1                    NA                -0.0498264   -0.2161406    0.1164879
Birth       MAL-ED         NEPAL                          1                    NA                -0.2027800   -0.5869271    0.1813671
Birth       MAL-ED         PERU                           1                    NA                 0.0436283   -0.0260275    0.1132841
Birth       MAL-ED         SOUTH AFRICA                   1                    NA                -0.0053897   -0.1882126    0.1774333
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0309598   -0.0911048    0.0291852
Birth       NIH-Crypto     BANGLADESH                     1                    NA                 0.0018736   -0.0291179    0.0328650
Birth       SAS-CompFeed   INDIA                          1                    NA                 0.0811211   -0.2512352    0.4134774
Birth       ZVITAMBO       ZIMBABWE                       1                    NA                -0.0456968   -0.0700262   -0.0213673
6 months    EE             PAKISTAN                       1                    NA                -0.0638233   -0.2960289    0.1683823
6 months    GMS-Nepal      NEPAL                          1                    NA                -0.1355358   -0.2810742    0.0100026
6 months    JiVitA-3       BANGLADESH                     1                    NA                 0.0587347    0.0218379    0.0956314
6 months    JiVitA-4       BANGLADESH                     1                    NA                 0.0016728   -0.0244879    0.0278335
6 months    MAL-ED         BANGLADESH                     1                    NA                -0.0224865   -0.1257356    0.0807626
6 months    MAL-ED         BRAZIL                         1                    NA                -0.0947624   -0.2741161    0.0845913
6 months    MAL-ED         INDIA                          1                    NA                 0.0476892   -0.0558226    0.1512010
6 months    MAL-ED         NEPAL                          1                    NA                 0.1144098   -0.0454145    0.2742341
6 months    MAL-ED         PERU                           1                    NA                 0.0407277   -0.0290343    0.1104898
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                 0.0132873   -0.1042322    0.1308068
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0378149   -0.0278875    0.1035173
6 months    NIH-Crypto     BANGLADESH                     1                    NA                -0.0088964   -0.0386071    0.0208143
6 months    SAS-CompFeed   INDIA                          1                    NA                -0.0464021   -0.6732477    0.5804435
6 months    ZVITAMBO       ZIMBABWE                       1                    NA                -0.0044535   -0.0297065    0.0207995
24 months   EE             PAKISTAN                       1                    NA                -0.0871896   -0.3844629    0.2100838
24 months   GMS-Nepal      NEPAL                          1                    NA                -0.0861256   -0.2262199    0.0539688
24 months   JiVitA-4       BANGLADESH                     1                    NA                 0.0115924   -0.0128799    0.0360648
24 months   MAL-ED         BANGLADESH                     1                    NA                -0.0298836   -0.1277680    0.0680008
24 months   MAL-ED         BRAZIL                         1                    NA                 0.1429373   -0.0752417    0.3611163
24 months   MAL-ED         INDIA                          1                    NA                 0.0285685   -0.0673543    0.1244914
24 months   MAL-ED         NEPAL                          1                    NA                 0.1188382   -0.0162513    0.2539277
24 months   MAL-ED         PERU                           1                    NA                 0.0441122   -0.0216523    0.1098768
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.0124194   -0.0824557    0.1072945
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0314271   -0.0888250    0.0259708
24 months   NIH-Crypto     BANGLADESH                     1                    NA                 0.0367915   -0.0018748    0.0754579
24 months   ZVITAMBO       ZIMBABWE                       1                    NA                -0.0293883   -0.1317800    0.0730034
