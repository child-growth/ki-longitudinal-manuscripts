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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
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
* delta_vagbrth
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

agecat      studyid      country        hfoodsec                n_cell       n
----------  -----------  -------------  ---------------------  -------  ------
Birth       GMS-Nepal    NEPAL          Food Secure                442     620
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure       100     620
Birth       GMS-Nepal    NEPAL          Food Insecure               78     620
Birth       JiVitA-3     BANGLADESH     Food Secure               5797   11763
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure      3947   11763
Birth       JiVitA-3     BANGLADESH     Food Insecure             2019   11763
Birth       JiVitA-4     BANGLADESH     Food Secure               1205    2383
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure       870    2383
Birth       JiVitA-4     BANGLADESH     Food Insecure              308    2383
Birth       MAL-ED       BANGLADESH     Food Secure                138     162
Birth       MAL-ED       BANGLADESH     Mildly Food Insecure         3     162
Birth       MAL-ED       BANGLADESH     Food Insecure               21     162
Birth       MAL-ED       BRAZIL         Food Secure                  0      26
Birth       MAL-ED       BRAZIL         Mildly Food Insecure         4      26
Birth       MAL-ED       BRAZIL         Food Insecure               22      26
Birth       MAL-ED       INDIA          Food Secure                 32      35
Birth       MAL-ED       INDIA          Mildly Food Insecure         1      35
Birth       MAL-ED       INDIA          Food Insecure                2      35
Birth       MAL-ED       NEPAL          Food Secure                 10      14
Birth       MAL-ED       NEPAL          Mildly Food Insecure         1      14
Birth       MAL-ED       NEPAL          Food Insecure                3      14
Birth       MAL-ED       PERU           Food Secure                 23      89
Birth       MAL-ED       PERU           Mildly Food Insecure        22      89
Birth       MAL-ED       PERU           Food Insecure               44      89
Birth       MAL-ED       SOUTH AFRICA   Food Secure                 45      87
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure         9      87
Birth       MAL-ED       SOUTH AFRICA   Food Insecure               33      87
Birth       NIH-Birth    BANGLADESH     Food Secure                 86     575
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure       453     575
Birth       NIH-Birth    BANGLADESH     Food Insecure               36     575
Birth       NIH-Crypto   BANGLADESH     Food Secure                429     707
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure       199     707
Birth       NIH-Crypto   BANGLADESH     Food Insecure               79     707
6 months    GMS-Nepal    NEPAL          Food Secure                396     546
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure        76     546
6 months    GMS-Nepal    NEPAL          Food Insecure               74     546
6 months    JiVitA-3     BANGLADESH     Food Secure               8396   16764
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure      5590   16764
6 months    JiVitA-3     BANGLADESH     Food Insecure             2778   16764
6 months    JiVitA-4     BANGLADESH     Food Secure               2445    4795
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure      1728    4795
6 months    JiVitA-4     BANGLADESH     Food Insecure              622    4795
6 months    MAL-ED       BANGLADESH     Food Secure                160     193
6 months    MAL-ED       BANGLADESH     Mildly Food Insecure         4     193
6 months    MAL-ED       BANGLADESH     Food Insecure               29     193
6 months    MAL-ED       BRAZIL         Food Secure                  3     129
6 months    MAL-ED       BRAZIL         Mildly Food Insecure        11     129
6 months    MAL-ED       BRAZIL         Food Insecure              115     129
6 months    MAL-ED       INDIA          Food Secure                190     212
6 months    MAL-ED       INDIA          Mildly Food Insecure         5     212
6 months    MAL-ED       INDIA          Food Insecure               17     212
6 months    MAL-ED       NEPAL          Food Secure                 94     128
6 months    MAL-ED       NEPAL          Mildly Food Insecure        15     128
6 months    MAL-ED       NEPAL          Food Insecure               19     128
6 months    MAL-ED       PERU           Food Secure                 27     111
6 months    MAL-ED       PERU           Mildly Food Insecure        28     111
6 months    MAL-ED       PERU           Food Insecure               56     111
6 months    MAL-ED       SOUTH AFRICA   Food Secure                129     228
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228
6 months    MAL-ED       SOUTH AFRICA   Food Insecure               81     228
6 months    NIH-Birth    BANGLADESH     Food Secure                 80     537
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure       417     537
6 months    NIH-Birth    BANGLADESH     Food Insecure               40     537
6 months    NIH-Crypto   BANGLADESH     Food Secure                427     715
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure       204     715
6 months    NIH-Crypto   BANGLADESH     Food Insecure               84     715
24 months   GMS-Nepal    NEPAL          Food Secure                341     477
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure        67     477
24 months   GMS-Nepal    NEPAL          Food Insecure               69     477
24 months   JiVitA-3     BANGLADESH     Food Secure               3857    8190
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure      2753    8190
24 months   JiVitA-3     BANGLADESH     Food Insecure             1580    8190
24 months   JiVitA-4     BANGLADESH     Food Secure               2389    4696
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure      1699    4696
24 months   JiVitA-4     BANGLADESH     Food Insecure              608    4696
24 months   MAL-ED       BANGLADESH     Food Secure                161     194
24 months   MAL-ED       BANGLADESH     Mildly Food Insecure         4     194
24 months   MAL-ED       BANGLADESH     Food Insecure               29     194
24 months   MAL-ED       BRAZIL         Food Secure                  3     129
24 months   MAL-ED       BRAZIL         Mildly Food Insecure        11     129
24 months   MAL-ED       BRAZIL         Food Insecure              115     129
24 months   MAL-ED       INDIA          Food Secure                190     212
24 months   MAL-ED       INDIA          Mildly Food Insecure         5     212
24 months   MAL-ED       INDIA          Food Insecure               17     212
24 months   MAL-ED       NEPAL          Food Secure                 94     128
24 months   MAL-ED       NEPAL          Mildly Food Insecure        15     128
24 months   MAL-ED       NEPAL          Food Insecure               19     128
24 months   MAL-ED       PERU           Food Secure                 26     107
24 months   MAL-ED       PERU           Mildly Food Insecure        27     107
24 months   MAL-ED       PERU           Food Insecure               54     107
24 months   MAL-ED       SOUTH AFRICA   Food Secure                129     228
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228
24 months   MAL-ED       SOUTH AFRICA   Food Insecure               81     228
24 months   NIH-Birth    BANGLADESH     Food Secure                 68     428
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure       327     428
24 months   NIH-Birth    BANGLADESH     Food Insecure               33     428
24 months   NIH-Crypto   BANGLADESH     Food Secure                334     514
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure       124     514
24 months   NIH-Crypto   BANGLADESH     Food Insecure               56     514


