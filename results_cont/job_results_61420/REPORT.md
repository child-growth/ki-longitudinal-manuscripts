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
![](/tmp/ba70bb15-f883-4933-abea-90f922a2ce4e/58f7f838-2805-4866-b154-526457d6c370/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ba70bb15-f883-4933-abea-90f922a2ce4e/58f7f838-2805-4866-b154-526457d6c370/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ba70bb15-f883-4933-abea-90f922a2ce4e/58f7f838-2805-4866-b154-526457d6c370/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     1                    NA                -1.2162990   -1.9179295   -0.5146684
Birth       COHORTS      GUATEMALA     0                    NA                -0.8976642   -1.0419729   -0.7533555
Birth       COHORTS      INDIA         1                    NA                -0.9733838   -1.0384480   -0.9083197
Birth       COHORTS      INDIA         0                    NA                -0.9840068   -1.0289192   -0.9390944
Birth       COHORTS      PHILIPPINES   1                    NA                -0.8059552   -1.0579489   -0.5539614
Birth       COHORTS      PHILIPPINES   0                    NA                -0.6786834   -0.7691824   -0.5881845
Birth       JiVitA-3     BANGLADESH    1                    NA                -0.7781711   -0.8024738   -0.7538684
Birth       JiVitA-3     BANGLADESH    0                    NA                -0.7823915   -0.8307995   -0.7339835
Birth       JiVitA-4     BANGLADESH    1                    NA                -0.6810076   -0.7400797   -0.6219356
Birth       JiVitA-4     BANGLADESH    0                    NA                -0.7271341   -0.8381161   -0.6161522
Birth       MAL-ED       BANGLADESH    1                    NA                -0.9837897   -1.1460847   -0.8214946
Birth       MAL-ED       BANGLADESH    0                    NA                -0.8970496   -1.2757503   -0.5183488
Birth       MAL-ED       INDIA         1                    NA                -1.1519703   -1.7340151   -0.5699256
Birth       MAL-ED       INDIA         0                    NA                -0.8283471   -1.2106335   -0.4460606
Birth       MAL-ED       PERU          1                    NA                -0.1402344   -0.3577994    0.0773305
Birth       MAL-ED       PERU          0                    NA                 0.0000150   -0.1554019    0.1554320
Birth       NIH-Birth    BANGLADESH    1                    NA                -1.3585088   -1.5236968   -1.1933209
Birth       NIH-Birth    BANGLADESH    0                    NA                -1.3513233   -1.4681160   -1.2345306
Birth       NIH-Crypto   BANGLADESH    1                    NA                -1.2265419   -1.3159504   -1.1371333
Birth       NIH-Crypto   BANGLADESH    0                    NA                -1.3528291   -1.6117497   -1.0939086
6 months    COHORTS      GUATEMALA     1                    NA                 0.4921642    0.1813523    0.8029761
6 months    COHORTS      GUATEMALA     0                    NA                 0.1365030    0.0422822    0.2307238
6 months    COHORTS      INDIA         1                    NA                -0.5976700   -0.6534819   -0.5418580
6 months    COHORTS      INDIA         0                    NA                -0.7630291   -0.8061644   -0.7198938
6 months    COHORTS      PHILIPPINES   1                    NA                -0.2225785   -0.5100638    0.0649068
6 months    COHORTS      PHILIPPINES   0                    NA                -0.2904681   -0.3668217   -0.2141145
6 months    CONTENT      PERU          1                    NA                 1.0715416    0.9485991    1.1944841
6 months    CONTENT      PERU          0                    NA                 0.8857963    0.4994758    1.2721168
6 months    JiVitA-3     BANGLADESH    1                    NA                -0.5861838   -0.6103314   -0.5620362
6 months    JiVitA-3     BANGLADESH    0                    NA                -0.6547531   -0.7038971   -0.6056091
6 months    JiVitA-4     BANGLADESH    1                    NA                -0.3765153   -0.4188733   -0.3341574
6 months    JiVitA-4     BANGLADESH    0                    NA                -0.5225247   -0.6303216   -0.4147278
6 months    MAL-ED       BANGLADESH    1                    NA                -0.1306891   -0.2715151    0.0101369
6 months    MAL-ED       BANGLADESH    0                    NA                -0.0859949   -0.4205963    0.2486066
6 months    MAL-ED       INDIA         1                    NA                -0.6541935   -0.8379961   -0.4703908
6 months    MAL-ED       INDIA         0                    NA                -0.7086015   -0.8876974   -0.5295056
6 months    MAL-ED       PERU          1                    NA                 0.9969706    0.7188551    1.2750861
6 months    MAL-ED       PERU          0                    NA                 1.0320429    0.8780573    1.1860285
6 months    NIH-Birth    BANGLADESH    1                    NA                -0.3513430   -0.4985766   -0.2041094
6 months    NIH-Birth    BANGLADESH    0                    NA                -0.5177021   -0.6365128   -0.3988915
6 months    NIH-Crypto   BANGLADESH    1                    NA                 0.0362330   -0.0472374    0.1197034
6 months    NIH-Crypto   BANGLADESH    0                    NA                 0.0104581   -0.2466750    0.2675912
24 months   COHORTS      GUATEMALA     1                    NA                -0.1162755   -0.3616059    0.1290549
24 months   COHORTS      GUATEMALA     0                    NA                -0.3018413   -0.3653951   -0.2382875
24 months   COHORTS      INDIA         1                    NA                -0.5971029   -0.6534693   -0.5407365
24 months   COHORTS      INDIA         0                    NA                -0.7046860   -0.7476436   -0.6617284
24 months   COHORTS      PHILIPPINES   1                    NA                -0.6577669   -0.8985897   -0.4169441
24 months   COHORTS      PHILIPPINES   0                    NA                -0.6924548   -0.7606289   -0.6242808
24 months   CONTENT      PERU          1                    NA                 0.5799845    0.4358333    0.7241358
24 months   CONTENT      PERU          0                    NA                 0.5134770    0.2711864    0.7557675
24 months   JiVitA-3     BANGLADESH    1                    NA                -1.2897781   -1.3190842   -1.2604720
24 months   JiVitA-3     BANGLADESH    0                    NA                -1.3344128   -1.3866621   -1.2821634
24 months   JiVitA-4     BANGLADESH    1                    NA                -1.2166391   -1.2532447   -1.1800335
24 months   JiVitA-4     BANGLADESH    0                    NA                -1.2749435   -1.3630833   -1.1868037
24 months   MAL-ED       BANGLADESH    1                    NA                -0.7748439   -0.9059534   -0.6437344
24 months   MAL-ED       BANGLADESH    0                    NA                -1.0612122   -1.3697601   -0.7526643
24 months   MAL-ED       INDIA         1                    NA                -0.8289502   -1.0100580   -0.6478424
24 months   MAL-ED       INDIA         0                    NA                -1.0629372   -1.2120417   -0.9138327
24 months   MAL-ED       PERU          1                    NA                 0.1161954   -0.1598097    0.3922006
24 months   MAL-ED       PERU          0                    NA                 0.0945585   -0.0475499    0.2366668
24 months   NIH-Birth    BANGLADESH    1                    NA                -0.8747588   -1.0195265   -0.7299912
24 months   NIH-Birth    BANGLADESH    0                    NA                -0.9265002   -1.0592094   -0.7937909
24 months   NIH-Crypto   BANGLADESH    1                    NA                -0.6258298   -0.7309739   -0.5206858
24 months   NIH-Crypto   BANGLADESH    0                    NA                -0.4902077   -0.7237029   -0.2567126


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
Birth       COHORTS      GUATEMALA     0                    1                  0.3186348   -0.3955542    1.0328238
Birth       COHORTS      INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS      INDIA         0                    1                 -0.0106229   -0.0895288    0.0682829
Birth       COHORTS      PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS      PHILIPPINES   0                    1                  0.1272717   -0.1406499    0.3951933
Birth       JiVitA-3     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3     BANGLADESH    0                    1                 -0.0042204   -0.0571473    0.0487066
Birth       JiVitA-4     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4     BANGLADESH    0                    1                 -0.0461265   -0.1718414    0.0795884
Birth       MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       BANGLADESH    0                    1                  0.0867401   -0.3252026    0.4986828
Birth       MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       INDIA         0                    1                  0.3236233   -0.3783437    1.0255902
Birth       MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU          0                    1                  0.1402494   -0.1261397    0.4066385
Birth       NIH-Birth    BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH    0                    1                  0.0071856   -0.1953607    0.2097318
Birth       NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH    0                    1                 -0.1262872   -0.4002108    0.1476364
6 months    COHORTS      GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS      GUATEMALA     0                    1                 -0.3556612   -0.6798500   -0.0314723
6 months    COHORTS      INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS      INDIA         0                    1                 -0.1653592   -0.2357398   -0.0949786
6 months    COHORTS      PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS      PHILIPPINES   0                    1                 -0.0678896   -0.3656035    0.2298243
6 months    CONTENT      PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    CONTENT      PERU          0                    1                 -0.1857453   -0.5921732    0.2206826
6 months    JiVitA-3     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3     BANGLADESH    0                    1                 -0.0685693   -0.1224504   -0.0146881
6 months    JiVitA-4     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4     BANGLADESH    0                    1                 -0.1460094   -0.2603065   -0.0317122
6 months    MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       BANGLADESH    0                    1                  0.0446942   -0.3163732    0.4057616
6 months    MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA         0                    1                 -0.0544081   -0.3123621    0.2035460
6 months    MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU          0                    1                  0.0350723   -0.2847898    0.3549344
6 months    NIH-Birth    BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH    0                    1                 -0.1663591   -0.3559693    0.0232510
6 months    NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH    0                    1                 -0.0257749   -0.2960652    0.2445155
24 months   COHORTS      GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS      GUATEMALA     0                    1                 -0.1855658   -0.4390259    0.0678943
24 months   COHORTS      INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS      INDIA         0                    1                 -0.1075831   -0.1774309   -0.0377353
24 months   COHORTS      PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS      PHILIPPINES   0                    1                 -0.0346879   -0.2853783    0.2160024
24 months   CONTENT      PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   CONTENT      PERU          0                    1                 -0.0665076   -0.3490195    0.2160044
24 months   JiVitA-3     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3     BANGLADESH    0                    1                 -0.0446347   -0.1022911    0.0130218
24 months   JiVitA-4     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4     BANGLADESH    0                    1                 -0.0583044   -0.1517106    0.0351019
24 months   MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       BANGLADESH    0                    1                 -0.2863683   -0.6228908    0.0501542
24 months   MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA         0                    1                 -0.2339871   -0.4690755    0.0011014
24 months   MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU          0                    1                 -0.0216370   -0.3318713    0.2885974
24 months   NIH-Birth    BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH    0                    1                 -0.0517413   -0.2482455    0.1447628
24 months   NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH    0                    1                  0.1356221   -0.1200126    0.3912569


### Parameter: PAR


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     1                    NA                 0.2868558   -0.3773947    0.9511062
Birth       COHORTS      INDIA         1                    NA                -0.0037894   -0.0569556    0.0493767
Birth       COHORTS      PHILIPPINES   1                    NA                 0.1218521   -0.1245014    0.3682057
Birth       JiVitA-3     BANGLADESH    1                    NA                 0.0004183   -0.0127742    0.0136109
Birth       JiVitA-4     BANGLADESH    1                    NA                -0.0072422   -0.0341855    0.0197012
Birth       MAL-ED       BANGLADESH    1                    NA                 0.0109538   -0.0558648    0.0777725
Birth       MAL-ED       INDIA         1                    NA                 0.2078678   -0.2665425    0.6822780
Birth       MAL-ED       PERU          1                    NA                 0.1021063   -0.1004720    0.3046847
Birth       NIH-Birth    BANGLADESH    1                    NA                 0.0085871   -0.1167654    0.1339396
Birth       NIH-Crypto   BANGLADESH    1                    NA                -0.0137383   -0.0477131    0.0202366
6 months    COHORTS      GUATEMALA     1                    NA                -0.3463131   -0.6499814   -0.0426448
6 months    COHORTS      INDIA         1                    NA                -0.1128155   -0.1597813   -0.0658497
6 months    COHORTS      PHILIPPINES   1                    NA                -0.0604501   -0.3425258    0.2216255
6 months    CONTENT      PERU          1                    NA                -0.0071137   -0.0332432    0.0190158
6 months    JiVitA-3     BANGLADESH    1                    NA                -0.0069638   -0.0199586    0.0060310
6 months    JiVitA-4     BANGLADESH    1                    NA                -0.0136442   -0.0343040    0.0070156
6 months    MAL-ED       BANGLADESH    1                    NA                -0.0026443   -0.0578524    0.0525639
6 months    MAL-ED       INDIA         1                    NA                -0.0476127   -0.1868496    0.0916242
6 months    MAL-ED       PERU          1                    NA                 0.0403266   -0.2129841    0.2936374
6 months    NIH-Birth    BANGLADESH    1                    NA                -0.0960608   -0.2161780    0.0240564
6 months    NIH-Crypto   BANGLADESH    1                    NA                -0.0025540   -0.0352660    0.0301580
24 months   COHORTS      GUATEMALA     1                    NA                -0.1699150   -0.4110945    0.0712646
24 months   COHORTS      INDIA         1                    NA                -0.0635845   -0.1088750   -0.0182941
24 months   COHORTS      PHILIPPINES   1                    NA                 0.0013520   -0.2349003    0.2376042
24 months   CONTENT      PERU          1                    NA                 0.0102594   -0.0202918    0.0408106
24 months   JiVitA-3     BANGLADESH    1                    NA                -0.0072637   -0.0242031    0.0096758
24 months   JiVitA-4     BANGLADESH    1                    NA                -0.0065385   -0.0243460    0.0112690
24 months   MAL-ED       BANGLADESH    1                    NA                -0.0444486   -0.0965839    0.0076868
24 months   MAL-ED       INDIA         1                    NA                -0.1200721   -0.2479279    0.0077838
24 months   MAL-ED       PERU          1                    NA                -0.0189548   -0.2647552    0.2268456
24 months   NIH-Birth    BANGLADESH    1                    NA                -0.0368202   -0.1553560    0.0817156
24 months   NIH-Crypto   BANGLADESH    1                    NA                 0.0142593   -0.0202490    0.0487676
