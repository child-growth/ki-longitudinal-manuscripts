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

**Intervention Variable:** nrooms

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
* W_nchldlt5
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
* delta_W_nchldlt5
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

agecat      studyid          country                        nrooms    n_cell       n
----------  ---------------  -----------------------------  -------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          4+             5      86
Birth       CMC-V-BCS-2002   INDIA                          1             35      86
Birth       CMC-V-BCS-2002   INDIA                          2             27      86
Birth       CMC-V-BCS-2002   INDIA                          3             19      86
Birth       COHORTS          INDIA                          4+            90    4454
Birth       COHORTS          INDIA                          1           2879    4454
Birth       COHORTS          INDIA                          2           1328    4454
Birth       COHORTS          INDIA                          3            157    4454
Birth       CONTENT          PERU                           4+             1       2
Birth       CONTENT          PERU                           1              0       2
Birth       CONTENT          PERU                           2              1       2
Birth       CONTENT          PERU                           3              0       2
Birth       GMS-Nepal        NEPAL                          4+           297     641
Birth       GMS-Nepal        NEPAL                          1             42     641
Birth       GMS-Nepal        NEPAL                          2            135     641
Birth       GMS-Nepal        NEPAL                          3            167     641
Birth       IRC              INDIA                          4+            14     341
Birth       IRC              INDIA                          1            156     341
Birth       IRC              INDIA                          2            140     341
Birth       IRC              INDIA                          3             31     341
Birth       JiVitA-3         BANGLADESH                     4+           662   17989
Birth       JiVitA-3         BANGLADESH                     1          11170   17989
Birth       JiVitA-3         BANGLADESH                     2           4609   17989
Birth       JiVitA-3         BANGLADESH                     3           1548   17989
Birth       JiVitA-4         BANGLADESH                     4+           111    2394
Birth       JiVitA-4         BANGLADESH                     1           1430    2394
Birth       JiVitA-4         BANGLADESH                     2            610    2394
Birth       JiVitA-4         BANGLADESH                     3            243    2394
Birth       MAL-ED           BANGLADESH                     4+            12     201
Birth       MAL-ED           BANGLADESH                     1            121     201
Birth       MAL-ED           BANGLADESH                     2             43     201
Birth       MAL-ED           BANGLADESH                     3             25     201
Birth       MAL-ED           BRAZIL                         4+            29      57
Birth       MAL-ED           BRAZIL                         1              0      57
Birth       MAL-ED           BRAZIL                         2             10      57
Birth       MAL-ED           BRAZIL                         3             18      57
Birth       MAL-ED           INDIA                          4+             2      39
Birth       MAL-ED           INDIA                          1             17      39
Birth       MAL-ED           INDIA                          2             16      39
Birth       MAL-ED           INDIA                          3              4      39
Birth       MAL-ED           NEPAL                          4+            15      25
Birth       MAL-ED           NEPAL                          1              6      25
Birth       MAL-ED           NEPAL                          2              2      25
Birth       MAL-ED           NEPAL                          3              2      25
Birth       MAL-ED           PERU                           4+           103     210
Birth       MAL-ED           PERU                           1             13     210
Birth       MAL-ED           PERU                           2             45     210
Birth       MAL-ED           PERU                           3             49     210
Birth       MAL-ED           SOUTH AFRICA                   4+            66      95
Birth       MAL-ED           SOUTH AFRICA                   1              5      95
Birth       MAL-ED           SOUTH AFRICA                   2             12      95
Birth       MAL-ED           SOUTH AFRICA                   3             12      95
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+            45     112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              9     112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             28     112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             30     112
Birth       NIH-Crypto       BANGLADESH                     4+            90     707
Birth       NIH-Crypto       BANGLADESH                     1            338     707
Birth       NIH-Crypto       BANGLADESH                     2            181     707
Birth       NIH-Crypto       BANGLADESH                     3             98     707
Birth       PROVIDE          BANGLADESH                     4+            18     532
Birth       PROVIDE          BANGLADESH                     1            388     532
Birth       PROVIDE          BANGLADESH                     2             79     532
Birth       PROVIDE          BANGLADESH                     3             47     532
6 months    CMC-V-BCS-2002   INDIA                          4+            14     368
6 months    CMC-V-BCS-2002   INDIA                          1            197     368
6 months    CMC-V-BCS-2002   INDIA                          2            106     368
6 months    CMC-V-BCS-2002   INDIA                          3             51     368
6 months    COHORTS          INDIA                          4+            93    4955
6 months    COHORTS          INDIA                          1           3206    4955
6 months    COHORTS          INDIA                          2           1474    4955
6 months    COHORTS          INDIA                          3            182    4955
6 months    CONTENT          PERU                           4+            78     215
6 months    CONTENT          PERU                           1             44     215
6 months    CONTENT          PERU                           2             54     215
6 months    CONTENT          PERU                           3             39     215
6 months    GMS-Nepal        NEPAL                          4+           268     564
6 months    GMS-Nepal        NEPAL                          1             40     564
6 months    GMS-Nepal        NEPAL                          2            115     564
6 months    GMS-Nepal        NEPAL                          3            141     564
6 months    IRC              INDIA                          4+            17     406
6 months    IRC              INDIA                          1            183     406
6 months    IRC              INDIA                          2            170     406
6 months    IRC              INDIA                          3             36     406
6 months    JiVitA-3         BANGLADESH                     4+           742   16773
6 months    JiVitA-3         BANGLADESH                     1           9611   16773
6 months    JiVitA-3         BANGLADESH                     2           4732   16773
6 months    JiVitA-3         BANGLADESH                     3           1688   16773
6 months    JiVitA-4         BANGLADESH                     4+           262    4827
6 months    JiVitA-4         BANGLADESH                     1           2851    4827
6 months    JiVitA-4         BANGLADESH                     2           1226    4827
6 months    JiVitA-4         BANGLADESH                     3            488    4827
6 months    MAL-ED           BANGLADESH                     4+            12     240
6 months    MAL-ED           BANGLADESH                     1            150     240
6 months    MAL-ED           BANGLADESH                     2             50     240
6 months    MAL-ED           BANGLADESH                     3             28     240
6 months    MAL-ED           BRAZIL                         4+           126     209
6 months    MAL-ED           BRAZIL                         1              4     209
6 months    MAL-ED           BRAZIL                         2             20     209
6 months    MAL-ED           BRAZIL                         3             59     209
6 months    MAL-ED           INDIA                          4+            25     235
6 months    MAL-ED           INDIA                          1             84     235
6 months    MAL-ED           INDIA                          2             78     235
6 months    MAL-ED           INDIA                          3             48     235
6 months    MAL-ED           NEPAL                          4+           131     236
6 months    MAL-ED           NEPAL                          1             52     236
6 months    MAL-ED           NEPAL                          2             31     236
6 months    MAL-ED           NEPAL                          3             22     236
6 months    MAL-ED           PERU                           4+           139     270
6 months    MAL-ED           PERU                           1             19     270
6 months    MAL-ED           PERU                           2             50     270
6 months    MAL-ED           PERU                           3             62     270
6 months    MAL-ED           SOUTH AFRICA                   4+           191     249
6 months    MAL-ED           SOUTH AFRICA                   1             14     249
6 months    MAL-ED           SOUTH AFRICA                   2             21     249
6 months    MAL-ED           SOUTH AFRICA                   3             23     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+           108     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             13     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             62     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             64     247
6 months    NIH-Crypto       BANGLADESH                     4+            91     715
6 months    NIH-Crypto       BANGLADESH                     1            339     715
6 months    NIH-Crypto       BANGLADESH                     2            184     715
6 months    NIH-Crypto       BANGLADESH                     3            101     715
6 months    PROVIDE          BANGLADESH                     4+            21     603
6 months    PROVIDE          BANGLADESH                     1            430     603
6 months    PROVIDE          BANGLADESH                     2             94     603
6 months    PROVIDE          BANGLADESH                     3             58     603
24 months   CMC-V-BCS-2002   INDIA                          4+            14     372
24 months   CMC-V-BCS-2002   INDIA                          1            201     372
24 months   CMC-V-BCS-2002   INDIA                          2            106     372
24 months   CMC-V-BCS-2002   INDIA                          3             51     372
24 months   COHORTS          INDIA                          4+            75    3719
24 months   COHORTS          INDIA                          1           2287    3719
24 months   COHORTS          INDIA                          2           1207    3719
24 months   COHORTS          INDIA                          3            150    3719
24 months   CONTENT          PERU                           4+            63     164
24 months   CONTENT          PERU                           1             30     164
24 months   CONTENT          PERU                           2             39     164
24 months   CONTENT          PERU                           3             32     164
24 months   GMS-Nepal        NEPAL                          4+           231     487
24 months   GMS-Nepal        NEPAL                          1             35     487
24 months   GMS-Nepal        NEPAL                          2            106     487
24 months   GMS-Nepal        NEPAL                          3            115     487
24 months   IRC              INDIA                          4+            17     407
24 months   IRC              INDIA                          1            184     407
24 months   IRC              INDIA                          2            170     407
24 months   IRC              INDIA                          3             36     407
24 months   JiVitA-3         BANGLADESH                     4+           365    8591
24 months   JiVitA-3         BANGLADESH                     1           5036    8591
24 months   JiVitA-3         BANGLADESH                     2           2394    8591
24 months   JiVitA-3         BANGLADESH                     3            796    8591
24 months   JiVitA-4         BANGLADESH                     4+           251    4730
24 months   JiVitA-4         BANGLADESH                     1           2781    4730
24 months   JiVitA-4         BANGLADESH                     2           1208    4730
24 months   JiVitA-4         BANGLADESH                     3            490    4730
24 months   MAL-ED           BANGLADESH                     4+            11     212
24 months   MAL-ED           BANGLADESH                     1            134     212
24 months   MAL-ED           BANGLADESH                     2             40     212
24 months   MAL-ED           BANGLADESH                     3             27     212
24 months   MAL-ED           BRAZIL                         4+           104     169
24 months   MAL-ED           BRAZIL                         1              0     169
24 months   MAL-ED           BRAZIL                         2             16     169
24 months   MAL-ED           BRAZIL                         3             49     169
24 months   MAL-ED           INDIA                          4+            25     227
24 months   MAL-ED           INDIA                          1             82     227
24 months   MAL-ED           INDIA                          2             74     227
24 months   MAL-ED           INDIA                          3             46     227
24 months   MAL-ED           NEPAL                          4+           127     228
24 months   MAL-ED           NEPAL                          1             48     228
24 months   MAL-ED           NEPAL                          2             31     228
24 months   MAL-ED           NEPAL                          3             22     228
24 months   MAL-ED           PERU                           4+           110     201
24 months   MAL-ED           PERU                           1             16     201
24 months   MAL-ED           PERU                           2             32     201
24 months   MAL-ED           PERU                           3             43     201
24 months   MAL-ED           SOUTH AFRICA                   4+           183     238
24 months   MAL-ED           SOUTH AFRICA                   1             13     238
24 months   MAL-ED           SOUTH AFRICA                   2             19     238
24 months   MAL-ED           SOUTH AFRICA                   3             23     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+            98     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              9     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             50     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             57     214
24 months   NIH-Crypto       BANGLADESH                     4+            82     514
24 months   NIH-Crypto       BANGLADESH                     1            217     514
24 months   NIH-Crypto       BANGLADESH                     2            137     514
24 months   NIH-Crypto       BANGLADESH                     3             78     514
24 months   PROVIDE          BANGLADESH                     4+            22     579
24 months   PROVIDE          BANGLADESH                     1            408     579
24 months   PROVIDE          BANGLADESH                     2             92     579
24 months   PROVIDE          BANGLADESH                     3             57     579


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: INDIA
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
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: INDIA
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
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: INDIA
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
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/39e6f4c0-e7f5-4e27-bc56-43c0f57fba4b/b73c4ff3-11a9-4ce8-9b39-8e40dbfb9b98/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1321002   -0.7092004    0.4449999
Birth       COHORTS          INDIA                          optimal              observed          -0.8594791   -0.9875970   -0.7313612
Birth       GMS-Nepal        NEPAL                          optimal              observed          -1.0987723   -1.3584637   -0.8390809
Birth       IRC              INDIA                          optimal              observed          -1.4735767   -2.1370974   -0.8100561
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.7779795   -0.8240007   -0.7319583
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -0.6891770   -0.8371239   -0.5412302
Birth       MAL-ED           BANGLADESH                     optimal              observed          -1.1848156   -1.5819143   -0.7877169
Birth       MAL-ED           PERU                           optimal              observed           0.1608750   -0.0831895    0.4049395
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed           0.4751621   -0.3295471    1.2798712
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5513102    0.1346467    0.9679737
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -1.3458817   -1.5238500   -1.1679134
Birth       PROVIDE          BANGLADESH                     optimal              observed          -1.5613819   -1.8304557   -1.2923081
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5261304   -0.8499187   -0.2023420
6 months    COHORTS          INDIA                          optimal              observed          -0.3793245   -0.4810024   -0.2776467
6 months    CONTENT          PERU                           optimal              observed           1.0400282    0.7238978    1.3561585
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.6991681   -0.9012673   -0.4970689
6 months    IRC              INDIA                          optimal              observed          -0.7077358   -0.9208672   -0.4946045
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.4401071   -0.4880626   -0.3921516
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.3300848   -0.4392104   -0.2209592
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.1441509   -0.6483796    0.3600778
6 months    MAL-ED           INDIA                          optimal              observed          -0.7111703   -1.0465843   -0.3757562
6 months    MAL-ED           NEPAL                          optimal              observed           0.4286892    0.0197251    0.8376532
6 months    MAL-ED           PERU                           optimal              observed           1.2616067    0.9815804    1.5416329
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed           0.9717806    0.4084151    1.5351461
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.7453568    0.2025995    1.2881141
6 months    NIH-Crypto       BANGLADESH                     optimal              observed           0.1958624   -0.0544851    0.4462098
6 months    PROVIDE          BANGLADESH                     optimal              observed           0.0234373   -0.1805101    0.2273848
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3127631   -0.6923290    0.0668028
24 months   COHORTS          INDIA                          optimal              observed          -0.3756408   -0.5009668   -0.2503148
24 months   CONTENT          PERU                           optimal              observed           0.7611060    0.3761243    1.1460876
24 months   GMS-Nepal        NEPAL                          optimal              observed          -1.3613477   -1.6809806   -1.0417147
24 months   IRC              INDIA                          optimal              observed          -0.7944246   -1.2090201   -0.3798291
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.2408032   -1.3023622   -1.1792442
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -1.1910304   -1.2880804   -1.0939804
24 months   MAL-ED           BANGLADESH                     optimal              observed          -1.1669151   -1.8049561   -0.5288741
24 months   MAL-ED           INDIA                          optimal              observed          -1.1108989   -1.4832037   -0.7385942
24 months   MAL-ED           NEPAL                          optimal              observed          -0.0743964   -0.4687877    0.3199950
24 months   MAL-ED           PERU                           optimal              observed           0.2070206    0.0355818    0.3784593
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed           0.2784960   -0.1673742    0.7243662
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1190764   -0.0384908    0.2766437
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.3128183   -0.6046673   -0.0209694
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.8021897   -1.2240872   -0.3802922


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          observed             observed          -0.4648256   -0.7643210   -0.1653302
Birth       COHORTS          INDIA                          observed             observed          -0.9778087   -1.0126530   -0.9429644
Birth       GMS-Nepal        NEPAL                          observed             observed          -1.1164431   -1.2040134   -1.0288728
Birth       IRC              INDIA                          observed             observed          -1.0053372   -1.1922119   -0.8184626
Birth       JiVitA-3         BANGLADESH                     observed             observed          -0.7776536   -0.7966730   -0.7586341
Birth       JiVitA-4         BANGLADESH                     observed             observed          -0.6882498   -0.7406539   -0.6358456
Birth       MAL-ED           BANGLADESH                     observed             observed          -0.9728358   -1.1217009   -0.8239707
Birth       MAL-ED           PERU                           observed             observed          -0.0468095   -0.1738806    0.0802616
Birth       MAL-ED           SOUTH AFRICA                   observed             observed          -0.1729474   -0.4186222    0.0727275
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7637500    0.5676177    0.9598823
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       PROVIDE          BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
6 months    CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    COHORTS          INDIA                          observed             observed          -0.7088012   -0.7411274   -0.6764750
6 months    CONTENT          PERU                           observed             observed           1.0644279    0.9468682    1.1819876
6 months    GMS-Nepal        NEPAL                          observed             observed          -0.6038416   -0.6899448   -0.5177384
6 months    IRC              INDIA                          observed             observed          -0.5900821   -0.7252457   -0.4549185
6 months    JiVitA-3         BANGLADESH                     observed             observed          -0.5930302   -0.6125738   -0.5734865
6 months    JiVitA-4         BANGLADESH                     observed             observed          -0.3901595   -0.4274150   -0.3529041
6 months    MAL-ED           BANGLADESH                     observed             observed          -0.1333333   -0.2623761   -0.0042906
6 months    MAL-ED           INDIA                          observed             observed          -0.7102872   -0.8371659   -0.5834085
6 months    MAL-ED           NEPAL                          observed             observed           0.1104308   -0.0208643    0.2417259
6 months    MAL-ED           PERU                           observed             observed           1.0512099    0.9285617    1.1738581
6 months    MAL-ED           SOUTH AFRICA                   observed             observed           0.5404351    0.3867005    0.6941696
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    NIH-Crypto       BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    PROVIDE          BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
24 months   CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   COHORTS          INDIA                          observed             observed          -0.6612799   -0.6944511   -0.6281088
24 months   CONTENT          PERU                           observed             observed           0.5902439    0.4560143    0.7244735
24 months   GMS-Nepal        NEPAL                          observed             observed          -1.1363107   -1.2252817   -1.0473398
24 months   IRC              INDIA                          observed             observed          -0.7416790   -0.8323562   -0.6510017
24 months   JiVitA-3         BANGLADESH                     observed             observed          -1.2967966   -1.3200807   -1.2735126
24 months   JiVitA-4         BANGLADESH                     observed             observed          -1.2231776   -1.2550332   -1.1913220
24 months   MAL-ED           BANGLADESH                     observed             observed          -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED           INDIA                          observed             observed          -0.9516520   -1.0670654   -0.8362385
24 months   MAL-ED           NEPAL                          observed             observed          -0.3749123   -0.4886073   -0.2612173
24 months   MAL-ED           PERU                           observed             observed           0.1111982   -0.0118399    0.2342362
24 months   MAL-ED           SOUTH AFRICA                   observed             observed           0.4090301    0.2879441    0.5301161
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0547975   -0.0703378    0.1799328
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   PROVIDE          BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3327253   -0.8671771    0.2017264
Birth       COHORTS          INDIA                          optimal              observed          -0.1183297   -0.2467970    0.0101377
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.0176708   -0.2652444    0.2299028
Birth       IRC              INDIA                          optimal              observed           0.4682395   -0.1863374    1.1228164
Birth       JiVitA-3         BANGLADESH                     optimal              observed           0.0003259   -0.0444636    0.0451154
Birth       JiVitA-4         BANGLADESH                     optimal              observed           0.0009272   -0.1429139    0.1447683
Birth       MAL-ED           BANGLADESH                     optimal              observed           0.2119797   -0.1830359    0.6069954
Birth       MAL-ED           PERU                           optimal              observed          -0.2076845   -0.4495498    0.0341808
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.6481094   -1.4019158    0.1056970
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2124398   -0.1952252    0.6201048
Birth       NIH-Crypto       BANGLADESH                     optimal              observed           0.1017303   -0.0567808    0.2602414
Birth       PROVIDE          BANGLADESH                     optimal              observed           0.2629233   -0.0005706    0.5264172
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed           0.0234537   -0.2899326    0.3368401
6 months    COHORTS          INDIA                          optimal              observed          -0.3294767   -0.4327377   -0.2262157
6 months    CONTENT          PERU                           optimal              observed           0.0243997   -0.2737787    0.3225782
6 months    GMS-Nepal        NEPAL                          optimal              observed           0.0953265   -0.0782584    0.2689114
6 months    IRC              INDIA                          optimal              observed           0.1176537   -0.0390692    0.2743767
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.1529231   -0.2012753   -0.1045708
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.0600747   -0.1670148    0.0468654
6 months    MAL-ED           BANGLADESH                     optimal              observed           0.0108176   -0.4470139    0.4686490
6 months    MAL-ED           INDIA                          optimal              observed           0.0008830   -0.3071291    0.3088952
6 months    MAL-ED           NEPAL                          optimal              observed          -0.3182584   -0.6954069    0.0588902
6 months    MAL-ED           PERU                           optimal              observed          -0.2103968   -0.4578625    0.0370690
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.4313455   -0.9689064    0.1062154
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2091355   -0.7191274    0.3008564
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.1661001   -0.4026925    0.0704923
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.2225280   -0.4119889   -0.0330670
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2443874   -0.6113387    0.1225639
24 months   COHORTS          INDIA                          optimal              observed          -0.2856391   -0.4106732   -0.1606050
24 months   CONTENT          PERU                           optimal              observed          -0.1708621   -0.5413667    0.1996426
24 months   GMS-Nepal        NEPAL                          optimal              observed           0.2250369   -0.0763451    0.5264189
24 months   IRC              INDIA                          optimal              observed           0.0527457   -0.3544360    0.4599273
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.0559934   -0.1168533    0.0048665
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -0.0321472   -0.1272374    0.0629430
24 months   MAL-ED           BANGLADESH                     optimal              observed           0.3476226   -0.2772191    0.9724644
24 months   MAL-ED           INDIA                          optimal              observed           0.1592469   -0.1864517    0.5049455
24 months   MAL-ED           NEPAL                          optimal              observed          -0.3005159   -0.6640961    0.0630643
24 months   MAL-ED           PERU                           optimal              observed          -0.0958224   -0.2073608    0.0157160
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed           0.1305341   -0.2968920    0.5579602
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0642789   -0.1993937    0.0708358
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.2975319   -0.5677088   -0.0273549
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.0906773   -0.5027630    0.3214084
