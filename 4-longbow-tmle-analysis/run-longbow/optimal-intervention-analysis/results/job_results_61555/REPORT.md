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

**Intervention Variable:** impfloor

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
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        impfloor    n_cell       n
----------  ---------------  -----------------------------  ---------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1               72      72
Birth       CMC-V-BCS-2002   INDIA                          0                0      72
Birth       CONTENT          PERU                           1                2       2
Birth       CONTENT          PERU                           0                0       2
Birth       GMS-Nepal        NEPAL                          1              100     544
Birth       GMS-Nepal        NEPAL                          0              444     544
Birth       IRC              INDIA                          1              287     287
Birth       IRC              INDIA                          0                0     287
Birth       JiVitA-3         BANGLADESH                     1             1394   22399
Birth       JiVitA-3         BANGLADESH                     0            21005   22399
Birth       JiVitA-4         BANGLADESH                     1              307    2820
Birth       JiVitA-4         BANGLADESH                     0             2513    2820
Birth       MAL-ED           BANGLADESH                     1              196     213
Birth       MAL-ED           BANGLADESH                     0               17     213
Birth       MAL-ED           BRAZIL                         1               58      60
Birth       MAL-ED           BRAZIL                         0                2      60
Birth       MAL-ED           INDIA                          1               35      41
Birth       MAL-ED           INDIA                          0                6      41
Birth       MAL-ED           NEPAL                          1                9      25
Birth       MAL-ED           NEPAL                          0               16      25
Birth       MAL-ED           PERU                           1               39     215
Birth       MAL-ED           PERU                           0              176     215
Birth       MAL-ED           SOUTH AFRICA                   1               87      96
Birth       MAL-ED           SOUTH AFRICA                   0                9      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                7     119
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              112     119
Birth       NIH-Birth        BANGLADESH                     1              533     605
Birth       NIH-Birth        BANGLADESH                     0               72     605
Birth       NIH-Crypto       BANGLADESH                     1              558     732
Birth       NIH-Crypto       BANGLADESH                     0              174     732
Birth       PROVIDE          BANGLADESH                     1              491     539
Birth       PROVIDE          BANGLADESH                     0               48     539
6 months    CMC-V-BCS-2002   INDIA                          1              257     257
6 months    CMC-V-BCS-2002   INDIA                          0                0     257
6 months    CONTENT          PERU                           1              201     215
6 months    CONTENT          PERU                           0               14     215
6 months    GMS-Nepal        NEPAL                          1               78     441
6 months    GMS-Nepal        NEPAL                          0              363     441
6 months    IRC              INDIA                          1              303     303
6 months    IRC              INDIA                          0                0     303
6 months    JiVitA-3         BANGLADESH                     1             1465   16773
6 months    JiVitA-3         BANGLADESH                     0            15308   16773
6 months    JiVitA-4         BANGLADESH                     1              590    4824
6 months    JiVitA-4         BANGLADESH                     0             4234    4824
6 months    MAL-ED           BANGLADESH                     1              221     240
6 months    MAL-ED           BANGLADESH                     0               19     240
6 months    MAL-ED           BRAZIL                         1              207     209
6 months    MAL-ED           BRAZIL                         0                2     209
6 months    MAL-ED           INDIA                          1              220     235
6 months    MAL-ED           INDIA                          0               15     235
6 months    MAL-ED           NEPAL                          1              103     229
6 months    MAL-ED           NEPAL                          0              126     229
6 months    MAL-ED           PERU                           1               58     270
6 months    MAL-ED           PERU                           0              212     270
6 months    MAL-ED           SOUTH AFRICA                   1              229     249
6 months    MAL-ED           SOUTH AFRICA                   0               20     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               14     245
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              231     245
6 months    NIH-Birth        BANGLADESH                     1              477     535
6 months    NIH-Birth        BANGLADESH                     0               58     535
6 months    NIH-Crypto       BANGLADESH                     1              537     715
6 months    NIH-Crypto       BANGLADESH                     0              178     715
6 months    PROVIDE          BANGLADESH                     1              557     604
6 months    PROVIDE          BANGLADESH                     0               47     604
24 months   CMC-V-BCS-2002   INDIA                          1              259     259
24 months   CMC-V-BCS-2002   INDIA                          0                0     259
24 months   CONTENT          PERU                           1              154     164
24 months   CONTENT          PERU                           0               10     164
24 months   GMS-Nepal        NEPAL                          1               72     374
24 months   GMS-Nepal        NEPAL                          0              302     374
24 months   IRC              INDIA                          1              305     305
24 months   IRC              INDIA                          0                0     305
24 months   JiVitA-3         BANGLADESH                     1              674    8609
24 months   JiVitA-3         BANGLADESH                     0             7935    8609
24 months   JiVitA-4         BANGLADESH                     1              566    4746
24 months   JiVitA-4         BANGLADESH                     0             4180    4746
24 months   MAL-ED           BANGLADESH                     1              195     212
24 months   MAL-ED           BANGLADESH                     0               17     212
24 months   MAL-ED           BRAZIL                         1              167     169
24 months   MAL-ED           BRAZIL                         0                2     169
24 months   MAL-ED           INDIA                          1              212     227
24 months   MAL-ED           INDIA                          0               15     227
24 months   MAL-ED           NEPAL                          1               98     221
24 months   MAL-ED           NEPAL                          0              123     221
24 months   MAL-ED           PERU                           1               49     201
24 months   MAL-ED           PERU                           0              152     201
24 months   MAL-ED           SOUTH AFRICA                   1              220     238
24 months   MAL-ED           SOUTH AFRICA                   0               18     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12     212
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              200     212
24 months   NIH-Birth        BANGLADESH                     1              377     427
24 months   NIH-Birth        BANGLADESH                     0               50     427
24 months   NIH-Crypto       BANGLADESH                     1              346     514
24 months   NIH-Crypto       BANGLADESH                     0              168     514
24 months   PROVIDE          BANGLADESH                     1              533     578
24 months   PROVIDE          BANGLADESH                     0               45     578


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
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

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/0230568e-0bb6-4c01-b6cb-09aef704be34/d4ccb266-14ce-48ed-9fb0-87c162eb6e1f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL                          optimal              observed          -0.8662361   -1.1391514   -0.5933208
Birth       JiVitA-3     BANGLADESH                     optimal              observed          -1.4617404   -1.5168036   -1.4066772
Birth       JiVitA-4     BANGLADESH                     optimal              observed          -1.6128177   -1.8507538   -1.3748817
Birth       MAL-ED       BANGLADESH                     optimal              observed          -0.9104926   -1.3435346   -0.4774505
Birth       MAL-ED       INDIA                          optimal              observed          -1.3299769   -1.4919745   -1.1679793
Birth       MAL-ED       NEPAL                          optimal              observed          -0.6317325   -1.0889591   -0.1745060
Birth       MAL-ED       PERU                           optimal              observed          -0.6444287   -0.8657404   -0.4231170
Birth       MAL-ED       SOUTH AFRICA                   optimal              observed          -0.8177252   -1.0676681   -0.5677822
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0794347   -1.2806603   -0.8782091
Birth       NIH-Birth    BANGLADESH                     optimal              observed          -0.8768595   -0.9941562   -0.7595628
Birth       NIH-Crypto   BANGLADESH                     optimal              observed          -1.0126390   -1.1863975   -0.8388804
Birth       PROVIDE      BANGLADESH                     optimal              observed          -0.8311766   -0.9106269   -0.7517263
6 months    CONTENT      PERU                           optimal              observed          -0.1680031   -0.6491034    0.3130972
6 months    GMS-Nepal    NEPAL                          optimal              observed          -1.1135175   -1.4154768   -0.8115582
6 months    JiVitA-3     BANGLADESH                     optimal              observed          -1.1710577   -1.2302254   -1.1118901
6 months    JiVitA-4     BANGLADESH                     optimal              observed          -1.2037043   -1.3757568   -1.0316518
6 months    MAL-ED       BANGLADESH                     optimal              observed          -1.4547984   -1.9428828   -0.9667141
6 months    MAL-ED       INDIA                          optimal              observed          -1.1756105   -1.6111521   -0.7400689
6 months    MAL-ED       NEPAL                          optimal              observed          -0.3776008   -0.5237031   -0.2314984
6 months    MAL-ED       PERU                           optimal              observed          -1.1867203   -1.3502815   -1.0231591
6 months    MAL-ED       SOUTH AFRICA                   optimal              observed          -1.3061145   -1.5818437   -1.0303853
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2008271   -1.7288184   -0.6728358
6 months    NIH-Birth    BANGLADESH                     optimal              observed          -1.3996971   -1.5324051   -1.2669891
6 months    NIH-Crypto   BANGLADESH                     optimal              observed          -1.2251858   -1.3392669   -1.1111048
6 months    PROVIDE      BANGLADESH                     optimal              observed          -1.0480127   -1.1229017   -0.9731237
24 months   CONTENT      PERU                           optimal              observed          -0.6520802   -0.8086837   -0.4954766
24 months   GMS-Nepal    NEPAL                          optimal              observed          -1.5848772   -1.8701824   -1.2995719
24 months   JiVitA-3     BANGLADESH                     optimal              observed          -1.8331206   -1.9198792   -1.7463621
24 months   JiVitA-4     BANGLADESH                     optimal              observed          -1.5740577   -1.7615852   -1.3865302
24 months   MAL-ED       BANGLADESH                     optimal              observed          -1.8053847   -2.2004956   -1.4102737
24 months   MAL-ED       INDIA                          optimal              observed          -1.8548148   -2.2085486   -1.5010810
24 months   MAL-ED       NEPAL                          optimal              observed          -1.1195339   -1.3213009   -0.9177669
24 months   MAL-ED       PERU                           optimal              observed          -1.6707689   -1.9120177   -1.4295201
24 months   MAL-ED       SOUTH AFRICA                   optimal              observed          -1.4392955   -1.7996308   -1.0789602
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.3850819   -2.9993276   -1.7708361
24 months   NIH-Birth    BANGLADESH                     optimal              observed          -2.1604572   -2.2687836   -2.0521309
24 months   NIH-Crypto   BANGLADESH                     optimal              observed          -1.3159630   -1.4648033   -1.1671227
24 months   PROVIDE      BANGLADESH                     optimal              observed          -1.5614706   -1.6467309   -1.4762102


