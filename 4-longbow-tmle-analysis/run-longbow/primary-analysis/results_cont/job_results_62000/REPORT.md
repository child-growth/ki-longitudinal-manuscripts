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
![](/tmp/2ed7ae07-53e1-424f-8a98-cedf5e8f3e49/b150e3e4-01e8-4377-a71e-5a58e7c2b15f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2ed7ae07-53e1-424f-8a98-cedf5e8f3e49/b150e3e4-01e8-4377-a71e-5a58e7c2b15f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2ed7ae07-53e1-424f-8a98-cedf5e8f3e49/b150e3e4-01e8-4377-a71e-5a58e7c2b15f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE             PAKISTAN                       1                    NA                -0.3373148   -0.6987226    0.0240930
Birth       EE             PAKISTAN                       0                    NA                -0.3756217   -0.5980782   -0.1531652
Birth       GMS-Nepal      NEPAL                          1                    NA                -1.1668057   -1.3318032   -1.0018081
Birth       GMS-Nepal      NEPAL                          0                    NA                -1.1070464   -1.2092855   -1.0048072
Birth       JiVitA-3       BANGLADESH                     1                    NA                -0.8694274   -0.9201431   -0.8187117
Birth       JiVitA-3       BANGLADESH                     0                    NA                -0.7774000   -0.7968985   -0.7579016
Birth       JiVitA-4       BANGLADESH                     1                    NA                -0.6678366   -0.7270610   -0.6086123
Birth       JiVitA-4       BANGLADESH                     0                    NA                -0.7350599   -0.8321072   -0.6380125
Birth       MAL-ED         BANGLADESH                     1                    NA                -0.8848393   -1.0633827   -0.7062960
Birth       MAL-ED         BANGLADESH                     0                    NA                -1.0630855   -1.3173558   -0.8088153
Birth       MAL-ED         BRAZIL                         1                    NA                 0.3626386   -0.1115112    0.8367884
Birth       MAL-ED         BRAZIL                         0                    NA                 0.5697710    0.1570990    0.9824430
Birth       MAL-ED         INDIA                          1                    NA                -0.8115332   -1.1703195   -0.4527469
Birth       MAL-ED         INDIA                          0                    NA                -0.8770605   -1.3063506   -0.4477703
Birth       MAL-ED         NEPAL                          1                    NA                -0.7943581   -1.3075407   -0.2811754
Birth       MAL-ED         NEPAL                          0                    NA                -0.9747901   -1.5593909   -0.3901894
Birth       MAL-ED         PERU                           1                    NA                -0.0975835   -0.2373164    0.0421494
Birth       MAL-ED         PERU                           0                    NA                 0.0862469   -0.1576183    0.3301121
Birth       MAL-ED         SOUTH AFRICA                   1                    NA                -0.1279385   -0.3972957    0.1414187
Birth       MAL-ED         SOUTH AFRICA                   0                    NA                -0.2145532   -0.6640834    0.2349769
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7890374    0.5857247    0.9923502
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5216535   -0.0652118    1.1085188
Birth       NIH-Crypto     BANGLADESH                     1                    NA                -1.2454728   -1.3355284   -1.1554171
Birth       NIH-Crypto     BANGLADESH                     0                    NA                -1.2050025   -1.4248200   -0.9851850
Birth       SAS-CompFeed   INDIA                          1                    NA                -0.7487237   -1.1696455   -0.3278020
Birth       SAS-CompFeed   INDIA                          0                    NA                -0.6673548   -0.8346498   -0.5000599
Birth       ZVITAMBO       ZIMBABWE                       1                    NA                -0.4806057   -0.5168950   -0.4443163
Birth       ZVITAMBO       ZIMBABWE                       0                    NA                -0.5786428   -0.6167764   -0.5405092
6 months    EE             PAKISTAN                       1                    NA                -0.7278903   -0.9987807   -0.4570000
6 months    EE             PAKISTAN                       0                    NA                -0.7838484   -0.9111027   -0.6565940
6 months    GMS-Nepal      NEPAL                          1                    NA                -0.4737319   -0.6484102   -0.2990536
6 months    GMS-Nepal      NEPAL                          0                    NA                -0.6456505   -0.7532074   -0.5380936
6 months    JiVitA-3       BANGLADESH                     1                    NA                -0.6835850   -0.7150469   -0.6521231
6 months    JiVitA-3       BANGLADESH                     0                    NA                -0.5933367   -0.6133690   -0.5733044
6 months    JiVitA-4       BANGLADESH                     1                    NA                -0.3932419   -0.4382934   -0.3481903
6 months    JiVitA-4       BANGLADESH                     0                    NA                -0.3842048   -0.4452938   -0.3231157
6 months    MAL-ED         BANGLADESH                     1                    NA                -0.1155484   -0.2813813    0.0502844
6 months    MAL-ED         BANGLADESH                     0                    NA                -0.1452951   -0.3645244    0.0739342
6 months    MAL-ED         BRAZIL                         1                    NA                 1.0880756    0.8525976    1.3235536
6 months    MAL-ED         BRAZIL                         0                    NA                 0.8811177    0.6514846    1.1107507
6 months    MAL-ED         INDIA                          1                    NA                -0.7583875   -0.9290289   -0.5877461
6 months    MAL-ED         INDIA                          0                    NA                -0.6470721   -0.8362551   -0.4578890
6 months    MAL-ED         NEPAL                          1                    NA                -0.0087512   -0.2201463    0.2026438
6 months    MAL-ED         NEPAL                          0                    NA                 0.1869652    0.0207422    0.3531882
6 months    MAL-ED         PERU                           1                    NA                 1.0094969    0.8660382    1.1529556
6 months    MAL-ED         PERU                           0                    NA                 1.1587201    0.9311431    1.3862970
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                 0.5494873    0.3488616    0.7501129
6 months    MAL-ED         SOUTH AFRICA                   0                    NA                 0.5896353    0.3526312    0.8266395
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5069392    0.3654833    0.6483952
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5932294    0.2366770    0.9497819
6 months    NIH-Crypto     BANGLADESH                     1                    NA                 0.0382712   -0.0471330    0.1236755
6 months    NIH-Crypto     BANGLADESH                     0                    NA                -0.0332120   -0.2407199    0.1742959
6 months    SAS-CompFeed   INDIA                          1                    NA                -0.6132708   -1.3327084    0.1061669
6 months    SAS-CompFeed   INDIA                          0                    NA                -0.6684441   -0.7980831   -0.5388051
6 months    ZVITAMBO       ZIMBABWE                       1                    NA                 0.3095441    0.2727709    0.3463173
6 months    ZVITAMBO       ZIMBABWE                       0                    NA                 0.2948522    0.2539720    0.3357323
24 months   EE             PAKISTAN                       1                    NA                -0.9243122   -1.2670991   -0.5815253
24 months   EE             PAKISTAN                       0                    NA                -1.0185004   -1.1900476   -0.8469532
24 months   GMS-Nepal      NEPAL                          1                    NA                -1.0588717   -1.2261992   -0.8915442
24 months   GMS-Nepal      NEPAL                          0                    NA                -1.1647923   -1.2780015   -1.0515830
24 months   JiVitA-4       BANGLADESH                     1                    NA                -1.2335728   -1.2736242   -1.1935214
24 months   JiVitA-4       BANGLADESH                     0                    NA                -1.2016963   -1.2563542   -1.1470385
24 months   MAL-ED         BANGLADESH                     1                    NA                -0.7855577   -0.9437841   -0.6273314
24 months   MAL-ED         BANGLADESH                     0                    NA                -0.8574254   -1.0531418   -0.6617090
24 months   MAL-ED         BRAZIL                         1                    NA                 0.3398400    0.0243738    0.6553063
24 months   MAL-ED         BRAZIL                         0                    NA                 0.5309976    0.2542538    0.8077415
24 months   MAL-ED         INDIA                          1                    NA                -0.9707759   -1.1269093   -0.8146425
24 months   MAL-ED         INDIA                          0                    NA                -0.9023198   -1.0750676   -0.7295720
24 months   MAL-ED         NEPAL                          1                    NA                -0.4843320   -0.6659593   -0.3027048
24 months   MAL-ED         NEPAL                          0                    NA                -0.3009588   -0.4462516   -0.1556659
24 months   MAL-ED         PERU                           1                    NA                 0.0714959   -0.0779841    0.2209758
24 months   MAL-ED         PERU                           0                    NA                 0.1949770    0.0040295    0.3859245
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.3972880    0.2345890    0.5599870
24 months   MAL-ED         SOUTH AFRICA                   0                    NA                 0.4354998    0.2500423    0.6209573
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0924133   -0.0434421    0.2282688
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0337351   -0.2975820    0.3650522
24 months   NIH-Crypto     BANGLADESH                     1                    NA                -0.6440735   -0.7445536   -0.5435934
24 months   NIH-Crypto     BANGLADESH                     0                    NA                -0.3626671   -0.6284313   -0.0969030
24 months   ZVITAMBO       ZIMBABWE                       1                    NA                -1.1602465   -1.3043441   -1.0161488
24 months   ZVITAMBO       ZIMBABWE                       0                    NA                -1.2417870   -1.4095846   -1.0739894


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
Birth       EE             PAKISTAN                       0                    1                 -0.0383069   -0.4615971    0.3849834
Birth       GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal      NEPAL                          0                    1                  0.0597593   -0.1219024    0.2414210
Birth       JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3       BANGLADESH                     0                    1                  0.0920274    0.0374797    0.1465750
Birth       JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4       BANGLADESH                     0                    1                 -0.0672233   -0.1780573    0.0436108
Birth       MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BANGLADESH                     0                    1                 -0.1782462   -0.4891698    0.1326774
Birth       MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BRAZIL                         0                    1                  0.2071323   -0.4225752    0.8368399
Birth       MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         INDIA                          0                    1                 -0.0655273   -0.6353278    0.5042732
Birth       MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         NEPAL                          0                    1                 -0.1804321   -0.9829429    0.6220788
Birth       MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         PERU                           0                    1                  0.1838305   -0.0978828    0.4655437
Birth       MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         SOUTH AFRICA                   0                    1                 -0.0866147   -0.6279356    0.4547061
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2673839   -0.8877110    0.3529432
Birth       NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto     BANGLADESH                     0                    1                  0.0404703   -0.1948194    0.2757600
Birth       SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed   INDIA                          0                    1                  0.0813689   -0.2746785    0.4374163
Birth       ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO       ZIMBABWE                       0                    1                 -0.0980372   -0.1467884   -0.0492859
6 months    EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    EE             PAKISTAN                       0                    1                 -0.0559580   -0.3553789    0.2434628
6 months    GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal      NEPAL                          0                    1                 -0.1719186   -0.3773735    0.0335363
6 months    JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3       BANGLADESH                     0                    1                  0.0902483    0.0527158    0.1277807
6 months    JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4       BANGLADESH                     0                    1                  0.0090371   -0.0639308    0.0820050
6 months    MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BANGLADESH                     0                    1                 -0.0297467   -0.3057407    0.2462474
6 months    MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BRAZIL                         0                    1                 -0.2069579   -0.5365043    0.1225884
6 months    MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         INDIA                          0                    1                  0.1113154   -0.1443184    0.3669492
6 months    MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         NEPAL                          0                    1                  0.1957164   -0.0732456    0.4646783
6 months    MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         PERU                           0                    1                  0.1492232   -0.1192774    0.4177238
6 months    MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         SOUTH AFRICA                   0                    1                  0.0401481   -0.2709158    0.3512119
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0862902   -0.2984036    0.4709841
6 months    NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto     BANGLADESH                     0                    1                 -0.0714832   -0.2956166    0.1526502
6 months    SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed   INDIA                          0                    1                 -0.0551733   -0.7395588    0.6292121
6 months    ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO       ZIMBABWE                       0                    1                 -0.0146919   -0.0691575    0.0397736
24 months   EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   EE             PAKISTAN                       0                    1                 -0.0941882   -0.4773533    0.2889770
24 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal      NEPAL                          0                    1                 -0.1059206   -0.3082233    0.0963821
24 months   JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4       BANGLADESH                     0                    1                  0.0318765   -0.0359962    0.0997491
24 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BANGLADESH                     0                    1                 -0.0718677   -0.3230534    0.1793181
24 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BRAZIL                         0                    1                  0.1911576   -0.2297836    0.6120988
24 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         INDIA                          0                    1                  0.0684561   -0.1649011    0.3018133
24 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         NEPAL                          0                    1                  0.1833733   -0.0494990    0.4162456
24 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         PERU                           0                    1                  0.1234811   -0.1139491    0.3609114
24 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         SOUTH AFRICA                   0                    1                  0.0382118   -0.2075202    0.2839438
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0586783   -0.4176627    0.3003061
24 months   NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto     BANGLADESH                     0                    1                  0.2814064   -0.0016705    0.5644833
24 months   ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO       ZIMBABWE                       0                    1                 -0.0815405   -0.3021173    0.1390363


### Parameter: PAR


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE             PAKISTAN                       1                    NA                -0.0148911   -0.3497567    0.3199746
Birth       GMS-Nepal      NEPAL                          1                    NA                 0.0407477   -0.0878325    0.1693278
Birth       JiVitA-3       BANGLADESH                     1                    NA                 0.0915463    0.0383576    0.1447350
Birth       JiVitA-4       BANGLADESH                     1                    NA                -0.0207902   -0.0566728    0.0150923
Birth       MAL-ED         BANGLADESH                     1                    NA                -0.0542261   -0.1622635    0.0538113
Birth       MAL-ED         BRAZIL                         1                    NA                 0.0402646   -0.3228813    0.4034105
Birth       MAL-ED         INDIA                          1                    NA                -0.1007395   -0.2903296    0.0888505
Birth       MAL-ED         NEPAL                          1                    NA                 0.0258965   -0.3397201    0.3915132
Birth       MAL-ED         PERU                           1                    NA                 0.0455660   -0.0240869    0.1152188
Birth       MAL-ED         SOUTH AFRICA                   1                    NA                -0.0410615   -0.2365724    0.1544494
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0266026   -0.0875833    0.0343780
Birth       NIH-Crypto     BANGLADESH                     1                    NA                 0.0013214   -0.0294196    0.0320624
Birth       SAS-CompFeed   INDIA                          1                    NA                 0.0811211   -0.2512352    0.4134774
Birth       ZVITAMBO       ZIMBABWE                       1                    NA                -0.0456042   -0.0701671   -0.0210413
6 months    EE             PAKISTAN                       1                    NA                -0.0446875   -0.2881400    0.1987650
6 months    GMS-Nepal      NEPAL                          1                    NA                -0.1106419   -0.2561360    0.0348522
6 months    JiVitA-3       BANGLADESH                     1                    NA                 0.0900688    0.0534610    0.1266766
6 months    JiVitA-4       BANGLADESH                     1                    NA                 0.0034364   -0.0229396    0.0298123
6 months    MAL-ED         BANGLADESH                     1                    NA                -0.0160766   -0.1218757    0.0897226
6 months    MAL-ED         BRAZIL                         1                    NA                -0.1159983   -0.2960867    0.0640902
6 months    MAL-ED         INDIA                          1                    NA                 0.0503896   -0.0536886    0.1544678
6 months    MAL-ED         NEPAL                          1                    NA                 0.1191820   -0.0418425    0.2802065
6 months    MAL-ED         PERU                           1                    NA                 0.0433847   -0.0263578    0.1131272
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                 0.0005394   -0.1169712    0.1180500
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0292821   -0.0351822    0.0937464
6 months    NIH-Crypto     BANGLADESH                     1                    NA                -0.0085090   -0.0382241    0.0212061
6 months    SAS-CompFeed   INDIA                          1                    NA                -0.0524376   -0.7048506    0.5999754
6 months    ZVITAMBO       ZIMBABWE                       1                    NA                -0.0022808   -0.0276862    0.0231247
24 months   EE             PAKISTAN                       1                    NA                -0.0801390   -0.4053137    0.2450357
24 months   GMS-Nepal      NEPAL                          1                    NA                -0.0750885   -0.2189030    0.0687260
24 months   JiVitA-4       BANGLADESH                     1                    NA                 0.0104640   -0.0136483    0.0345763
24 months   MAL-ED         BANGLADESH                     1                    NA                -0.0286129   -0.1263417    0.0691159
24 months   MAL-ED         BRAZIL                         1                    NA                 0.1227832   -0.1016581    0.3472246
24 months   MAL-ED         INDIA                          1                    NA                 0.0191239   -0.0772514    0.1154993
24 months   MAL-ED         NEPAL                          1                    NA                 0.1094198   -0.0295717    0.2484112
24 months   MAL-ED         PERU                           1                    NA                 0.0397023   -0.0213462    0.1007508
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.0180063   -0.0773191    0.1133318
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0376158   -0.0978487    0.0226170
24 months   NIH-Crypto     BANGLADESH                     1                    NA                 0.0337233   -0.0058126    0.0732592
24 months   ZVITAMBO       ZIMBABWE                       1                    NA                -0.0368247   -0.1391716    0.0655221
