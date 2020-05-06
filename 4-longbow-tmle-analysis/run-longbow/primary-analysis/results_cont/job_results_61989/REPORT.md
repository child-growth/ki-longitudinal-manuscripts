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
Birth       COHORTS      GUATEMALA                      1             43     449  whz              
Birth       COHORTS      GUATEMALA                      0            406     449  whz              
Birth       COHORTS      INDIA                          1           1685    4461  whz              
Birth       COHORTS      INDIA                          0           2776    4461  whz              
Birth       COHORTS      PHILIPPINES                    1            177    1126  whz              
Birth       COHORTS      PHILIPPINES                    0            949    1126  whz              
Birth       CONTENT      PERU                           1              1       2  whz              
Birth       CONTENT      PERU                           0              1       2  whz              
Birth       JiVitA-3     BANGLADESH                     1          12413   17991  whz              
Birth       JiVitA-3     BANGLADESH                     0           5578   17991  whz              
Birth       JiVitA-4     BANGLADESH                     1           1859    2394  whz              
Birth       JiVitA-4     BANGLADESH                     0            535    2394  whz              
Birth       MAL-ED       BANGLADESH                     1            168     201  whz              
Birth       MAL-ED       BANGLADESH                     0             33     201  whz              
Birth       MAL-ED       BRAZIL                         1             56      57  whz              
Birth       MAL-ED       BRAZIL                         0              1      57  whz              
Birth       MAL-ED       INDIA                          1             14      39  whz              
Birth       MAL-ED       INDIA                          0             25      39  whz              
Birth       MAL-ED       NEPAL                          1             24      25  whz              
Birth       MAL-ED       NEPAL                          0              1      25  whz              
Birth       MAL-ED       PERU                           1             50     203  whz              
Birth       MAL-ED       PERU                           0            153     203  whz              
Birth       MAL-ED       SOUTH AFRICA                   1              0      94  whz              
Birth       MAL-ED       SOUTH AFRICA                   0             94      94  whz              
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     110  whz              
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            110     110  whz              
Birth       NIH-Birth    BANGLADESH                     1            222     575  whz              
Birth       NIH-Birth    BANGLADESH                     0            353     575  whz              
Birth       NIH-Crypto   BANGLADESH                     1            610     696  whz              
Birth       NIH-Crypto   BANGLADESH                     0             86     696  whz              
Birth       PROVIDE      BANGLADESH                     1             43      45  whz              
Birth       PROVIDE      BANGLADESH                     0              2      45  whz              
6 months    COHORTS      GUATEMALA                      1             67     658  whz              
6 months    COHORTS      GUATEMALA                      0            591     658  whz              
6 months    COHORTS      INDIA                          1           1879    4964  whz              
6 months    COHORTS      INDIA                          0           3085    4964  whz              
6 months    COHORTS      PHILIPPINES                    1            143    1083  whz              
6 months    COHORTS      PHILIPPINES                    0            940    1083  whz              
6 months    CONTENT      PERU                           1            201     215  whz              
6 months    CONTENT      PERU                           0             14     215  whz              
6 months    JiVitA-3     BANGLADESH                     1          12015   16773  whz              
6 months    JiVitA-3     BANGLADESH                     0           4758   16773  whz              
6 months    JiVitA-4     BANGLADESH                     1           3734    4827  whz              
6 months    JiVitA-4     BANGLADESH                     0           1093    4827  whz              
6 months    LCNI-5       MALAWI                         1              3     812  whz              
6 months    LCNI-5       MALAWI                         0            809     812  whz              
6 months    MAL-ED       BANGLADESH                     1            202     240  whz              
6 months    MAL-ED       BANGLADESH                     0             38     240  whz              
6 months    MAL-ED       BRAZIL                         1            205     209  whz              
6 months    MAL-ED       BRAZIL                         0              4     209  whz              
6 months    MAL-ED       INDIA                          1            108     233  whz              
6 months    MAL-ED       INDIA                          0            125     233  whz              
6 months    MAL-ED       NEPAL                          1            235     236  whz              
6 months    MAL-ED       NEPAL                          0              1     236  whz              
6 months    MAL-ED       PERU                           1             65     263  whz              
6 months    MAL-ED       PERU                           0            198     263  whz              
6 months    MAL-ED       SOUTH AFRICA                   1              4     244  whz              
6 months    MAL-ED       SOUTH AFRICA                   0            240     244  whz              
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     238  whz              
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            238     238  whz              
6 months    NIH-Birth    BANGLADESH                     1            205     537  whz              
6 months    NIH-Birth    BANGLADESH                     0            332     537  whz              
6 months    NIH-Crypto   BANGLADESH                     1            615     704  whz              
6 months    NIH-Crypto   BANGLADESH                     0             89     704  whz              
6 months    PROVIDE      BANGLADESH                     1             11      11  whz              
6 months    PROVIDE      BANGLADESH                     0              0      11  whz              
24 months   COHORTS      GUATEMALA                      1             77     903  whz              
24 months   COHORTS      GUATEMALA                      0            826     903  whz              
24 months   COHORTS      INDIA                          1           1457    3724  whz              
24 months   COHORTS      INDIA                          0           2267    3724  whz              
24 months   COHORTS      PHILIPPINES                    1            124     993  whz              
24 months   COHORTS      PHILIPPINES                    0            869     993  whz              
24 months   CONTENT      PERU                           1            151     164  whz              
24 months   CONTENT      PERU                           0             13     164  whz              
24 months   JiVitA-3     BANGLADESH                     1           6085    8593  whz              
24 months   JiVitA-3     BANGLADESH                     0           2508    8593  whz              
24 months   JiVitA-4     BANGLADESH                     1           3671    4730  whz              
24 months   JiVitA-4     BANGLADESH                     0           1059    4730  whz              
24 months   LCNI-5       MALAWI                         1              2     556  whz              
24 months   LCNI-5       MALAWI                         0            554     556  whz              
24 months   MAL-ED       BANGLADESH                     1            181     212  whz              
24 months   MAL-ED       BANGLADESH                     0             31     212  whz              
24 months   MAL-ED       BRAZIL                         1            166     169  whz              
24 months   MAL-ED       BRAZIL                         0              3     169  whz              
24 months   MAL-ED       INDIA                          1            104     225  whz              
24 months   MAL-ED       INDIA                          0            121     225  whz              
24 months   MAL-ED       NEPAL                          1            227     228  whz              
24 months   MAL-ED       NEPAL                          0              1     228  whz              
24 months   MAL-ED       PERU                           1             47     196  whz              
24 months   MAL-ED       PERU                           0            149     196  whz              
24 months   MAL-ED       SOUTH AFRICA                   1              4     235  whz              
24 months   MAL-ED       SOUTH AFRICA                   0            231     235  whz              
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     207  whz              
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            207     207  whz              
24 months   NIH-Birth    BANGLADESH                     1            170     428  whz              
24 months   NIH-Birth    BANGLADESH                     0            258     428  whz              
24 months   NIH-Crypto   BANGLADESH                     1            433     503  whz              
24 months   NIH-Crypto   BANGLADESH                     0             70     503  whz              
24 months   PROVIDE      BANGLADESH                     1              9       9  whz              
24 months   PROVIDE      BANGLADESH                     0              0       9  whz              


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
![](/tmp/d23be452-55f7-4fe0-84ca-ac27cb9d7ebe/54fed428-648d-4b0a-a096-c878ee6ae776/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d23be452-55f7-4fe0-84ca-ac27cb9d7ebe/54fed428-648d-4b0a-a096-c878ee6ae776/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d23be452-55f7-4fe0-84ca-ac27cb9d7ebe/54fed428-648d-4b0a-a096-c878ee6ae776/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     1                    NA                -1.2565821   -1.9489912   -0.5641730
Birth       COHORTS      GUATEMALA     0                    NA                -0.8874773   -1.0309193   -0.7440354
Birth       COHORTS      INDIA         1                    NA                -0.9630120   -1.0280714   -0.8979527
Birth       COHORTS      INDIA         0                    NA                -0.9813177   -1.0256834   -0.9369520
Birth       COHORTS      PHILIPPINES   1                    NA                -0.8078898   -1.0540457   -0.5617339
Birth       COHORTS      PHILIPPINES   0                    NA                -0.6730554   -0.7623066   -0.5838042
Birth       JiVitA-3     BANGLADESH    1                    NA                -0.7777559   -0.8015760   -0.7539357
Birth       JiVitA-3     BANGLADESH    0                    NA                -0.7853075   -0.8324178   -0.7381972
Birth       JiVitA-4     BANGLADESH    1                    NA                -0.6810581   -0.7403962   -0.6217201
Birth       JiVitA-4     BANGLADESH    0                    NA                -0.7358044   -0.8444131   -0.6271956
Birth       MAL-ED       BANGLADESH    1                    NA                -0.9887452   -1.1513156   -0.8261747
Birth       MAL-ED       BANGLADESH    0                    NA                -0.9034104   -1.2965667   -0.5102541
Birth       MAL-ED       INDIA         1                    NA                -0.9167262   -1.4426424   -0.3908099
Birth       MAL-ED       INDIA         0                    NA                -0.8253371   -1.1992602   -0.4514140
Birth       MAL-ED       PERU          1                    NA                -0.1549956   -0.3726901    0.0626989
Birth       MAL-ED       PERU          0                    NA                -0.0004852   -0.1538485    0.1528781
Birth       NIH-Birth    BANGLADESH    1                    NA                -1.3743536   -1.5439048   -1.2048024
Birth       NIH-Birth    BANGLADESH    0                    NA                -1.3336705   -1.4514023   -1.2159386
Birth       NIH-Crypto   BANGLADESH    1                    NA                -1.2276026   -1.3170091   -1.1381962
Birth       NIH-Crypto   BANGLADESH    0                    NA                -1.3325043   -1.6040803   -1.0609283
6 months    COHORTS      GUATEMALA     1                    NA                 0.4102275    0.0995836    0.7208714
6 months    COHORTS      GUATEMALA     0                    NA                 0.1406172    0.0478138    0.2334207
6 months    COHORTS      INDIA         1                    NA                -0.5990517   -0.6555468   -0.5425565
6 months    COHORTS      INDIA         0                    NA                -0.7649882   -0.8071114   -0.7228649
6 months    COHORTS      PHILIPPINES   1                    NA                -0.2260054   -0.5203611    0.0683503
6 months    COHORTS      PHILIPPINES   0                    NA                -0.2979368   -0.3741676   -0.2217060
6 months    CONTENT      PERU          1                    NA                 1.0717294    0.9488571    1.1946017
6 months    CONTENT      PERU          0                    NA                 0.9227050    0.5568556    1.2885543
6 months    JiVitA-3     BANGLADESH    1                    NA                -0.5868723   -0.6109955   -0.5627491
6 months    JiVitA-3     BANGLADESH    0                    NA                -0.6541131   -0.7031108   -0.6051155
6 months    JiVitA-4     BANGLADESH    1                    NA                -0.3756993   -0.4180757   -0.3333229
6 months    JiVitA-4     BANGLADESH    0                    NA                -0.5317190   -0.6344386   -0.4289993
6 months    MAL-ED       BANGLADESH    1                    NA                -0.1267376   -0.2678162    0.0143410
6 months    MAL-ED       BANGLADESH    0                    NA                -0.0877544   -0.4053051    0.2297963
6 months    MAL-ED       INDIA         1                    NA                -0.6882754   -0.8706036   -0.5059473
6 months    MAL-ED       INDIA         0                    NA                -0.7390854   -0.9179611   -0.5602096
6 months    MAL-ED       PERU          1                    NA                 1.0091679    0.7479508    1.2703850
6 months    MAL-ED       PERU          0                    NA                 1.0400297    0.8871754    1.1928839
6 months    NIH-Birth    BANGLADESH    1                    NA                -0.3408742   -0.4808175   -0.2009309
6 months    NIH-Birth    BANGLADESH    0                    NA                -0.5156621   -0.6333719   -0.3979523
6 months    NIH-Crypto   BANGLADESH    1                    NA                 0.0344762   -0.0491822    0.1181347
6 months    NIH-Crypto   BANGLADESH    0                    NA                 0.0358306   -0.2239431    0.2956043
24 months   COHORTS      GUATEMALA     1                    NA                -0.0325171   -0.2682898    0.2032556
24 months   COHORTS      GUATEMALA     0                    NA                -0.2971201   -0.3618458   -0.2323944
24 months   COHORTS      INDIA         1                    NA                -0.5972201   -0.6545116   -0.5399287
24 months   COHORTS      INDIA         0                    NA                -0.7095362   -0.7525260   -0.6665463
24 months   COHORTS      PHILIPPINES   1                    NA                -0.6654451   -0.9119237   -0.4189665
24 months   COHORTS      PHILIPPINES   0                    NA                -0.6949593   -0.7620627   -0.6278559
24 months   CONTENT      PERU          1                    NA                 0.5805232    0.4368244    0.7242219
24 months   CONTENT      PERU          0                    NA                 0.5104336    0.2643612    0.7565059
24 months   JiVitA-3     BANGLADESH    1                    NA                -1.2890864   -1.3175459   -1.2606270
24 months   JiVitA-3     BANGLADESH    0                    NA                -1.3534669   -1.4068542   -1.3000796
24 months   JiVitA-4     BANGLADESH    1                    NA                -1.2178473   -1.2545191   -1.1811755
24 months   JiVitA-4     BANGLADESH    0                    NA                -1.2731194   -1.3629945   -1.1832444
24 months   MAL-ED       BANGLADESH    1                    NA                -0.7706751   -0.9026807   -0.6386696
24 months   MAL-ED       BANGLADESH    0                    NA                -1.0751112   -1.4019636   -0.7482588
24 months   MAL-ED       INDIA         1                    NA                -0.8137385   -0.9951720   -0.6323051
24 months   MAL-ED       INDIA         0                    NA                -1.0584606   -1.2071964   -0.9097247
24 months   MAL-ED       PERU          1                    NA                 0.1079005   -0.1415453    0.3573462
24 months   MAL-ED       PERU          0                    NA                 0.0898645   -0.0546673    0.2343963
24 months   NIH-Birth    BANGLADESH    1                    NA                -0.8311248   -0.9770208   -0.6852289
24 months   NIH-Birth    BANGLADESH    0                    NA                -0.9673408   -1.0975208   -0.8371609
24 months   NIH-Crypto   BANGLADESH    1                    NA                -0.6277042   -0.7326154   -0.5227930
24 months   NIH-Crypto   BANGLADESH    0                    NA                -0.5401924   -0.7655900   -0.3147947


### Parameter: E(Y)


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     NA                   NA                -0.9294432   -1.0701697   -0.7887168
Birth       COHORTS      INDIA         NA                   NA                -0.9771733   -1.0119896   -0.9423570
Birth       COHORTS      PHILIPPINES   NA                   NA                -0.6841030   -0.7582767   -0.6099293
Birth       JiVitA-3     BANGLADESH    NA                   NA                -0.7777528   -0.7967725   -0.7587330
Birth       JiVitA-4     BANGLADESH    NA                   NA                -0.6882498   -0.7406539   -0.6358456
Birth       MAL-ED       BANGLADESH    NA                   NA                -0.9728358   -1.1217009   -0.8239707
Birth       MAL-ED       INDIA         NA                   NA                -0.9441026   -1.2397919   -0.6484132
Birth       MAL-ED       PERU          NA                   NA                -0.0381281   -0.1669868    0.0907307
Birth       NIH-Birth    BANGLADESH    NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto   BANGLADESH    NA                   NA                -1.2402802   -1.3249395   -1.1556208
6 months    COHORTS      GUATEMALA     NA                   NA                 0.1458511    0.0589571    0.2327450
6 months    COHORTS      INDIA         NA                   NA                -0.7104855   -0.7428053   -0.6781657
6 months    COHORTS      PHILIPPINES   NA                   NA                -0.2830286   -0.3471028   -0.2189545
6 months    CONTENT      PERU          NA                   NA                 1.0644279    0.9468682    1.1819876
6 months    JiVitA-3     BANGLADESH    NA                   NA                -0.5931476   -0.6127125   -0.5735828
6 months    JiVitA-4     BANGLADESH    NA                   NA                -0.3901595   -0.4274150   -0.3529041
6 months    MAL-ED       BANGLADESH    NA                   NA                -0.1333333   -0.2623761   -0.0042906
6 months    MAL-ED       INDIA         NA                   NA                -0.7018062   -0.8289790   -0.5746333
6 months    MAL-ED       PERU          NA                   NA                 1.0372972    0.9141109    1.1604836
6 months    NIH-Birth    BANGLADESH    NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto   BANGLADESH    NA                   NA                 0.0336790   -0.0458848    0.1132428
24 months   COHORTS      GUATEMALA     NA                   NA                -0.2861905   -0.3461594   -0.2262216
24 months   COHORTS      INDIA         NA                   NA                -0.6606874   -0.6938402   -0.6275347
24 months   COHORTS      PHILIPPINES   NA                   NA                -0.6564149   -0.7144543   -0.5983756
24 months   CONTENT      PERU          NA                   NA                 0.5902439    0.4560143    0.7244735
24 months   JiVitA-3     BANGLADESH    NA                   NA                -1.2970418   -1.3203361   -1.2737475
24 months   JiVitA-4     BANGLADESH    NA                   NA                -1.2231776   -1.2550332   -1.1913220
24 months   MAL-ED       BANGLADESH    NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED       INDIA         NA                   NA                -0.9490222   -1.0651720   -0.8328724
24 months   MAL-ED       PERU          NA                   NA                 0.0972406   -0.0271085    0.2215898
24 months   NIH-Birth    BANGLADESH    NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto   BANGLADESH    NA                   NA                -0.6115706   -0.7075788   -0.5155624


### Parameter: ATE


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS      GUATEMALA     0                    1                  0.3691048   -0.3376665    1.0758761
Birth       COHORTS      INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS      INDIA         0                    1                 -0.0183057   -0.0968741    0.0602627
Birth       COHORTS      PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS      PHILIPPINES   0                    1                  0.1348344   -0.1274781    0.3971469
Birth       JiVitA-3     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3     BANGLADESH    0                    1                 -0.0075516   -0.0584906    0.0433874
Birth       JiVitA-4     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4     BANGLADESH    0                    1                 -0.0547463   -0.1784500    0.0689575
Birth       MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       BANGLADESH    0                    1                  0.0853348   -0.3404172    0.5110868
Birth       MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       INDIA         0                    1                  0.0913891   -0.5689203    0.7516985
Birth       MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU          0                    1                  0.1545104   -0.1116746    0.4206953
Birth       NIH-Birth    BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH    0                    1                  0.0406831   -0.1658103    0.2471766
Birth       NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH    0                    1                 -0.1049017   -0.3920994    0.1822960
6 months    COHORTS      GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS      GUATEMALA     0                    1                 -0.2696103   -0.5934422    0.0542217
6 months    COHORTS      INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS      INDIA         0                    1                 -0.1659365   -0.2362644   -0.0956086
6 months    COHORTS      PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS      PHILIPPINES   0                    1                 -0.0719314   -0.3760166    0.2321538
6 months    CONTENT      PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    CONTENT      PERU          0                    1                 -0.1490244   -0.5357207    0.2376718
6 months    JiVitA-3     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3     BANGLADESH    0                    1                 -0.0672409   -0.1211610   -0.0133207
6 months    JiVitA-4     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4     BANGLADESH    0                    1                 -0.1560196   -0.2652992   -0.0467400
6 months    MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       BANGLADESH    0                    1                  0.0389832   -0.3080463    0.3860128
6 months    MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA         0                    1                 -0.0508099   -0.3083103    0.2066904
6 months    MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU          0                    1                  0.0308618   -0.2739849    0.3357084
6 months    NIH-Birth    BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH    0                    1                 -0.1747879   -0.3579778    0.0084020
6 months    NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH    0                    1                  0.0013544   -0.2715660    0.2742747
24 months   COHORTS      GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS      GUATEMALA     0                    1                 -0.2646029   -0.5092754   -0.0199305
24 months   COHORTS      INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS      INDIA         0                    1                 -0.1123160   -0.1829589   -0.0416731
24 months   COHORTS      PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS      PHILIPPINES   0                    1                 -0.0295142   -0.2850361    0.2260076
24 months   CONTENT      PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   CONTENT      PERU          0                    1                 -0.0700896   -0.3560966    0.2159173
24 months   JiVitA-3     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3     BANGLADESH    0                    1                 -0.0643805   -0.1223070   -0.0064539
24 months   JiVitA-4     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4     BANGLADESH    0                    1                 -0.0552722   -0.1503101    0.0397658
24 months   MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       BANGLADESH    0                    1                 -0.3044360   -0.6594146    0.0505425
24 months   MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA         0                    1                 -0.2447220   -0.4796870   -0.0097570
24 months   MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU          0                    1                 -0.0180360   -0.3046290    0.2685570
24 months   NIH-Birth    BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH    0                    1                 -0.1362160   -0.3317630    0.0593310
24 months   NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH    0                    1                  0.0875118   -0.1597497    0.3347734


### Parameter: PAR


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     1                    NA                 0.3271389   -0.3277570    0.9820348
Birth       COHORTS      INDIA         1                    NA                -0.0141612   -0.0673687    0.0390462
Birth       COHORTS      PHILIPPINES   1                    NA                 0.1237868   -0.1176993    0.3652728
Birth       JiVitA-3     BANGLADESH    1                    NA                 0.0000031   -0.0127035    0.0127097
Birth       JiVitA-4     BANGLADESH    1                    NA                -0.0071917   -0.0344156    0.0200322
Birth       MAL-ED       BANGLADESH    1                    NA                 0.0159093   -0.0512866    0.0831052
Birth       MAL-ED       INDIA         1                    NA                -0.0273764   -0.4712861    0.4165333
Birth       MAL-ED       PERU          1                    NA                 0.1168675   -0.0877009    0.3214360
Birth       NIH-Birth    BANGLADESH    1                    NA                 0.0244319   -0.1049424    0.1538062
Birth       NIH-Crypto   BANGLADESH    1                    NA                -0.0126775   -0.0474990    0.0221440
6 months    COHORTS      GUATEMALA     1                    NA                -0.2643764   -0.5669811    0.0382283
6 months    COHORTS      INDIA         1                    NA                -0.1114338   -0.1589245   -0.0639432
6 months    COHORTS      PHILIPPINES   1                    NA                -0.0570232   -0.3456627    0.2316162
6 months    CONTENT      PERU          1                    NA                -0.0073015   -0.0336399    0.0190370
6 months    JiVitA-3     BANGLADESH    1                    NA                -0.0062753   -0.0192203    0.0066696
6 months    JiVitA-4     BANGLADESH    1                    NA                -0.0144602   -0.0351897    0.0062693
6 months    MAL-ED       BANGLADESH    1                    NA                -0.0065957   -0.0623913    0.0491999
6 months    MAL-ED       INDIA         1                    NA                -0.0135307   -0.1520975    0.1250361
6 months    MAL-ED       PERU          1                    NA                 0.0281293   -0.2099663    0.2662249
6 months    NIH-Birth    BANGLADESH    1                    NA                -0.1065296   -0.2207868    0.0077277
6 months    NIH-Crypto   BANGLADESH    1                    NA                -0.0007973   -0.0335598    0.0319653
24 months   COHORTS      GUATEMALA     1                    NA                -0.2536733   -0.4848103   -0.0225364
24 months   COHORTS      INDIA         1                    NA                -0.0634673   -0.1095792   -0.0173554
24 months   COHORTS      PHILIPPINES   1                    NA                 0.0090302   -0.2324524    0.2505127
24 months   CONTENT      PERU          1                    NA                 0.0097207   -0.0206100    0.0400514
24 months   JiVitA-3     BANGLADESH    1                    NA                -0.0079554   -0.0238322    0.0079215
24 months   JiVitA-4     BANGLADESH    1                    NA                -0.0053303   -0.0233490    0.0126884
24 months   MAL-ED       BANGLADESH    1                    NA                -0.0486173   -0.1020098    0.0047751
24 months   MAL-ED       INDIA         1                    NA                -0.1352837   -0.2632934   -0.0072739
24 months   MAL-ED       PERU          1                    NA                -0.0106598   -0.2324654    0.2111457
24 months   NIH-Birth    BANGLADESH    1                    NA                -0.0804542   -0.1991089    0.0382005
24 months   NIH-Crypto   BANGLADESH    1                    NA                 0.0161336   -0.0181486    0.0504159