### Parameter: E(Y)


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL                          observed             observed          -1.1177022   -1.2075344   -1.0278700
Birth       JiVitA-3     BANGLADESH                     observed             observed          -1.5895451   -1.6088186   -1.5702715
Birth       JiVitA-4     BANGLADESH                     observed             observed          -1.5236135   -1.5727559   -1.4744711
Birth       MAL-ED       BANGLADESH                     observed             observed          -1.0530516   -1.1896058   -0.9164975
Birth       MAL-ED       INDIA                          observed             observed          -1.2070732   -1.5254820   -0.8886644
Birth       MAL-ED       NEPAL                          observed             observed          -0.7828000   -1.1547571   -0.4108429
Birth       MAL-ED       PERU                           observed             observed          -0.9141395   -1.0364098   -0.7918693
Birth       MAL-ED       SOUTH AFRICA                   observed             observed          -0.5523958   -0.7550074   -0.3497843
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1213445   -1.3341800   -0.9085090
Birth       NIH-Birth    BANGLADESH                     observed             observed          -0.9289256   -1.0178691   -0.8399821
Birth       NIH-Crypto   BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       PROVIDE      BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
6 months    CONTENT      PERU                           observed             observed          -0.2785256   -0.4098735   -0.1471776
6 months    GMS-Nepal    NEPAL                          observed             observed          -1.3225094   -1.4115793   -1.2334396
6 months    JiVitA-3     BANGLADESH                     observed             observed          -1.3134597   -1.3365976   -1.2903219
6 months    JiVitA-4     BANGLADESH                     observed             observed          -1.3440174   -1.3812821   -1.3067527
6 months    MAL-ED       BANGLADESH                     observed             observed          -1.2026806   -1.3203025   -1.0850586
6 months    MAL-ED       INDIA                          observed             observed          -1.2070638   -1.3255909   -1.0885368
6 months    MAL-ED       NEPAL                          observed             observed          -0.5534862   -0.6681825   -0.4387899
6 months    MAL-ED       PERU                           observed             observed          -1.3248549   -1.4336721   -1.2160378
6 months    MAL-ED       SOUTH AFRICA                   observed             observed          -1.0547925   -1.1843544   -0.9252306
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3700408   -1.4930436   -1.2470380
6 months    NIH-Birth    BANGLADESH                     observed             observed          -1.4060639   -1.4948910   -1.3172368
6 months    NIH-Crypto   BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    PROVIDE      BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
24 months   CONTENT      PERU                           observed             observed          -0.6868598   -0.8388476   -0.5348719
24 months   GMS-Nepal    NEPAL                          observed             observed          -1.8396747   -1.9349390   -1.7444104
24 months   JiVitA-3     BANGLADESH                     observed             observed          -2.0134592   -2.0410825   -1.9858359
24 months   JiVitA-4     BANGLADESH                     observed             observed          -1.7804046   -1.8159135   -1.7448956
24 months   MAL-ED       BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED       INDIA                          observed             observed          -1.8861894   -2.0110006   -1.7613783
24 months   MAL-ED       NEPAL                          observed             observed          -1.2928054   -1.4146944   -1.1709164
24 months   MAL-ED       PERU                           observed             observed          -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED       SOUTH AFRICA                   observed             observed          -1.6450595   -1.7797240   -1.5103950
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6432311   -2.7795797   -2.5068826
24 months   NIH-Birth    BANGLADESH                     observed             observed          -2.2235968   -2.3265592   -2.1206344
24 months   NIH-Crypto   BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   PROVIDE      BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL                          optimal              observed          -0.2514661   -0.5175455    0.0146133
Birth       JiVitA-3     BANGLADESH                     optimal              observed          -0.1278047   -0.1800351   -0.0755743
Birth       JiVitA-4     BANGLADESH                     optimal              observed           0.0892043   -0.1377424    0.3161510
Birth       MAL-ED       BANGLADESH                     optimal              observed          -0.1425591   -0.5527628    0.2676447
Birth       MAL-ED       INDIA                          optimal              observed           0.1229037   -0.2153857    0.4611931
Birth       MAL-ED       NEPAL                          optimal              observed          -0.1510675   -0.4628232    0.1606882
Birth       MAL-ED       PERU                           optimal              observed          -0.2697109   -0.4496365   -0.0897852
Birth       MAL-ED       SOUTH AFRICA                   optimal              observed           0.2653293    0.0385778    0.4920809
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0419099   -0.1416261    0.0578063
Birth       NIH-Birth    BANGLADESH                     optimal              observed          -0.0520661   -0.1278365    0.0237043
Birth       NIH-Crypto   BANGLADESH                     optimal              observed           0.1031444   -0.0477907    0.2540796
Birth       PROVIDE      BANGLADESH                     optimal              observed          -0.0539254   -0.0853841   -0.0224667
6 months    CONTENT      PERU                           optimal              observed          -0.1105225   -0.5780387    0.3569938
6 months    GMS-Nepal    NEPAL                          optimal              observed          -0.2089920   -0.5029843    0.0850003
6 months    JiVitA-3     BANGLADESH                     optimal              observed          -0.1424020   -0.2020691   -0.0827349
6 months    JiVitA-4     BANGLADESH                     optimal              observed          -0.1403131   -0.3069537    0.0263275
6 months    MAL-ED       BANGLADESH                     optimal              observed           0.2521179   -0.2020599    0.7062957
6 months    MAL-ED       INDIA                          optimal              observed          -0.0314533   -0.4476012    0.3846945
6 months    MAL-ED       NEPAL                          optimal              observed          -0.1758854   -0.2932083   -0.0585625
6 months    MAL-ED       PERU                           optimal              observed          -0.1381346   -0.2587298   -0.0175395
6 months    MAL-ED       SOUTH AFRICA                   optimal              observed           0.2513220   -0.0091301    0.5117741
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1692137   -0.6824411    0.3440136
6 months    NIH-Birth    BANGLADESH                     optimal              observed          -0.0063668   -0.1025486    0.0898150
6 months    NIH-Crypto   BANGLADESH                     optimal              observed           0.0265075   -0.0569923    0.1100074
6 months    PROVIDE      BANGLADESH                     optimal              observed          -0.0436788   -0.0721005   -0.0152571
24 months   CONTENT      PERU                           optimal              observed          -0.0347796   -0.0767985    0.0072393
24 months   GMS-Nepal    NEPAL                          optimal              observed          -0.2547975   -0.5305673    0.0209723
24 months   JiVitA-3     BANGLADESH                     optimal              observed          -0.1803385   -0.2677587   -0.0929183
24 months   JiVitA-4     BANGLADESH                     optimal              observed          -0.2063469   -0.3879418   -0.0247519
24 months   MAL-ED       BANGLADESH                     optimal              observed          -0.1730116   -0.5568462    0.2108231
24 months   MAL-ED       INDIA                          optimal              observed          -0.0313746   -0.3571192    0.2943700
24 months   MAL-ED       NEPAL                          optimal              observed          -0.1732715   -0.3253693   -0.0211737
24 months   MAL-ED       PERU                           optimal              observed          -0.0817021   -0.2768214    0.1134172
24 months   MAL-ED       SOUTH AFRICA                   optimal              observed          -0.2057640   -0.5566011    0.1450730
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2581493   -0.8616254    0.3453269
24 months   NIH-Birth    BANGLADESH                     optimal              observed          -0.0631396   -0.1024115   -0.0238676
24 months   NIH-Crypto   BANGLADESH                     optimal              observed          -0.1253016   -0.2493515   -0.0012517
24 months   PROVIDE      BANGLADESH                     optimal              observed          -0.0409516   -0.0684997   -0.0134035
