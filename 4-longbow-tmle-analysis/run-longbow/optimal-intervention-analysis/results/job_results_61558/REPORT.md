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

**Intervention Variable:** perdiar6

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
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
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
* delta_W_birthwt
* delta_W_birthlen
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

agecat      studyid      country                        perdiar6    n_cell     n
----------  -----------  -----------------------------  ---------  -------  ----
Birth       CMIN         BANGLADESH                     0%              16    26
Birth       CMIN         BANGLADESH                     (0%, 5%]         4    26
Birth       CMIN         BANGLADESH                     >5%              6    26
Birth       CONTENT      PERU                           0%               0     2
Birth       CONTENT      PERU                           (0%, 5%]         1     2
Birth       CONTENT      PERU                           >5%              1     2
Birth       EE           PAKISTAN                       0%             223   240
Birth       EE           PAKISTAN                       (0%, 5%]        15   240
Birth       EE           PAKISTAN                       >5%              2   240
Birth       MAL-ED       BANGLADESH                     0%              72   231
Birth       MAL-ED       BANGLADESH                     (0%, 5%]        90   231
Birth       MAL-ED       BANGLADESH                     >5%             69   231
Birth       MAL-ED       BRAZIL                         0%              57    65
Birth       MAL-ED       BRAZIL                         (0%, 5%]         6    65
Birth       MAL-ED       BRAZIL                         >5%              2    65
Birth       MAL-ED       INDIA                          0%              12    47
Birth       MAL-ED       INDIA                          (0%, 5%]        24    47
Birth       MAL-ED       INDIA                          >5%             11    47
Birth       MAL-ED       NEPAL                          0%               8    27
Birth       MAL-ED       NEPAL                          (0%, 5%]        10    27
Birth       MAL-ED       NEPAL                          >5%              9    27
Birth       MAL-ED       PERU                           0%              67   233
Birth       MAL-ED       PERU                           (0%, 5%]        72   233
Birth       MAL-ED       PERU                           >5%             94   233
Birth       MAL-ED       SOUTH AFRICA                   0%              86   113
Birth       MAL-ED       SOUTH AFRICA                   (0%, 5%]        23   113
Birth       MAL-ED       SOUTH AFRICA                   >5%              4   113
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              59   125
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        45   125
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             21   125
Birth       NIH-Birth    BANGLADESH                     0%             160   605
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]       177   605
Birth       NIH-Birth    BANGLADESH                     >5%            268   605
Birth       NIH-Crypto   BANGLADESH                     0%             360   732
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]       163   732
Birth       NIH-Crypto   BANGLADESH                     >5%            209   732
Birth       PROVIDE      BANGLADESH                     0%             161   539
Birth       PROVIDE      BANGLADESH                     (0%, 5%]       209   539
Birth       PROVIDE      BANGLADESH                     >5%            169   539
6 months    CMIN         BANGLADESH                     0%              81   243
6 months    CMIN         BANGLADESH                     (0%, 5%]        59   243
6 months    CMIN         BANGLADESH                     >5%            103   243
6 months    CONTENT      PERU                           0%             115   215
6 months    CONTENT      PERU                           (0%, 5%]        43   215
6 months    CONTENT      PERU                           >5%             57   215
6 months    EE           PAKISTAN                       0%             336   373
6 months    EE           PAKISTAN                       (0%, 5%]        35   373
6 months    EE           PAKISTAN                       >5%              2   373
6 months    MAL-ED       BANGLADESH                     0%              71   241
6 months    MAL-ED       BANGLADESH                     (0%, 5%]        92   241
6 months    MAL-ED       BANGLADESH                     >5%             78   241
6 months    MAL-ED       BRAZIL                         0%             192   209
6 months    MAL-ED       BRAZIL                         (0%, 5%]        15   209
6 months    MAL-ED       BRAZIL                         >5%              2   209
6 months    MAL-ED       INDIA                          0%              50   236
6 months    MAL-ED       INDIA                          (0%, 5%]       127   236
6 months    MAL-ED       INDIA                          >5%             59   236
6 months    MAL-ED       NEPAL                          0%              80   236
6 months    MAL-ED       NEPAL                          (0%, 5%]        76   236
6 months    MAL-ED       NEPAL                          >5%             80   236
6 months    MAL-ED       PERU                           0%              68   273
6 months    MAL-ED       PERU                           (0%, 5%]        89   273
6 months    MAL-ED       PERU                           >5%            116   273
6 months    MAL-ED       SOUTH AFRICA                   0%             190   254
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]        55   254
6 months    MAL-ED       SOUTH AFRICA                   >5%              9   254
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%             105   247
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        96   247
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             46   247
6 months    NIH-Birth    BANGLADESH                     0%             129   537
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]       169   537
6 months    NIH-Birth    BANGLADESH                     >5%            239   537
6 months    NIH-Crypto   BANGLADESH                     0%             341   715
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]       167   715
6 months    NIH-Crypto   BANGLADESH                     >5%            207   715
6 months    PROVIDE      BANGLADESH                     0%             158   604
6 months    PROVIDE      BANGLADESH                     (0%, 5%]       246   604
6 months    PROVIDE      BANGLADESH                     >5%            200   604
24 months   CMIN         BANGLADESH                     0%              85   242
24 months   CMIN         BANGLADESH                     (0%, 5%]        58   242
24 months   CMIN         BANGLADESH                     >5%             99   242
24 months   CONTENT      PERU                           0%              84   164
24 months   CONTENT      PERU                           (0%, 5%]        36   164
24 months   CONTENT      PERU                           >5%             44   164
24 months   EE           PAKISTAN                       0%             152   167
24 months   EE           PAKISTAN                       (0%, 5%]        14   167
24 months   EE           PAKISTAN                       >5%              1   167
24 months   MAL-ED       BANGLADESH                     0%              64   212
24 months   MAL-ED       BANGLADESH                     (0%, 5%]        83   212
24 months   MAL-ED       BANGLADESH                     >5%             65   212
24 months   MAL-ED       BRAZIL                         0%             154   169
24 months   MAL-ED       BRAZIL                         (0%, 5%]        13   169
24 months   MAL-ED       BRAZIL                         >5%              2   169
24 months   MAL-ED       INDIA                          0%              48   227
24 months   MAL-ED       INDIA                          (0%, 5%]       122   227
24 months   MAL-ED       INDIA                          >5%             57   227
24 months   MAL-ED       NEPAL                          0%              77   228
24 months   MAL-ED       NEPAL                          (0%, 5%]        75   228
24 months   MAL-ED       NEPAL                          >5%             76   228
24 months   MAL-ED       PERU                           0%              53   201
24 months   MAL-ED       PERU                           (0%, 5%]        64   201
24 months   MAL-ED       PERU                           >5%             84   201
24 months   MAL-ED       SOUTH AFRICA                   0%             177   238
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]        52   238
24 months   MAL-ED       SOUTH AFRICA                   >5%              9   238
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              92   214
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        83   214
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             39   214
24 months   NIH-Birth    BANGLADESH                     0%             107   429
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]       128   429
24 months   NIH-Birth    BANGLADESH                     >5%            194   429
24 months   NIH-Crypto   BANGLADESH                     0%             277   514
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]       106   514
24 months   NIH-Crypto   BANGLADESH                     >5%            131   514
24 months   PROVIDE      BANGLADESH                     0%             152   578
24 months   PROVIDE      BANGLADESH                     (0%, 5%]       232   578
24 months   PROVIDE      BANGLADESH                     >5%            194   578