The following strata were considered:

* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/a8a8c34e-3094-4599-b996-2a583b5fb3fa/0b343926-5baa-4239-b069-7508b1fba095/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          optimal              observed          -0.7603524   -1.0198271   -0.5008778
Birth       JiVitA-3     BANGLADESH     optimal              observed          -0.7396886   -0.7744907   -0.7048865
Birth       JiVitA-4     BANGLADESH     optimal              observed          -0.7366509   -0.8538268   -0.6194750
Birth       MAL-ED       PERU           optimal              observed          -0.1190126   -0.4093955    0.1713704
Birth       MAL-ED       SOUTH AFRICA   optimal              observed          -0.4572993   -1.0082591    0.0936604
Birth       NIH-Birth    BANGLADESH     optimal              observed          -1.3458712   -1.7050545   -0.9866879
Birth       NIH-Crypto   BANGLADESH     optimal              observed          -1.3196476   -1.4940348   -1.1452604
6 months    GMS-Nepal    NEPAL          optimal              observed          -0.4353694   -0.6510125   -0.2197264
6 months    JiVitA-3     BANGLADESH     optimal              observed          -0.6144206   -0.6499180   -0.5789233
6 months    JiVitA-4     BANGLADESH     optimal              observed          -0.4283643   -0.4906109   -0.3661177
6 months    MAL-ED       INDIA          optimal              observed          -0.9663126   -1.3106930   -0.6219323
6 months    MAL-ED       NEPAL          optimal              observed          -0.0356983   -0.6599993    0.5886028
6 months    MAL-ED       PERU           optimal              observed           0.5778340    0.2727942    0.8828738
6 months    MAL-ED       SOUTH AFRICA   optimal              observed           0.4226321    0.0286917    0.8165725
6 months    NIH-Birth    BANGLADESH     optimal              observed          -0.3861470   -0.5994748   -0.1728191
6 months    NIH-Crypto   BANGLADESH     optimal              observed          -0.0072724   -0.1222421    0.1076974
24 months   GMS-Nepal    NEPAL          optimal              observed          -1.4278890   -1.6352634   -1.2205147
24 months   JiVitA-3     BANGLADESH     optimal              observed          -1.2830268   -1.3242168   -1.2418369
24 months   JiVitA-4     BANGLADESH     optimal              observed          -1.2123910   -1.2568261   -1.1679559
24 months   MAL-ED       INDIA          optimal              observed          -1.0862681   -1.4828530   -0.6896832
24 months   MAL-ED       NEPAL          optimal              observed          -0.2070865   -0.4033224   -0.0108507
24 months   MAL-ED       PERU           optimal              observed           0.4325176    0.1963315    0.6687037
24 months   MAL-ED       SOUTH AFRICA   optimal              observed           0.3773425    0.1436472    0.6110379
24 months   NIH-Birth    BANGLADESH     optimal              observed          -0.9487847   -1.1663658   -0.7312036
24 months   NIH-Crypto   BANGLADESH     optimal              observed          -0.6306186   -0.7758596   -0.4853775


### Parameter: E(Y)


