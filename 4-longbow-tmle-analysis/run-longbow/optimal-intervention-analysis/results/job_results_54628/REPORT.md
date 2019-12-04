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

agecat      studyid                 country                        perdiar6    n_cell     n
----------  ----------------------  -----------------------------  ---------  -------  ----
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%              72   231
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        90   231
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%             69   231
Birth       ki0047075b-MAL-ED       BRAZIL                         0%              57    65
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]         6    65
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%              2    65
Birth       ki0047075b-MAL-ED       INDIA                          0%              12    47
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]        24    47
Birth       ki0047075b-MAL-ED       INDIA                          >5%             11    47
Birth       ki0047075b-MAL-ED       NEPAL                          0%               8    27
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        10    27
Birth       ki0047075b-MAL-ED       NEPAL                          >5%              9    27
Birth       ki0047075b-MAL-ED       PERU                           0%              67   233
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]        72   233
Birth       ki0047075b-MAL-ED       PERU                           >5%             94   233
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%              86   113
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        23   113
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              4   113
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              59   125
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        45   125
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             21   125
Birth       ki1000109-EE            PAKISTAN                       0%             223   240
Birth       ki1000109-EE            PAKISTAN                       (0%, 5%]        15   240
Birth       ki1000109-EE            PAKISTAN                       >5%              2   240
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%             160   605
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       177   605
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%            268   605
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%             161   539
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       209   539
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%            169   539
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%             360   732
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       163   732
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%            209   732
Birth       ki1114097-CMIN          BANGLADESH                     0%              16    26
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]         4    26
Birth       ki1114097-CMIN          BANGLADESH                     >5%              6    26
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
6 months    ki1000109-EE            PAKISTAN                       0%             336   373
6 months    ki1000109-EE            PAKISTAN                       (0%, 5%]        35   373
6 months    ki1000109-EE            PAKISTAN                       >5%              2   373
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%             129   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       169   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%            239   537
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%             158   604
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       246   604
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%            200   604
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%             341   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       167   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%            207   715
6 months    ki1114097-CMIN          BANGLADESH                     0%              81   243
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]        59   243
6 months    ki1114097-CMIN          BANGLADESH                     >5%            103   243
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
24 months   ki1000109-EE            PAKISTAN                       0%             152   167
24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]        14   167
24 months   ki1000109-EE            PAKISTAN                       >5%              1   167
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%             107   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       128   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            194   429
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%             152   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       232   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            194   578
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             277   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       106   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            131   514
24 months   ki1114097-CMIN          BANGLADESH                     0%              85   242
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        58   242
24 months   ki1114097-CMIN          BANGLADESH                     >5%             99   242
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
![](/tmp/f2e6c687-49e2-4b5c-8aa8-1c3c9432e41b/3c233bc4-27e2-4174-90b9-0250da3aaa5a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -1.1634416   -1.3766943   -0.9501889
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.3281465   -1.7559180   -0.9003749
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.3787269   -1.1180478    0.3605940
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.9364252   -1.1175730   -0.7552775
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.9776764   -1.4850599   -0.4702928
Birth       ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.9657942   -1.1076549   -0.8239335
Birth       ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.8663201   -0.9905015   -0.7421388
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.9965246   -1.1113752   -0.8816739
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -1.0980867   -1.2782290   -0.9179444
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.1869076   -1.3758912   -0.9979239
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.4733530   -0.6445471   -0.3021589
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -1.2168322   -1.3862174   -1.0474470
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.6883918   -1.7002837    0.3235000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2741930   -1.5006002   -1.0477857
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -1.4452829   -1.6002724   -1.2902933
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -1.1131963   -1.2564326   -0.9699601
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.2118959   -1.3145907   -1.1092010
6 months    ki1114097-CMIN          BANGLADESH                     optimal              observed          -1.7772817   -2.0326918   -1.5218715
6 months    ki1114097-CONTENT       PERU                           optimal              observed          -0.1544752   -0.4618827    0.1529323
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -2.1738623   -2.3847896   -1.9629351
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.8605913   -2.0636868   -1.6574958
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -1.1030075   -1.3134547   -0.8925603
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -1.5442415   -1.7197704   -1.3687127
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -1.3119119   -2.1161894   -0.5076344
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5587119   -2.7989700   -2.3184538
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -2.1280007   -2.3032612   -1.9527401
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -1.5405479   -1.6985844   -1.3825114
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.4758558   -1.6099315   -1.3417801
24 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          -2.4989330   -2.7018521   -2.2960139
24 months   ki1114097-CONTENT       PERU                           optimal              observed          -0.6623564   -0.9603204   -0.3643923


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -1.1180952   -1.2525408   -0.9836496
Birth       ki0047075b-MAL-ED       INDIA                          observed             observed          -1.2036170   -1.4976814   -0.9095527
Birth       ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.8533333   -1.2104864   -0.4961803
Birth       ki0047075b-MAL-ED       PERU                           observed             observed          -0.8827897   -1.0001058   -0.7654736
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1556000   -1.3655361   -0.9456639
Birth       ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -0.9314050   -1.0202164   -0.8425936
Birth       ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
6 months    ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -1.2049931   -1.3222136   -1.0877726
6 months    ki0047075b-MAL-ED       INDIA                          observed             observed          -1.2115254   -1.3298727   -1.0931782
6 months    ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.5615819   -0.6741832   -0.4489807
6 months    ki0047075b-MAL-ED       PERU                           observed             observed          -1.3236661   -1.4316775   -1.2156546
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -1.0633202   -1.1909180   -0.9357224
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1114097-CMIN          BANGLADESH                     observed             observed          -1.7844376   -1.9222926   -1.6465825
6 months    ki1114097-CONTENT       PERU                           observed             observed          -0.3139217   -0.4868486   -0.1409948
24 months   ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED       INDIA                          observed             observed          -1.8861894   -2.0110006   -1.7613783
24 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          -1.3075877   -1.4270718   -1.1881037
24 months   ki0047075b-MAL-ED       PERU                           observed             observed          -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -1.6450595   -1.7797240   -1.5103950
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6455607   -2.7807256   -2.5103959
24 months   ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1114097-CMIN          BANGLADESH                     observed             observed          -2.5109504   -2.6361514   -2.3857494
24 months   ki1114097-CONTENT       PERU                           observed             observed          -0.6962195   -0.8674103   -0.5250287


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.0453464   -0.1302048    0.2208975
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed           0.1245295   -0.2548837    0.5039426
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.4746064   -1.1190225    0.1698097
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed           0.0536355   -0.0730080    0.1802790
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1779236   -0.6562417    0.3003944
Birth       ki1017093-NIH-Birth     BANGLADESH                     optimal              observed           0.0343892   -0.0652896    0.1340681
Birth       ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0187819   -0.1077553    0.0701915
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0870300   -0.0125811    0.1866412
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.1069064   -0.2567097    0.0428970
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0246179   -0.1610856    0.1118498
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0882289   -0.2385625    0.0621047
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -0.1068339   -0.2397789    0.0261111
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.3749284   -1.3634266    0.6135698
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0945520   -0.2959501    0.1068462
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed           0.0379008   -0.0882867    0.1640883
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.0215048   -0.1007486    0.1437582
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0132175   -0.0705417    0.0969767
6 months    ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.0071559   -0.2087440    0.1944322
6 months    ki1114097-CONTENT       PERU                           optimal              observed          -0.1594465   -0.4357597    0.1168666
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.1954661    0.0227314    0.3682008
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0255981   -0.1820869    0.1308907
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.2045802   -0.3759719   -0.0331885
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.2082295   -0.3495836   -0.0668753
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.3331476   -1.1219909    0.4556956
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0868488   -0.3110490    0.1373513
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0910572   -0.2379216    0.0558071
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0618743   -0.1976124    0.0738639
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0345912   -0.0784791    0.1476615
24 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.0120174   -0.1801995    0.1561647
24 months   ki1114097-CONTENT       PERU                           optimal              observed          -0.0338632   -0.2902572    0.2225308
