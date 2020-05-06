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

**Intervention Variable:** exclfeed3

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

agecat      studyid          country                        exclfeed3    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ----------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1                 4       4  haz              
Birth       CMC-V-BCS-2002   INDIA                          0                 0       4  haz              
Birth       EE               PAKISTAN                       1                35      35  haz              
Birth       EE               PAKISTAN                       0                 0      35  haz              
Birth       GMS-Nepal        NEPAL                          1               380     458  haz              
Birth       GMS-Nepal        NEPAL                          0                78     458  haz              
Birth       IRC              INDIA                          1                 0      10  haz              
Birth       IRC              INDIA                          0                10      10  haz              
Birth       JiVitA-3         BANGLADESH                     1             12014   13276  haz              
Birth       JiVitA-3         BANGLADESH                     0              1262   13276  haz              
Birth       JiVitA-4         BANGLADESH                     1               105     116  haz              
Birth       JiVitA-4         BANGLADESH                     0                11     116  haz              
Birth       Keneba           GAMBIA                         1              1198    1356  haz              
Birth       Keneba           GAMBIA                         0               158    1356  haz              
Birth       MAL-ED           BANGLADESH                     1               138     215  haz              
Birth       MAL-ED           BANGLADESH                     0                77     215  haz              
Birth       MAL-ED           BRAZIL                         1                12      57  haz              
Birth       MAL-ED           BRAZIL                         0                45      57  haz              
Birth       MAL-ED           INDIA                          1                24      41  haz              
Birth       MAL-ED           INDIA                          0                17      41  haz              
Birth       MAL-ED           NEPAL                          1                 8      26  haz              
Birth       MAL-ED           NEPAL                          0                18      26  haz              
Birth       MAL-ED           PERU                           1                49     223  haz              
Birth       MAL-ED           PERU                           0               174     223  haz              
Birth       MAL-ED           SOUTH AFRICA                   1                12     100  haz              
Birth       MAL-ED           SOUTH AFRICA                   0                88     100  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                17     102  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                85     102  haz              
Birth       PROVIDE          BANGLADESH                     1               387     539  haz              
Birth       PROVIDE          BANGLADESH                     0               152     539  haz              
Birth       SAS-CompFeed     INDIA                          1               346     364  haz              
Birth       SAS-CompFeed     INDIA                          0                18     364  haz              
6 months    CMC-V-BCS-2002   INDIA                          1                10      10  haz              
6 months    CMC-V-BCS-2002   INDIA                          0                 0      10  haz              
6 months    EE               PAKISTAN                       1                39      39  haz              
6 months    EE               PAKISTAN                       0                 0      39  haz              
6 months    GMS-Nepal        NEPAL                          1               367     441  haz              
6 months    GMS-Nepal        NEPAL                          0                74     441  haz              
6 months    IRC              INDIA                          1                 0      10  haz              
6 months    IRC              INDIA                          0                10      10  haz              
6 months    JiVitA-3         BANGLADESH                     1              8514    9328  haz              
6 months    JiVitA-3         BANGLADESH                     0               814    9328  haz              
6 months    JiVitA-4         BANGLADESH                     1                76      88  haz              
6 months    JiVitA-4         BANGLADESH                     0                12      88  haz              
6 months    Keneba           GAMBIA                         1              1541    1742  haz              
6 months    Keneba           GAMBIA                         0               201    1742  haz              
6 months    MAL-ED           BANGLADESH                     1               152     233  haz              
6 months    MAL-ED           BANGLADESH                     0                81     233  haz              
6 months    MAL-ED           BRAZIL                         1                60     187  haz              
6 months    MAL-ED           BRAZIL                         0               127     187  haz              
6 months    MAL-ED           INDIA                          1               110     210  haz              
6 months    MAL-ED           INDIA                          0               100     210  haz              
6 months    MAL-ED           NEPAL                          1                70     227  haz              
6 months    MAL-ED           NEPAL                          0               157     227  haz              
6 months    MAL-ED           PERU                           1                61     270  haz              
6 months    MAL-ED           PERU                           0               209     270  haz              
6 months    MAL-ED           SOUTH AFRICA                   1                22     244  haz              
6 months    MAL-ED           SOUTH AFRICA                   0               222     244  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                46     212  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               166     212  haz              
6 months    PROVIDE          BANGLADESH                     1               428     604  haz              
6 months    PROVIDE          BANGLADESH                     0               176     604  haz              
6 months    SAS-CompFeed     INDIA                          1               379     398  haz              
6 months    SAS-CompFeed     INDIA                          0                19     398  haz              
24 months   CMC-V-BCS-2002   INDIA                          1                10      10  haz              
24 months   CMC-V-BCS-2002   INDIA                          0                 0      10  haz              
24 months   EE               PAKISTAN                       1                20      20  haz              
24 months   EE               PAKISTAN                       0                 0      20  haz              
24 months   GMS-Nepal        NEPAL                          1               322     384  haz              
24 months   GMS-Nepal        NEPAL                          0                62     384  haz              
24 months   IRC              INDIA                          1                 0      10  haz              
24 months   IRC              INDIA                          0                10      10  haz              
24 months   JiVitA-3         BANGLADESH                     1              4433    4852  haz              
24 months   JiVitA-3         BANGLADESH                     0               419    4852  haz              
24 months   JiVitA-4         BANGLADESH                     1               136     151  haz              
24 months   JiVitA-4         BANGLADESH                     0                15     151  haz              
24 months   Keneba           GAMBIA                         1              1274    1420  haz              
24 months   Keneba           GAMBIA                         0               146    1420  haz              
24 months   MAL-ED           BANGLADESH                     1               135     205  haz              
24 months   MAL-ED           BANGLADESH                     0                70     205  haz              
24 months   MAL-ED           BRAZIL                         1                52     152  haz              
24 months   MAL-ED           BRAZIL                         0               100     152  haz              
24 months   MAL-ED           INDIA                          1               102     202  haz              
24 months   MAL-ED           INDIA                          0               100     202  haz              
24 months   MAL-ED           NEPAL                          1                67     220  haz              
24 months   MAL-ED           NEPAL                          0               153     220  haz              
24 months   MAL-ED           PERU                           1                43     198  haz              
24 months   MAL-ED           PERU                           0               155     198  haz              
24 months   MAL-ED           SOUTH AFRICA                   1                19     228  haz              
24 months   MAL-ED           SOUTH AFRICA                   0               209     228  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                38     184  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               146     184  haz              
24 months   PROVIDE          BANGLADESH                     1               408     578  haz              
24 months   PROVIDE          BANGLADESH                     0               170     578  haz              


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
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
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/98a821a8-fb84-4484-8c9d-b72e2cca2661/e314acb8-5614-427b-98c8-120bb8524d00/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/98a821a8-fb84-4484-8c9d-b72e2cca2661/e314acb8-5614-427b-98c8-120bb8524d00/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/98a821a8-fb84-4484-8c9d-b72e2cca2661/e314acb8-5614-427b-98c8-120bb8524d00/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          1                    NA                -1.0279700   -1.1350477   -0.9208924
Birth       GMS-Nepal      NEPAL                          0                    NA                -1.2349575   -1.5008253   -0.9690896
Birth       JiVitA-3       BANGLADESH                     1                    NA                -1.5900867   -1.6137571   -1.5664163
Birth       JiVitA-3       BANGLADESH                     0                    NA                -1.6183702   -1.6737741   -1.5629662
Birth       JiVitA-4       BANGLADESH                     1                    NA                -1.5462960   -1.7510525   -1.3415396
Birth       JiVitA-4       BANGLADESH                     0                    NA                -0.9472835   -1.9333376    0.0387707
Birth       Keneba         GAMBIA                         1                    NA                 0.0030689   -0.0702411    0.0763790
Birth       Keneba         GAMBIA                         0                    NA                 0.0608200   -0.1172098    0.2388498
Birth       MAL-ED         BANGLADESH                     1                    NA                -1.1301241   -1.2913753   -0.9688729
Birth       MAL-ED         BANGLADESH                     0                    NA                -1.0277361   -1.2820793   -0.7733929
Birth       MAL-ED         BRAZIL                         1                    NA                -0.9732980   -1.6231878   -0.3234082
Birth       MAL-ED         BRAZIL                         0                    NA                -0.7664875   -1.0951629   -0.4378120
Birth       MAL-ED         INDIA                          1                    NA                -1.4421058   -1.9241947   -0.9600168
Birth       MAL-ED         INDIA                          0                    NA                -0.8384746   -1.1412399   -0.5357094
Birth       MAL-ED         NEPAL                          1                    NA                -0.6962500   -1.1273498   -0.2651502
Birth       MAL-ED         NEPAL                          0                    NA                -0.8800000   -1.3706027   -0.3893973
Birth       MAL-ED         PERU                           1                    NA                -0.8523496   -1.0817739   -0.6229253
Birth       MAL-ED         PERU                           0                    NA                -0.8832424   -1.0071642   -0.7593205
Birth       MAL-ED         SOUTH AFRICA                   1                    NA                -0.6006324   -1.1360629   -0.0652020
Birth       MAL-ED         SOUTH AFRICA                   0                    NA                -0.5635308   -0.7826876   -0.3443739
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3501194   -1.8991010   -0.8011379
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.0562667   -1.3021699   -0.8103634
Birth       PROVIDE        BANGLADESH                     1                    NA                -0.9034941   -0.9846215   -0.8223667
Birth       PROVIDE        BANGLADESH                     0                    NA                -0.8478259   -0.9892986   -0.7063532
Birth       SAS-CompFeed   INDIA                          1                    NA                -1.3791852   -1.4632653   -1.2951052
Birth       SAS-CompFeed   INDIA                          0                    NA                -1.4188476   -2.1434587   -0.6942365
6 months    GMS-Nepal      NEPAL                          1                    NA                -1.3289785   -1.4238765   -1.2340806
6 months    GMS-Nepal      NEPAL                          0                    NA                -1.5256390   -1.7718902   -1.2793877
6 months    JiVitA-3       BANGLADESH                     1                    NA                -1.3201245   -1.3492862   -1.2909627
6 months    JiVitA-3       BANGLADESH                     0                    NA                -1.3651420   -1.4483796   -1.2819043
6 months    JiVitA-4       BANGLADESH                     1                    NA                -1.1176851   -1.3061146   -0.9292557
6 months    JiVitA-4       BANGLADESH                     0                    NA                -1.2588429   -1.8309593   -0.6867265
6 months    Keneba         GAMBIA                         1                    NA                -0.9290544   -0.9831051   -0.8750038
6 months    Keneba         GAMBIA                         0                    NA                -1.1080620   -1.2670329   -0.9490910
6 months    MAL-ED         BANGLADESH                     1                    NA                -1.1859101   -1.3186532   -1.0531670
6 months    MAL-ED         BANGLADESH                     0                    NA                -1.2694493   -1.5031399   -1.0357586
6 months    MAL-ED         BRAZIL                         1                    NA                 0.1271661   -0.1552265    0.4095587
6 months    MAL-ED         BRAZIL                         0                    NA                 0.0444590   -0.1434504    0.2323683
6 months    MAL-ED         INDIA                          1                    NA                -1.1795996   -1.3511977   -1.0080014
6 months    MAL-ED         INDIA                          0                    NA                -1.2231055   -1.4142871   -1.0319240
6 months    MAL-ED         NEPAL                          1                    NA                -0.6347429   -0.8626587   -0.4068271
6 months    MAL-ED         NEPAL                          0                    NA                -0.5351244   -0.6657792   -0.4044696
6 months    MAL-ED         PERU                           1                    NA                -1.4099181   -1.6401443   -1.1796920
6 months    MAL-ED         PERU                           0                    NA                -1.2950415   -1.4150026   -1.1750805
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                -0.8606589   -1.3288731   -0.3924448
6 months    MAL-ED         SOUTH AFRICA                   0                    NA                -1.0984694   -1.2335206   -0.9634182
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3679191   -1.6229579   -1.1128802
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3944411   -1.5374363   -1.2514458
6 months    PROVIDE        BANGLADESH                     1                    NA                -1.0888044   -1.1726338   -1.0049751
6 months    PROVIDE        BANGLADESH                     0                    NA                -1.1027490   -1.2581263   -0.9473718
6 months    SAS-CompFeed   INDIA                          1                    NA                -1.4549959   -1.6008850   -1.3091069
6 months    SAS-CompFeed   INDIA                          0                    NA                -1.4654856   -2.2428805   -0.6880907
24 months   GMS-Nepal      NEPAL                          1                    NA                -1.8832865   -1.9849674   -1.7816056
24 months   GMS-Nepal      NEPAL                          0                    NA                -1.8249596   -2.0529909   -1.5969283
24 months   JiVitA-3       BANGLADESH                     1                    NA                -2.0051160   -2.0429026   -1.9673294
24 months   JiVitA-3       BANGLADESH                     0                    NA                -2.1629322   -2.2686254   -2.0572390
24 months   JiVitA-4       BANGLADESH                     1                    NA                -1.7156069   -1.8632856   -1.5679282
24 months   JiVitA-4       BANGLADESH                     0                    NA                -2.1635926   -2.4626862   -1.8644989
24 months   Keneba         GAMBIA                         1                    NA                -1.5741466   -1.6310564   -1.5172368
24 months   Keneba         GAMBIA                         0                    NA                -1.7897095   -1.9621852   -1.6172338
24 months   MAL-ED         BANGLADESH                     1                    NA                -1.9676008   -2.1239021   -1.8112995
24 months   MAL-ED         BANGLADESH                     0                    NA                -2.0733341   -2.2986599   -1.8480083
24 months   MAL-ED         BRAZIL                         1                    NA                -0.0799773   -0.3800426    0.2200879
24 months   MAL-ED         BRAZIL                         0                    NA                 0.0177140   -0.2033449    0.2387729
24 months   MAL-ED         INDIA                          1                    NA                -2.0117210   -2.1965855   -1.8268566
24 months   MAL-ED         INDIA                          0                    NA                -1.7959114   -1.9928685   -1.5989543
24 months   MAL-ED         NEPAL                          1                    NA                -1.3981900   -1.6092154   -1.1871647
24 months   MAL-ED         NEPAL                          0                    NA                -1.2810933   -1.4273868   -1.1347999
24 months   MAL-ED         PERU                           1                    NA                -1.8833910   -2.1735761   -1.5932059
24 months   MAL-ED         PERU                           0                    NA                -1.7300416   -1.8627356   -1.5973475
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                -1.5547560   -2.0173228   -1.0921892
24 months   MAL-ED         SOUTH AFRICA                   0                    NA                -1.6596615   -1.8053891   -1.5139339
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.5205601   -2.8330920   -2.2080281
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6963050   -2.8606670   -2.5319430
24 months   PROVIDE        BANGLADESH                     1                    NA                -1.6488907   -1.7467645   -1.5510168
24 months   PROVIDE        BANGLADESH                     0                    NA                -1.5050134   -1.6576122   -1.3524147


