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

agecat      studyid        country                        earlybf    n_cell       n
----------  -------------  -----------------------------  --------  -------  ------
Birth       EE             PAKISTAN                       1              36     170
Birth       EE             PAKISTAN                       0             134     170
Birth       GMS-Nepal      NEPAL                          1             171     586
Birth       GMS-Nepal      NEPAL                          0             415     586
Birth       JiVitA-3       BANGLADESH                     1             105   17943
Birth       JiVitA-3       BANGLADESH                     0           17838   17943
Birth       JiVitA-4       BANGLADESH                     1            1624    2396
Birth       JiVitA-4       BANGLADESH                     0             772    2396
Birth       MAL-ED         BANGLADESH                     1             140     214
Birth       MAL-ED         BANGLADESH                     0              74     214
Birth       MAL-ED         BRAZIL                         1              26      62
Birth       MAL-ED         BRAZIL                         0              36      62
Birth       MAL-ED         INDIA                          1              31      44
Birth       MAL-ED         INDIA                          0              13      44
Birth       MAL-ED         NEPAL                          1              14      26
Birth       MAL-ED         NEPAL                          0              12      26
Birth       MAL-ED         PERU                           1             172     228
Birth       MAL-ED         PERU                           0              56     228
Birth       MAL-ED         SOUTH AFRICA                   1              69     110
Birth       MAL-ED         SOUTH AFRICA                   0              41     110
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             103     115
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              12     115
Birth       NIH-Crypto     BANGLADESH                     1             613     707
Birth       NIH-Crypto     BANGLADESH                     0              94     707
Birth       SAS-CompFeed   INDIA                          1              79    1072
Birth       SAS-CompFeed   INDIA                          0             993    1072
Birth       ZVITAMBO       ZIMBABWE                       1            6142   11514
Birth       ZVITAMBO       ZIMBABWE                       0            5372   11514
6 months    EE             PAKISTAN                       1              69     364
6 months    EE             PAKISTAN                       0             295     364
6 months    GMS-Nepal      NEPAL                          1             151     511
6 months    GMS-Nepal      NEPAL                          0             360     511
6 months    JiVitA-3       BANGLADESH                     1              36   16784
6 months    JiVitA-3       BANGLADESH                     0           16748   16784
6 months    JiVitA-4       BANGLADESH                     1            3095    4833
6 months    JiVitA-4       BANGLADESH                     0            1738    4833
6 months    MAL-ED         BANGLADESH                     1             147     240
6 months    MAL-ED         BANGLADESH                     0              93     240
6 months    MAL-ED         BRAZIL                         1              95     209
6 months    MAL-ED         BRAZIL                         0             114     209
6 months    MAL-ED         INDIA                          1             140     236
6 months    MAL-ED         INDIA                          0              96     236
6 months    MAL-ED         NEPAL                          1              96     236
6 months    MAL-ED         NEPAL                          0             140     236
6 months    MAL-ED         PERU                           1             202     273
6 months    MAL-ED         PERU                           0              71     273
6 months    MAL-ED         SOUTH AFRICA                   1             156     250
6 months    MAL-ED         SOUTH AFRICA                   0              94     250
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             205     247
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              42     247
6 months    NIH-Crypto     BANGLADESH                     1             619     715
6 months    NIH-Crypto     BANGLADESH                     0              96     715
6 months    SAS-CompFeed   INDIA                          1              97    1334
6 months    SAS-CompFeed   INDIA                          0            1237    1334
6 months    ZVITAMBO       ZIMBABWE                       1            4065    7553
6 months    ZVITAMBO       ZIMBABWE                       0            3488    7553
24 months   EE             PAKISTAN                       1              32     164
24 months   EE             PAKISTAN                       0             132     164
24 months   GMS-Nepal      NEPAL                          1             131     444
24 months   GMS-Nepal      NEPAL                          0             313     444
24 months   JiVitA-3       BANGLADESH                     1               1    8603
24 months   JiVitA-3       BANGLADESH                     0            8602    8603
24 months   JiVitA-4       BANGLADESH                     1            3031    4735
24 months   JiVitA-4       BANGLADESH                     0            1704    4735
24 months   MAL-ED         BANGLADESH                     1             128     211
24 months   MAL-ED         BANGLADESH                     0              83     211
24 months   MAL-ED         BRAZIL                         1              80     169
24 months   MAL-ED         BRAZIL                         0              89     169
24 months   MAL-ED         INDIA                          1             134     227
24 months   MAL-ED         INDIA                          0              93     227
24 months   MAL-ED         NEPAL                          1              95     228
24 months   MAL-ED         NEPAL                          0             133     228
24 months   MAL-ED         PERU                           1             149     201
24 months   MAL-ED         PERU                           0              52     201
24 months   MAL-ED         SOUTH AFRICA                   1             144     235
24 months   MAL-ED         SOUTH AFRICA                   0              91     235
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             180     214
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              34     214
24 months   NIH-Crypto     BANGLADESH                     1             443     514
24 months   NIH-Crypto     BANGLADESH                     0              71     514
24 months   ZVITAMBO       ZIMBABWE                       1             201     379
24 months   ZVITAMBO       ZIMBABWE                       0             178     379


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
![](/tmp/f1745c01-cac4-43bf-af6d-5f9ca01a69fa/bb4c6757-7d21-426b-8ffe-8e59c9dfd8bb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f1745c01-cac4-43bf-af6d-5f9ca01a69fa/bb4c6757-7d21-426b-8ffe-8e59c9dfd8bb/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f1745c01-cac4-43bf-af6d-5f9ca01a69fa/bb4c6757-7d21-426b-8ffe-8e59c9dfd8bb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE             PAKISTAN                       1                    NA                -0.1734828   -0.5373051    0.1903395
Birth       EE             PAKISTAN                       0                    NA                -0.3671689   -0.5885554   -0.1457825
Birth       GMS-Nepal      NEPAL                          1                    NA                -1.1456430   -1.3156744   -0.9756115
Birth       GMS-Nepal      NEPAL                          0                    NA                -1.1096030   -1.2132582   -1.0059478
Birth       JiVitA-3       BANGLADESH                     1                    NA                -0.8644959   -0.9155835   -0.8134082
Birth       JiVitA-3       BANGLADESH                     0                    NA                -0.7774045   -0.7968948   -0.7579142
Birth       JiVitA-4       BANGLADESH                     1                    NA                -0.6687244   -0.7285473   -0.6089015
Birth       JiVitA-4       BANGLADESH                     0                    NA                -0.7303964   -0.8289039   -0.6318889
Birth       MAL-ED         BANGLADESH                     1                    NA                -0.8804620   -1.0585940   -0.7023300
Birth       MAL-ED         BANGLADESH                     0                    NA                -1.0601039   -1.3128761   -0.8073317
Birth       MAL-ED         BRAZIL                         1                    NA                 0.2534827   -0.2515747    0.7585401
Birth       MAL-ED         BRAZIL                         0                    NA                 0.4971307    0.0888296    0.9054318
Birth       MAL-ED         INDIA                          1                    NA                -0.8611906   -1.2146759   -0.5077054
Birth       MAL-ED         INDIA                          0                    NA                -1.1963927   -1.6302027   -0.7625828
Birth       MAL-ED         NEPAL                          1                    NA                -0.7476537   -1.2417541   -0.2535533
Birth       MAL-ED         NEPAL                          0                    NA                -0.8235816   -1.3753265   -0.2718368
Birth       MAL-ED         PERU                           1                    NA                -0.0971157   -0.2364633    0.0422319
Birth       MAL-ED         PERU                           0                    NA                 0.0823986   -0.1758106    0.3406078
Birth       MAL-ED         SOUTH AFRICA                   1                    NA                -0.1490775   -0.4200388    0.1218837
Birth       MAL-ED         SOUTH AFRICA                   0                    NA                -0.1696010   -0.6433870    0.3041851
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7904899    0.5870970    0.9938828
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5312268   -0.1114956    1.1739493
Birth       NIH-Crypto     BANGLADESH                     1                    NA                -1.2464209   -1.3358340   -1.1570077
Birth       NIH-Crypto     BANGLADESH                     0                    NA                -1.2661761   -1.4730010   -1.0593512
Birth       SAS-CompFeed   INDIA                          1                    NA                -0.7487237   -1.1696455   -0.3278020
Birth       SAS-CompFeed   INDIA                          0                    NA                -0.6673548   -0.8346498   -0.5000599
Birth       ZVITAMBO       ZIMBABWE                       1                    NA                -0.4813377   -0.5175617   -0.4451137
Birth       ZVITAMBO       ZIMBABWE                       0                    NA                -0.5774503   -0.6156400   -0.5392606
6 months    EE             PAKISTAN                       1                    NA                -0.7013076   -0.9722404   -0.4303748
6 months    EE             PAKISTAN                       0                    NA                -0.7870278   -0.9148259   -0.6592297
6 months    GMS-Nepal      NEPAL                          1                    NA                -0.4281611   -0.6024181   -0.2539041
6 months    GMS-Nepal      NEPAL                          0                    NA                -0.6382136   -0.7459287   -0.5304986
6 months    JiVitA-3       BANGLADESH                     1                    NA                -0.6679202   -0.6988730   -0.6369675
6 months    JiVitA-3       BANGLADESH                     0                    NA                -0.5933555   -0.6133923   -0.5733186
6 months    JiVitA-4       BANGLADESH                     1                    NA                -0.3933501   -0.4379016   -0.3487986
6 months    JiVitA-4       BANGLADESH                     0                    NA                -0.3866568   -0.4485864   -0.3247271
6 months    MAL-ED         BANGLADESH                     1                    NA                -0.1127777   -0.2776539    0.0520986
6 months    MAL-ED         BANGLADESH                     0                    NA                -0.1613204   -0.3864126    0.0637718
6 months    MAL-ED         BRAZIL                         1                    NA                 1.0752946    0.8385044    1.3120849
6 months    MAL-ED         BRAZIL                         0                    NA                 0.8688628    0.6397699    1.0979557
6 months    MAL-ED         INDIA                          1                    NA                -0.7757577   -0.9478784   -0.6036369
6 months    MAL-ED         INDIA                          0                    NA                -0.6552694   -0.8416303   -0.4689085
6 months    MAL-ED         NEPAL                          1                    NA                -0.0125478   -0.2251118    0.2000161
6 months    MAL-ED         NEPAL                          0                    NA                 0.1875095    0.0215401    0.3534789
6 months    MAL-ED         PERU                           1                    NA                 1.0192411    0.8766600    1.1618222
6 months    MAL-ED         PERU                           0                    NA                 1.2035876    0.9728402    1.4343349
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                 0.5439677    0.3431859    0.7447496
6 months    MAL-ED         SOUTH AFRICA                   0                    NA                 0.5717425    0.3338384    0.8096465
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5058159    0.3640964    0.6475354
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.6501574    0.2824856    1.0178291
6 months    NIH-Crypto     BANGLADESH                     1                    NA                 0.0391312   -0.0461854    0.1244478
6 months    NIH-Crypto     BANGLADESH                     0                    NA                -0.0316823   -0.2406257    0.1772612
6 months    SAS-CompFeed   INDIA                          1                    NA                -0.6193063   -1.3132515    0.0746389
6 months    SAS-CompFeed   INDIA                          0                    NA                -0.6679562   -0.7976911   -0.5382213
6 months    ZVITAMBO       ZIMBABWE                       1                    NA                 0.3135120    0.2768797    0.3501442
6 months    ZVITAMBO       ZIMBABWE                       0                    NA                 0.3013315    0.2604875    0.3421756
24 months   EE             PAKISTAN                       1                    NA                -0.9319369   -1.2345936   -0.6292802
24 months   EE             PAKISTAN                       0                    NA                -1.0188011   -1.1922117   -0.8453905
24 months   GMS-Nepal      NEPAL                          1                    NA                -1.0606279   -1.2288304   -0.8924255
24 months   GMS-Nepal      NEPAL                          0                    NA                -1.1627473   -1.2756581   -1.0498364
24 months   JiVitA-4       BANGLADESH                     1                    NA                -1.2351178   -1.2750114   -1.1952242
24 months   JiVitA-4       BANGLADESH                     0                    NA                -1.1933800   -1.2483514   -1.1384086
24 months   MAL-ED         BANGLADESH                     1                    NA                -0.7842091   -0.9436629   -0.6247553
24 months   MAL-ED         BANGLADESH                     0                    NA                -0.8654650   -1.0590694   -0.6718606
24 months   MAL-ED         BRAZIL                         1                    NA                 0.3678211    0.0575679    0.6780742
24 months   MAL-ED         BRAZIL                         0                    NA                 0.5295745    0.2531873    0.8059616
24 months   MAL-ED         INDIA                          1                    NA                -0.9583793   -1.1155024   -0.8012562
24 months   MAL-ED         INDIA                          0                    NA                -0.8710294   -1.0445331   -0.6975257
24 months   MAL-ED         NEPAL                          1                    NA                -0.4880857   -0.6750906   -0.3010807
24 months   MAL-ED         NEPAL                          0                    NA                -0.3044558   -0.4508952   -0.1580164
24 months   MAL-ED         PERU                           1                    NA                 0.0669692   -0.0831180    0.2170564
24 months   MAL-ED         PERU                           0                    NA                 0.2309944    0.0285334    0.4334555
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.4019664    0.2398544    0.5640783
24 months   MAL-ED         SOUTH AFRICA                   0                    NA                 0.4085575    0.2216228    0.5954921
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0894237   -0.0457947    0.2246422
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0121366   -0.3479004    0.3236272
24 months   NIH-Crypto     BANGLADESH                     1                    NA                -0.6496324   -0.7503849   -0.5488799
24 months   NIH-Crypto     BANGLADESH                     0                    NA                -0.3572469   -0.6225574   -0.0919365
24 months   ZVITAMBO       ZIMBABWE                       1                    NA                -1.1622735   -1.3063599   -1.0181872
24 months   ZVITAMBO       ZIMBABWE                       0                    NA                -1.2260130   -1.3916826   -1.0603434


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
Birth       EE             PAKISTAN                       0                    1                 -0.1936861   -0.6221332    0.2347610
Birth       GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal      NEPAL                          0                    1                  0.0360400   -0.1521172    0.2241972
Birth       JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3       BANGLADESH                     0                    1                  0.0870914    0.0322931    0.1418896
Birth       JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4       BANGLADESH                     0                    1                 -0.0616720   -0.1752502    0.0519062
Birth       MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BANGLADESH                     0                    1                 -0.1796419   -0.4896399    0.1303560
Birth       MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BRAZIL                         0                    1                  0.2436480   -0.3970472    0.8843432
Birth       MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         INDIA                          0                    1                 -0.3352021   -0.9011183    0.2307142
Birth       MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         NEPAL                          0                    1                 -0.0759279   -0.8274654    0.6756096
Birth       MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         PERU                           0                    1                  0.1795143   -0.1142479    0.4732766
Birth       MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         SOUTH AFRICA                   0                    1                 -0.0205234   -0.5776147    0.5365679
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2592631   -0.9342093    0.4156832
Birth       NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto     BANGLADESH                     0                    1                 -0.0197552   -0.2394444    0.1999340
Birth       SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed   INDIA                          0                    1                  0.0813689   -0.2746785    0.4374163
Birth       ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO       ZIMBABWE                       0                    1                 -0.0961126   -0.1448291   -0.0473961
6 months    EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    EE             PAKISTAN                       0                    1                 -0.0857202   -0.3854577    0.2140173
6 months    GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal      NEPAL                          0                    1                 -0.2100525   -0.4155849   -0.0045201
6 months    JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3       BANGLADESH                     0                    1                  0.0745647    0.0372624    0.1118671
6 months    JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4       BANGLADESH                     0                    1                  0.0066933   -0.0665658    0.0799524
6 months    MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BANGLADESH                     0                    1                 -0.0485428   -0.3325793    0.2354937
6 months    MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BRAZIL                         0                    1                 -0.2064318   -0.5368631    0.1239995
6 months    MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         INDIA                          0                    1                  0.1204883   -0.1337492    0.3747258
6 months    MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         NEPAL                          0                    1                  0.2000574   -0.0700226    0.4701373
6 months    MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         PERU                           0                    1                  0.1843465   -0.0862492    0.4549421
6 months    MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         SOUTH AFRICA                   0                    1                  0.0277747   -0.2837826    0.3393320
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1443415   -0.2525143    0.5411972
6 months    NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto     BANGLADESH                     0                    1                 -0.0708135   -0.2963899    0.1547629
6 months    SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed   INDIA                          0                    1                 -0.0486499   -0.7072480    0.6099483
6 months    ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO       ZIMBABWE                       0                    1                 -0.0121804   -0.0665876    0.0422267
24 months   EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   EE             PAKISTAN                       0                    1                 -0.0868641   -0.4348798    0.2611516
24 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal      NEPAL                          0                    1                 -0.1021194   -0.3054571    0.1012184
24 months   JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4       BANGLADESH                     0                    1                  0.0417378   -0.0263804    0.1098561
24 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BANGLADESH                     0                    1                 -0.0812559   -0.3316193    0.1691075
24 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BRAZIL                         0                    1                  0.1617534   -0.2539359    0.5774427
24 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         INDIA                          0                    1                  0.0873499   -0.1478589    0.3225586
24 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         NEPAL                          0                    1                  0.1836299   -0.0542812    0.4215409
24 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         PERU                           0                    1                  0.1640252   -0.0860229    0.4140733
24 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         SOUTH AFRICA                   0                    1                  0.0065911   -0.2422199    0.2554021
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1015604   -0.4640341    0.2609134
24 months   NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto     BANGLADESH                     0                    1                  0.2923854    0.0091013    0.5756695
24 months   ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO       ZIMBABWE                       0                    1                 -0.0637395   -0.2822474    0.1547685


### Parameter: PAR


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE             PAKISTAN                       1                    NA                -0.1787230   -0.5205776    0.1631315
Birth       GMS-Nepal      NEPAL                          1                    NA                 0.0195849   -0.1150846    0.1542545
Birth       JiVitA-3       BANGLADESH                     1                    NA                 0.0866148    0.0331826    0.1400469
Birth       JiVitA-4       BANGLADESH                     1                    NA                -0.0199025   -0.0567923    0.0169874
Birth       MAL-ED         BANGLADESH                     1                    NA                -0.0586035   -0.1667543    0.0495474
Birth       MAL-ED         BRAZIL                         1                    NA                 0.1494206   -0.2366508    0.5354919
Birth       MAL-ED         INDIA                          1                    NA                -0.0510821   -0.2199784    0.1178143
Birth       MAL-ED         NEPAL                          1                    NA                -0.0208078   -0.3729110    0.3312953
Birth       MAL-ED         PERU                           1                    NA                 0.0450982   -0.0240160    0.1142123
Birth       MAL-ED         SOUTH AFRICA                   1                    NA                -0.0199225   -0.2178009    0.1779560
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0280551   -0.0905708    0.0344606
Birth       NIH-Crypto     BANGLADESH                     1                    NA                 0.0022695   -0.0269978    0.0315369
Birth       SAS-CompFeed   INDIA                          1                    NA                 0.0811211   -0.2512352    0.4134774
Birth       ZVITAMBO       ZIMBABWE                       1                    NA                -0.0448721   -0.0693769   -0.0203674
6 months    EE             PAKISTAN                       1                    NA                -0.0712703   -0.3148341    0.1722936
6 months    GMS-Nepal      NEPAL                          1                    NA                -0.1562127   -0.3019203   -0.0105051
6 months    JiVitA-3       BANGLADESH                     1                    NA                 0.0744041    0.0380233    0.1107849
6 months    JiVitA-4       BANGLADESH                     1                    NA                 0.0035446   -0.0223945    0.0294837
6 months    MAL-ED         BANGLADESH                     1                    NA                -0.0188473   -0.1261765    0.0884819
6 months    MAL-ED         BRAZIL                         1                    NA                -0.1032173   -0.2840512    0.0776166
6 months    MAL-ED         INDIA                          1                    NA                 0.0677598   -0.0380580    0.1735776
6 months    MAL-ED         NEPAL                          1                    NA                 0.1229786   -0.0391474    0.2851047
6 months    MAL-ED         PERU                           1                    NA                 0.0336405   -0.0365295    0.1038104
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                 0.0060589   -0.1110319    0.1231497
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0304054   -0.0362188    0.0970296
6 months    NIH-Crypto     BANGLADESH                     1                    NA                -0.0093690   -0.0390448    0.0203069
6 months    SAS-CompFeed   INDIA                          1                    NA                -0.0464021   -0.6732477    0.5804435
6 months    ZVITAMBO       ZIMBABWE                       1                    NA                -0.0062486   -0.0315686    0.0190713
24 months   EE             PAKISTAN                       1                    NA                -0.0725143   -0.3611434    0.2161149
24 months   GMS-Nepal      NEPAL                          1                    NA                -0.0733323   -0.2185480    0.0718834
24 months   JiVitA-4       BANGLADESH                     1                    NA                 0.0120091   -0.0123276    0.0363457
24 months   MAL-ED         BANGLADESH                     1                    NA                -0.0299615   -0.1288198    0.0688968
24 months   MAL-ED         BRAZIL                         1                    NA                 0.0948022   -0.1242557    0.3138602
24 months   MAL-ED         INDIA                          1                    NA                 0.0067273   -0.0910595    0.1045141
24 months   MAL-ED         NEPAL                          1                    NA                 0.1131734   -0.0305385    0.2568852
24 months   MAL-ED         PERU                           1                    NA                 0.0442290   -0.0193939    0.1078518
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.0133280   -0.0831777    0.1098336
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0346262   -0.0930366    0.0237841
24 months   NIH-Crypto     BANGLADESH                     1                    NA                 0.0392822   -0.0005168    0.0790812
24 months   ZVITAMBO       ZIMBABWE                       1                    NA                -0.0347977   -0.1374817    0.0678864
