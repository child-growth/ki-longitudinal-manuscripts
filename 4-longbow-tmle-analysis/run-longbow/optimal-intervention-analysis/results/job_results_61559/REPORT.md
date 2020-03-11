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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** perdiar24

**Adjustment Set:**

* arm
* sex
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* vagbrth
* hdlvry
* W_birthwt
* W_birthlen
* single
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_vagbrth
* delta_hdlvry
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid         country                        perdiar24    n_cell      n
----------  --------------  -----------------------------  ----------  -------  -----
Birth       CMIN            BANGLADESH                     0%               12     26
Birth       CMIN            BANGLADESH                     (0%, 5%]          4     26
Birth       CMIN            BANGLADESH                     >5%              10     26
Birth       CONTENT         PERU                           0%                0      2
Birth       CONTENT         PERU                           (0%, 5%]          1      2
Birth       CONTENT         PERU                           >5%               1      2
Birth       EE              PAKISTAN                       0%              161    240
Birth       EE              PAKISTAN                       (0%, 5%]         79    240
Birth       EE              PAKISTAN                       >5%               0    240
Birth       JiVitA-4        BANGLADESH                     0%               76   2823
Birth       JiVitA-4        BANGLADESH                     (0%, 5%]       2449   2823
Birth       JiVitA-4        BANGLADESH                     >5%             298   2823
Birth       MAL-ED          BANGLADESH                     0%               18    231
Birth       MAL-ED          BANGLADESH                     (0%, 5%]        131    231
Birth       MAL-ED          BANGLADESH                     >5%              82    231
Birth       MAL-ED          BRAZIL                         0%               34     65
Birth       MAL-ED          BRAZIL                         (0%, 5%]         29     65
Birth       MAL-ED          BRAZIL                         >5%               2     65
Birth       MAL-ED          INDIA                          0%                5     47
Birth       MAL-ED          INDIA                          (0%, 5%]         33     47
Birth       MAL-ED          INDIA                          >5%               9     47
Birth       MAL-ED          NEPAL                          0%                2     27
Birth       MAL-ED          NEPAL                          (0%, 5%]         19     27
Birth       MAL-ED          NEPAL                          >5%               6     27
Birth       MAL-ED          PERU                           0%               21    233
Birth       MAL-ED          PERU                           (0%, 5%]         89    233
Birth       MAL-ED          PERU                           >5%             123    233
Birth       MAL-ED          SOUTH AFRICA                   0%               42    113
Birth       MAL-ED          SOUTH AFRICA                   (0%, 5%]         70    113
Birth       MAL-ED          SOUTH AFRICA                   >5%               1    113
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9    125
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         85    125
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              31    125
Birth       NIH-Birth       BANGLADESH                     0%               51    605
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]        345    605
Birth       NIH-Birth       BANGLADESH                     >5%             209    605
Birth       NIH-Crypto      BANGLADESH                     0%              151    732
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]        386    732
Birth       NIH-Crypto      BANGLADESH                     >5%             195    732
Birth       PROVIDE         BANGLADESH                     0%               55    539
Birth       PROVIDE         BANGLADESH                     (0%, 5%]        327    539
Birth       PROVIDE         BANGLADESH                     >5%             157    539
6 months    CMIN            BANGLADESH                     0%                2    243
6 months    CMIN            BANGLADESH                     (0%, 5%]        112    243
6 months    CMIN            BANGLADESH                     >5%             129    243
6 months    CONTENT         PERU                           0%                6    215
6 months    CONTENT         PERU                           (0%, 5%]        142    215
6 months    CONTENT         PERU                           >5%              67    215
6 months    EE              PAKISTAN                       0%              256    373
6 months    EE              PAKISTAN                       (0%, 5%]        117    373
6 months    EE              PAKISTAN                       >5%               0    373
6 months    Guatemala BSC   GUATEMALA                      0%               29    299
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]         70    299
6 months    Guatemala BSC   GUATEMALA                      >5%             200    299
6 months    JiVitA-4        BANGLADESH                     0%              156   4831
6 months    JiVitA-4        BANGLADESH                     (0%, 5%]       4153   4831
6 months    JiVitA-4        BANGLADESH                     >5%             522   4831
6 months    MAL-ED          BANGLADESH                     0%                6    241
6 months    MAL-ED          BANGLADESH                     (0%, 5%]        142    241
6 months    MAL-ED          BANGLADESH                     >5%              93    241
6 months    MAL-ED          BRAZIL                         0%              106    209
6 months    MAL-ED          BRAZIL                         (0%, 5%]        101    209
6 months    MAL-ED          BRAZIL                         >5%               2    209
6 months    MAL-ED          INDIA                          0%                3    236
6 months    MAL-ED          INDIA                          (0%, 5%]        191    236
6 months    MAL-ED          INDIA                          >5%              42    236
6 months    MAL-ED          NEPAL                          0%               14    236
6 months    MAL-ED          NEPAL                          (0%, 5%]        143    236
6 months    MAL-ED          NEPAL                          >5%              79    236
6 months    MAL-ED          PERU                           0%                7    273
6 months    MAL-ED          PERU                           (0%, 5%]        109    273
6 months    MAL-ED          PERU                           >5%             157    273
6 months    MAL-ED          SOUTH AFRICA                   0%               78    254
6 months    MAL-ED          SOUTH AFRICA                   (0%, 5%]        174    254
6 months    MAL-ED          SOUTH AFRICA                   >5%               2    254
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9    247
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        177    247
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              61    247
6 months    NIH-Birth       BANGLADESH                     0%               15    537
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]        339    537
6 months    NIH-Birth       BANGLADESH                     >5%             183    537
6 months    NIH-Crypto      BANGLADESH                     0%              134    715
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]        386    715
6 months    NIH-Crypto      BANGLADESH                     >5%             195    715
6 months    PROVIDE         BANGLADESH                     0%               12    604
6 months    PROVIDE         BANGLADESH                     (0%, 5%]        409    604
6 months    PROVIDE         BANGLADESH                     >5%             183    604
6 months    SAS-FoodSuppl   INDIA                          0%               73    380
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]         46    380
6 months    SAS-FoodSuppl   INDIA                          >5%             261    380
24 months   CMIN            BANGLADESH                     0%                3    242
24 months   CMIN            BANGLADESH                     (0%, 5%]        114    242
24 months   CMIN            BANGLADESH                     >5%             125    242
24 months   CONTENT         PERU                           0%                4    164
24 months   CONTENT         PERU                           (0%, 5%]        108    164
24 months   CONTENT         PERU                           >5%              52    164
24 months   EE              PAKISTAN                       0%              115    167
24 months   EE              PAKISTAN                       (0%, 5%]         52    167
24 months   EE              PAKISTAN                       >5%               0    167
24 months   JiVitA-4        BANGLADESH                     0%              165   4752
24 months   JiVitA-4        BANGLADESH                     (0%, 5%]       4094   4752
24 months   JiVitA-4        BANGLADESH                     >5%             493   4752
24 months   MAL-ED          BANGLADESH                     0%                6    212
24 months   MAL-ED          BANGLADESH                     (0%, 5%]        130    212
24 months   MAL-ED          BANGLADESH                     >5%              76    212
24 months   MAL-ED          BRAZIL                         0%               76    169
24 months   MAL-ED          BRAZIL                         (0%, 5%]         91    169
24 months   MAL-ED          BRAZIL                         >5%               2    169
24 months   MAL-ED          INDIA                          0%                3    227
24 months   MAL-ED          INDIA                          (0%, 5%]        183    227
24 months   MAL-ED          INDIA                          >5%              41    227
24 months   MAL-ED          NEPAL                          0%               12    228
24 months   MAL-ED          NEPAL                          (0%, 5%]        140    228
24 months   MAL-ED          NEPAL                          >5%              76    228
24 months   MAL-ED          PERU                           0%                1    201
24 months   MAL-ED          PERU                           (0%, 5%]         84    201
24 months   MAL-ED          PERU                           >5%             116    201
24 months   MAL-ED          SOUTH AFRICA                   0%               71    238
24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]        166    238
24 months   MAL-ED          SOUTH AFRICA                   >5%               1    238
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        156    214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              52    214
24 months   NIH-Birth       BANGLADESH                     0%                5    429
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]        279    429
24 months   NIH-Birth       BANGLADESH                     >5%             145    429
24 months   NIH-Crypto      BANGLADESH                     0%              123    514
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]        276    514
24 months   NIH-Crypto      BANGLADESH                     >5%             115    514
24 months   PROVIDE         BANGLADESH                     0%                9    578
24 months   PROVIDE         BANGLADESH                     (0%, 5%]        395    578
24 months   PROVIDE         BANGLADESH                     >5%             174    578