### Parameter: E(Y)


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          NA                   NA                -1.0555240   -1.1550843   -0.9559638
Birth       JiVitA-3       BANGLADESH                     NA                   NA                -1.5928457   -1.6158667   -1.5698248
Birth       JiVitA-4       BANGLADESH                     NA                   NA                -1.6073276   -1.8105798   -1.4040753
Birth       Keneba         GAMBIA                         NA                   NA                 0.0098304   -0.0597854    0.0794461
Birth       MAL-ED         BANGLADESH                     NA                   NA                -1.0949767   -1.2319917   -0.9579618
Birth       MAL-ED         BRAZIL                         NA                   NA                -0.6996491   -0.9856018   -0.4136965
Birth       MAL-ED         INDIA                          NA                   NA                -1.2075610   -1.5261540   -0.8889679
Birth       MAL-ED         NEPAL                          NA                   NA                -0.8234615   -1.1896049   -0.4573182
Birth       MAL-ED         PERU                           NA                   NA                -0.8753812   -0.9932108   -0.7575515
Birth       MAL-ED         SOUTH AFRICA                   NA                   NA                -0.5797000   -0.7788298   -0.3805702
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1086275   -1.3310338   -0.8862211
Birth       PROVIDE        BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       SAS-CompFeed   INDIA                          NA                   NA                -1.3937088   -1.5095039   -1.2779137
6 months    GMS-Nepal      NEPAL                          NA                   NA                -1.3499849   -1.4387386   -1.2612312
6 months    JiVitA-3       BANGLADESH                     NA                   NA                -1.3240051   -1.3526414   -1.2953689
6 months    JiVitA-4       BANGLADESH                     NA                   NA                -1.1994318   -1.3808291   -1.0180345
6 months    Keneba         GAMBIA                         NA                   NA                -0.9489317   -1.0001696   -0.8976937
6 months    MAL-ED         BANGLADESH                     NA                   NA                -1.2242918   -1.3439424   -1.1046413
6 months    MAL-ED         BRAZIL                         NA                   NA                 0.0609091   -0.0944768    0.2162950
6 months    MAL-ED         INDIA                          NA                   NA                -1.2002381   -1.3274929   -1.0729833
6 months    MAL-ED         NEPAL                          NA                   NA                -0.5634068   -0.6769687   -0.4498449
6 months    MAL-ED         PERU                           NA                   NA                -1.3108735   -1.4182407   -1.2035062
6 months    MAL-ED         SOUTH AFRICA                   NA                   NA                -1.0662227   -1.1965862   -0.9358591
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.4030503   -1.5292443   -1.2768563
6 months    PROVIDE        BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    SAS-CompFeed   INDIA                          NA                   NA                -1.4697236   -1.6333919   -1.3060553
24 months   GMS-Nepal      NEPAL                          NA                   NA                -1.8752995   -1.9688053   -1.7817937
24 months   JiVitA-3       BANGLADESH                     NA                   NA                -2.0187325   -2.0554682   -1.9819968
24 months   JiVitA-4       BANGLADESH                     NA                   NA                -1.7726490   -1.9111913   -1.6341067
24 months   Keneba         GAMBIA                         NA                   NA                -1.5961170   -1.6505261   -1.5417080
24 months   MAL-ED         BANGLADESH                     NA                   NA                -2.0016585   -2.1303297   -1.8729874
24 months   MAL-ED         BRAZIL                         NA                   NA                -0.0162939   -0.1929098    0.1603221
24 months   MAL-ED         INDIA                          NA                   NA                -1.8994059   -2.0346781   -1.7641337
24 months   MAL-ED         NEPAL                          NA                   NA                -1.3109318   -1.4313748   -1.1904888
24 months   MAL-ED         PERU                           NA                   NA                -1.7412963   -1.8630698   -1.6195228
24 months   MAL-ED         SOUTH AFRICA                   NA                   NA                -1.6424525   -1.7808926   -1.5040124
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6768207   -2.8213178   -2.5323235
24 months   PROVIDE        BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal      NEPAL                          0                    1                 -0.2069874   -0.4936940    0.0797191
Birth       JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3       BANGLADESH                     0                    1                 -0.0282835   -0.0840300    0.0274630
Birth       JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4       BANGLADESH                     0                    1                  0.5990126   -0.4058124    1.6038375
Birth       Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba         GAMBIA                         0                    1                  0.0577511   -0.1278114    0.2433136
Birth       MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BANGLADESH                     0                    1                  0.1023880   -0.1997411    0.4045171
Birth       MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BRAZIL                         0                    1                  0.2068105   -0.5317645    0.9453856
Birth       MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         INDIA                          0                    1                  0.6036311    0.0282638    1.1789984
Birth       MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         NEPAL                          0                    1                 -0.1837500   -0.8368488    0.4693488
Birth       MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         PERU                           0                    1                 -0.0308927   -0.2677463    0.2059608
Birth       MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         SOUTH AFRICA                   0                    1                  0.0371017   -0.5422881    0.6164914
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.2938528   -0.3099216    0.8976271
Birth       PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE        BANGLADESH                     0                    1                  0.0556682   -0.0954537    0.2067901
Birth       SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed   INDIA                          0                    1                 -0.0396624   -0.7382457    0.6589209
6 months    GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal      NEPAL                          0                    1                 -0.1966604   -0.4610673    0.0677464
6 months    JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3       BANGLADESH                     0                    1                 -0.0450175   -0.1291387    0.0391038
6 months    JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4       BANGLADESH                     0                    1                 -0.1411578   -0.7477337    0.4654181
6 months    Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba         GAMBIA                         0                    1                 -0.1790075   -0.3464561   -0.0115590
6 months    MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BANGLADESH                     0                    1                 -0.0835391   -0.3519848    0.1849065
6 months    MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BRAZIL                         0                    1                 -0.0827072   -0.4229995    0.2575852
6 months    MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         INDIA                          0                    1                 -0.0435060   -0.3008808    0.2138689
6 months    MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         NEPAL                          0                    1                  0.0996185   -0.1637956    0.3630326
6 months    MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         PERU                           0                    1                  0.1148766   -0.1405111    0.3702643
6 months    MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         SOUTH AFRICA                   0                    1                 -0.2378105   -0.7251843    0.2495633
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0265220   -0.3145405    0.2614965
6 months    PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE        BANGLADESH                     0                    1                 -0.0139446   -0.1904723    0.1625831
6 months    SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed   INDIA                          0                    1                 -0.0104897   -0.7471588    0.7261794
24 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal      NEPAL                          0                    1                  0.0583269   -0.1895180    0.3061718
24 months   JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3       BANGLADESH                     0                    1                 -0.1578162   -0.2664410   -0.0491914
24 months   JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4       BANGLADESH                     0                    1                 -0.4479857   -0.7801169   -0.1158545
24 months   Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba         GAMBIA                         0                    1                 -0.2155629   -0.3960118   -0.0351141
24 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BANGLADESH                     0                    1                 -0.1057333   -0.3778224    0.1663559
24 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BRAZIL                         0                    1                  0.0976913   -0.2748619    0.4702445
24 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         INDIA                          0                    1                  0.2158096   -0.0532282    0.4848474
24 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         NEPAL                          0                    1                  0.1170967   -0.1396006    0.3737940
24 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         PERU                           0                    1                  0.1533494   -0.1643743    0.4710732
24 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         SOUTH AFRICA                   0                    1                 -0.1049055   -0.5897878    0.3799769
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1757449   -0.5282223    0.1767325
24 months   PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE        BANGLADESH                     0                    1                  0.1438773   -0.0358163    0.3235709


