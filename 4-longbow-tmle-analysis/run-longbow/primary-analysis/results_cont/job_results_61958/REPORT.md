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

**Outcome Variable:** haz

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
Birth       EE             PAKISTAN                       1              44     229  haz              
Birth       EE             PAKISTAN                       0             185     229  haz              
Birth       GMS-Nepal      NEPAL                          1             180     632  haz              
Birth       GMS-Nepal      NEPAL                          0             452     632  haz              
Birth       JiVitA-3       BANGLADESH                     1             236   22370  haz              
Birth       JiVitA-3       BANGLADESH                     0           22134   22370  haz              
Birth       JiVitA-4       BANGLADESH                     1            1912    2823  haz              
Birth       JiVitA-4       BANGLADESH                     0             911    2823  haz              
Birth       MAL-ED         BANGLADESH                     1             147     230  haz              
Birth       MAL-ED         BANGLADESH                     0              83     230  haz              
Birth       MAL-ED         BRAZIL                         1              28      65  haz              
Birth       MAL-ED         BRAZIL                         0              37      65  haz              
Birth       MAL-ED         INDIA                          1              32      46  haz              
Birth       MAL-ED         INDIA                          0              14      46  haz              
Birth       MAL-ED         NEPAL                          1              14      27  haz              
Birth       MAL-ED         NEPAL                          0              13      27  haz              
Birth       MAL-ED         PERU                           1             175     233  haz              
Birth       MAL-ED         PERU                           0              58     233  haz              
Birth       MAL-ED         SOUTH AFRICA                   1              69     111  haz              
Birth       MAL-ED         SOUTH AFRICA                   0              42     111  haz              
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             111     125  haz              
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              14     125  haz              
Birth       NIH-Crypto     BANGLADESH                     1             634     732  haz              
Birth       NIH-Crypto     BANGLADESH                     0              98     732  haz              
Birth       SAS-CompFeed   INDIA                          1              86    1207  haz              
Birth       SAS-CompFeed   INDIA                          0            1121    1207  haz              
Birth       ZVITAMBO       ZIMBABWE                       1            6556   12354  haz              
Birth       ZVITAMBO       ZIMBABWE                       0            5798   12354  haz              
6 months    EE             PAKISTAN                       1              68     362  haz              
6 months    EE             PAKISTAN                       0             294     362  haz              
6 months    GMS-Nepal      NEPAL                          1             151     511  haz              
6 months    GMS-Nepal      NEPAL                          0             360     511  haz              
6 months    JiVitA-3       BANGLADESH                     1              35   16811  haz              
6 months    JiVitA-3       BANGLADESH                     0           16776   16811  haz              
6 months    JiVitA-4       BANGLADESH                     1            3094    4831  haz              
6 months    JiVitA-4       BANGLADESH                     0            1737    4831  haz              
6 months    MAL-ED         BANGLADESH                     1             147     240  haz              
6 months    MAL-ED         BANGLADESH                     0              93     240  haz              
6 months    MAL-ED         BRAZIL                         1              95     209  haz              
6 months    MAL-ED         BRAZIL                         0             114     209  haz              
6 months    MAL-ED         INDIA                          1             140     236  haz              
6 months    MAL-ED         INDIA                          0              96     236  haz              
6 months    MAL-ED         NEPAL                          1              96     236  haz              
6 months    MAL-ED         NEPAL                          0             140     236  haz              
6 months    MAL-ED         PERU                           1             202     273  haz              
6 months    MAL-ED         PERU                           0              71     273  haz              
6 months    MAL-ED         SOUTH AFRICA                   1             156     250  haz              
6 months    MAL-ED         SOUTH AFRICA                   0              94     250  haz              
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             205     247  haz              
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              42     247  haz              
6 months    NIH-Crypto     BANGLADESH                     1             619     715  haz              
6 months    NIH-Crypto     BANGLADESH                     0              96     715  haz              
6 months    SAS-CompFeed   INDIA                          1              98    1336  haz              
6 months    SAS-CompFeed   INDIA                          0            1238    1336  haz              
6 months    ZVITAMBO       ZIMBABWE                       1            4146    7698  haz              
6 months    ZVITAMBO       ZIMBABWE                       0            3552    7698  haz              
24 months   EE             PAKISTAN                       1              32     164  haz              
24 months   EE             PAKISTAN                       0             132     164  haz              
24 months   GMS-Nepal      NEPAL                          1             131     445  haz              
24 months   GMS-Nepal      NEPAL                          0             314     445  haz              
24 months   JiVitA-3       BANGLADESH                     1               1    8632  haz              
24 months   JiVitA-3       BANGLADESH                     0            8631    8632  haz              
24 months   JiVitA-4       BANGLADESH                     1            3042    4752  haz              
24 months   JiVitA-4       BANGLADESH                     0            1710    4752  haz              
24 months   MAL-ED         BANGLADESH                     1             128     211  haz              
24 months   MAL-ED         BANGLADESH                     0              83     211  haz              
24 months   MAL-ED         BRAZIL                         1              80     169  haz              
24 months   MAL-ED         BRAZIL                         0              89     169  haz              
24 months   MAL-ED         INDIA                          1             134     227  haz              
24 months   MAL-ED         INDIA                          0              93     227  haz              
24 months   MAL-ED         NEPAL                          1              95     228  haz              
24 months   MAL-ED         NEPAL                          0             133     228  haz              
24 months   MAL-ED         PERU                           1             149     201  haz              
24 months   MAL-ED         PERU                           0              52     201  haz              
24 months   MAL-ED         SOUTH AFRICA                   1             144     235  haz              
24 months   MAL-ED         SOUTH AFRICA                   0              91     235  haz              
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             180     214  haz              
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              34     214  haz              
24 months   NIH-Crypto     BANGLADESH                     1             443     514  haz              
24 months   NIH-Crypto     BANGLADESH                     0              71     514  haz              
24 months   ZVITAMBO       ZIMBABWE                       1             717    1406  haz              
24 months   ZVITAMBO       ZIMBABWE                       0             689    1406  haz              


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
![](/tmp/03ee6508-a11b-48e3-b1f6-ea6cee2c88fc/1afe3310-ded0-4d76-a768-9427e43f6ea7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/03ee6508-a11b-48e3-b1f6-ea6cee2c88fc/1afe3310-ded0-4d76-a768-9427e43f6ea7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/03ee6508-a11b-48e3-b1f6-ea6cee2c88fc/1afe3310-ded0-4d76-a768-9427e43f6ea7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE             PAKISTAN                       1                    NA                -1.7388595   -2.0263260   -1.4513930
Birth       EE             PAKISTAN                       0                    NA                -1.9112538   -2.1131731   -1.7093345
Birth       GMS-Nepal      NEPAL                          1                    NA                -0.9690796   -1.1142853   -0.8238739
Birth       GMS-Nepal      NEPAL                          0                    NA                -1.0945649   -1.1915051   -0.9976246
Birth       JiVitA-3       BANGLADESH                     1                    NA                -2.0991352   -2.1577269   -2.0405436
Birth       JiVitA-3       BANGLADESH                     0                    NA                -1.5872740   -1.6068263   -1.5677217
Birth       JiVitA-4       BANGLADESH                     1                    NA                -1.5103602   -1.5679320   -1.4527883
Birth       JiVitA-4       BANGLADESH                     0                    NA                -1.5482460   -1.6416153   -1.4548768
Birth       MAL-ED         BANGLADESH                     1                    NA                -0.9895977   -1.1494499   -0.8297455
Birth       MAL-ED         BANGLADESH                     0                    NA                -1.3794470   -1.6160254   -1.1428687
Birth       MAL-ED         BRAZIL                         1                    NA                -0.4271220   -0.9663420    0.1120979
Birth       MAL-ED         BRAZIL                         0                    NA                -0.7412517   -1.1061050   -0.3763985
Birth       MAL-ED         INDIA                          1                    NA                -1.0764520   -1.4432314   -0.7096727
Birth       MAL-ED         INDIA                          0                    NA                -1.3494915   -1.9258797   -0.7731033
Birth       MAL-ED         NEPAL                          1                    NA                -0.8445680   -1.3860664   -0.3030696
Birth       MAL-ED         NEPAL                          0                    NA                -0.9338059   -1.4364540   -0.4311578
Birth       MAL-ED         PERU                           1                    NA                -0.8259402   -0.9549449   -0.6969355
Birth       MAL-ED         PERU                           0                    NA                -1.0832910   -1.2649270   -0.9016551
Birth       MAL-ED         SOUTH AFRICA                   1                    NA                -0.4775233   -0.7072325   -0.2478142
Birth       MAL-ED         SOUTH AFRICA                   0                    NA                -0.7319227   -1.0459991   -0.4178463
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.1300529   -1.3485383   -0.9115674
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.2056696   -2.0532667   -0.3580725
Birth       NIH-Crypto     BANGLADESH                     1                    NA                -0.9070107   -0.9821375   -0.8318839
Birth       NIH-Crypto     BANGLADESH                     0                    NA                -0.8870225   -1.0888569   -0.6851882
Birth       SAS-CompFeed   INDIA                          1                    NA                -1.0994066   -1.2772210   -0.9215922
Birth       SAS-CompFeed   INDIA                          0                    NA                -1.4308867   -1.4933116   -1.3684618
Birth       ZVITAMBO       ZIMBABWE                       1                    NA                -0.4912916   -0.5218734   -0.4607097
Birth       ZVITAMBO       ZIMBABWE                       0                    NA                -0.4757134   -0.5071473   -0.4442795
6 months    EE             PAKISTAN                       1                    NA                -2.0120953   -2.3464641   -1.6777265
6 months    EE             PAKISTAN                       0                    NA                -2.1049088   -2.2338539   -1.9759637
6 months    GMS-Nepal      NEPAL                          1                    NA                -1.1588004   -1.3069483   -1.0106525
6 months    GMS-Nepal      NEPAL                          0                    NA                -1.3829640   -1.4801283   -1.2857997
6 months    JiVitA-3       BANGLADESH                     1                    NA                -2.2974269   -2.3423038   -2.2525499
6 months    JiVitA-3       BANGLADESH                     0                    NA                -1.3111312   -1.3347395   -1.2875229
6 months    JiVitA-4       BANGLADESH                     1                    NA                -1.3341720   -1.3802471   -1.2880968
6 months    JiVitA-4       BANGLADESH                     0                    NA                -1.3628802   -1.4217668   -1.3039936
6 months    MAL-ED         BANGLADESH                     1                    NA                -1.1586431   -1.3086234   -1.0086629
6 months    MAL-ED         BANGLADESH                     0                    NA                -1.2792702   -1.4698590   -1.0886814
6 months    MAL-ED         BRAZIL                         1                    NA                -0.0396665   -0.2614712    0.1821383
6 months    MAL-ED         BRAZIL                         0                    NA                 0.0874594   -0.1036259    0.2785446
6 months    MAL-ED         INDIA                          1                    NA                -1.1976682   -1.3499939   -1.0453425
6 months    MAL-ED         INDIA                          0                    NA                -1.2419624   -1.4296770   -1.0542478
6 months    MAL-ED         NEPAL                          1                    NA                -0.6756636   -0.8371023   -0.5142249
6 months    MAL-ED         NEPAL                          0                    NA                -0.4815206   -0.6343917   -0.3286495
6 months    MAL-ED         PERU                           1                    NA                -1.3284757   -1.4553023   -1.2016491
6 months    MAL-ED         PERU                           0                    NA                -1.3048300   -1.5175620   -1.0920979
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                -1.0579889   -1.2119181   -0.9040596
6 months    MAL-ED         SOUTH AFRICA                   0                    NA                -1.0900336   -1.3178135   -0.8622536
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3305089   -1.4592669   -1.2017510
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.5349485   -1.9199161   -1.1499810
6 months    NIH-Crypto     BANGLADESH                     1                    NA                -1.2279398   -1.3044886   -1.1513910
6 months    NIH-Crypto     BANGLADESH                     0                    NA                -0.9959464   -1.1962613   -0.7956315
6 months    SAS-CompFeed   INDIA                          1                    NA                -1.3046030   -1.5804232   -1.0287828
6 months    SAS-CompFeed   INDIA                          0                    NA                -1.4110959   -1.4864420   -1.3357497
6 months    ZVITAMBO       ZIMBABWE                       1                    NA                -0.8376521   -0.8731013   -0.8022028
6 months    ZVITAMBO       ZIMBABWE                       0                    NA                -0.8921987   -0.9307008   -0.8536967
24 months   EE             PAKISTAN                       1                    NA                -2.6972724   -3.1547900   -2.2397548
24 months   EE             PAKISTAN                       0                    NA                -2.6518056   -2.8010289   -2.5025824
24 months   GMS-Nepal      NEPAL                          1                    NA                -1.5848334   -1.7327819   -1.4368849
24 months   GMS-Nepal      NEPAL                          0                    NA                -2.0022363   -2.1121954   -1.8922771
24 months   JiVitA-4       BANGLADESH                     1                    NA                -1.7931547   -1.8373363   -1.7489730
24 months   JiVitA-4       BANGLADESH                     0                    NA                -1.7596784   -1.8130707   -1.7062862
24 months   MAL-ED         BANGLADESH                     1                    NA                -1.9622770   -2.1196864   -1.8048677
24 months   MAL-ED         BANGLADESH                     0                    NA                -1.9899332   -2.2058839   -1.7739825
24 months   MAL-ED         BRAZIL                         1                    NA                -0.0122798   -0.2672076    0.2426480
24 months   MAL-ED         BRAZIL                         0                    NA                 0.0233722   -0.2013258    0.2480701
24 months   MAL-ED         INDIA                          1                    NA                -1.9226581   -2.0882107   -1.7571055
24 months   MAL-ED         INDIA                          0                    NA                -1.8210374   -2.0106765   -1.6313983
24 months   MAL-ED         NEPAL                          1                    NA                -1.3687850   -1.5426469   -1.1949231
24 months   MAL-ED         NEPAL                          0                    NA                -1.2669978   -1.4291302   -1.1048655
24 months   MAL-ED         PERU                           1                    NA                -1.8156888   -1.9555901   -1.6757876
24 months   MAL-ED         PERU                           0                    NA                -1.5605244   -1.7999984   -1.3210504
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                -1.6509935   -1.8244240   -1.4775629
24 months   MAL-ED         SOUTH AFRICA                   0                    NA                -1.5722432   -1.7895849   -1.3549015
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.6190447   -2.7634921   -2.4745973
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.7731163   -3.1180249   -2.4282076
24 months   NIH-Crypto     BANGLADESH                     1                    NA                -1.4785498   -1.5706108   -1.3864888
24 months   NIH-Crypto     BANGLADESH                     0                    NA                -1.2070086   -1.3883377   -1.0256795
24 months   ZVITAMBO       ZIMBABWE                       1                    NA                -1.5819074   -1.6684685   -1.4953463
24 months   ZVITAMBO       ZIMBABWE                       0                    NA                -1.6074834   -1.6931864   -1.5217804


### Parameter: E(Y)


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE             PAKISTAN                       NA                   NA                -1.8713537   -2.0647180   -1.6779894
Birth       GMS-Nepal      NEPAL                          NA                   NA                -1.0578481   -1.1411010   -0.9745953
Birth       JiVitA-3       BANGLADESH                     NA                   NA                -1.5896710   -1.6089649   -1.5703770
Birth       JiVitA-4       BANGLADESH                     NA                   NA                -1.5232908   -1.5723277   -1.4742539
Birth       MAL-ED         BANGLADESH                     NA                   NA                -1.1218261   -1.2566576   -0.9869945
Birth       MAL-ED         BRAZIL                         NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       MAL-ED         INDIA                          NA                   NA                -1.2221739   -1.5203945   -0.9239534
Birth       MAL-ED         NEPAL                          NA                   NA                -0.8533333   -1.2104864   -0.4961803
Birth       MAL-ED         PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED         SOUTH AFRICA                   NA                   NA                -0.5709009   -0.7569265   -0.3848753
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1556000   -1.3655361   -0.9456639
Birth       NIH-Crypto     BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       SAS-CompFeed   INDIA                          NA                   NA                -1.4072245   -1.4817853   -1.3326638
Birth       ZVITAMBO       ZIMBABWE                       NA                   NA                -0.4895257   -0.5113672   -0.4676841
6 months    EE             PAKISTAN                       NA                   NA                -2.0838858   -2.2054394   -1.9623322
6 months    GMS-Nepal      NEPAL                          NA                   NA                -1.3175310   -1.3993963   -1.2356656
6 months    JiVitA-3       BANGLADESH                     NA                   NA                -1.3130932   -1.3362359   -1.2899505
6 months    JiVitA-4       BANGLADESH                     NA                   NA                -1.3447940   -1.3820261   -1.3075620
6 months    MAL-ED         BANGLADESH                     NA                   NA                -1.2056389   -1.3233420   -1.0879358
6 months    MAL-ED         BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED         INDIA                          NA                   NA                -1.2115254   -1.3298727   -1.0931782
6 months    MAL-ED         NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED         PERU                           NA                   NA                -1.3236661   -1.4316775   -1.2156546
6 months    MAL-ED         SOUTH AFRICA                   NA                   NA                -1.0598800   -1.1885688   -0.9311912
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Crypto     BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    SAS-CompFeed   INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    ZVITAMBO       ZIMBABWE                       NA                   NA                -0.8625370   -0.8897591   -0.8353150
24 months   EE             PAKISTAN                       NA                   NA                -2.6678252   -2.8138884   -2.5217620
24 months   GMS-Nepal      NEPAL                          NA                   NA                -1.8793783   -1.9705101   -1.7882464
24 months   JiVitA-4       BANGLADESH                     NA                   NA                -1.7807218   -1.8162478   -1.7451958
24 months   MAL-ED         BANGLADESH                     NA                   NA                -1.9735782   -2.1004502   -1.8467062
24 months   MAL-ED         BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED         INDIA                          NA                   NA                -1.8861894   -2.0110006   -1.7613783
24 months   MAL-ED         NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED         PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED         SOUTH AFRICA                   NA                   NA                -1.6365071   -1.7722110   -1.5008032
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Crypto     BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ZVITAMBO       ZIMBABWE                       NA                   NA                -1.6006366   -1.6621572   -1.5391159


### Parameter: ATE


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       EE             PAKISTAN                       0                    1                 -0.1723943   -0.4513030    0.1065144
Birth       GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal      NEPAL                          0                    1                 -0.1254852   -0.2937055    0.0427350
Birth       JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3       BANGLADESH                     0                    1                  0.5118612    0.4523412    0.5713813
Birth       JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4       BANGLADESH                     0                    1                 -0.0378859   -0.1476930    0.0719212
Birth       MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BANGLADESH                     0                    1                 -0.3898494   -0.6754815   -0.1042173
Birth       MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BRAZIL                         0                    1                 -0.3141297   -1.0084305    0.3801711
Birth       MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         INDIA                          0                    1                 -0.2730395   -0.9615209    0.4154419
Birth       MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         NEPAL                          0                    1                 -0.0892379   -0.8216882    0.6432124
Birth       MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         PERU                           0                    1                 -0.2573508   -0.4552876   -0.0594141
Birth       MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         SOUTH AFRICA                   0                    1                 -0.2543993   -0.6471948    0.1383961
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0756167   -0.9610724    0.8098389
Birth       NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto     BANGLADESH                     0                    1                  0.0199881   -0.1921879    0.2321642
Birth       SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed   INDIA                          0                    1                 -0.3314801   -0.4594813   -0.2034788
Birth       ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO       ZIMBABWE                       0                    1                  0.0155782   -0.0268862    0.0580425
6 months    EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    EE             PAKISTAN                       0                    1                 -0.0928135   -0.4510418    0.2654149
6 months    GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal      NEPAL                          0                    1                 -0.2241637   -0.4006868   -0.0476405
6 months    JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3       BANGLADESH                     0                    1                  0.9862957    0.9364358    1.0361555
6 months    JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4       BANGLADESH                     0                    1                 -0.0287083   -0.1014407    0.0440242
6 months    MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BANGLADESH                     0                    1                 -0.1206271   -0.3638078    0.1225536
6 months    MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BRAZIL                         0                    1                  0.1271258   -0.1666126    0.4208642
6 months    MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         INDIA                          0                    1                 -0.0442942   -0.2847367    0.1961482
6 months    MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         NEPAL                          0                    1                  0.1941430   -0.0270901    0.4153761
6 months    MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         PERU                           0                    1                  0.0236457   -0.2247325    0.2720240
6 months    MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         SOUTH AFRICA                   0                    1                 -0.0320447   -0.3077412    0.2436518
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2044396   -0.6078439    0.1989648
6 months    NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto     BANGLADESH                     0                    1                  0.2319934    0.0174806    0.4465061
6 months    SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed   INDIA                          0                    1                 -0.1064929   -0.3580352    0.1450495
6 months    ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO       ZIMBABWE                       0                    1                 -0.0545467   -0.1039356   -0.0051577
24 months   EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   EE             PAKISTAN                       0                    1                  0.0454668   -0.4366004    0.5275339
24 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal      NEPAL                          0                    1                 -0.4174029   -0.6007869   -0.2340189
24 months   JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4       BANGLADESH                     0                    1                  0.0334762   -0.0316652    0.0986177
24 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BANGLADESH                     0                    1                 -0.0276561   -0.2938594    0.2385472
24 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BRAZIL                         0                    1                  0.0356520   -0.3029741    0.3742781
24 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         INDIA                          0                    1                  0.1016207   -0.1486792    0.3519207
24 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         NEPAL                          0                    1                  0.1017872   -0.1346688    0.3382431
24 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         PERU                           0                    1                  0.2551645   -0.0207516    0.5310805
24 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         SOUTH AFRICA                   0                    1                  0.0787503   -0.2007723    0.3582729
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1540716   -0.5280705    0.2199274
24 months   NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto     BANGLADESH                     0                    1                  0.2715411    0.0684975    0.4745848
24 months   ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO       ZIMBABWE                       0                    1                 -0.0255760   -0.1464092    0.0952572


### Parameter: PAR


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE             PAKISTAN                       1                    NA                -0.1324942   -0.3584250    0.0934366
Birth       GMS-Nepal      NEPAL                          1                    NA                -0.0887685   -0.2098705    0.0323336
Birth       JiVitA-3       BANGLADESH                     1                    NA                 0.5094642    0.4516624    0.5672661
Birth       JiVitA-4       BANGLADESH                     1                    NA                -0.0129307   -0.0482524    0.0223911
Birth       MAL-ED         BANGLADESH                     1                    NA                -0.1322284   -0.2395629   -0.0248939
Birth       MAL-ED         BRAZIL                         1                    NA                -0.2488780   -0.7028559    0.2051000
Birth       MAL-ED         INDIA                          1                    NA                -0.1457219   -0.3536968    0.0622530
Birth       MAL-ED         NEPAL                          1                    NA                -0.0087653   -0.3678707    0.3503400
Birth       MAL-ED         PERU                           1                    NA                -0.0568495   -0.1115240   -0.0021750
Birth       MAL-ED         SOUTH AFRICA                   1                    NA                -0.0933776   -0.2475702    0.0608150
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0255471   -0.1210821    0.0699878
Birth       NIH-Crypto     BANGLADESH                     1                    NA                -0.0024838   -0.0308346    0.0258669
Birth       SAS-CompFeed   INDIA                          1                    NA                -0.3078179   -0.4303157   -0.1853201
Birth       ZVITAMBO       ZIMBABWE                       1                    NA                 0.0017659   -0.0202505    0.0237824
6 months    EE             PAKISTAN                       1                    NA                -0.0717905   -0.3665110    0.2229299
6 months    GMS-Nepal      NEPAL                          1                    NA                -0.1587306   -0.2834494   -0.0340118
6 months    JiVitA-3       BANGLADESH                     1                    NA                 0.9843337    0.9357040    1.0329633
6 months    JiVitA-4       BANGLADESH                     1                    NA                -0.0106221   -0.0369159    0.0156718
6 months    MAL-ED         BANGLADESH                     1                    NA                -0.0469958   -0.1413042    0.0473127
6 months    MAL-ED         BRAZIL                         1                    NA                 0.0872422   -0.0742593    0.2487438
6 months    MAL-ED         INDIA                          1                    NA                -0.0138572   -0.1108712    0.0831567
6 months    MAL-ED         NEPAL                          1                    NA                 0.1140817   -0.0167929    0.2449563
6 months    MAL-ED         PERU                           1                    NA                 0.0048096   -0.0577697    0.0673890
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                -0.0018911   -0.1062945    0.1025122
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0382360   -0.1031362    0.0266641
6 months    NIH-Crypto     BANGLADESH                     1                    NA                 0.0292615    0.0005485    0.0579744
6 months    SAS-CompFeed   INDIA                          1                    NA                -0.0972533   -0.3350924    0.1405858
6 months    ZVITAMBO       ZIMBABWE                       1                    NA                -0.0248850   -0.0480698   -0.0017001
24 months   EE             PAKISTAN                       1                    NA                 0.0294472   -0.3718119    0.4307063
24 months   GMS-Nepal      NEPAL                          1                    NA                -0.2945449   -0.4251543   -0.1639355
24 months   JiVitA-4       BANGLADESH                     1                    NA                 0.0124329   -0.0110549    0.0359206
24 months   MAL-ED         BANGLADESH                     1                    NA                -0.0113012   -0.1168232    0.0942209
24 months   MAL-ED         BRAZIL                         1                    NA                 0.0183942   -0.1600419    0.1968303
24 months   MAL-ED         INDIA                          1                    NA                 0.0364687   -0.0666033    0.1395408
24 months   MAL-ED         NEPAL                          1                    NA                 0.0611973   -0.0769000    0.1992946
24 months   MAL-ED         PERU                           1                    NA                 0.0632179   -0.0053291    0.1317649
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.0144864   -0.0942830    0.1232558
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0265160   -0.0901335    0.0371015
24 months   NIH-Crypto     BANGLADESH                     1                    NA                 0.0372852    0.0089145    0.0656558
24 months   ZVITAMBO       ZIMBABWE                       1                    NA                -0.0187291   -0.0787544    0.0412961