The following strata were considered:

* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
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

* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/a00ed142-0e53-49d1-a504-d73dc6f046bd/14cf54f4-d9c6-4183-a190-203d3ed740df/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-4        BANGLADESH                     optimal              observed          -1.5866687   -1.7315610   -1.4417765
Birth       MAL-ED          BANGLADESH                     optimal              observed          -0.9658782   -1.1325514   -0.7992051
Birth       MAL-ED          INDIA                          optimal              observed          -1.0163659   -2.0930722    0.0603405
Birth       MAL-ED          PERU                           optimal              observed          -0.7329564   -1.0504396   -0.4154732
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.8752565   -1.1426220   -0.6078911
Birth       NIH-Birth       BANGLADESH                     optimal              observed          -0.9367189   -1.0618926   -0.8115452
Birth       NIH-Crypto      BANGLADESH                     optimal              observed          -0.9724917   -1.1276993   -0.8172842
Birth       PROVIDE         BANGLADESH                     optimal              observed          -0.7970183   -0.9816198   -0.6124169
6 months    CONTENT         PERU                           optimal              observed          -0.1603321   -0.3794256    0.0587614
6 months    Guatemala BSC   GUATEMALA                      optimal              observed          -1.5418142   -1.7554054   -1.3282230
6 months    JiVitA-4        BANGLADESH                     optimal              observed          -1.4210532   -1.5488625   -1.2932440
6 months    MAL-ED          BANGLADESH                     optimal              observed          -0.9838795   -1.5670782   -0.4006808
6 months    MAL-ED          NEPAL                          optimal              observed          -0.3459087   -0.8565763    0.1647589
6 months    MAL-ED          PERU                           optimal              observed          -1.0799235   -1.7628836   -0.3969634
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.6826768   -2.0577210   -1.3076325
6 months    NIH-Birth       BANGLADESH                     optimal              observed          -1.4766882   -1.6050868   -1.3482897
6 months    NIH-Crypto      BANGLADESH                     optimal              observed          -1.0829941   -1.2159423   -0.9500458
6 months    PROVIDE         BANGLADESH                     optimal              observed          -1.1990360   -1.3243023   -1.0737698
6 months    SAS-FoodSuppl   INDIA                          optimal              observed          -1.8720878   -2.1357002   -1.6084754
24 months   JiVitA-4        BANGLADESH                     optimal              observed          -1.8833462   -2.0606336   -1.7060588
24 months   MAL-ED          BANGLADESH                     optimal              observed          -1.7117991   -2.2882518   -1.1353465
24 months   MAL-ED          NEPAL                          optimal              observed          -1.1486833   -1.7469384   -0.5504281
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.7537381   -2.9331157   -2.5743604
24 months   NIH-Birth       BANGLADESH                     optimal              observed          -1.6941908   -1.8357205   -1.5526611
24 months   NIH-Crypto      BANGLADESH                     optimal              observed          -1.4256660   -1.6077153   -1.2436167
24 months   PROVIDE         BANGLADESH                     optimal              observed          -1.6320775   -1.7332697   -1.5308853


