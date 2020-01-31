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

agecat      studyid                 country                        perdiar6    n_cell     n
----------  ----------------------  -----------------------------  ---------  -------  ----
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%              65   215
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        86   215
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%             64   215
Birth       ki0047075b-MAL-ED       BRAZIL                         0%              54    62
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]         6    62
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%              2    62
Birth       ki0047075b-MAL-ED       INDIA                          0%              11    45
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]        23    45
Birth       ki0047075b-MAL-ED       INDIA                          >5%             11    45
Birth       ki0047075b-MAL-ED       NEPAL                          0%               8    26
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        10    26
Birth       ki0047075b-MAL-ED       NEPAL                          >5%              8    26
Birth       ki0047075b-MAL-ED       PERU                           0%              67   228
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]        69   228
Birth       ki0047075b-MAL-ED       PERU                           >5%             92   228
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%              85   112
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        23   112
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              4   112
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              51   115
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        44   115
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             20   115
Birth       ki1000109-EE            PAKISTAN                       0%             164   177
Birth       ki1000109-EE            PAKISTAN                       (0%, 5%]        11   177
Birth       ki1000109-EE            PAKISTAN                       >5%              2   177
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%             150   572
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       171   572
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%            251   572
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%             160   532
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       206   532
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%            166   532
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%             345   707
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       160   707
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%            202   707
Birth       ki1114097-CMIN          BANGLADESH                     0%              10    19
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]         3    19
Birth       ki1114097-CMIN          BANGLADESH                     >5%              6    19
Birth       ki1114097-CONTENT       PERU                           0%               0     2
Birth       ki1114097-CONTENT       PERU                           (0%, 5%]         1     2
Birth       ki1114097-CONTENT       PERU                           >5%              1     2
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%              71   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        92   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%             78   241
6 months    ki0047075b-MAL-ED       BRAZIL                         0%             192   209
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   209
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%              2   209
6 months    ki0047075b-MAL-ED       INDIA                          0%              50   236
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]       127   236
6 months    ki0047075b-MAL-ED       INDIA                          >5%             59   236
6 months    ki0047075b-MAL-ED       NEPAL                          0%              80   236
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   236
6 months    ki0047075b-MAL-ED       NEPAL                          >5%             80   236
6 months    ki0047075b-MAL-ED       PERU                           0%              68   273
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]        89   273
6 months    ki0047075b-MAL-ED       PERU                           >5%            116   273
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%             190   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        55   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   254
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%             105   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        96   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             46   247
6 months    ki1000109-EE            PAKISTAN                       0%             338   375
6 months    ki1000109-EE            PAKISTAN                       (0%, 5%]        35   375
6 months    ki1000109-EE            PAKISTAN                       >5%              2   375
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%             129   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       169   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%            239   537
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%             157   603
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       246   603
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%            200   603
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%             341   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       167   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%            207   715
6 months    ki1114097-CMIN          BANGLADESH                     0%              81   243
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]        58   243
6 months    ki1114097-CMIN          BANGLADESH                     >5%            104   243
6 months    ki1114097-CONTENT       PERU                           0%             115   215
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]        43   215
6 months    ki1114097-CONTENT       PERU                           >5%             57   215
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%              64   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        83   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             65   212
24 months   ki0047075b-MAL-ED       BRAZIL                         0%             154   169
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        13   169
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   169
24 months   ki0047075b-MAL-ED       INDIA                          0%              48   227
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   227
24 months   ki0047075b-MAL-ED       INDIA                          >5%             57   227
24 months   ki0047075b-MAL-ED       NEPAL                          0%              77   228
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        75   228
24 months   ki0047075b-MAL-ED       NEPAL                          >5%             76   228
24 months   ki0047075b-MAL-ED       PERU                           0%              53   201
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        64   201
24 months   ki0047075b-MAL-ED       PERU                           >5%             84   201
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             177   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        52   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   238
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              92   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        83   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             39   214
24 months   ki1000109-EE            PAKISTAN                       0%             153   168
24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]        14   168
24 months   ki1000109-EE            PAKISTAN                       >5%              1   168
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%             107   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       127   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            194   428
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%             153   579
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       232   579
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            194   579
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             277   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       106   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            131   514
24 months   ki1114097-CMIN          BANGLADESH                     0%              85   243
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        58   243
24 months   ki1114097-CMIN          BANGLADESH                     >5%            100   243
24 months   ki1114097-CONTENT       PERU                           0%              84   164
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]        36   164
24 months   ki1114097-CONTENT       PERU                           >5%             44   164


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/630e290a-9c65-44cf-b72c-477cd641a603/4c460c74-7f36-48a3-ac41-f797104b304c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.7671070   -1.0599470   -0.4742671
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.4973100   -1.1157381    0.1211181
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.7711171   -1.2605647   -0.2816695
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed           0.1823753   -0.0774332    0.4421838
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.0232672    0.7760669    1.2704676
Birth       ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -1.3925036   -1.5871626   -1.1978446
Birth       ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -1.3875967   -1.5192424   -1.2559511
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.1288310   -1.2661854   -0.9914766
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.2427241   -0.4731023   -0.0123460
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.9392225   -1.2218955   -0.6565496
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.2884022    0.0687344    0.5080699
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed           1.0503268    0.8467247    1.2539289
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.4805800   -0.0760197    1.0371796
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5812464    0.3077051    0.8547877
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.3154041   -0.4903742   -0.1404340
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0620721   -0.2156347    0.0914906
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0762858   -0.0876202    0.2401918
6 months    ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.7023438   -0.9927515   -0.4119361
6 months    ki1114097-CONTENT       PERU                           optimal              observed           0.9088797    0.6287640    1.1889955
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.9492462   -1.1640393   -0.7344531
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.1089601   -1.3262944   -0.8916257
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.4044489   -0.6301972   -0.1787005
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed           0.2261474    0.0346850    0.4176099
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.0481986   -0.1245607    0.2209579
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1577837   -0.1620430    0.4776103
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -1.0585865   -1.2157251   -0.9014479
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.7975490   -0.9494902   -0.6456078
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.5365545   -0.6704141   -0.4026948
24 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.7184553   -0.9363600   -0.5005507
24 months   ki1114097-CONTENT       PERU                           optimal              observed           0.2552433    0.0426693    0.4678173


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.9418605   -1.0869834   -0.7967375
Birth       ki0047075b-MAL-ED       INDIA                          observed             observed          -0.9324444   -1.2067907   -0.6580982
Birth       ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.7684615   -1.1257770   -0.4111460
Birth       ki0047075b-MAL-ED       PERU                           observed             observed          -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7624348    0.5710709    0.9537986
Birth       ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -1.3525437   -1.4473932   -1.2576942
Birth       ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
6 months    ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.1376763   -0.2664642   -0.0088885
6 months    ki0047075b-MAL-ED       INDIA                          observed             observed          -0.7079979   -0.8344175   -0.5815783
6 months    ki0047075b-MAL-ED       NEPAL                          observed             observed           0.1104308   -0.0208643    0.2417259
6 months    ki0047075b-MAL-ED       PERU                           observed             observed           1.0528816    0.9313005    1.1744626
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed           0.5421785    0.3900443    0.6943126
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1114097-CMIN          BANGLADESH                     observed             observed          -0.5780453   -0.7226627   -0.4334279
6 months    ki1114097-CONTENT       PERU                           observed             observed           1.0684318    0.9515274    1.1853362
24 months   ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED       INDIA                          observed             observed          -0.9516520   -1.0670654   -0.8362385
24 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.3749123   -0.4886073   -0.2612173
24 months   ki0047075b-MAL-ED       PERU                           observed             observed           0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed           0.4090301    0.2879441    0.5301161
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0547975   -0.0703378    0.1799328
24 months   ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1114097-CMIN          BANGLADESH                     observed             observed          -0.8535391   -0.9644236   -0.7426546
24 months   ki1114097-CONTENT       PERU                           observed             observed           0.5668293    0.4302437    0.7034148


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.1747534   -0.4121503    0.0626434
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.4351344   -0.9736205    0.1033516
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.0026556   -0.4927110    0.4980221
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.2343928   -0.4505782   -0.0182075
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2608325   -0.4697129   -0.0519520
Birth       ki1017093-NIH-Birth     BANGLADESH                     optimal              observed           0.0399599   -0.1197650    0.1996848
Birth       ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.0891381   -0.0166875    0.1949637
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.1153204   -0.2282834   -0.0023574
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.1050478   -0.0880243    0.2981199
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed           0.2312246    0.0055792    0.4568701
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.1779714   -0.3575347    0.0015920
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed           0.0025548   -0.1498314    0.1549410
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.0615985   -0.4945481    0.6177451
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0450251   -0.3001310    0.2100808
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.1319997   -0.2727365    0.0087372
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.1370186   -0.2585495   -0.0154876
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0465236   -0.1836227    0.0905756
6 months    ki1114097-CMIN          BANGLADESH                     optimal              observed           0.1242985   -0.1166362    0.3652332
6 months    ki1114097-CONTENT       PERU                           optimal              observed           0.1595521   -0.0801296    0.3992338
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.1299537   -0.0525870    0.3124944
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed           0.1573081   -0.0057585    0.3203747
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.0295366   -0.1449096    0.2039828
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.1149493   -0.2595540    0.0296554
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.3608315    0.2022438    0.5194192
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1029862   -0.3856047    0.1796323
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed           0.1470075    0.0070192    0.2869958
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0953180   -0.2145104    0.0238743
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0737957   -0.1558033    0.0082118
24 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.1350838   -0.3318898    0.0617223
24 months   ki1114097-CONTENT       PERU                           optimal              observed           0.3115860    0.1237728    0.4993991
