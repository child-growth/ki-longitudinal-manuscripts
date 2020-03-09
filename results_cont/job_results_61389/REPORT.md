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
![](/tmp/6fda542f-54ac-4203-aba0-bf5560b01b1b/bc778af3-47f6-4437-866f-d3adc0b0d524/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6fda542f-54ac-4203-aba0-bf5560b01b1b/bc778af3-47f6-4437-866f-d3adc0b0d524/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6fda542f-54ac-4203-aba0-bf5560b01b1b/bc778af3-47f6-4437-866f-d3adc0b0d524/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE             PAKISTAN                       1                    NA                -1.7198213   -2.0251799   -1.4144628
Birth       EE             PAKISTAN                       0                    NA                -1.9075970   -2.1088416   -1.7063525
Birth       GMS-Nepal      NEPAL                          1                    NA                -0.9823168   -1.1320125   -0.8326212
Birth       GMS-Nepal      NEPAL                          0                    NA                -1.0876045   -1.1851404   -0.9900687
Birth       JiVitA-3       BANGLADESH                     1                    NA                -2.1173359   -2.1757734   -2.0588983
Birth       JiVitA-3       BANGLADESH                     0                    NA                -1.5872734   -1.6068408   -1.5677061
Birth       JiVitA-4       BANGLADESH                     1                    NA                -1.5101157   -1.5673048   -1.4529266
Birth       JiVitA-4       BANGLADESH                     0                    NA                -1.5477610   -1.6413673   -1.4541548
Birth       MAL-ED         BANGLADESH                     1                    NA                -0.9768290   -1.1361223   -0.8175358
Birth       MAL-ED         BANGLADESH                     0                    NA                -1.3572309   -1.5961027   -1.1183591
Birth       MAL-ED         BRAZIL                         1                    NA                -0.4414866   -1.0069720    0.1239989
Birth       MAL-ED         BRAZIL                         0                    NA                -0.6974873   -1.0570302   -0.3379445
Birth       MAL-ED         INDIA                          1                    NA                -1.0401600   -1.4023807   -0.6779393
Birth       MAL-ED         INDIA                          0                    NA                -1.2332551   -1.7982072   -0.6683031
Birth       MAL-ED         NEPAL                          1                    NA                -0.8482736   -1.3764562   -0.3200910
Birth       MAL-ED         NEPAL                          0                    NA                -1.0383474   -1.5606502   -0.5160445
Birth       MAL-ED         PERU                           1                    NA                -0.8176585   -0.9457059   -0.6896112
Birth       MAL-ED         PERU                           0                    NA                -1.0474833   -1.2413700   -0.8535966
Birth       MAL-ED         SOUTH AFRICA                   1                    NA                -0.4897847   -0.7193416   -0.2602279
Birth       MAL-ED         SOUTH AFRICA                   0                    NA                -0.7051470   -1.0330901   -0.3772039
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.1194721   -1.3393777   -0.8995665
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.9382476   -1.7602803   -0.1162149
Birth       NIH-Crypto     BANGLADESH                     1                    NA                -0.9081189   -0.9832101   -0.8330277
Birth       NIH-Crypto     BANGLADESH                     0                    NA                -0.9091536   -1.1122967   -0.7060105
Birth       SAS-CompFeed   INDIA                          1                    NA                -1.0994066   -1.2772210   -0.9215922
Birth       SAS-CompFeed   INDIA                          0                    NA                -1.4308867   -1.4933116   -1.3684618
Birth       ZVITAMBO       ZIMBABWE                       1                    NA                -0.4901386   -0.5206380   -0.4596393
Birth       ZVITAMBO       ZIMBABWE                       0                    NA                -0.4779977   -0.5094356   -0.4465597
6 months    EE             PAKISTAN                       1                    NA                -1.9814470   -2.2829533   -1.6799406
6 months    EE             PAKISTAN                       0                    NA                -2.1023153   -2.2300491   -1.9745814
6 months    GMS-Nepal      NEPAL                          1                    NA                -1.1551078   -1.3028612   -1.0073544
6 months    GMS-Nepal      NEPAL                          0                    NA                -1.3831968   -1.4802504   -1.2861431
6 months    JiVitA-3       BANGLADESH                     1                    NA                -2.1972146   -2.2431010   -2.1513282
6 months    JiVitA-3       BANGLADESH                     0                    NA                -1.3111059   -1.3347135   -1.2874984
6 months    JiVitA-4       BANGLADESH                     1                    NA                -1.3342446   -1.3804615   -1.2880278
6 months    JiVitA-4       BANGLADESH                     0                    NA                -1.3595004   -1.4179596   -1.3010413
6 months    MAL-ED         BANGLADESH                     1                    NA                -1.1602522   -1.3098867   -1.0106178
6 months    MAL-ED         BANGLADESH                     0                    NA                -1.2712640   -1.4629018   -1.0796263
6 months    MAL-ED         BRAZIL                         1                    NA                 0.0296170   -0.1921570    0.2513909
6 months    MAL-ED         BRAZIL                         0                    NA                 0.1328490   -0.0590993    0.3247973
6 months    MAL-ED         INDIA                          1                    NA                -1.1967799   -1.3502794   -1.0432805
6 months    MAL-ED         INDIA                          0                    NA                -1.2352090   -1.4239208   -1.0464971
6 months    MAL-ED         NEPAL                          1                    NA                -0.6782230   -0.8422201   -0.5142258
6 months    MAL-ED         NEPAL                          0                    NA                -0.4817278   -0.6354764   -0.3279791
6 months    MAL-ED         PERU                           1                    NA                -1.3278215   -1.4549242   -1.2007189
6 months    MAL-ED         PERU                           0                    NA                -1.2950013   -1.5053302   -1.0846724
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                -1.0391757   -1.1935052   -0.8848463
6 months    MAL-ED         SOUTH AFRICA                   0                    NA                -1.0603287   -1.2898470   -0.8308103
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3282862   -1.4574530   -1.1991194
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.5351072   -1.9215488   -1.1486656
6 months    NIH-Crypto     BANGLADESH                     1                    NA                -1.2284772   -1.3050091   -1.1519453
6 months    NIH-Crypto     BANGLADESH                     0                    NA                -1.0064009   -1.2030238   -0.8097780
6 months    SAS-CompFeed   INDIA                          1                    NA                -1.3046030   -1.5804232   -1.0287828
6 months    SAS-CompFeed   INDIA                          0                    NA                -1.4110959   -1.4864420   -1.3357497
6 months    ZVITAMBO       ZIMBABWE                       1                    NA                -0.8358850   -0.8710770   -0.8006930
6 months    ZVITAMBO       ZIMBABWE                       0                    NA                -0.8914684   -0.9296881   -0.8532487
24 months   EE             PAKISTAN                       1                    NA                -2.7156113   -3.2143334   -2.2168893
24 months   EE             PAKISTAN                       0                    NA                -2.6545211   -2.8030470   -2.5059952
24 months   GMS-Nepal      NEPAL                          1                    NA                -1.5865468   -1.7345155   -1.4385782
24 months   GMS-Nepal      NEPAL                          0                    NA                -2.0025638   -2.1117824   -1.8933453
24 months   JiVitA-4       BANGLADESH                     1                    NA                -1.7921262   -1.8368970   -1.7473554
24 months   JiVitA-4       BANGLADESH                     0                    NA                -1.7557088   -1.8097298   -1.7016878
24 months   MAL-ED         BANGLADESH                     1                    NA                -1.9588366   -2.1132522   -1.8044210
24 months   MAL-ED         BANGLADESH                     0                    NA                -1.9873188   -2.2006364   -1.7740011
24 months   MAL-ED         BRAZIL                         1                    NA                 0.0483309   -0.2143103    0.3109721
24 months   MAL-ED         BRAZIL                         0                    NA                 0.0479454   -0.1783320    0.2742228
24 months   MAL-ED         INDIA                          1                    NA                -1.9304806   -2.0959807   -1.7649804
24 months   MAL-ED         INDIA                          0                    NA                -1.8239163   -2.0148059   -1.6330266
24 months   MAL-ED         NEPAL                          1                    NA                -1.3512191   -1.5280971   -1.1743412
24 months   MAL-ED         NEPAL                          0                    NA                -1.2650711   -1.4266908   -1.1034514
24 months   MAL-ED         PERU                           1                    NA                -1.8059953   -1.9478002   -1.6641904
24 months   MAL-ED         PERU                           0                    NA                -1.5655065   -1.7924705   -1.3385425
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                -1.6580360   -1.8323511   -1.4837208
24 months   MAL-ED         SOUTH AFRICA                   0                    NA                -1.5995988   -1.8198057   -1.3793918
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.6144565   -2.7597255   -2.4691875
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.7988295   -3.1378710   -2.4597880
24 months   NIH-Crypto     BANGLADESH                     1                    NA                -1.4794220   -1.5717435   -1.3871004
24 months   NIH-Crypto     BANGLADESH                     0                    NA                -1.2039060   -1.3874075   -1.0204046
24 months   ZVITAMBO       ZIMBABWE                       1                    NA                -1.5873083   -1.6730907   -1.5015259
24 months   ZVITAMBO       ZIMBABWE                       0                    NA                -1.6080131   -1.6935196   -1.5225066


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
Birth       EE             PAKISTAN                       0                    1                 -0.1877757   -0.4837811    0.1082298
Birth       GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal      NEPAL                          0                    1                 -0.1052877   -0.2778003    0.0672249
Birth       JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3       BANGLADESH                     0                    1                  0.5300624    0.4705034    0.5896215
Birth       JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4       BANGLADESH                     0                    1                 -0.0376454   -0.1474770    0.0721863
Birth       MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BANGLADESH                     0                    1                 -0.3804018   -0.6677362   -0.0930675
Birth       MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BRAZIL                         0                    1                 -0.2560007   -0.9648123    0.4528108
Birth       MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         INDIA                          0                    1                 -0.1930951   -0.8724817    0.4862915
Birth       MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         NEPAL                          0                    1                 -0.1900738   -0.9160169    0.5358693
Birth       MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         PERU                           0                    1                 -0.2298248   -0.4377213   -0.0219283
Birth       MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         SOUTH AFRICA                   0                    1                 -0.2153623   -0.6167593    0.1860347
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1812245   -0.6724031    1.0348521
Birth       NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto     BANGLADESH                     0                    1                 -0.0010347   -0.2143385    0.2122692
Birth       SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed   INDIA                          0                    1                 -0.3314801   -0.4594813   -0.2034788
Birth       ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO       ZIMBABWE                       0                    1                  0.0121410   -0.0302620    0.0545440
6 months    EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    EE             PAKISTAN                       0                    1                 -0.1208683   -0.4397384    0.1980017
6 months    GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal      NEPAL                          0                    1                 -0.2280890   -0.4036126   -0.0525653
6 months    JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3       BANGLADESH                     0                    1                  0.8861087    0.8353037    0.9369137
6 months    JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4       BANGLADESH                     0                    1                 -0.0252558   -0.0975723    0.0470608
6 months    MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BANGLADESH                     0                    1                 -0.1110118   -0.3555560    0.1335324
6 months    MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BRAZIL                         0                    1                  0.1032320   -0.1918228    0.3982869
6 months    MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         INDIA                          0                    1                 -0.0384291   -0.2820246    0.2051665
6 months    MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         NEPAL                          0                    1                  0.1964952   -0.0291021    0.4220926
6 months    MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         PERU                           0                    1                  0.0328203   -0.2136438    0.2792843
6 months    MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         SOUTH AFRICA                   0                    1                 -0.0211529   -0.2984957    0.2561898
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2068210   -0.6124489    0.1988069
6 months    NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto     BANGLADESH                     0                    1                  0.2220763    0.0110101    0.4331425
6 months    SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed   INDIA                          0                    1                 -0.1064929   -0.3580352    0.1450495
6 months    ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO       ZIMBABWE                       0                    1                 -0.0555834   -0.1045926   -0.0065741
24 months   EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   EE             PAKISTAN                       0                    1                  0.0610902   -0.4597635    0.5819440
24 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal      NEPAL                          0                    1                 -0.4160170   -0.5981991   -0.2338349
24 months   JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4       BANGLADESH                     0                    1                  0.0364174   -0.0298169    0.1026516
24 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BANGLADESH                     0                    1                 -0.0284822   -0.2882424    0.2312781
24 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BRAZIL                         0                    1                 -0.0003855   -0.3556929    0.3549218
24 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         INDIA                          0                    1                  0.1065643   -0.1466391    0.3597677
24 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         NEPAL                          0                    1                  0.0861481   -0.1546492    0.3269454
24 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         PERU                           0                    1                  0.2404888   -0.0277998    0.5087773
24 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         SOUTH AFRICA                   0                    1                  0.0584372   -0.2228366    0.3397110
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1843730   -0.5533018    0.1845558
24 months   NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto     BANGLADESH                     0                    1                  0.2755160    0.0701238    0.4809082
24 months   ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO       ZIMBABWE                       0                    1                 -0.0207048   -0.1403149    0.0989053


### Parameter: PAR


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE             PAKISTAN                       1                    NA                -0.1515324   -0.3935617    0.0904970
Birth       GMS-Nepal      NEPAL                          1                    NA                -0.0755313   -0.2009403    0.0498778
Birth       JiVitA-3       BANGLADESH                     1                    NA                 0.5276649    0.4698010    0.5855287
Birth       JiVitA-4       BANGLADESH                     1                    NA                -0.0131751   -0.0482680    0.0219178
Birth       MAL-ED         BANGLADESH                     1                    NA                -0.1449970   -0.2515293   -0.0384647
Birth       MAL-ED         BRAZIL                         1                    NA                -0.2345134   -0.7252237    0.2561968
Birth       MAL-ED         INDIA                          1                    NA                -0.1820139   -0.3973045    0.0332767
Birth       MAL-ED         NEPAL                          1                    NA                -0.0050598   -0.3360246    0.3259051
Birth       MAL-ED         PERU                           1                    NA                -0.0651312   -0.1183301   -0.0119323
Birth       MAL-ED         SOUTH AFRICA                   1                    NA                -0.0811162   -0.2327168    0.0704844
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0361279   -0.1322971    0.0600413
Birth       NIH-Crypto     BANGLADESH                     1                    NA                -0.0013756   -0.0295426    0.0267914
Birth       SAS-CompFeed   INDIA                          1                    NA                -0.3078179   -0.4303157   -0.1853201
Birth       ZVITAMBO       ZIMBABWE                       1                    NA                 0.0006130   -0.0213181    0.0225441
6 months    EE             PAKISTAN                       1                    NA                -0.1024389   -0.3626117    0.1577340
6 months    GMS-Nepal      NEPAL                          1                    NA                -0.1624232   -0.2865782   -0.0382681
6 months    JiVitA-3       BANGLADESH                     1                    NA                 0.8841214    0.8345277    0.9337151
6 months    JiVitA-4       BANGLADESH                     1                    NA                -0.0105494   -0.0368889    0.0157901
6 months    MAL-ED         BANGLADESH                     1                    NA                -0.0453867   -0.1393847    0.0486113
6 months    MAL-ED         BRAZIL                         1                    NA                 0.0179588   -0.1442461    0.1801637
6 months    MAL-ED         INDIA                          1                    NA                -0.0147455   -0.1136953    0.0842042
6 months    MAL-ED         NEPAL                          1                    NA                 0.1166410   -0.0167920    0.2500741
6 months    MAL-ED         PERU                           1                    NA                 0.0041555   -0.0586451    0.0669561
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                -0.0207043   -0.1257484    0.0843398
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0404588   -0.1054820    0.0245645
6 months    NIH-Crypto     BANGLADESH                     1                    NA                 0.0297989    0.0010763    0.0585214
6 months    SAS-CompFeed   INDIA                          1                    NA                -0.0972533   -0.3350924    0.1405858
6 months    ZVITAMBO       ZIMBABWE                       1                    NA                -0.0266520   -0.0495363   -0.0037677
24 months   EE             PAKISTAN                       1                    NA                 0.0477861   -0.3955656    0.4911379
24 months   GMS-Nepal      NEPAL                          1                    NA                -0.2928314   -0.4228938   -0.1627691
24 months   JiVitA-4       BANGLADESH                     1                    NA                 0.0114044   -0.0124906    0.0352993
24 months   MAL-ED         BANGLADESH                     1                    NA                -0.0147416   -0.1166089    0.0871257
24 months   MAL-ED         BRAZIL                         1                    NA                -0.0422165   -0.2333897    0.1489567
24 months   MAL-ED         INDIA                          1                    NA                 0.0442911   -0.0593835    0.1479658
24 months   MAL-ED         NEPAL                          1                    NA                 0.0436314   -0.0995262    0.1867890
24 months   MAL-ED         PERU                           1                    NA                 0.0535243   -0.0173981    0.1244467
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.0215289   -0.0864373    0.1294950
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0311043   -0.0944520    0.0322434
24 months   NIH-Crypto     BANGLADESH                     1                    NA                 0.0381574    0.0095769    0.0667379
24 months   ZVITAMBO       ZIMBABWE                       1                    NA                -0.0133282   -0.0721708    0.0455143
