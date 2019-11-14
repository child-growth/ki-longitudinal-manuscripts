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
![](/tmp/5fa0ff32-cf0e-4c24-9d98-e4caa8d1838c/480530e4-f180-4a63-93e3-36e837e1d445/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.7685320   -1.0563755   -0.4806885
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.8813050   -1.3886832   -0.3739267
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -1.3288076   -1.8036632   -0.8539519
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed           0.1586727   -0.1051439    0.4224893
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.0277042    0.7790417    1.2763668
Birth       ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -1.3522469   -1.5149233   -1.1895706
Birth       ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -1.3201192   -1.4478578   -1.1923806
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.1891237   -1.3189163   -1.0593312
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.1912029   -0.4269892    0.0445835
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.8467731   -1.1342647   -0.5592814
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.2427574    0.0070664    0.4784485
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed           1.0284247    0.8334837    1.2233657
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.3224519   -0.0409044    0.6858083
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.7336157    0.4725291    0.9947022
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.3007534   -0.4645151   -0.1369917
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0629542   -0.2167166    0.0908082
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.1215872   -0.0430575    0.2862319
6 months    ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.6971417   -0.9580706   -0.4362128
6 months    ki1114097-CONTENT       PERU                           optimal              observed           0.9978118    0.7544819    1.2411418
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.8467150   -1.1021773   -0.5912526
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.8508717   -1.0420574   -0.6596860
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.4195356   -0.6398013   -0.1992700
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed           0.1422585   -0.0757484    0.3602654
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.2201882   -0.0269308    0.4673071
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1943034   -0.1273064    0.5159132
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.9871238   -1.1729715   -0.8012760
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.8032637   -0.9541486   -0.6523787
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.5306866   -0.6675515   -0.3938216
24 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.7000011   -0.9141817   -0.4858206
24 months   ki1114097-CONTENT       PERU                           optimal              observed           0.4955777    0.2294836    0.7616718


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.9412093   -1.0864308   -0.7959878
Birth       ki0047075b-MAL-ED       INDIA                          observed             observed          -0.9324444   -1.2067907   -0.6580982
Birth       ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.7684615   -1.1257770   -0.4111460
Birth       ki0047075b-MAL-ED       PERU                           observed             observed          -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7624348    0.5710709    0.9537986
Birth       ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -1.3525437   -1.4473932   -1.2576942
Birth       ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
6 months    ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.1383956   -0.2672708   -0.0095204
6 months    ki0047075b-MAL-ED       INDIA                          observed             observed          -0.7082698   -0.8347304   -0.5818092
6 months    ki0047075b-MAL-ED       NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED       PERU                           observed             observed           1.0568987    0.9352990    1.1784983
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed           0.5427231    0.3906363    0.6948099
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1114097-CMIN          BANGLADESH                     observed             observed          -0.5780453   -0.7226627   -0.4334279
6 months    ki1114097-CONTENT       PERU                           observed             observed           1.0684318    0.9515274    1.1853362
24 months   ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.8201887   -0.9423967   -0.6979806
24 months   ki0047075b-MAL-ED       INDIA                          observed             observed          -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED       PERU                           observed             observed           0.1204478    0.0005049    0.2403906
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed           0.4148529    0.2940577    0.5356481
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0539486   -0.0712465    0.1791437
24 months   ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1114097-CMIN          BANGLADESH                     observed             observed          -0.8535391   -0.9644236   -0.7426546
24 months   ki1114097-CONTENT       PERU                           observed             observed           0.5668293    0.4302437    0.7034148


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.1726773   -0.4069940    0.0616394
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0511395   -0.5173814    0.4151025
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.5603460    0.1114067    1.0092853
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.2106903   -0.4315771    0.0101966
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2652694   -0.4759518   -0.0545871
Birth       ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0002968   -0.1411584    0.1405648
Birth       ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.0216606   -0.0860584    0.1293795
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0550276   -0.1633021    0.0532469
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.0528073   -0.1455512    0.2511658
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed           0.1385033   -0.0940931    0.3710998
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.1317122   -0.3205322    0.0571077
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed           0.0284740   -0.1196801    0.1766281
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.2202712   -0.1549211    0.5954635
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1973943   -0.4381605    0.0433718
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.1466504   -0.2842635   -0.0090373
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.1361365   -0.2580761   -0.0141969
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0918250   -0.2292671    0.0456172
6 months    ki1114097-CMIN          BANGLADESH                     optimal              observed           0.1190964   -0.1044093    0.3426021
6 months    ki1114097-CONTENT       PERU                           optimal              observed           0.0706200   -0.1472446    0.2884846
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.0265263   -0.1771741    0.2302267
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.1014190   -0.2572113    0.0543733
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.0430883   -0.1285161    0.2146927
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0218108   -0.1781374    0.1345158
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.1946648   -0.0155104    0.4048400
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1403548   -0.4245223    0.1438127
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed           0.0755447   -0.0816744    0.2327638
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0896034   -0.2076271    0.0284204
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0796636   -0.1646140    0.0052867
24 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.1535380   -0.3470819    0.0400060
24 months   ki1114097-CONTENT       PERU                           optimal              observed           0.0712516   -0.1695110    0.3120142
