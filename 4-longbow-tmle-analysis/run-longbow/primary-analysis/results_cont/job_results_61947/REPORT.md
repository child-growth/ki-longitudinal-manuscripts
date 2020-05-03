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
![](/tmp/ff77bc76-0697-4a12-8617-20e8c041f4ad/a5a2c3de-4348-42d0-be4b-261f002972aa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ff77bc76-0697-4a12-8617-20e8c041f4ad/a5a2c3de-4348-42d0-be4b-261f002972aa/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ff77bc76-0697-4a12-8617-20e8c041f4ad/a5a2c3de-4348-42d0-be4b-261f002972aa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     1                    NA                 0.4246927    0.1736314    0.6757540
Birth       COHORTS      GUATEMALA     0                    NA                -0.0247529   -0.1398607    0.0903549
Birth       COHORTS      INDIA         1                    NA                -0.5660231   -0.6252822   -0.5067640
Birth       COHORTS      INDIA         0                    NA                -0.7442746   -0.7872968   -0.7012525
Birth       COHORTS      PHILIPPINES   1                    NA                -0.1386462   -0.3584132    0.0811207
Birth       COHORTS      PHILIPPINES   0                    NA                -0.3727810   -0.4427508   -0.3028112
Birth       JiVitA-3     BANGLADESH    1                    NA                -1.5766139   -1.5999759   -1.5532519
Birth       JiVitA-3     BANGLADESH    0                    NA                -1.6058790   -1.6469435   -1.5648145
Birth       JiVitA-4     BANGLADESH    1                    NA                -1.5137140   -1.5702690   -1.4571591
Birth       JiVitA-4     BANGLADESH    0                    NA                -1.5724761   -1.6897730   -1.4551792
Birth       MAL-ED       BANGLADESH    1                    NA                -1.0548761   -1.2045449   -0.9052074
Birth       MAL-ED       BANGLADESH    0                    NA                -1.0361055   -1.3790315   -0.6931796
Birth       MAL-ED       INDIA         1                    NA                -0.9381818   -1.4638099   -0.4125537
Birth       MAL-ED       INDIA         0                    NA                -1.2622665   -1.5975605   -0.9269726
Birth       MAL-ED       PERU          1                    NA                -0.8291202   -1.0795178   -0.5787226
Birth       MAL-ED       PERU          0                    NA                -0.9272738   -1.0647462   -0.7898013
Birth       NIH-Birth    BANGLADESH    1                    NA                -0.8546260   -1.0083553   -0.7008967
Birth       NIH-Birth    BANGLADESH    0                    NA                -0.9774292   -1.0871723   -0.8676861
Birth       NIH-Crypto   BANGLADESH    1                    NA                -0.9152373   -0.9900148   -0.8404599
Birth       NIH-Crypto   BANGLADESH    0                    NA                -0.9121372   -1.1592276   -0.6650468
6 months    COHORTS      GUATEMALA     1                    NA                -1.6155760   -1.8855040   -1.3456480
6 months    COHORTS      GUATEMALA     0                    NA                -1.8878988   -1.9760744   -1.7997231
6 months    COHORTS      INDIA         1                    NA                -0.9030291   -0.9590124   -0.8470458
6 months    COHORTS      INDIA         0                    NA                -1.1443520   -1.1863450   -1.1023590
6 months    COHORTS      PHILIPPINES   1                    NA                -0.8551096   -1.0971508   -0.6130685
6 months    COHORTS      PHILIPPINES   0                    NA                -1.2637689   -1.3369532   -1.1905846
6 months    CONTENT      PERU          1                    NA                -0.2529967   -0.3874931   -0.1185002
6 months    CONTENT      PERU          0                    NA                -0.6037174   -1.2272088    0.0197740
6 months    JiVitA-3     BANGLADESH    1                    NA                -1.3023400   -1.3281545   -1.2765254
6 months    JiVitA-3     BANGLADESH    0                    NA                -1.3385101   -1.3840762   -1.2929440
6 months    JiVitA-4     BANGLADESH    1                    NA                -1.3372579   -1.3794518   -1.2950640
6 months    JiVitA-4     BANGLADESH    0                    NA                -1.3994523   -1.4841983   -1.3147062
6 months    MAL-ED       BANGLADESH    1                    NA                -1.2021553   -1.3338472   -1.0704633
6 months    MAL-ED       BANGLADESH    0                    NA                -1.1987978   -1.4623545   -0.9352411
6 months    MAL-ED       INDIA         1                    NA                -1.1981256   -1.3665494   -1.0297018
6 months    MAL-ED       INDIA         0                    NA                -1.2185866   -1.3896795   -1.0474938
6 months    MAL-ED       PERU          1                    NA                -1.3213773   -1.5724234   -1.0703311
6 months    MAL-ED       PERU          0                    NA                -1.3196261   -1.4468230   -1.1924291
6 months    NIH-Birth    BANGLADESH    1                    NA                -1.3147526   -1.4548156   -1.1746895
6 months    NIH-Birth    BANGLADESH    0                    NA                -1.4639597   -1.5763067   -1.3516128
6 months    NIH-Crypto   BANGLADESH    1                    NA                -1.2209673   -1.2969194   -1.1450151
6 months    NIH-Crypto   BANGLADESH    0                    NA                -1.0809526   -1.3019802   -0.8599249
24 months   COHORTS      GUATEMALA     1                    NA                -2.6693632   -2.9621755   -2.3765510
24 months   COHORTS      GUATEMALA     0                    NA                -3.0191889   -3.0935383   -2.9448394
24 months   COHORTS      INDIA         1                    NA                -1.9741696   -2.0381129   -1.9102263
24 months   COHORTS      INDIA         0                    NA                -2.3907465   -2.4437691   -2.3377239
24 months   COHORTS      PHILIPPINES   1                    NA                -1.9750427   -2.1975588   -1.7525266
24 months   COHORTS      PHILIPPINES   0                    NA                -2.7052184   -2.7871265   -2.6233103
24 months   CONTENT      PERU          1                    NA                -0.6418310   -0.8016832   -0.4819787
24 months   CONTENT      PERU          0                    NA                -1.2206680   -1.6679394   -0.7733966
24 months   JiVitA-3     BANGLADESH    1                    NA                -1.9848755   -2.0176566   -1.9520944
24 months   JiVitA-3     BANGLADESH    0                    NA                -2.1177379   -2.1768817   -2.0585941
24 months   JiVitA-4     BANGLADESH    1                    NA                -1.7645798   -1.8061325   -1.7230271
24 months   JiVitA-4     BANGLADESH    0                    NA                -1.8525759   -1.9223842   -1.7827675
24 months   MAL-ED       BANGLADESH    1                    NA                -1.9743363   -2.1143930   -1.8342796
24 months   MAL-ED       BANGLADESH    0                    NA                -2.0010079   -2.3343623   -1.6676534
24 months   MAL-ED       INDIA         1                    NA                -1.7621173   -1.9300315   -1.5942032
24 months   MAL-ED       INDIA         0                    NA                -1.9873081   -2.1655675   -1.8090486
24 months   MAL-ED       PERU          1                    NA                -1.7133922   -1.9591181   -1.4676663
24 months   MAL-ED       PERU          0                    NA                -1.7645629   -1.9083021   -1.6208237
24 months   NIH-Birth    BANGLADESH    1                    NA                -2.1092264   -2.2716631   -1.9467898
24 months   NIH-Birth    BANGLADESH    0                    NA                -2.2943334   -2.4178626   -2.1708042
24 months   NIH-Crypto   BANGLADESH    1                    NA                -1.4527017   -1.5445496   -1.3608538
24 months   NIH-Crypto   BANGLADESH    0                    NA                -1.3907550   -1.6199845   -1.1615255


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
Birth       COHORTS      GUATEMALA     0                    1                 -0.4494456   -0.7261173   -0.1727739
Birth       COHORTS      INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS      INDIA         0                    1                 -0.1782515   -0.2510849   -0.1054182
Birth       COHORTS      PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS      PHILIPPINES   0                    1                 -0.2341347   -0.4648265   -0.0034430
Birth       JiVitA-3     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3     BANGLADESH    0                    1                 -0.0292651   -0.0741880    0.0156578
Birth       JiVitA-4     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4     BANGLADESH    0                    1                 -0.0587621   -0.1868289    0.0693047
Birth       MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       BANGLADESH    0                    1                  0.0187706   -0.3554126    0.3929539
Birth       MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       INDIA         0                    1                 -0.3240847   -0.9495761    0.3014066
Birth       MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU          0                    1                 -0.0981536   -0.3828195    0.1865123
Birth       NIH-Birth    BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH    0                    1                 -0.1228031   -0.3114474    0.0658411
Birth       NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH    0                    1                  0.0031001   -0.2547878    0.2609880
6 months    COHORTS      GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS      GUATEMALA     0                    1                 -0.2723228   -0.5558944    0.0112488
6 months    COHORTS      INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS      INDIA         0                    1                 -0.2413229   -0.3102446   -0.1724012
6 months    COHORTS      PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS      PHILIPPINES   0                    1                 -0.4086593   -0.6616627   -0.1556559
6 months    CONTENT      PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    CONTENT      PERU          0                    1                 -0.3507207   -0.9877990    0.2863576
6 months    JiVitA-3     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3     BANGLADESH    0                    1                 -0.0361701   -0.0815989    0.0092587
6 months    JiVitA-4     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4     BANGLADESH    0                    1                 -0.0621944   -0.1568573    0.0324686
6 months    MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       BANGLADESH    0                    1                  0.0033575   -0.2915022    0.2982171
6 months    MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA         0                    1                 -0.0204610   -0.2609234    0.2200014
6 months    MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU          0                    1                  0.0017512   -0.2801306    0.2836331
6 months    NIH-Birth    BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH    0                    1                 -0.1492072   -0.3268445    0.0284302
6 months    NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH    0                    1                  0.1400147   -0.0935672    0.3735966
24 months   COHORTS      GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS      GUATEMALA     0                    1                 -0.3498256   -0.6514217   -0.0482296
24 months   COHORTS      INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS      INDIA         0                    1                 -0.4165769   -0.4998006   -0.3333532
24 months   COHORTS      PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS      PHILIPPINES   0                    1                 -0.7301757   -0.9685933   -0.4917581
24 months   CONTENT      PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   CONTENT      PERU          0                    1                 -0.5788371   -1.0533654   -0.1043087
24 months   JiVitA-3     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3     BANGLADESH    0                    1                 -0.1328624   -0.1952987   -0.0704261
24 months   JiVitA-4     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4     BANGLADESH    0                    1                 -0.0879961   -0.1665876   -0.0094045
24 months   MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       BANGLADESH    0                    1                 -0.0266716   -0.3880173    0.3346741
24 months   MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA         0                    1                 -0.2251907   -0.4668822    0.0165008
24 months   MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU          0                    1                 -0.0511707   -0.3359505    0.2336092
24 months   NIH-Birth    BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH    0                    1                 -0.1851069   -0.3836151    0.0134012
24 months   NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH    0                    1                  0.0619467   -0.1848816    0.3087751


### Parameter: PAR


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     1                    NA                -0.4522283   -0.7004992   -0.2039575
Birth       COHORTS      INDIA         1                    NA                -0.1116884   -0.1609004   -0.0624764
Birth       COHORTS      PHILIPPINES   1                    NA                -0.1750901   -0.3912652    0.0410850
Birth       JiVitA-3     BANGLADESH    1                    NA                -0.0132149   -0.0270153    0.0005854
Birth       JiVitA-4     BANGLADESH    1                    NA                -0.0098994   -0.0373124    0.0175135
Birth       MAL-ED       BANGLADESH    1                    NA                 0.0018245   -0.0558074    0.0594564
Birth       MAL-ED       INDIA         1                    NA                -0.1993182   -0.5778381    0.1792017
Birth       MAL-ED       PERU          1                    NA                -0.0840529   -0.2985503    0.1304445
Birth       NIH-Birth    BANGLADESH    1                    NA                -0.0763937   -0.1942465    0.0414591
Birth       NIH-Crypto   BANGLADESH    1                    NA                 0.0021305   -0.0287935    0.0330546
6 months    COHORTS      GUATEMALA     1                    NA                -0.2633450   -0.5269477    0.0002577
6 months    COHORTS      INDIA         1                    NA                -0.1384133   -0.1850741   -0.0917524
6 months    COHORTS      PHILIPPINES   1                    NA                -0.3391840   -0.5769546   -0.1014134
6 months    CONTENT      PERU          1                    NA                -0.0255289   -0.0644709    0.0134131
6 months    JiVitA-3     BANGLADESH    1                    NA                -0.0111404   -0.0224723    0.0001915
6 months    JiVitA-4     BANGLADESH    1                    NA                -0.0067897   -0.0273251    0.0137457
6 months    MAL-ED       BANGLADESH    1                    NA                -0.0005253   -0.0453725    0.0443220
6 months    MAL-ED       INDIA         1                    NA                -0.0106011   -0.1397783    0.1185760
6 months    MAL-ED       PERU          1                    NA                 0.0017543   -0.2215156    0.2250243
6 months    NIH-Birth    BANGLADESH    1                    NA                -0.0926295   -0.2030668    0.0178078
6 months    NIH-Crypto   BANGLADESH    1                    NA                 0.0178636   -0.0115213    0.0472484
24 months   COHORTS      GUATEMALA     1                    NA                -0.3357208   -0.6213068   -0.0501347
24 months   COHORTS      INDIA         1                    NA                -0.2384937   -0.2914061   -0.1855813
24 months   COHORTS      PHILIPPINES   1                    NA                -0.6187149   -0.8396264   -0.3978034
24 months   CONTENT      PERU          1                    NA                -0.0450288   -0.0871092   -0.0029483
24 months   JiVitA-3     BANGLADESH    1                    NA                -0.0288220   -0.0460016   -0.0116425
24 months   JiVitA-4     BANGLADESH    1                    NA                -0.0157910   -0.0335533    0.0019714
24 months   MAL-ED       BANGLADESH    1                    NA                -0.0040599   -0.0522807    0.0441609
24 months   MAL-ED       INDIA         1                    NA                -0.1158382   -0.2468618    0.0151854
24 months   MAL-ED       PERU          1                    NA                -0.0401282   -0.2597376    0.1794812
24 months   NIH-Birth    BANGLADESH    1                    NA                -0.1098314   -0.2290833    0.0094204
24 months   NIH-Crypto   BANGLADESH    1                    NA                 0.0109920   -0.0209270    0.0429110