The following strata were considered:

* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
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
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
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
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/0af0d4e8-6ec9-48ca-b418-90a53cfa6052/c87b8454-b1ba-4357-afb6-7170b95df061/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     optimal              observed          -0.9140721   -1.1337455   -0.6943987
Birth       MAL-ED       INDIA                          optimal              observed          -0.8974764   -1.2012064   -0.5937465
Birth       MAL-ED       NEPAL                          optimal              observed          -0.2844475   -0.9573169    0.3884218
Birth       MAL-ED       PERU                           optimal              observed          -0.9075666   -1.0889107   -0.7262225
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.9854890   -1.4501545   -0.5208234
Birth       NIH-Birth    BANGLADESH                     optimal              observed          -0.8163670   -0.9555969   -0.6771371
Birth       NIH-Crypto   BANGLADESH                     optimal              observed          -0.9817880   -1.0908551   -0.8727209
Birth       PROVIDE      BANGLADESH                     optimal              observed          -0.8961525   -1.0176420   -0.7746630
6 months    CMIN         BANGLADESH                     optimal              observed          -1.5549447   -1.7599843   -1.3499051
6 months    CONTENT      PERU                           optimal              observed          -0.2523745   -0.5073799    0.0026309
6 months    MAL-ED       BANGLADESH                     optimal              observed          -1.0888174   -1.2640908   -0.9135440
6 months    MAL-ED       INDIA                          optimal              observed          -1.0536043   -1.2268162   -0.8803925
6 months    MAL-ED       NEPAL                          optimal              observed          -0.4327176   -0.6293924   -0.2360429
6 months    MAL-ED       PERU                           optimal              observed          -1.2736891   -1.4596876   -1.0876907
6 months    MAL-ED       SOUTH AFRICA                   optimal              observed          -0.8218016   -1.9448383    0.3012352
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3051807   -1.5549556   -1.0554058
6 months    NIH-Birth    BANGLADESH                     optimal              observed          -1.3651986   -1.5151053   -1.2152918
6 months    NIH-Crypto   BANGLADESH                     optimal              observed          -1.1474153   -1.2464080   -1.0484227
6 months    PROVIDE      BANGLADESH                     optimal              observed          -1.0493480   -1.1883132   -0.9103829
24 months   CMIN         BANGLADESH                     optimal              observed          -2.4814007   -2.6863695   -2.2764318
24 months   CONTENT      PERU                           optimal              observed          -1.0259396   -1.3019874   -0.7498918
24 months   MAL-ED       BANGLADESH                     optimal              observed          -1.9679447   -2.2341455   -1.7017439
24 months   MAL-ED       INDIA                          optimal              observed          -1.8489127   -2.0046217   -1.6932036
24 months   MAL-ED       NEPAL                          optimal              observed          -1.0464390   -1.2616052   -0.8312728
24 months   MAL-ED       PERU                           optimal              observed          -1.5422055   -1.7126920   -1.3717189
24 months   MAL-ED       SOUTH AFRICA                   optimal              observed          -1.6320227   -2.3050330   -0.9590125
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.6411014   -2.9365149   -2.3456879
24 months   NIH-Birth    BANGLADESH                     optimal              observed          -2.1080059   -2.2790004   -1.9370115
24 months   NIH-Crypto   BANGLADESH                     optimal              observed          -1.4286690   -1.5604096   -1.2969285
24 months   PROVIDE      BANGLADESH                     optimal              observed          -1.5576980   -1.7174776   -1.3979184