agecat      studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          observed             observed          -1.1165161   -1.2055683   -1.0274639
Birth       JiVitA-3     BANGLADESH     observed             observed          -0.7508875   -0.7730765   -0.7286985
Birth       JiVitA-4     BANGLADESH     observed             observed          -0.6898154   -0.7422632   -0.6373675
Birth       MAL-ED       PERU           observed             observed          -0.0483146   -0.2475806    0.1509514
Birth       MAL-ED       SOUTH AFRICA   observed             observed          -0.1502299   -0.4075620    0.1071022
Birth       NIH-Birth    BANGLADESH     observed             observed          -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto   BANGLADESH     observed             observed          -1.2441513   -1.3281130   -1.1601897
6 months    GMS-Nepal    NEPAL          observed             observed          -0.6018803   -0.6892284   -0.5145323
6 months    JiVitA-3     BANGLADESH     observed             observed          -0.5932301   -0.6127836   -0.5736767
6 months    JiVitA-4     BANGLADESH     observed             observed          -0.3895527   -0.4270314   -0.3520739
6 months    MAL-ED       INDIA          observed             observed          -0.7220008   -0.8576809   -0.5863207
6 months    MAL-ED       NEPAL          observed             observed           0.1277734   -0.0649431    0.3204900
6 months    MAL-ED       PERU           observed             observed           0.9819369    0.7674415    1.1964324
6 months    MAL-ED       SOUTH AFRICA   observed             observed           0.5429020    0.3813518    0.7044523
6 months    NIH-Birth    BANGLADESH     observed             observed          -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto   BANGLADESH     observed             observed           0.0297622   -0.0491685    0.1086930
24 months   GMS-Nepal    NEPAL          observed             observed          -1.1304997   -1.2205265   -1.0404728
24 months   JiVitA-3     BANGLADESH     observed             observed          -1.2988352   -1.3224626   -1.2752078
24 months   JiVitA-4     BANGLADESH     observed             observed          -1.2243590   -1.2566569   -1.1920612
24 months   MAL-ED       INDIA          observed             observed          -0.9588679   -1.0774868   -0.8402491
24 months   MAL-ED       NEPAL          observed             observed          -0.2730469   -0.4358169   -0.1102769
24 months   MAL-ED       PERU           observed             observed           0.0982009   -0.0794754    0.2758773
24 months   MAL-ED       SOUTH AFRICA   observed             observed           0.4080227    0.2828348    0.5332106
24 months   NIH-Birth    BANGLADESH     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto   BANGLADESH     observed             observed          -0.6103502   -0.7050157   -0.5156847


### Parameter: PAR


agecat      studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          optimal              observed          -0.3561637   -0.5978643   -0.1144631
Birth       JiVitA-3     BANGLADESH     optimal              observed          -0.0111989   -0.0373922    0.0149943
Birth       JiVitA-4     BANGLADESH     optimal              observed           0.0468355   -0.0605796    0.1542507
Birth       MAL-ED       PERU           optimal              observed           0.0706980   -0.1583778    0.2997738
Birth       MAL-ED       SOUTH AFRICA   optimal              observed           0.3070695   -0.1883751    0.8025140
Birth       NIH-Birth    BANGLADESH     optimal              observed          -0.0040505   -0.3439141    0.3358131
Birth       NIH-Crypto   BANGLADESH     optimal              observed           0.0754962   -0.0833932    0.2343856
6 months    GMS-Nepal    NEPAL          optimal              observed          -0.1665109   -0.3742462    0.0412244
6 months    JiVitA-3     BANGLADESH     optimal              observed           0.0211905   -0.0079419    0.0503229
6 months    JiVitA-4     BANGLADESH     optimal              observed           0.0388116   -0.0132669    0.0908902
6 months    MAL-ED       INDIA          optimal              observed           0.2443119   -0.0837094    0.5723331
6 months    MAL-ED       NEPAL          optimal              observed           0.1634717   -0.4173154    0.7442587
6 months    MAL-ED       PERU           optimal              observed           0.4041030    0.1570642    0.6511417
6 months    MAL-ED       SOUTH AFRICA   optimal              observed           0.1202699   -0.2337744    0.4743143
6 months    NIH-Birth    BANGLADESH     optimal              observed          -0.0612568   -0.2572515    0.1347378
6 months    NIH-Crypto   BANGLADESH     optimal              observed           0.0370346   -0.0514174    0.1254866
24 months   GMS-Nepal    NEPAL          optimal              observed           0.2973894    0.1100873    0.4846915
24 months   JiVitA-3     BANGLADESH     optimal              observed          -0.0158083   -0.0500918    0.0184752
24 months   JiVitA-4     BANGLADESH     optimal              observed          -0.0119680   -0.0432854    0.0193493
24 months   MAL-ED       INDIA          optimal              observed           0.1274002   -0.2517692    0.5065696
24 months   MAL-ED       NEPAL          optimal              observed          -0.0659604   -0.1581298    0.0262091
24 months   MAL-ED       PERU           optimal              observed          -0.3343167   -0.5649214   -0.1037119
24 months   MAL-ED       SOUTH AFRICA   optimal              observed           0.0306801   -0.1842500    0.2456102
24 months   NIH-Birth    BANGLADESH     optimal              observed           0.0372056   -0.1670785    0.2414898
24 months   NIH-Crypto   BANGLADESH     optimal              observed           0.0202684   -0.1052513    0.1457880
