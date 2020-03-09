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

agecat      studyid      country                        impsan    n_cell       n  outcome_variable 
----------  -----------  -----------------------------  -------  -------  ------  -----------------
Birth       COHORTS      GUATEMALA                      1             45     491  haz              
Birth       COHORTS      GUATEMALA                      0            446     491  haz              
Birth       COHORTS      INDIA                          1           1767    4776  haz              
Birth       COHORTS      INDIA                          0           3009    4776  haz              
Birth       COHORTS      PHILIPPINES                    1            178    1191  haz              
Birth       COHORTS      PHILIPPINES                    0           1013    1191  haz              
Birth       CONTENT      PERU                           1              1       2  haz              
Birth       CONTENT      PERU                           0              1       2  haz              
Birth       JiVitA-3     BANGLADESH                     1          15220   22431  haz              
Birth       JiVitA-3     BANGLADESH                     0           7211   22431  haz              
Birth       JiVitA-4     BANGLADESH                     1           2181    2820  haz              
Birth       JiVitA-4     BANGLADESH                     0            639    2820  haz              
Birth       MAL-ED       BANGLADESH                     1            179     213  haz              
Birth       MAL-ED       BANGLADESH                     0             34     213  haz              
Birth       MAL-ED       BRAZIL                         1             59      60  haz              
Birth       MAL-ED       BRAZIL                         0              1      60  haz              
Birth       MAL-ED       INDIA                          1             15      40  haz              
Birth       MAL-ED       INDIA                          0             25      40  haz              
Birth       MAL-ED       NEPAL                          1             25      26  haz              
Birth       MAL-ED       NEPAL                          0              1      26  haz              
Birth       MAL-ED       PERU                           1             52     208  haz              
Birth       MAL-ED       PERU                           0            156     208  haz              
Birth       MAL-ED       SOUTH AFRICA                   1              0      95  haz              
Birth       MAL-ED       SOUTH AFRICA                   0             95      95  haz              
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     118  haz              
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            118     118  haz              
Birth       NIH-Birth    BANGLADESH                     1            231     608  haz              
Birth       NIH-Birth    BANGLADESH                     0            377     608  haz              
Birth       NIH-Crypto   BANGLADESH                     1            632     721  haz              
Birth       NIH-Crypto   BANGLADESH                     0             89     721  haz              
Birth       PROVIDE      BANGLADESH                     1             43      45  haz              
Birth       PROVIDE      BANGLADESH                     0              2      45  haz              
6 months    COHORTS      GUATEMALA                      1             67     658  haz              
6 months    COHORTS      GUATEMALA                      0            591     658  haz              
6 months    COHORTS      INDIA                          1           1881    4971  haz              
6 months    COHORTS      INDIA                          0           3090    4971  haz              
6 months    COHORTS      PHILIPPINES                    1            143    1083  haz              
6 months    COHORTS      PHILIPPINES                    0            940    1083  haz              
6 months    CONTENT      PERU                           1            201     215  haz              
6 months    CONTENT      PERU                           0             14     215  haz              
6 months    JiVitA-3     BANGLADESH                     1          12038   16800  haz              
6 months    JiVitA-3     BANGLADESH                     0           4762   16800  haz              
6 months    JiVitA-4     BANGLADESH                     1           3734    4825  haz              
6 months    JiVitA-4     BANGLADESH                     0           1091    4825  haz              
6 months    LCNI-5       MALAWI                         1              3     812  haz              
6 months    LCNI-5       MALAWI                         0            809     812  haz              
6 months    MAL-ED       BANGLADESH                     1            202     240  haz              
6 months    MAL-ED       BANGLADESH                     0             38     240  haz              
6 months    MAL-ED       BRAZIL                         1            205     209  haz              
6 months    MAL-ED       BRAZIL                         0              4     209  haz              
6 months    MAL-ED       INDIA                          1            108     233  haz              
6 months    MAL-ED       INDIA                          0            125     233  haz              
6 months    MAL-ED       NEPAL                          1            235     236  haz              
6 months    MAL-ED       NEPAL                          0              1     236  haz              
6 months    MAL-ED       PERU                           1             65     263  haz              
6 months    MAL-ED       PERU                           0            198     263  haz              
6 months    MAL-ED       SOUTH AFRICA                   1              4     244  haz              
6 months    MAL-ED       SOUTH AFRICA                   0            240     244  haz              
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     238  haz              
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            238     238  haz              
6 months    NIH-Birth    BANGLADESH                     1            205     537  haz              
6 months    NIH-Birth    BANGLADESH                     0            332     537  haz              
6 months    NIH-Crypto   BANGLADESH                     1            615     704  haz              
6 months    NIH-Crypto   BANGLADESH                     0             89     704  haz              
6 months    PROVIDE      BANGLADESH                     1             11      11  haz              
6 months    PROVIDE      BANGLADESH                     0              0      11  haz              
24 months   COHORTS      GUATEMALA                      1             77     893  haz              
24 months   COHORTS      GUATEMALA                      0            816     893  haz              
24 months   COHORTS      INDIA                          1           1471    3751  haz              
24 months   COHORTS      INDIA                          0           2280    3751  haz              
24 months   COHORTS      PHILIPPINES                    1            126     990  haz              
24 months   COHORTS      PHILIPPINES                    0            864     990  haz              
24 months   CONTENT      PERU                           1            151     164  haz              
24 months   CONTENT      PERU                           0             13     164  haz              
24 months   JiVitA-3     BANGLADESH                     1           6111    8622  haz              
24 months   JiVitA-3     BANGLADESH                     0           2511    8622  haz              
24 months   JiVitA-4     BANGLADESH                     1           3683    4747  haz              
24 months   JiVitA-4     BANGLADESH                     0           1064    4747  haz              
24 months   LCNI-5       MALAWI                         1              2     572  haz              
24 months   LCNI-5       MALAWI                         0            570     572  haz              
24 months   MAL-ED       BANGLADESH                     1            181     212  haz              
24 months   MAL-ED       BANGLADESH                     0             31     212  haz              
24 months   MAL-ED       BRAZIL                         1            166     169  haz              
24 months   MAL-ED       BRAZIL                         0              3     169  haz              
24 months   MAL-ED       INDIA                          1            104     225  haz              
24 months   MAL-ED       INDIA                          0            121     225  haz              
24 months   MAL-ED       NEPAL                          1            227     228  haz              
24 months   MAL-ED       NEPAL                          0              1     228  haz              
24 months   MAL-ED       PERU                           1             47     196  haz              
24 months   MAL-ED       PERU                           0            149     196  haz              
24 months   MAL-ED       SOUTH AFRICA                   1              4     235  haz              
24 months   MAL-ED       SOUTH AFRICA                   0            231     235  haz              
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     207  haz              
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            207     207  haz              
24 months   NIH-Birth    BANGLADESH                     1            170     429  haz              
24 months   NIH-Birth    BANGLADESH                     0            259     429  haz              
24 months   NIH-Crypto   BANGLADESH                     1            433     503  haz              
24 months   NIH-Crypto   BANGLADESH                     0             70     503  haz              
24 months   PROVIDE      BANGLADESH                     1              9       9  haz              
24 months   PROVIDE      BANGLADESH                     0              0       9  haz              


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
![](/tmp/0298410d-2199-4b07-83d1-d2ccaa7f8cfb/942de8af-2b35-4551-ad10-9f2add5d9020/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0298410d-2199-4b07-83d1-d2ccaa7f8cfb/942de8af-2b35-4551-ad10-9f2add5d9020/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0298410d-2199-4b07-83d1-d2ccaa7f8cfb/942de8af-2b35-4551-ad10-9f2add5d9020/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     1                    NA                 0.4639502    0.1730640    0.7548363
Birth       COHORTS      GUATEMALA     0                    NA                -0.0250760   -0.1410845    0.0909324
Birth       COHORTS      INDIA         1                    NA                -0.5583157   -0.6184121   -0.4982194
Birth       COHORTS      INDIA         0                    NA                -0.7475569   -0.7898039   -0.7053099
Birth       COHORTS      PHILIPPINES   1                    NA                -0.1482409   -0.3480519    0.0515700
Birth       COHORTS      PHILIPPINES   0                    NA                -0.3692644   -0.4402856   -0.2982432
Birth       JiVitA-3     BANGLADESH    1                    NA                -1.5768558   -1.5996813   -1.5540304
Birth       JiVitA-3     BANGLADESH    0                    NA                -1.6037910   -1.6442838   -1.5632983
Birth       JiVitA-4     BANGLADESH    1                    NA                -1.5155637   -1.5733653   -1.4577621
Birth       JiVitA-4     BANGLADESH    0                    NA                -1.5980055   -1.7111379   -1.4848732
Birth       MAL-ED       BANGLADESH    1                    NA                -1.0583295   -1.2084052   -0.9082539
Birth       MAL-ED       BANGLADESH    0                    NA                -1.0244376   -1.3854352   -0.6634400
Birth       MAL-ED       INDIA         1                    NA                -0.9509816   -1.4855489   -0.4164144
Birth       MAL-ED       INDIA         0                    NA                -1.2660192   -1.5990982   -0.9329403
Birth       MAL-ED       PERU          1                    NA                -0.7788314   -1.0293931   -0.5282697
Birth       MAL-ED       PERU          0                    NA                -0.9284588   -1.0682758   -0.7886418
Birth       NIH-Birth    BANGLADESH    1                    NA                -0.8546012   -1.0107161   -0.6984863
Birth       NIH-Birth    BANGLADESH    0                    NA                -0.9784443   -1.0862119   -0.8706768
Birth       NIH-Crypto   BANGLADESH    1                    NA                -0.9142334   -0.9893021   -0.8391647
Birth       NIH-Crypto   BANGLADESH    0                    NA                -0.9409473   -1.1764932   -0.7054014
6 months    COHORTS      GUATEMALA     1                    NA                -1.5627618   -1.8255718   -1.2999518
6 months    COHORTS      GUATEMALA     0                    NA                -1.8895257   -1.9777505   -1.8013008
6 months    COHORTS      INDIA         1                    NA                -0.8954786   -0.9522305   -0.8387267
6 months    COHORTS      INDIA         0                    NA                -1.1386983   -1.1804727   -1.0969239
6 months    COHORTS      PHILIPPINES   1                    NA                -0.8611166   -1.0751016   -0.6471315
6 months    COHORTS      PHILIPPINES   0                    NA                -1.2644405   -1.3379745   -1.1909065
6 months    CONTENT      PERU          1                    NA                -0.2527916   -0.3875288   -0.1180544
6 months    CONTENT      PERU          0                    NA                -0.6902915   -1.3454292   -0.0351538
6 months    JiVitA-3     BANGLADESH    1                    NA                -1.3032248   -1.3290475   -1.2774020
6 months    JiVitA-3     BANGLADESH    0                    NA                -1.3359150   -1.3825003   -1.2893296
6 months    JiVitA-4     BANGLADESH    1                    NA                -1.3383103   -1.3802449   -1.2963757
6 months    JiVitA-4     BANGLADESH    0                    NA                -1.3876098   -1.4762322   -1.2989874
6 months    MAL-ED       BANGLADESH    1                    NA                -1.2052654   -1.3384944   -1.0720365
6 months    MAL-ED       BANGLADESH    0                    NA                -1.2006867   -1.4679868   -0.9333867
6 months    MAL-ED       INDIA         1                    NA                -1.2036401   -1.3719086   -1.0353717
6 months    MAL-ED       INDIA         0                    NA                -1.2245871   -1.3955822   -1.0535920
6 months    MAL-ED       PERU          1                    NA                -1.3313278   -1.5933113   -1.0693444
6 months    MAL-ED       PERU          0                    NA                -1.3113350   -1.4376377   -1.1850322
6 months    NIH-Birth    BANGLADESH    1                    NA                -1.3084794   -1.4486165   -1.1683423
6 months    NIH-Birth    BANGLADESH    0                    NA                -1.4640526   -1.5787359   -1.3493693
6 months    NIH-Crypto   BANGLADESH    1                    NA                -1.2132590   -1.2894434   -1.1370745
6 months    NIH-Crypto   BANGLADESH    0                    NA                -1.1125924   -1.3262950   -0.8988899
24 months   COHORTS      GUATEMALA     1                    NA                -2.6192398   -2.8908935   -2.3475860
24 months   COHORTS      GUATEMALA     0                    NA                -3.0216638   -3.0961382   -2.9471895
24 months   COHORTS      INDIA         1                    NA                -1.9803070   -2.0458096   -1.9148045
24 months   COHORTS      INDIA         0                    NA                -2.3981218   -2.4519944   -2.3442493
24 months   COHORTS      PHILIPPINES   1                    NA                -2.0001108   -2.1956940   -1.8045276
24 months   COHORTS      PHILIPPINES   0                    NA                -2.7002348   -2.7788098   -2.6216598
24 months   CONTENT      PERU          1                    NA                -0.6411925   -0.8001362   -0.4822488
24 months   CONTENT      PERU          0                    NA                -0.8902032   -1.3207689   -0.4596376
24 months   JiVitA-3     BANGLADESH    1                    NA                -1.9874152   -2.0205389   -1.9542915
24 months   JiVitA-3     BANGLADESH    0                    NA                -2.1104638   -2.1723794   -2.0485481
24 months   JiVitA-4     BANGLADESH    1                    NA                -1.7641675   -1.8056033   -1.7227316
24 months   JiVitA-4     BANGLADESH    0                    NA                -1.8575510   -1.9308286   -1.7842734
24 months   MAL-ED       BANGLADESH    1                    NA                -1.9748238   -2.1143002   -1.8353474
24 months   MAL-ED       BANGLADESH    0                    NA                -1.9995880   -2.3160361   -1.6831398
24 months   MAL-ED       INDIA         1                    NA                -1.7569424   -1.9254989   -1.5883858
24 months   MAL-ED       INDIA         0                    NA                -1.9765759   -2.1558899   -1.7972620
24 months   MAL-ED       PERU          1                    NA                -1.7234358   -1.9597393   -1.4871323
24 months   MAL-ED       PERU          0                    NA                -1.7599970   -1.9040098   -1.6159843
24 months   NIH-Birth    BANGLADESH    1                    NA                -2.0888022   -2.2564987   -1.9211058
24 months   NIH-Birth    BANGLADESH    0                    NA                -2.3046903   -2.4305138   -2.1788669
24 months   NIH-Crypto   BANGLADESH    1                    NA                -1.4497764   -1.5416853   -1.3578675
24 months   NIH-Crypto   BANGLADESH    0                    NA                -1.3788544   -1.5952945   -1.1624143


### Parameter: E(Y)


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     NA                   NA                -0.0275356   -0.1359303    0.0808590
Birth       COHORTS      INDIA         NA                   NA                -0.6777115   -0.7106054   -0.6448175
Birth       COHORTS      PHILIPPINES   NA                   NA                -0.3137364   -0.3764483   -0.2510244
Birth       JiVitA-3     BANGLADESH    NA                   NA                -1.5898288   -1.6090823   -1.5705753
Birth       JiVitA-4     BANGLADESH    NA                   NA                -1.5236135   -1.5727559   -1.4744711
Birth       MAL-ED       BANGLADESH    NA                   NA                -1.0530516   -1.1896058   -0.9164975
Birth       MAL-ED       INDIA         NA                   NA                -1.1375000   -1.4325178   -0.8424822
Birth       MAL-ED       PERU          NA                   NA                -0.9131731   -1.0331160   -0.7932301
Birth       NIH-Birth    BANGLADESH    NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto   BANGLADESH    NA                   NA                -0.9131068   -0.9851939   -0.8410197
6 months    COHORTS      GUATEMALA     NA                   NA                -1.8789210   -1.9609921   -1.7968498
6 months    COHORTS      INDIA         NA                   NA                -1.0414424   -1.0741113   -1.0087734
6 months    COHORTS      PHILIPPINES   NA                   NA                -1.1942936   -1.2608624   -1.1277248
6 months    CONTENT      PERU          NA                   NA                -0.2785256   -0.4098735   -0.1471776
6 months    JiVitA-3     BANGLADESH    NA                   NA                -1.3134804   -1.3366079   -1.2903528
6 months    JiVitA-4     BANGLADESH    NA                   NA                -1.3440477   -1.3813060   -1.3067894
6 months    MAL-ED       BANGLADESH    NA                   NA                -1.2026806   -1.3203025   -1.0850586
6 months    MAL-ED       INDIA         NA                   NA                -1.2087268   -1.3282418   -1.0892117
6 months    MAL-ED       PERU          NA                   NA                -1.3196229   -1.4293681   -1.2098778
6 months    NIH-Birth    BANGLADESH    NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto   BANGLADESH    NA                   NA                -1.2031037   -1.2749632   -1.1312442
24 months   COHORTS      GUATEMALA     NA                   NA                -3.0050840   -3.0758338   -2.9343342
24 months   COHORTS      INDIA         NA                   NA                -2.2126633   -2.2518337   -2.1734929
24 months   COHORTS      PHILIPPINES   NA                   NA                -2.5937576   -2.6629996   -2.5245156
24 months   CONTENT      PERU          NA                   NA                -0.6868598   -0.8388476   -0.5348719
24 months   JiVitA-3     BANGLADESH    NA                   NA                -2.0136975   -2.0413718   -1.9860232
24 months   JiVitA-4     BANGLADESH    NA                   NA                -1.7803708   -1.8158650   -1.7448765
24 months   MAL-ED       BANGLADESH    NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED       INDIA         NA                   NA                -1.8779556   -2.0033207   -1.7525904
24 months   MAL-ED       PERU          NA                   NA                -1.7535204   -1.8760973   -1.6309435
24 months   NIH-Birth    BANGLADESH    NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto   BANGLADESH    NA                   NA                -1.4417097   -1.5263855   -1.3570340


### Parameter: ATE


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS      GUATEMALA     0                    1                 -0.4890262   -0.8025548   -0.1754975
Birth       COHORTS      INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS      INDIA         0                    1                 -0.1892412   -0.2622379   -0.1162445
Birth       COHORTS      PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS      PHILIPPINES   0                    1                 -0.2210234   -0.4329721   -0.0090747
Birth       JiVitA-3     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3     BANGLADESH    0                    1                 -0.0269352   -0.0711590    0.0172886
Birth       JiVitA-4     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4     BANGLADESH    0                    1                 -0.0824418   -0.2083429    0.0434592
Birth       MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       BANGLADESH    0                    1                  0.0338919   -0.3574785    0.4252623
Birth       MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       INDIA         0                    1                 -0.3150376   -0.9535137    0.3234385
Birth       MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU          0                    1                 -0.1496274   -0.4365564    0.1373017
Birth       NIH-Birth    BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH    0                    1                 -0.1238431   -0.3125906    0.0649043
Birth       NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH    0                    1                 -0.0267139   -0.2733853    0.2199574
6 months    COHORTS      GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS      GUATEMALA     0                    1                 -0.3267638   -0.6038798   -0.0496478
6 months    COHORTS      INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS      INDIA         0                    1                 -0.2432197   -0.3126262   -0.1738132
6 months    COHORTS      PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS      PHILIPPINES   0                    1                 -0.4033239   -0.6300719   -0.1765759
6 months    CONTENT      PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    CONTENT      PERU          0                    1                 -0.4374998   -1.1060654    0.2310657
6 months    JiVitA-3     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3     BANGLADESH    0                    1                 -0.0326902   -0.0793053    0.0139249
6 months    JiVitA-4     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4     BANGLADESH    0                    1                 -0.0492994   -0.1474387    0.0488398
6 months    MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       BANGLADESH    0                    1                  0.0045787   -0.2953808    0.3045382
6 months    MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA         0                    1                 -0.0209469   -0.2615742    0.2196803
6 months    MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU          0                    1                  0.0199929   -0.2714053    0.3113911
6 months    NIH-Birth    BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH    0                    1                 -0.1555731   -0.3354475    0.0243013
6 months    NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH    0                    1                  0.1006665   -0.1267758    0.3281089
24 months   COHORTS      GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS      GUATEMALA     0                    1                 -0.4024241   -0.6840878   -0.1207603
24 months   COHORTS      INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS      INDIA         0                    1                 -0.4178148   -0.5028490   -0.3327806
24 months   COHORTS      PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS      PHILIPPINES   0                    1                 -0.7001240   -0.9114548   -0.4887932
24 months   CONTENT      PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   CONTENT      PERU          0                    1                 -0.2490107   -0.7072317    0.2092102
24 months   JiVitA-3     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3     BANGLADESH    0                    1                 -0.1230486   -0.1872029   -0.0588943
24 months   JiVitA-4     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4     BANGLADESH    0                    1                 -0.0933835   -0.1747380   -0.0120291
24 months   MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       BANGLADESH    0                    1                 -0.0247642   -0.3706072    0.3210789
24 months   MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA         0                    1                 -0.2196336   -0.4637558    0.0244886
24 months   MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU          0                    1                 -0.0365613   -0.3144323    0.2413098
24 months   NIH-Birth    BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH    0                    1                 -0.2158881   -0.4236394   -0.0081368
24 months   NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH    0                    1                  0.0709220   -0.1639953    0.3058393


### Parameter: PAR


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     1                    NA                -0.4914858   -0.7788139   -0.2041577
Birth       COHORTS      INDIA         1                    NA                -0.1193957   -0.1694085   -0.0693830
Birth       COHORTS      PHILIPPINES   1                    NA                -0.1654954   -0.3619065    0.0309157
Birth       JiVitA-3     BANGLADESH    1                    NA                -0.0129730   -0.0262250    0.0002791
Birth       JiVitA-4     BANGLADESH    1                    NA                -0.0080498   -0.0365567    0.0204572
Birth       MAL-ED       BANGLADESH    1                    NA                 0.0052779   -0.0522119    0.0627677
Birth       MAL-ED       INDIA         1                    NA                -0.1865184   -0.5780278    0.2049911
Birth       MAL-ED       PERU          1                    NA                -0.1343417   -0.3517453    0.0830620
Birth       NIH-Birth    BANGLADESH    1                    NA                -0.0764186   -0.1959383    0.0431012
Birth       NIH-Crypto   BANGLADESH    1                    NA                 0.0011266   -0.0291624    0.0314156
6 months    COHORTS      GUATEMALA     1                    NA                -0.3161591   -0.5734755   -0.0588427
6 months    COHORTS      INDIA         1                    NA                -0.1459638   -0.1934765   -0.0984511
6 months    COHORTS      PHILIPPINES   1                    NA                -0.3331770   -0.5437803   -0.1225738
6 months    CONTENT      PERU          1                    NA                -0.0257340   -0.0649587    0.0134908
6 months    JiVitA-3     BANGLADESH    1                    NA                -0.0102556   -0.0217606    0.0012494
6 months    JiVitA-4     BANGLADESH    1                    NA                -0.0057373   -0.0259230    0.0144483
6 months    MAL-ED       BANGLADESH    1                    NA                 0.0025849   -0.0439936    0.0491633
6 months    MAL-ED       INDIA         1                    NA                -0.0050866   -0.1344828    0.1243096
6 months    MAL-ED       PERU          1                    NA                 0.0117049   -0.2215817    0.2449915
6 months    NIH-Birth    BANGLADESH    1                    NA                -0.0989026   -0.2099515    0.0121462
6 months    NIH-Crypto   BANGLADESH    1                    NA                 0.0101553   -0.0187143    0.0390248
24 months   COHORTS      GUATEMALA     1                    NA                -0.3858442   -0.6514808   -0.1202077
24 months   COHORTS      INDIA         1                    NA                -0.2323562   -0.2867039   -0.1780086
24 months   COHORTS      PHILIPPINES   1                    NA                -0.5936468   -0.7879567   -0.3993369
24 months   CONTENT      PERU          1                    NA                -0.0456672   -0.0879874   -0.0033471
24 months   JiVitA-3     BANGLADESH    1                    NA                -0.0262823   -0.0437249   -0.0088398
24 months   JiVitA-4     BANGLADESH    1                    NA                -0.0162033   -0.0338891    0.0014825
24 months   MAL-ED       BANGLADESH    1                    NA                -0.0035724   -0.0514728    0.0443279
24 months   MAL-ED       INDIA         1                    NA                -0.1210132   -0.2535020    0.0114756
24 months   MAL-ED       PERU          1                    NA                -0.0300846   -0.2418114    0.1816422
24 months   NIH-Birth    BANGLADESH    1                    NA                -0.1302557   -0.2554487   -0.0050626
24 months   NIH-Crypto   BANGLADESH    1                    NA                 0.0080667   -0.0238958    0.0400292
