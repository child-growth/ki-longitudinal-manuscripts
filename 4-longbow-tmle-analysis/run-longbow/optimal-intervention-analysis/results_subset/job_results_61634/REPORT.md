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

**Intervention Variable:** exclfeed36

**Adjustment Set:**

* arm
* sex
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
* month
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
* delta_month
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

agecat      studyid          country                        exclfeed36    n_cell      n
----------  ---------------  -----------------------------  -----------  -------  -----
Birth       CMC-V-BCS-2002   INDIA                          1                  3      3
Birth       CMC-V-BCS-2002   INDIA                          0                  0      3
Birth       EE               PAKISTAN                       1                  2      6
Birth       EE               PAKISTAN                       0                  4      6
Birth       GMS-Nepal        NEPAL                          1                396    491
Birth       GMS-Nepal        NEPAL                          0                 95    491
Birth       IRC              INDIA                          1                  0      3
Birth       IRC              INDIA                          0                  3      3
Birth       JiVitA-3         BANGLADESH                     1               6736   8619
Birth       JiVitA-3         BANGLADESH                     0               1883   8619
Birth       JiVitA-4         BANGLADESH                     1               1711   2128
Birth       JiVitA-4         BANGLADESH                     0                417   2128
Birth       Keneba           GAMBIA                         1                343   1192
Birth       Keneba           GAMBIA                         0                849   1192
Birth       MAL-ED           BANGLADESH                     1                 31    208
Birth       MAL-ED           BANGLADESH                     0                177    208
Birth       MAL-ED           BRAZIL                         1                  4     62
Birth       MAL-ED           BRAZIL                         0                 58     62
Birth       MAL-ED           INDIA                          1                  1     40
Birth       MAL-ED           INDIA                          0                 39     40
Birth       MAL-ED           NEPAL                          1                  0     25
Birth       MAL-ED           NEPAL                          0                 25     25
Birth       MAL-ED           PERU                           1                  5    218
Birth       MAL-ED           PERU                           0                213    218
Birth       MAL-ED           SOUTH AFRICA                   1                  1    104
Birth       MAL-ED           SOUTH AFRICA                   0                103    104
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0    111
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                111    111
Birth       PROVIDE          BANGLADESH                     1                115    483
Birth       PROVIDE          BANGLADESH                     0                368    483
6 months    CMC-V-BCS-2002   INDIA                          1                  9      9
6 months    CMC-V-BCS-2002   INDIA                          0                  0      9
6 months    EE               PAKISTAN                       1                  4      9
6 months    EE               PAKISTAN                       0                  5      9
6 months    GMS-Nepal        NEPAL                          1                422    527
6 months    GMS-Nepal        NEPAL                          0                105    527
6 months    IRC              INDIA                          1                  0      4
6 months    IRC              INDIA                          0                  4      4
6 months    JiVitA-3         BANGLADESH                     1               6561   8535
6 months    JiVitA-3         BANGLADESH                     0               1974   8535
6 months    JiVitA-4         BANGLADESH                     1               3240   4188
6 months    JiVitA-4         BANGLADESH                     0                948   4188
6 months    Keneba           GAMBIA                         1                507   1790
6 months    Keneba           GAMBIA                         0               1283   1790
6 months    LCNI-5           MALAWI                         1                 47    272
6 months    LCNI-5           MALAWI                         0                225    272
6 months    MAL-ED           BANGLADESH                     1                 30    240
6 months    MAL-ED           BANGLADESH                     0                210    240
6 months    MAL-ED           BRAZIL                         1                 12    209
6 months    MAL-ED           BRAZIL                         0                197    209
6 months    MAL-ED           INDIA                          1                  9    233
6 months    MAL-ED           INDIA                          0                224    233
6 months    MAL-ED           NEPAL                          1                  4    235
6 months    MAL-ED           NEPAL                          0                231    235
6 months    MAL-ED           PERU                           1                  6    272
6 months    MAL-ED           PERU                           0                266    272
6 months    MAL-ED           SOUTH AFRICA                   1                  1    250
6 months    MAL-ED           SOUTH AFRICA                   0                249    250
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  4    243
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                239    243
6 months    PROVIDE          BANGLADESH                     1                145    603
6 months    PROVIDE          BANGLADESH                     0                458    603
6 months    SAS-FoodSuppl    INDIA                          1                  0    168
6 months    SAS-FoodSuppl    INDIA                          0                168    168
24 months   CMC-V-BCS-2002   INDIA                          1                  9      9
24 months   CMC-V-BCS-2002   INDIA                          0                  0      9
24 months   EE               PAKISTAN                       1                  0      3
24 months   EE               PAKISTAN                       0                  3      3
24 months   GMS-Nepal        NEPAL                          1                362    445
24 months   GMS-Nepal        NEPAL                          0                 83    445
24 months   IRC              INDIA                          1                  0      4
24 months   IRC              INDIA                          0                  4      4
24 months   JiVitA-3         BANGLADESH                     1               3311   4317
24 months   JiVitA-3         BANGLADESH                     0               1006   4317
24 months   JiVitA-4         BANGLADESH                     1               3132   4035
24 months   JiVitA-4         BANGLADESH                     0                903   4035
24 months   Keneba           GAMBIA                         1                424   1395
24 months   Keneba           GAMBIA                         0                971   1395
24 months   LCNI-5           MALAWI                         1                 34    184
24 months   LCNI-5           MALAWI                         0                150    184
24 months   MAL-ED           BANGLADESH                     1                 25    212
24 months   MAL-ED           BANGLADESH                     0                187    212
24 months   MAL-ED           BRAZIL                         1                 11    169
24 months   MAL-ED           BRAZIL                         0                158    169
24 months   MAL-ED           INDIA                          1                  9    224
24 months   MAL-ED           INDIA                          0                215    224
24 months   MAL-ED           NEPAL                          1                  4    227
24 months   MAL-ED           NEPAL                          0                223    227
24 months   MAL-ED           PERU                           1                  4    201
24 months   MAL-ED           PERU                           0                197    201
24 months   MAL-ED           SOUTH AFRICA                   1                  1    235
24 months   MAL-ED           SOUTH AFRICA                   0                234    235
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  3    213
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                210    213
24 months   PROVIDE          BANGLADESH                     1                141    577
24 months   PROVIDE          BANGLADESH                     0                436    577


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/eff59d5b-a928-4b44-9c19-d6372eaf9745/5575a358-050f-4261-bba4-403a9d0ba1b2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        optimal              observed          -1.1261576   -1.2808577   -0.9714576
Birth       JiVitA-3    BANGLADESH   optimal              observed          -0.7627291   -0.8109674   -0.7144909
Birth       JiVitA-4    BANGLADESH   optimal              observed          -0.6694214   -0.7805332   -0.5583096
Birth       Keneba      GAMBIA       optimal              observed          -1.2521760   -1.3692947   -1.1350574
Birth       MAL-ED      BANGLADESH   optimal              observed          -1.0550024   -1.3423754   -0.7676293
Birth       MAL-ED      PERU         optimal              observed           0.6612074    0.4387725    0.8836422
Birth       PROVIDE     BANGLADESH   optimal              observed          -1.3906172   -1.4871112   -1.2941232
6 months    GMS-Nepal   NEPAL        optimal              observed          -0.5877604   -0.6883944   -0.4871264
6 months    JiVitA-3    BANGLADESH   optimal              observed          -0.5852817   -0.6257053   -0.5448580
6 months    JiVitA-4    BANGLADESH   optimal              observed          -0.3460028   -0.3922188   -0.2997867
6 months    Keneba      GAMBIA       optimal              observed           0.0211601   -0.0862474    0.1285676
6 months    LCNI-5      MALAWI       optimal              observed           0.2393132    0.0560026    0.4226237
6 months    MAL-ED      BANGLADESH   optimal              observed          -0.2334868   -0.5280175    0.0610440
6 months    MAL-ED      BRAZIL       optimal              observed           1.3826969    0.7133006    2.0520932
6 months    MAL-ED      INDIA        optimal              observed          -0.5266612   -1.3695779    0.3162555
6 months    MAL-ED      PERU         optimal              observed           0.8323006    0.3982946    1.2663067
6 months    PROVIDE     BANGLADESH   optimal              observed           0.0104949   -0.1510569    0.1720466
24 months   GMS-Nepal   NEPAL        optimal              observed          -1.0813153   -1.1900704   -0.9725602
24 months   JiVitA-3    BANGLADESH   optimal              observed          -1.3148329   -1.3798091   -1.2498568
24 months   JiVitA-4    BANGLADESH   optimal              observed          -1.1971448   -1.2616410   -1.1326487
24 months   Keneba      GAMBIA       optimal              observed          -0.7011770   -0.7947593   -0.6075946
24 months   LCNI-5      MALAWI       optimal              observed          -0.0628826   -0.2244671    0.0987019
24 months   MAL-ED      BANGLADESH   optimal              observed          -0.9814997   -1.2887948   -0.6742047
24 months   MAL-ED      BRAZIL       optimal              observed           0.7946415    0.2779819    1.3113011
24 months   MAL-ED      INDIA        optimal              observed          -1.1243918   -1.3289640   -0.9198197
24 months   PROVIDE     BANGLADESH   optimal              observed          -0.7944135   -0.9593522   -0.6294749


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        observed             observed          -1.1085743   -1.2077878   -1.0093609
Birth       JiVitA-3    BANGLADESH   observed             observed          -0.7892308   -0.8133344   -0.7651272
Birth       JiVitA-4    BANGLADESH   observed             observed          -0.7018985   -0.7560164   -0.6477806
Birth       Keneba      GAMBIA       observed             observed          -1.2752643   -1.3442810   -1.2062476
Birth       MAL-ED      BANGLADESH   observed             observed          -0.9480769   -1.0934921   -0.8026617
Birth       MAL-ED      PERU         observed             observed          -0.0458257   -0.1696487    0.0779973
Birth       PROVIDE     BANGLADESH   observed             observed          -1.2966874   -1.3774293   -1.2159454
6 months    GMS-Nepal   NEPAL        observed             observed          -0.6001075   -0.6890924   -0.5111227
6 months    JiVitA-3    BANGLADESH   observed             observed          -0.5995202   -0.6251579   -0.5738825
6 months    JiVitA-4    BANGLADESH   observed             observed          -0.3960017   -0.4356255   -0.3563778
6 months    Keneba      GAMBIA       observed             observed          -0.2009461   -0.2562412   -0.1456509
6 months    LCNI-5      MALAWI       observed             observed           0.3925000    0.2735307    0.5114693
6 months    MAL-ED      BANGLADESH   observed             observed          -0.1354583   -0.2647102   -0.0062065
6 months    MAL-ED      BRAZIL       observed             observed           0.9720774    0.8078144    1.1363403
6 months    MAL-ED      INDIA        observed             observed          -0.7161910   -0.8437667   -0.5886153
6 months    MAL-ED      PERU         observed             observed           1.0511642    0.9291821    1.1731463
6 months    PROVIDE     BANGLADESH   observed             observed          -0.1990907   -0.2817968   -0.1163845
24 months   GMS-Nepal   NEPAL        observed             observed          -1.1236255   -1.2167712   -1.0304797
24 months   JiVitA-3    BANGLADESH   observed             observed          -1.3352235   -1.3688736   -1.3015735
24 months   JiVitA-4    BANGLADESH   observed             observed          -1.2344089   -1.2708428   -1.1979750
24 months   Keneba      GAMBIA       observed             observed          -0.7973955   -0.8498696   -0.7449213
24 months   LCNI-5      MALAWI       observed             observed          -0.0770652   -0.2204213    0.0662909
24 months   MAL-ED      BANGLADESH   observed             observed          -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED      BRAZIL       observed             observed           0.4626233    0.2567495    0.6684971
24 months   MAL-ED      INDIA        observed             observed          -0.9581250   -1.0746982   -0.8415518
24 months   PROVIDE     BANGLADESH   observed             observed          -0.8945581   -0.9774087   -0.8117074


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        optimal              observed           0.0175833   -0.1028798    0.1380464
Birth       JiVitA-3    BANGLADESH   optimal              observed          -0.0265016   -0.0677877    0.0147844
Birth       JiVitA-4    BANGLADESH   optimal              observed          -0.0324771   -0.1153390    0.0503849
Birth       Keneba      GAMBIA       optimal              observed          -0.0230882   -0.1156367    0.0694602
Birth       MAL-ED      BANGLADESH   optimal              observed           0.1069254   -0.1630210    0.3768718
Birth       MAL-ED      PERU         optimal              observed          -0.7070331   -0.9573168   -0.4567494
Birth       PROVIDE     BANGLADESH   optimal              observed           0.0939298    0.0303954    0.1574643
6 months    GMS-Nepal   NEPAL        optimal              observed          -0.0123471   -0.0582379    0.0335437
6 months    JiVitA-3    BANGLADESH   optimal              observed          -0.0142386   -0.0464425    0.0179654
6 months    JiVitA-4    BANGLADESH   optimal              observed          -0.0499989   -0.0720997   -0.0278981
6 months    Keneba      GAMBIA       optimal              observed          -0.2221061   -0.3120342   -0.1321780
6 months    LCNI-5      MALAWI       optimal              observed           0.1531868    0.0147604    0.2916132
6 months    MAL-ED      BANGLADESH   optimal              observed           0.0980285   -0.1622375    0.3582944
6 months    MAL-ED      BRAZIL       optimal              observed          -0.4106195   -1.0604295    0.2391904
6 months    MAL-ED      INDIA        optimal              observed          -0.1895298   -1.0136002    0.6345407
6 months    MAL-ED      PERU         optimal              observed           0.2188636   -0.2188627    0.6565899
6 months    PROVIDE     BANGLADESH   optimal              observed          -0.2095855   -0.3526641   -0.0665069
24 months   GMS-Nepal   NEPAL        optimal              observed          -0.0423102   -0.1084908    0.0238705
24 months   JiVitA-3    BANGLADESH   optimal              observed          -0.0203906   -0.0763123    0.0355311
24 months   JiVitA-4    BANGLADESH   optimal              observed          -0.0372641   -0.0896426    0.0151144
24 months   Keneba      GAMBIA       optimal              observed          -0.0962185   -0.1740301   -0.0184069
24 months   LCNI-5      MALAWI       optimal              observed          -0.0141827   -0.0772455    0.0488802
24 months   MAL-ED      BANGLADESH   optimal              observed           0.1622073   -0.1219882    0.4464028
24 months   MAL-ED      BRAZIL       optimal              observed          -0.3320182   -0.8050056    0.1409691
24 months   MAL-ED      INDIA        optimal              observed           0.1662668   -0.0160806    0.3486142
24 months   PROVIDE     BANGLADESH   optimal              observed          -0.1001445   -0.2442907    0.0440017