### Parameter: E(Y)


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     observed             observed          -1.1180952   -1.2525408   -0.9836496
Birth       MAL-ED       INDIA                          observed             observed          -1.2036170   -1.4976814   -0.9095527
Birth       MAL-ED       NEPAL                          observed             observed          -0.8533333   -1.2104864   -0.4961803
Birth       MAL-ED       PERU                           observed             observed          -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1556000   -1.3655361   -0.9456639
Birth       NIH-Birth    BANGLADESH                     observed             observed          -0.9314050   -1.0202164   -0.8425936
Birth       NIH-Crypto   BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       PROVIDE      BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
6 months    CMIN         BANGLADESH                     observed             observed          -1.7844376   -1.9222926   -1.6465825
6 months    CONTENT      PERU                           observed             observed          -0.2785256   -0.4098735   -0.1471776
6 months    MAL-ED       BANGLADESH                     observed             observed          -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED       INDIA                          observed             observed          -1.2115254   -1.3298727   -1.0931782
6 months    MAL-ED       NEPAL                          observed             observed          -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED       PERU                           observed             observed          -1.3236661   -1.4316775   -1.2156546
6 months    MAL-ED       SOUTH AFRICA                   observed             observed          -1.0633202   -1.1909180   -0.9357224
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Birth    BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto   BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    PROVIDE      BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
24 months   CMIN         BANGLADESH                     observed             observed          -2.5109504   -2.6361514   -2.3857494
24 months   CONTENT      PERU                           observed             observed          -0.6868598   -0.8388476   -0.5348719
24 months   MAL-ED       BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED       INDIA                          observed             observed          -1.8861894   -2.0110006   -1.7613783
24 months   MAL-ED       NEPAL                          observed             observed          -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED       PERU                           observed             observed          -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED       SOUTH AFRICA                   observed             observed          -1.6450595   -1.7797240   -1.5103950
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Birth    BANGLADESH                     observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto   BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   PROVIDE      BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     optimal              observed          -0.2040231   -0.3800309   -0.0280154
Birth       MAL-ED       INDIA                          optimal              observed          -0.3061406   -0.6526013    0.0403201
Birth       MAL-ED       NEPAL                          optimal              observed          -0.5688858   -1.1551191    0.0173475
Birth       MAL-ED       PERU                           optimal              observed           0.0247769   -0.1051938    0.1547475
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1701110   -0.6097182    0.2694962
Birth       NIH-Birth    BANGLADESH                     optimal              observed          -0.1150380   -0.2164452   -0.0136307
Birth       NIH-Crypto   BANGLADESH                     optimal              observed           0.0722935   -0.0124785    0.1570655
Birth       PROVIDE      BANGLADESH                     optimal              observed           0.0110505   -0.0756373    0.0977382
6 months    CMIN         BANGLADESH                     optimal              observed          -0.2294929   -0.4131717   -0.0458141
6 months    CONTENT      PERU                           optimal              observed          -0.0261511   -0.2484899    0.1961878
6 months    MAL-ED       BANGLADESH                     optimal              observed          -0.1161757   -0.2617519    0.0294005
6 months    MAL-ED       INDIA                          optimal              observed          -0.1579211   -0.2944318   -0.0214104
6 months    MAL-ED       NEPAL                          optimal              observed          -0.1288643   -0.2893781    0.0316495
6 months    MAL-ED       PERU                           optimal              observed          -0.0499769   -0.1927801    0.0928262
6 months    MAL-ED       SOUTH AFRICA                   optimal              observed          -0.2415187   -1.3407830    0.8577457
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0635643   -0.2676500    0.1405215
6 months    NIH-Birth    BANGLADESH                     optimal              observed          -0.0421835   -0.1681146    0.0837476
6 months    NIH-Crypto   BANGLADESH                     optimal              observed          -0.0512630   -0.1288375    0.0263115
6 months    PROVIDE      BANGLADESH                     optimal              observed          -0.0423435   -0.1624507    0.0777638
24 months   CMIN         BANGLADESH                     optimal              observed          -0.0295498   -0.1956370    0.1365375
24 months   CONTENT      PERU                           optimal              observed           0.3390799    0.0935544    0.5846053
24 months   MAL-ED       BANGLADESH                     optimal              observed          -0.0104515   -0.2222764    0.2013734
24 months   MAL-ED       INDIA                          optimal              observed          -0.0372767   -0.1558593    0.0813058
24 months   MAL-ED       NEPAL                          optimal              observed          -0.2611487   -0.4319273   -0.0903701
24 months   MAL-ED       PERU                           optimal              observed          -0.2102655   -0.3454319   -0.0750991
24 months   MAL-ED       SOUTH AFRICA                   optimal              observed          -0.0130368   -0.6748453    0.6487717
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0044593   -0.2540026    0.2450839
24 months   NIH-Birth    BANGLADESH                     optimal              observed          -0.1110520   -0.2523696    0.0302656
24 months   NIH-Crypto   BANGLADESH                     optimal              observed          -0.0125956   -0.1133988    0.0882077
24 months   PROVIDE      BANGLADESH                     optimal              observed          -0.0447241   -0.1770321    0.0875838