### Parameter: PAR


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          1                    NA                -0.0275540   -0.0764854    0.0213774
Birth       JiVitA-3       BANGLADESH                     1                    NA                -0.0027590   -0.0080085    0.0024905
Birth       JiVitA-4       BANGLADESH                     1                    NA                -0.0610316   -0.1512063    0.0291431
Birth       Keneba         GAMBIA                         1                    NA                 0.0067615   -0.0142650    0.0277879
Birth       MAL-ED         BANGLADESH                     1                    NA                 0.0351473   -0.0729465    0.1432412
Birth       MAL-ED         BRAZIL                         1                    NA                 0.2736489   -0.3274165    0.8747142
Birth       MAL-ED         INDIA                          1                    NA                 0.2345448   -0.0235961    0.4926857
Birth       MAL-ED         NEPAL                          1                    NA                -0.1272115   -0.5805774    0.3261543
Birth       MAL-ED         PERU                           1                    NA                -0.0230315   -0.2080260    0.1619630
Birth       MAL-ED         SOUTH AFRICA                   1                    NA                 0.0209324   -0.5003753    0.5422401
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2414920   -0.2666036    0.7495876
Birth       PROVIDE        BANGLADESH                     1                    NA                 0.0183921   -0.0242469    0.0610310
Birth       SAS-CompFeed   INDIA                          1                    NA                -0.0145236   -0.0577567    0.0287095
6 months    GMS-Nepal      NEPAL                          1                    NA                -0.0210064   -0.0645221    0.0225094
6 months    JiVitA-3       BANGLADESH                     1                    NA                -0.0038807   -0.0113395    0.0035782
6 months    JiVitA-4       BANGLADESH                     1                    NA                -0.0817467   -0.1718089    0.0083155
6 months    Keneba         GAMBIA                         1                    NA                -0.0198772   -0.0390545   -0.0006999
6 months    MAL-ED         BANGLADESH                     1                    NA                -0.0383817   -0.1326635    0.0559000
6 months    MAL-ED         BRAZIL                         1                    NA                -0.0662570   -0.2991664    0.1666524
6 months    MAL-ED         INDIA                          1                    NA                -0.0206385   -0.1405634    0.0992864
6 months    MAL-ED         NEPAL                          1                    NA                 0.0713362   -0.1120736    0.2547459
6 months    MAL-ED         PERU                           1                    NA                 0.0990447   -0.1003698    0.2984591
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                -0.2055637   -0.6501370    0.2390096
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0351313   -0.2619624    0.1916999
6 months    PROVIDE        BANGLADESH                     1                    NA                -0.0028871   -0.0540042    0.0482301
6 months    SAS-CompFeed   INDIA                          1                    NA                -0.0147277   -0.0507565    0.0213012
24 months   GMS-Nepal      NEPAL                          1                    NA                 0.0079870   -0.0324204    0.0483944
24 months   JiVitA-3       BANGLADESH                     1                    NA                -0.0136165   -0.0230791   -0.0041539
24 months   JiVitA-4       BANGLADESH                     1                    NA                -0.0570421   -0.0962779   -0.0178064
24 months   Keneba         GAMBIA                         1                    NA                -0.0219704   -0.0403047   -0.0036361
24 months   MAL-ED         BANGLADESH                     1                    NA                -0.0340577   -0.1265842    0.0584687
24 months   MAL-ED         BRAZIL                         1                    NA                 0.0636835   -0.1821136    0.3094806
24 months   MAL-ED         INDIA                          1                    NA                 0.1123151   -0.0237427    0.2483729
24 months   MAL-ED         NEPAL                          1                    NA                 0.0872582   -0.0912312    0.2657476
24 months   MAL-ED         PERU                           1                    NA                 0.1420947   -0.1074644    0.3916538
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0876965   -0.5346705    0.3592775
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1562606   -0.4391655    0.1266443
24 months   PROVIDE        BANGLADESH                     1                    NA                 0.0464686   -0.0070072    0.0999443
