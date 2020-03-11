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
![](/tmp/3247657d-ce5a-464a-b834-5102eefb7c9c/39dbc0a2-4180-4065-85f5-e6a3abd5ca47/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE             PAKISTAN                       optimal              observed          -0.4216092   -0.8018211   -0.0413972
Birth       GMS-Nepal      NEPAL                          optimal              observed          -1.1838201   -1.3038243   -1.0638158
Birth       JiVitA-3       BANGLADESH                     optimal              observed          -0.8126921   -0.8454118   -0.7799725
Birth       JiVitA-4       BANGLADESH                     optimal              observed          -0.6528396   -0.7185599   -0.5871194
Birth       MAL-ED         BANGLADESH                     optimal              observed          -0.9063716   -1.1031605   -0.7095827
Birth       MAL-ED         BRAZIL                         optimal              observed           0.2741901   -0.0837158    0.6320960
Birth       MAL-ED         INDIA                          optimal              observed          -1.0693915   -1.4525142   -0.6862688
Birth       MAL-ED         NEPAL                          optimal              observed          -0.7155852   -1.1274744   -0.3036959
Birth       MAL-ED         PERU                           optimal              observed           0.0744442   -0.1795878    0.3284761
Birth       MAL-ED         SOUTH AFRICA                   optimal              observed          -0.2353485   -0.5148887    0.0441917
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.7006607    0.2418496    1.1594717
Birth       NIH-Crypto     BANGLADESH                     optimal              observed          -1.3065989   -1.5087424   -1.1044554
Birth       SAS-CompFeed   INDIA                          optimal              observed          -0.6850422   -0.9946068   -0.3754777
Birth       ZVITAMBO       ZIMBABWE                       optimal              observed          -0.4666227   -0.5036240   -0.4296214
6 months    EE             PAKISTAN                       optimal              observed          -0.7157252   -0.9854494   -0.4460011
6 months    GMS-Nepal      NEPAL                          optimal              observed          -0.4450047   -0.6179190   -0.2720905
6 months    JiVitA-3       BANGLADESH                     optimal              observed          -0.6769156   -0.7000913   -0.6537399
6 months    JiVitA-4       BANGLADESH                     optimal              observed          -0.3963589   -0.4530434   -0.3396745
6 months    MAL-ED         BANGLADESH                     optimal              observed          -0.0060694   -0.1736855    0.1615466
6 months    MAL-ED         BRAZIL                         optimal              observed           1.1362006    0.8970912    1.3753101
6 months    MAL-ED         INDIA                          optimal              observed          -0.5872318   -0.7564904   -0.4179731
6 months    MAL-ED         NEPAL                          optimal              observed           0.1873848    0.0201181    0.3546515
6 months    MAL-ED         PERU                           optimal              observed           1.2585261    1.0380780    1.4789742
6 months    MAL-ED         SOUTH AFRICA                   optimal              observed           0.5894492    0.3960338    0.7828647
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.7188549    0.3683001    1.0694096
6 months    NIH-Crypto     BANGLADESH                     optimal              observed           0.0557805   -0.0864016    0.1979626
6 months    SAS-CompFeed   INDIA                          optimal              observed          -0.9749270   -1.1278859   -0.8219681
6 months    ZVITAMBO       ZIMBABWE                       optimal              observed           0.3338681    0.2961336    0.3716026
24 months   EE             PAKISTAN                       optimal              observed          -1.0714183   -1.3539413   -0.7888953
24 months   GMS-Nepal      NEPAL                          optimal              observed          -1.0561098   -1.2229898   -0.8892299
24 months   JiVitA-4       BANGLADESH                     optimal              observed          -1.1822881   -1.2307732   -1.1338029
24 months   MAL-ED         BANGLADESH                     optimal              observed          -0.7656091   -0.9452314   -0.5859867
24 months   MAL-ED         BRAZIL                         optimal              observed           0.6720638    0.3590115    0.9851161
24 months   MAL-ED         INDIA                          optimal              observed          -1.0244733   -1.1954641   -0.8534824
24 months   MAL-ED         NEPAL                          optimal              observed          -0.2975387   -0.4430315   -0.1520458
24 months   MAL-ED         PERU                           optimal              observed           0.2284014    0.0265109    0.4302920
24 months   MAL-ED         SOUTH AFRICA                   optimal              observed           0.4809784    0.3042982    0.6576587
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1625172    0.0245810    0.3004535
24 months   NIH-Crypto     BANGLADESH                     optimal              observed          -0.3879533   -0.6547383   -0.1211682
24 months   ZVITAMBO       ZIMBABWE                       optimal              observed          -1.2440344   -1.3931962   -1.0948726


### Parameter: E(Y)


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE             PAKISTAN                       observed             observed          -0.3522059   -0.5428560   -0.1615557
Birth       GMS-Nepal      NEPAL                          observed             observed          -1.1260580   -1.2184297   -1.0336863
Birth       JiVitA-3       BANGLADESH                     observed             observed          -0.7778811   -0.7969145   -0.7588476
Birth       JiVitA-4       BANGLADESH                     observed             observed          -0.6886269   -0.7410452   -0.6362086
Birth       MAL-ED         BANGLADESH                     observed             observed          -0.9390654   -1.0847642   -0.7933666
Birth       MAL-ED         BRAZIL                         observed             observed           0.4029032    0.0896793    0.7161272
Birth       MAL-ED         INDIA                          observed             observed          -0.9122727   -1.1899971   -0.6345483
Birth       MAL-ED         NEPAL                          observed             observed          -0.7684615   -1.1257770   -0.4111460
Birth       MAL-ED         PERU                           observed             observed          -0.0520175   -0.1725298    0.0684947
Birth       MAL-ED         SOUTH AFRICA                   observed             observed          -0.1690000   -0.3880340    0.0500340
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7624348    0.5710709    0.9537986
Birth       NIH-Crypto     BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       SAS-CompFeed   INDIA                          observed             observed          -0.6676026   -0.8422097   -0.4929956
Birth       ZVITAMBO       ZIMBABWE                       observed             observed          -0.5262098   -0.5537283   -0.4986913
6 months    EE             PAKISTAN                       observed             observed          -0.7725778   -0.8877440   -0.6574117
6 months    GMS-Nepal      NEPAL                          observed             observed          -0.5843738   -0.6761994   -0.4925481
6 months    JiVitA-3       BANGLADESH                     observed             observed          -0.5935161   -0.6130518   -0.5739805
6 months    JiVitA-4       BANGLADESH                     observed             observed          -0.3898055   -0.4270507   -0.3525603
6 months    MAL-ED         BANGLADESH                     observed             observed          -0.1316250   -0.2604010   -0.0028490
6 months    MAL-ED         BRAZIL                         observed             observed           0.9720774    0.8078144    1.1363403
6 months    MAL-ED         INDIA                          observed             observed          -0.7079979   -0.8344175   -0.5815783
6 months    MAL-ED         NEPAL                          observed             observed           0.1104308   -0.0208643    0.2417259
6 months    MAL-ED         PERU                           observed             observed           1.0528816    0.9313005    1.1744626
6 months    MAL-ED         SOUTH AFRICA                   observed             observed           0.5500267    0.3964966    0.7035568
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    NIH-Crypto     BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    SAS-CompFeed   INDIA                          observed             observed          -0.6657084   -0.8024377   -0.5289791
6 months    ZVITAMBO       ZIMBABWE                       observed             observed           0.3072633    0.2799882    0.3345385
24 months   EE             PAKISTAN                       observed             observed          -1.0044512   -1.1543739   -0.8545285
24 months   GMS-Nepal      NEPAL                          observed             observed          -1.1339602   -1.2266932   -1.0412272
24 months   JiVitA-4       BANGLADESH                     observed             observed          -1.2231088   -1.2549632   -1.1912543
24 months   MAL-ED         BANGLADESH                     observed             observed          -0.8141706   -0.9363085   -0.6920327
24 months   MAL-ED         BRAZIL                         observed             observed           0.4626233    0.2567495    0.6684971
24 months   MAL-ED         INDIA                          observed             observed          -0.9516520   -1.0670654   -0.8362385
24 months   MAL-ED         NEPAL                          observed             observed          -0.3749123   -0.4886073   -0.2612173
24 months   MAL-ED         PERU                           observed             observed           0.1111982   -0.0118399    0.2342362
24 months   MAL-ED         SOUTH AFRICA                   observed             observed           0.4152943    0.2928804    0.5377083
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0547975   -0.0703378    0.1799328
24 months   NIH-Crypto     BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ZVITAMBO       ZIMBABWE                       observed             observed          -1.1970712   -1.3045749   -1.0895676


### Parameter: PAR


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE             PAKISTAN                       optimal              observed           0.0694033   -0.2634720    0.4022786
Birth       GMS-Nepal      NEPAL                          optimal              observed           0.0577620   -0.0164425    0.1319666
Birth       JiVitA-3       BANGLADESH                     optimal              observed           0.0348111    0.0064266    0.0631955
Birth       JiVitA-4       BANGLADESH                     optimal              observed          -0.0357873   -0.0820312    0.0104567
Birth       MAL-ED         BANGLADESH                     optimal              observed          -0.0326939   -0.1565606    0.0911728
Birth       MAL-ED         BRAZIL                         optimal              observed           0.1287131   -0.1495166    0.4069428
Birth       MAL-ED         INDIA                          optimal              observed           0.1571188   -0.0618411    0.3760786
Birth       MAL-ED         NEPAL                          optimal              observed          -0.0528763   -0.4239063    0.3181536
Birth       MAL-ED         PERU                           optimal              observed          -0.1264617   -0.3494568    0.0965334
Birth       MAL-ED         SOUTH AFRICA                   optimal              observed           0.0663485   -0.1643144    0.2970114
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0617741   -0.3306759    0.4542242
Birth       NIH-Crypto     BANGLADESH                     optimal              observed           0.0624475   -0.1199257    0.2448207
Birth       SAS-CompFeed   INDIA                          optimal              observed           0.0174396   -0.1663520    0.2012312
Birth       ZVITAMBO       ZIMBABWE                       optimal              observed          -0.0595871   -0.0845332   -0.0346411
6 months    EE             PAKISTAN                       optimal              observed          -0.0568526   -0.2990223    0.1853171
6 months    GMS-Nepal      NEPAL                          optimal              observed          -0.1393690   -0.2825708    0.0038327
6 months    JiVitA-3       BANGLADESH                     optimal              observed           0.0833994    0.0652014    0.1015974
6 months    JiVitA-4       BANGLADESH                     optimal              observed           0.0065534   -0.0347651    0.0478720
6 months    MAL-ED         BANGLADESH                     optimal              observed          -0.1255556   -0.2552479    0.0041368
6 months    MAL-ED         BRAZIL                         optimal              observed          -0.1641233   -0.3360569    0.0078103
6 months    MAL-ED         INDIA                          optimal              observed          -0.1207661   -0.2603969    0.0188646
6 months    MAL-ED         NEPAL                          optimal              observed          -0.0769540   -0.1872826    0.0333746
6 months    MAL-ED         PERU                           optimal              observed          -0.2056445   -0.3852965   -0.0259925
6 months    MAL-ED         SOUTH AFRICA                   optimal              observed          -0.0394226   -0.1931305    0.1142854
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1826336   -0.4974186    0.1321515
6 months    NIH-Crypto     BANGLADESH                     optimal              observed          -0.0260182   -0.1479566    0.0959202
6 months    SAS-CompFeed   INDIA                          optimal              observed           0.3092186    0.1295996    0.4888376
6 months    ZVITAMBO       ZIMBABWE                       optimal              observed          -0.0266047   -0.0532446    0.0000352
24 months   EE             PAKISTAN                       optimal              observed           0.0669671   -0.1831554    0.3170896
24 months   GMS-Nepal      NEPAL                          optimal              observed          -0.0778504   -0.2208830    0.0651823
24 months   JiVitA-4       BANGLADESH                     optimal              observed          -0.0408207   -0.0783429   -0.0032985
24 months   MAL-ED         BANGLADESH                     optimal              observed          -0.0485616   -0.1758429    0.0787198
24 months   MAL-ED         BRAZIL                         optimal              observed          -0.2094405   -0.4121115   -0.0067696
24 months   MAL-ED         INDIA                          optimal              observed           0.0728213   -0.0610413    0.2066839
24 months   MAL-ED         NEPAL                          optimal              observed          -0.0773736   -0.1735115    0.0187643
24 months   MAL-ED         PERU                           optimal              observed          -0.1172033   -0.3057100    0.0713035
24 months   MAL-ED         SOUTH AFRICA                   optimal              observed          -0.0656841   -0.1887429    0.0573747
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1077197   -0.2061013   -0.0093381
24 months   NIH-Crypto     BANGLADESH                     optimal              observed          -0.2223969   -0.4681797    0.0233858
24 months   ZVITAMBO       ZIMBABWE                       optimal              observed           0.0469632   -0.0609126    0.1548390
