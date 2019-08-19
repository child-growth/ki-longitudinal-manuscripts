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
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%              79   241
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        92   241
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%             70   241
Birth       ki0047075b-MAL-ED       BRAZIL                         0%             169   183
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        12   183
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%              2   183
Birth       ki0047075b-MAL-ED       INDIA                          0%              46   203
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]       107   203
Birth       ki0047075b-MAL-ED       INDIA                          >5%             50   203
Birth       ki0047075b-MAL-ED       NEPAL                          0%              56   168
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        57   168
Birth       ki0047075b-MAL-ED       NEPAL                          >5%             55   168
Birth       ki0047075b-MAL-ED       PERU                           0%              82   279
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]        84   279
Birth       ki0047075b-MAL-ED       PERU                           >5%            113   279
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%             192   250
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        49   250
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   250
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              59   118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        40   118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             19   118
Birth       ki1000109-ResPak        PAKISTAN                       0%               0     5
Birth       ki1000109-ResPak        PAKISTAN                       (0%, 5%]         2     5
Birth       ki1000109-ResPak        PAKISTAN                       >5%              3     5
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%               4    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]         3    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%             19    26
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%               6    23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]         7    23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%             10    23
Birth       ki1114097-CMIN          BANGLADESH                     0%               6     8
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]         0     8
Birth       ki1114097-CMIN          BANGLADESH                     >5%              2     8
Birth       ki1114097-CMIN          BRAZIL                         0%              36   111
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]        46   111
Birth       ki1114097-CMIN          BRAZIL                         >5%             29   111
Birth       ki1114097-CMIN          PERU                           0%               4    10
Birth       ki1114097-CMIN          PERU                           (0%, 5%]         5    10
Birth       ki1114097-CMIN          PERU                           >5%              1    10
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
6 months    ki1000109-ResPak        PAKISTAN                       0%              41   235
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]        64   235
6 months    ki1000109-ResPak        PAKISTAN                       >5%            130   235
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%             129   536
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       168   536
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%            239   536
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%             157   582
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       242   582
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%            183   582
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%             341   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       167   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%            207   715
6 months    ki1114097-CMIN          BANGLADESH                     0%              81   243
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]        58   243
6 months    ki1114097-CMIN          BANGLADESH                     >5%            104   243
6 months    ki1114097-CMIN          BRAZIL                         0%              38   108
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]        41   108
6 months    ki1114097-CMIN          BRAZIL                         >5%             29   108
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%             212   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]       189   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%            271   672
6 months    ki1114097-CMIN          PERU                           0%             184   634
6 months    ki1114097-CMIN          PERU                           (0%, 5%]       184   634
6 months    ki1114097-CMIN          PERU                           >5%            266   634
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
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%             107   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       127   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            194   428
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%             152   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       232   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            194   578
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             277   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       106   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            131   514
24 months   ki1114097-CMIN          BANGLADESH                     0%              85   243
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        58   243
24 months   ki1114097-CMIN          BANGLADESH                     >5%            100   243
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%              99   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]        77   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%            103   279
24 months   ki1114097-CMIN          PERU                           0%              97   244
24 months   ki1114097-CMIN          PERU                           (0%, 5%]        79   244
24 months   ki1114097-CMIN          PERU                           >5%             68   244
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
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/ecdb6bf4-2f34-4354-af77-f39f667ecea1/2eeb1b11-0b70-4b13-993d-0d4b1ea511d7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.7642466   -1.0190807   -0.5094126
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.1357020   -1.4169414   -0.8544627
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -1.1090272   -1.3710310   -0.8470235
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed           0.0214172   -0.2122777    0.2551120
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.3615952   -1.4860211    0.7628307
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.8691240    0.5799587    1.1582894
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.4036013   -1.1191180    0.3119155
Birth       ki1114097-CMIN          BRAZIL                         optimal              observed          -0.1270050   -0.6491505    0.3951405
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.0097175   -0.2061177    0.2255526
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.8757419   -1.1548061   -0.5966778
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.3374998    0.1093498    0.5656497
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed           1.1139764    0.8873475    1.3406052
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.2195797   -0.0969640    0.5361233
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5723735    0.3423626    0.8023843
6 months    ki1000109-ResPak        PAKISTAN                       optimal              observed          -0.0486027   -0.2977967    0.2005913
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.3609179   -0.5390376   -0.1827981
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0723693   -0.2365500    0.0918114
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0549848   -0.0964856    0.2064553
6 months    ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.6255021   -0.8648310   -0.3861732
6 months    ki1114097-CMIN          BRAZIL                         optimal              observed           0.3539245   -0.0572343    0.7650834
6 months    ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.0771419   -0.2404128    0.0861291
6 months    ki1114097-CMIN          PERU                           optimal              observed           0.9412226    0.7810873    1.1013578
6 months    ki1114097-CONTENT       PERU                           optimal              observed           0.8823382    0.6208445    1.1438319
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.8096766   -1.0257961   -0.5935570
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.9139019   -1.0609815   -0.7668224
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.3627534   -0.5492890   -0.1762177
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed           0.1345117   -0.0850560    0.3540794
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.2583929   -0.2793914    0.7961772
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1746923   -0.1564809    0.5058656
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -1.0458443   -1.2403153   -0.8513732
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.7876419   -0.9390298   -0.6362541
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.5388406   -0.6747876   -0.4028937
24 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.6871758   -0.9058687   -0.4684829
24 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.1681942   -0.3749924    0.0386039
24 months   ki1114097-CMIN          PERU                           optimal              observed           0.9277623    0.7500113    1.1055134
24 months   ki1114097-CONTENT       PERU                           optimal              observed           0.3075616    0.0596592    0.5554640


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.9630705   -1.0989132   -0.8272278
Birth       ki0047075b-MAL-ED       INDIA                          observed             observed          -1.0691133   -1.2078629   -0.9303637
Birth       ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.9044643   -1.0439568   -0.7649718
Birth       ki0047075b-MAL-ED       PERU                           observed             observed          -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -0.0415200   -0.1860797    0.1030397
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7932203    0.5962220    0.9902187
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -0.7508696   -1.2358912   -0.2658480
Birth       ki1114097-CMIN          BRAZIL                         observed             observed          -0.1332432   -0.3441055    0.0776190
6 months    ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED       INDIA                          observed             observed          -0.7033969   -0.8285284   -0.5782654
6 months    ki0047075b-MAL-ED       NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED       PERU                           observed             observed           1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed           0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1000109-ResPak        PAKISTAN                       observed             observed          -0.1683617   -0.3528233    0.0160999
6 months    ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1114097-CMIN          BANGLADESH                     observed             observed          -0.5780453   -0.7226627   -0.4334279
6 months    ki1114097-CMIN          BRAZIL                         observed             observed           0.5889815    0.3767666    0.8011963
6 months    ki1114097-CMIN          GUINEA-BISSAU                  observed             observed          -0.0832589   -0.1713269    0.0048090
6 months    ki1114097-CMIN          PERU                           observed             observed           0.6708938    0.5815040    0.7602836
6 months    ki1114097-CONTENT       PERU                           observed             observed           1.0684318    0.9515274    1.1853362
24 months   ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED       INDIA                          observed             observed          -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED       PERU                           observed             observed           0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed           0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0500935   -0.0748234    0.1750103
24 months   ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1114097-CMIN          BANGLADESH                     observed             observed          -0.8535391   -0.9644236   -0.7426546
24 months   ki1114097-CMIN          GUINEA-BISSAU                  observed             observed          -0.2053345   -0.3365972   -0.0740718
24 months   ki1114097-CMIN          PERU                           observed             observed           0.7958060    0.6890764    0.9025356
24 months   ki1114097-CONTENT       PERU                           observed             observed           0.5668293    0.4302437    0.7034148


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.1988239   -0.4021630    0.0045153
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed           0.0665887   -0.1660623    0.2992398
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.2045630   -0.0033263    0.4124523
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0950014   -0.2856318    0.0956290
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.3200752   -0.7740700    1.4142204
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0759037   -0.3181279    0.1663205
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.3472683   -1.0441403    0.3496037
Birth       ki1114097-CMIN          BRAZIL                         optimal              observed          -0.0062383   -0.4135352    0.4010587
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.1495134   -0.3354954    0.0364685
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed           0.1723450   -0.0464540    0.3911440
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.2264546   -0.4085395   -0.0443697
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0595808   -0.2280994    0.1089379
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.3224938   -0.0045554    0.6495430
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0553222   -0.2674927    0.1568483
6 months    ki1000109-ResPak        PAKISTAN                       optimal              observed          -0.1197590   -0.2872048    0.0476868
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0779923   -0.2232029    0.0672184
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.1360012   -0.2671603   -0.0048422
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0252226   -0.1542869    0.1038417
6 months    ki1114097-CMIN          BANGLADESH                     optimal              observed           0.0474568   -0.1658122    0.2607259
6 months    ki1114097-CMIN          BRAZIL                         optimal              observed           0.2350570   -0.1070026    0.5771165
6 months    ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.0061170   -0.1414901    0.1292560
6 months    ki1114097-CMIN          PERU                           optimal              observed          -0.2703288   -0.4075021   -0.1331554
6 months    ki1114097-CONTENT       PERU                           optimal              observed           0.1860936   -0.0417688    0.4139560
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0111489   -0.1952662    0.1729684
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0383888   -0.1482014    0.0714238
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0136940   -0.1707725    0.1433845
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0146112   -0.1807249    0.1515024
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.1683088   -0.3506857    0.6873034
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1245989   -0.4178682    0.1686705
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed           0.1342652   -0.0296026    0.2981331
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.1002992   -0.2181685    0.0175700
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0715096   -0.1548560    0.0118369
24 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.1663633   -0.3636422    0.0309156
24 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.0371403   -0.2062416    0.1319610
24 months   ki1114097-CMIN          PERU                           optimal              observed          -0.1319563   -0.2674290    0.0035164
24 months   ki1114097-CONTENT       PERU                           optimal              observed           0.2592677    0.0360502    0.4824852