### Parameter: E(Y)


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-4        BANGLADESH                     observed             observed          -1.5232908   -1.5723277   -1.4742539
Birth       MAL-ED          BANGLADESH                     observed             observed          -1.1180952   -1.2525408   -0.9836496
Birth       MAL-ED          INDIA                          observed             observed          -1.2036170   -1.4976814   -0.9095527
Birth       MAL-ED          PERU                           observed             observed          -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1556000   -1.3655361   -0.9456639
Birth       NIH-Birth       BANGLADESH                     observed             observed          -0.9314050   -1.0202164   -0.8425936
Birth       NIH-Crypto      BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       PROVIDE         BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
6 months    CONTENT         PERU                           observed             observed          -0.2785256   -0.4098735   -0.1471776
6 months    Guatemala BSC   GUATEMALA                      observed             observed          -1.5619008   -1.6727702   -1.4510313
6 months    JiVitA-4        BANGLADESH                     observed             observed          -1.3447940   -1.3820261   -1.3075620
6 months    MAL-ED          BANGLADESH                     observed             observed          -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED          NEPAL                          observed             observed          -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED          PERU                           observed             observed          -1.3236661   -1.4316775   -1.2156546
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Birth       BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    PROVIDE         BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
24 months   JiVitA-4        BANGLADESH                     observed             observed          -1.7807218   -1.8162478   -1.7451958
24 months   MAL-ED          BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED          NEPAL                          observed             observed          -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Birth       BANGLADESH                     observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto      BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   PROVIDE         BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023


