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



```
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```




# Results Detail

## Results Plots
![](/tmp/a07928b3-7de3-47a5-b5cc-edbdb15dba6b/e84e2e4a-ecf7-4120-95bc-5a3eb3ec93d5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -1.0216859   -1.2353699   -0.8080019
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.8446216   -1.1253009   -0.5639423
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.3598992   -1.0120333    0.2922350
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.9997345   -1.1823639   -0.8171052
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.9849808   -1.4324950   -0.5374665
Birth       ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.8700174   -1.0003219   -0.7397129
Birth       ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.9907306   -1.1027781   -0.8786831
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.9838645   -1.1037352   -0.8639938
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -1.1179950   -1.2907954   -0.9451946
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.1705864   -1.3500047   -0.9911681
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.5907851   -0.7939618   -0.3876085
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -1.2267592   -1.3905568   -1.0629616
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.8112268   -1.8846151    0.2621614
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3283399   -1.5798786   -1.0768012
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -1.4751491   -1.6241823   -1.3261160
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -1.1542568   -1.2997369   -1.0087768
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.1472453   -1.2467576   -1.0477330
6 months    ki1114097-CMIN          BANGLADESH                     optimal              observed          -1.5907578   -1.7889822   -1.3925334
6 months    ki1114097-CONTENT       PERU                           optimal              observed          -0.1761747   -0.4784632    0.1261139
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -2.0644102   -2.2600667   -1.8687537
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.7924799   -2.0107091   -1.5742507
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -1.1973141   -1.4018332   -0.9927951
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -1.5398710   -1.7104383   -1.3693036
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -1.3016911   -2.1655937   -0.4377884
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.7713678   -3.0327190   -2.5100166
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -2.0602048   -2.2373714   -1.8830382
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -1.5478170   -1.7016799   -1.3939542
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.5174018   -1.6309116   -1.4038920
24 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          -2.3863061   -2.5935502   -2.1790620
24 months   ki1114097-CONTENT       PERU                           optimal              observed          -0.8121014   -1.1145081   -0.5096947


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
6 months    ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -1.2054910   -1.3228953   -1.0880867
6 months    ki0047075b-MAL-ED       INDIA                          observed             observed          -1.2113701   -1.3298485   -1.0928916
6 months    ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED       PERU                           observed             observed          -1.3280952   -1.4363364   -1.2198541
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -1.0639173   -1.1916078   -0.9362269
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1114097-CMIN          BANGLADESH                     observed             observed          -1.7844376   -1.9222926   -1.6465825
6 months    ki1114097-CONTENT       PERU                           observed             observed          -0.3139217   -0.4868486   -0.1409948
24 months   ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED       INDIA                          observed             observed          -1.8848458   -2.0096941   -1.7599975
24 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          -1.3118640   -1.4315132   -1.1922149
24 months   ki0047075b-MAL-ED       PERU                           observed             observed          -1.7544776   -1.8753255   -1.6336298
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -1.6491807   -1.7842885   -1.5140729
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6451636   -2.7802323   -2.5100948
24 months   ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1114097-CMIN          BANGLADESH                     observed             observed          -2.5109504   -2.6361514   -2.3857494
24 months   ki1114097-CONTENT       PERU                           observed             observed          -0.6962195   -0.8674103   -0.5250287


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0964093   -0.2735058    0.0806872
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.3589955   -0.6939721   -0.0240188
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.4934342   -1.0653672    0.0784988
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed           0.1169448   -0.0114722    0.2453619
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1706192   -0.5951428    0.2539044
Birth       ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0613876   -0.1596501    0.0368749
Birth       ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.1056285    0.0232386    0.1880185
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0743700   -0.0254361    0.1741760
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0874961   -0.2337439    0.0587518
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0407837   -0.1729274    0.0913601
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.0297258   -0.1335740    0.1930256
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -0.1013360   -0.2232276    0.0205556
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.2526905   -1.3024628    0.7970818
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0404050   -0.2495511    0.1687410
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed           0.0677671   -0.0569371    0.1924713
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.0625653   -0.0595643    0.1846949
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0514330   -0.1293794    0.0265134
6 months    ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.1936798   -0.3716547   -0.0157050
6 months    ki1114097-CONTENT       PERU                           optimal              observed          -0.1377471   -0.4095493    0.1340552
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.0854951   -0.0845155    0.2555057
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0923659   -0.2584112    0.0736793
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.1145499   -0.2847891    0.0556893
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.2146067   -0.3504258   -0.0787875
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.3474896   -1.1953225    0.5003433
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1262042   -0.1012801    0.3536885
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.1588531   -0.3074801   -0.0102261
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0546051   -0.1857040    0.0764938
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0761372   -0.0105477    0.1628221
24 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.1246443   -0.2962333    0.0469446
24 months   ki1114097-CONTENT       PERU                           optimal              observed           0.1158819   -0.1276113    0.3593751
