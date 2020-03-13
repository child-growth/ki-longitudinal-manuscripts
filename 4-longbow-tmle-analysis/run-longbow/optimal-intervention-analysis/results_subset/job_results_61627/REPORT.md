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
Birth       CMIN         BANGLADESH                     0%              10    19
Birth       CMIN         BANGLADESH                     (0%, 5%]         3    19
Birth       CMIN         BANGLADESH                     >5%              6    19
Birth       CONTENT      PERU                           0%               0     2
Birth       CONTENT      PERU                           (0%, 5%]         1     2
Birth       CONTENT      PERU                           >5%              1     2
Birth       EE           PAKISTAN                       0%             164   177
Birth       EE           PAKISTAN                       (0%, 5%]        11   177
Birth       EE           PAKISTAN                       >5%              2   177
Birth       MAL-ED       BANGLADESH                     0%              65   215
Birth       MAL-ED       BANGLADESH                     (0%, 5%]        86   215
Birth       MAL-ED       BANGLADESH                     >5%             64   215
Birth       MAL-ED       BRAZIL                         0%              54    62
Birth       MAL-ED       BRAZIL                         (0%, 5%]         6    62
Birth       MAL-ED       BRAZIL                         >5%              2    62
Birth       MAL-ED       INDIA                          0%              11    45
Birth       MAL-ED       INDIA                          (0%, 5%]        23    45
Birth       MAL-ED       INDIA                          >5%             11    45
Birth       MAL-ED       NEPAL                          0%               8    26
Birth       MAL-ED       NEPAL                          (0%, 5%]        10    26
Birth       MAL-ED       NEPAL                          >5%              8    26
Birth       MAL-ED       PERU                           0%              67   228
Birth       MAL-ED       PERU                           (0%, 5%]        69   228
Birth       MAL-ED       PERU                           >5%             92   228
Birth       MAL-ED       SOUTH AFRICA                   0%              85   112
Birth       MAL-ED       SOUTH AFRICA                   (0%, 5%]        23   112
Birth       MAL-ED       SOUTH AFRICA                   >5%              4   112
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              51   115
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        44   115
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             20   115
Birth       NIH-Birth    BANGLADESH                     0%             150   572
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]       171   572
Birth       NIH-Birth    BANGLADESH                     >5%            251   572
Birth       NIH-Crypto   BANGLADESH                     0%             345   707
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]       160   707
Birth       NIH-Crypto   BANGLADESH                     >5%            202   707
Birth       PROVIDE      BANGLADESH                     0%             160   532
Birth       PROVIDE      BANGLADESH                     (0%, 5%]       206   532
Birth       PROVIDE      BANGLADESH                     >5%            166   532
6 months    CMIN         BANGLADESH                     0%              81   243
6 months    CMIN         BANGLADESH                     (0%, 5%]        58   243
6 months    CMIN         BANGLADESH                     >5%            104   243
6 months    CONTENT      PERU                           0%             115   215
6 months    CONTENT      PERU                           (0%, 5%]        43   215
6 months    CONTENT      PERU                           >5%             57   215
6 months    EE           PAKISTAN                       0%             338   375
6 months    EE           PAKISTAN                       (0%, 5%]        35   375
6 months    EE           PAKISTAN                       >5%              2   375
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
6 months    PROVIDE      BANGLADESH                     0%             157   603
6 months    PROVIDE      BANGLADESH                     (0%, 5%]       246   603
6 months    PROVIDE      BANGLADESH                     >5%            200   603
24 months   CMIN         BANGLADESH                     0%              85   243
24 months   CMIN         BANGLADESH                     (0%, 5%]        58   243
24 months   CMIN         BANGLADESH                     >5%            100   243
24 months   CONTENT      PERU                           0%              84   164
24 months   CONTENT      PERU                           (0%, 5%]        36   164
24 months   CONTENT      PERU                           >5%             44   164
24 months   EE           PAKISTAN                       0%             153   168
24 months   EE           PAKISTAN                       (0%, 5%]        14   168
24 months   EE           PAKISTAN                       >5%              1   168
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
24 months   NIH-Birth    BANGLADESH                     0%             107   428
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]       127   428
24 months   NIH-Birth    BANGLADESH                     >5%            194   428
24 months   NIH-Crypto   BANGLADESH                     0%             277   514
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]       106   514
24 months   NIH-Crypto   BANGLADESH                     >5%            131   514
24 months   PROVIDE      BANGLADESH                     0%             153   579
24 months   PROVIDE      BANGLADESH                     (0%, 5%]       232   579
24 months   PROVIDE      BANGLADESH                     >5%            194   579


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
![](/tmp/dfabb56d-aae3-4841-a1c4-d4064ddce02d/05a55de8-e3d3-4fd7-b39f-c2a085a9137f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     optimal              observed          -0.8006095   -1.1204424   -0.4807766
Birth       MAL-ED       INDIA                          optimal              observed          -0.3071596   -0.8667018    0.2523825
Birth       MAL-ED       NEPAL                          optimal              observed          -1.0088165   -1.6652438   -0.3523893
Birth       MAL-ED       PERU                           optimal              observed           0.1451794   -0.0955654    0.3859242
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.0180633    0.7690366    1.2670899
Birth       NIH-Birth    BANGLADESH                     optimal              observed          -1.3975906   -1.5580200   -1.2371612
Birth       NIH-Crypto   BANGLADESH                     optimal              observed          -1.1372956   -1.2868021   -0.9877891
Birth       PROVIDE      BANGLADESH                     optimal              observed          -1.2572775   -1.3896181   -1.1249370
6 months    CMIN         BANGLADESH                     optimal              observed          -0.5178150   -0.7855751   -0.2500549
6 months    CONTENT      PERU                           optimal              observed           1.1960217    1.0113319    1.3807116
6 months    MAL-ED       BANGLADESH                     optimal              observed          -0.1533502   -0.3732123    0.0665120
6 months    MAL-ED       INDIA                          optimal              observed          -0.8140089   -1.1034052   -0.5246125
6 months    MAL-ED       NEPAL                          optimal              observed           0.2692386    0.0299968    0.5084804
6 months    MAL-ED       PERU                           optimal              observed           0.9968542    0.7860395    1.2076689
6 months    MAL-ED       SOUTH AFRICA                   optimal              observed           0.2823107   -0.1208053    0.6854267
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.7337876    0.5081681    0.9594072
6 months    NIH-Birth    BANGLADESH                     optimal              observed          -0.3617617   -0.5335921   -0.1899313
6 months    NIH-Crypto   BANGLADESH                     optimal              observed           0.1097449   -0.0530090    0.2724987
6 months    PROVIDE      BANGLADESH                     optimal              observed          -0.0600577   -0.2122074    0.0920919
24 months   CMIN         BANGLADESH                     optimal              observed          -0.7129396   -0.9256363   -0.5002430
24 months   CONTENT      PERU                           optimal              observed           0.4227682    0.1866448    0.6588917
24 months   MAL-ED       BANGLADESH                     optimal              observed          -0.9001696   -1.1421789   -0.6581604
24 months   MAL-ED       INDIA                          optimal              observed          -0.8754738   -1.0754931   -0.6754546
24 months   MAL-ED       NEPAL                          optimal              observed          -0.4369414   -0.6504322   -0.2234506
24 months   MAL-ED       PERU                           optimal              observed           0.2325567    0.0391651    0.4259482
24 months   MAL-ED       SOUTH AFRICA                   optimal              observed           0.2902111   -0.0961209    0.6765431
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2253467   -0.1102641    0.5609576
24 months   NIH-Birth    BANGLADESH                     optimal              observed          -0.9684583   -1.1351552   -0.8017614
24 months   NIH-Crypto   BANGLADESH                     optimal              observed          -0.5684507   -0.7010698   -0.4358316
24 months   PROVIDE      BANGLADESH                     optimal              observed          -0.7966647   -0.9480606   -0.6452689


### Parameter: E(Y)


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     observed             observed          -0.9418605   -1.0869834   -0.7967375
Birth       MAL-ED       INDIA                          observed             observed          -0.9324444   -1.2067907   -0.6580982
Birth       MAL-ED       NEPAL                          observed             observed          -0.7684615   -1.1257770   -0.4111460
Birth       MAL-ED       PERU                           observed             observed          -0.0520175   -0.1725298    0.0684947
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7624348    0.5710709    0.9537986
Birth       NIH-Birth    BANGLADESH                     observed             observed          -1.3525437   -1.4473932   -1.2576942
Birth       NIH-Crypto   BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       PROVIDE      BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
6 months    CMIN         BANGLADESH                     observed             observed          -0.5780453   -0.7226627   -0.4334279
6 months    CONTENT      PERU                           observed             observed           1.0644279    0.9468682    1.1819876
6 months    MAL-ED       BANGLADESH                     observed             observed          -0.1376763   -0.2664642   -0.0088885
6 months    MAL-ED       INDIA                          observed             observed          -0.7079979   -0.8344175   -0.5815783
6 months    MAL-ED       NEPAL                          observed             observed           0.1104308   -0.0208643    0.2417259
6 months    MAL-ED       PERU                           observed             observed           1.0528816    0.9313005    1.1744626
6 months    MAL-ED       SOUTH AFRICA                   observed             observed           0.5421785    0.3900443    0.6943126
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    NIH-Birth    BANGLADESH                     observed             observed          -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto   BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    PROVIDE      BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
24 months   CMIN         BANGLADESH                     observed             observed          -0.8535391   -0.9644236   -0.7426546
24 months   CONTENT      PERU                           observed             observed           0.5902439    0.4560143    0.7244735
24 months   MAL-ED       BANGLADESH                     observed             observed          -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED       INDIA                          observed             observed          -0.9516520   -1.0670654   -0.8362385
24 months   MAL-ED       NEPAL                          observed             observed          -0.3749123   -0.4886073   -0.2612173
24 months   MAL-ED       PERU                           observed             observed           0.1111982   -0.0118399    0.2342362
24 months   MAL-ED       SOUTH AFRICA                   observed             observed           0.4090301    0.2879441    0.5301161
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0547975   -0.0703378    0.1799328
24 months   NIH-Birth    BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto   BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   PROVIDE      BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       BANGLADESH                     optimal              observed          -0.1412510   -0.4007069    0.1182050
Birth       MAL-ED       INDIA                          optimal              observed          -0.6252848   -1.1287072   -0.1218624
Birth       MAL-ED       NEPAL                          optimal              observed           0.2403550   -0.2823577    0.7630676
Birth       MAL-ED       PERU                           optimal              observed          -0.1971969   -0.3942803   -0.0001136
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2556285   -0.4655121   -0.0457449
Birth       NIH-Birth    BANGLADESH                     optimal              observed           0.0450469   -0.0977301    0.1878240
Birth       NIH-Crypto   BANGLADESH                     optimal              observed          -0.1068558   -0.2324594    0.0187479
Birth       PROVIDE      BANGLADESH                     optimal              observed          -0.0411811   -0.1504525    0.0680902
6 months    CMIN         BANGLADESH                     optimal              observed          -0.0602303   -0.2863175    0.1658569
6 months    CONTENT      PERU                           optimal              observed          -0.1315938   -0.3080563    0.0448686
6 months    MAL-ED       BANGLADESH                     optimal              observed           0.0156738   -0.1761666    0.2075143
6 months    MAL-ED       INDIA                          optimal              observed           0.1060110   -0.1284981    0.3405200
6 months    MAL-ED       NEPAL                          optimal              observed          -0.1588078   -0.3480497    0.0304342
6 months    MAL-ED       PERU                           optimal              observed           0.0560273   -0.1011378    0.2131925
6 months    MAL-ED       SOUTH AFRICA                   optimal              observed           0.2598678   -0.1575245    0.6772601
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1975663   -0.4052707    0.0101381
6 months    NIH-Birth    BANGLADESH                     optimal              observed          -0.0856421   -0.2286501    0.0573659
6 months    NIH-Crypto   BANGLADESH                     optimal              observed          -0.0799826   -0.2195602    0.0595949
6 months    PROVIDE      BANGLADESH                     optimal              observed          -0.1390329   -0.2594529   -0.0186129
24 months   CMIN         BANGLADESH                     optimal              observed          -0.1405995   -0.3327526    0.0515537
24 months   CONTENT      PERU                           optimal              observed           0.1674757   -0.0512633    0.3862147
24 months   MAL-ED       BANGLADESH                     optimal              observed           0.0808772   -0.1140373    0.2757917
24 months   MAL-ED       INDIA                          optimal              observed          -0.0761782   -0.2506278    0.0982715
24 months   MAL-ED       NEPAL                          optimal              observed           0.0620291   -0.1062077    0.2302660
24 months   MAL-ED       PERU                           optimal              observed          -0.1213585   -0.2697293    0.0270123
24 months   MAL-ED       SOUTH AFRICA                   optimal              observed           0.1188190   -0.2436309    0.4812689
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1705492   -0.4671183    0.1260199
24 months   NIH-Birth    BANGLADESH                     optimal              observed           0.0568793   -0.0874971    0.2012556
24 months   NIH-Crypto   BANGLADESH                     optimal              observed          -0.0418995   -0.1246143    0.0408154
24 months   PROVIDE      BANGLADESH                     optimal              observed          -0.0962023   -0.2148248    0.0224202