### Parameter: PAR


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-4        BANGLADESH                     optimal              observed           0.0633779   -0.0717967    0.1985525
Birth       MAL-ED          BANGLADESH                     optimal              observed          -0.1522170   -0.2728164   -0.0316176
Birth       MAL-ED          INDIA                          optimal              observed          -0.1872512   -1.2281201    0.8536178
Birth       MAL-ED          PERU                           optimal              observed          -0.1498333   -0.4470725    0.1474059
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2803435   -0.5641637    0.0034767
Birth       NIH-Birth       BANGLADESH                     optimal              observed           0.0053140   -0.0929241    0.1035521
Birth       NIH-Crypto      BANGLADESH                     optimal              observed           0.0629972   -0.0735442    0.1995386
Birth       PROVIDE         BANGLADESH                     optimal              observed          -0.0880837   -0.2561788    0.0800114
6 months    CONTENT         PERU                           optimal              observed          -0.1181934   -0.3069494    0.0705625
6 months    Guatemala BSC   GUATEMALA                      optimal              observed          -0.0200866   -0.2199468    0.1797736
6 months    JiVitA-4        BANGLADESH                     optimal              observed           0.0762592   -0.0447299    0.1972483
6 months    MAL-ED          BANGLADESH                     optimal              observed          -0.2211136   -0.8018043    0.3595771
6 months    MAL-ED          NEPAL                          optimal              observed          -0.2156732   -0.7097029    0.2783565
6 months    MAL-ED          PERU                           optimal              observed          -0.2437426   -0.9191690    0.4316839
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3139318   -0.0389291    0.6667927
6 months    NIH-Birth       BANGLADESH                     optimal              observed           0.0693062   -0.0248461    0.1634585
6 months    NIH-Crypto      BANGLADESH                     optimal              observed          -0.1156843   -0.2344815    0.0031130
6 months    PROVIDE         BANGLADESH                     optimal              observed           0.1073445    0.0078025    0.2068865
6 months    SAS-FoodSuppl   INDIA                          optimal              observed          -0.0265964   -0.2703052    0.2171124
24 months   JiVitA-4        BANGLADESH                     optimal              observed           0.1026244   -0.0709303    0.2761791
24 months   MAL-ED          BANGLADESH                     optimal              observed          -0.2665971   -0.8431259    0.3099317
24 months   MAL-ED          NEPAL                          optimal              observed          -0.1589045   -0.7463659    0.4285570
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1081773   -0.0131895    0.2295441
24 months   NIH-Birth       BANGLADESH                     optimal              observed          -0.5248671   -0.6972823   -0.3524519
24 months   NIH-Crypto      BANGLADESH                     optimal              observed          -0.0155986   -0.1774617    0.1462645
24 months   PROVIDE         BANGLADESH                     optimal              observed           0.0296554   -0.0385914    0.0979021
