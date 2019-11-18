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

**Intervention Variable:** trth2o

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
* W_nhh
* W_nchldlt5
* brthmon
* cleanck
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_brthmon
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        trth2o    n_cell     n
----------  -------------------------  -----------------------------  -------  -------  ----
Birth       ki0047075b-MAL-ED          BANGLADESH                     1            117   119
Birth       ki0047075b-MAL-ED          BANGLADESH                     0              2   119
Birth       ki0047075b-MAL-ED          BRAZIL                         1              4    22
Birth       ki0047075b-MAL-ED          BRAZIL                         0             18    22
Birth       ki0047075b-MAL-ED          INDIA                          1              0     2
Birth       ki0047075b-MAL-ED          INDIA                          0              2     2
Birth       ki0047075b-MAL-ED          NEPAL                          1              7     9
Birth       ki0047075b-MAL-ED          NEPAL                          0              2     9
Birth       ki0047075b-MAL-ED          PERU                           1             28    36
Birth       ki0047075b-MAL-ED          PERU                           0              8    36
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              1     5
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0              4     5
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              4    22
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             18    22
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             26    26
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              0    26
Birth       ki1000108-IRC              INDIA                          1            120   120
Birth       ki1000108-IRC              INDIA                          0              0   120
Birth       ki1017093b-PROVIDE         BANGLADESH                     1             12   539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0            527   539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1            409   732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0            323   732
Birth       ki1113344-GMS-Nepal        NEPAL                          1              1     4
Birth       ki1113344-GMS-Nepal        NEPAL                          0              3     4
6 months    ki0047075b-MAL-ED          BANGLADESH                     1            132   134
6 months    ki0047075b-MAL-ED          BANGLADESH                     0              2   134
6 months    ki0047075b-MAL-ED          BRAZIL                         1             13   103
6 months    ki0047075b-MAL-ED          BRAZIL                         0             90   103
6 months    ki0047075b-MAL-ED          INDIA                          1              4     9
6 months    ki0047075b-MAL-ED          INDIA                          0              5     9
6 months    ki0047075b-MAL-ED          NEPAL                          1             69    83
6 months    ki0047075b-MAL-ED          NEPAL                          0             14    83
6 months    ki0047075b-MAL-ED          PERU                           1             39    49
6 months    ki0047075b-MAL-ED          PERU                           0             10    49
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    12
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             10    12
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    42
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             36    42
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            120   120
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              0   120
6 months    ki1000108-IRC              INDIA                          1            121   121
6 months    ki1000108-IRC              INDIA                          0              0   121
6 months    ki1017093b-PROVIDE         BANGLADESH                     1             14   604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            590   604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            396   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            319   715
6 months    ki1113344-GMS-Nepal        NEPAL                          1              1     4
6 months    ki1113344-GMS-Nepal        NEPAL                          0              3     4
24 months   ki0047075b-MAL-ED          BANGLADESH                     1            133   135
24 months   ki0047075b-MAL-ED          BANGLADESH                     0              2   135
24 months   ki0047075b-MAL-ED          BRAZIL                         1             13   103
24 months   ki0047075b-MAL-ED          BRAZIL                         0             90   103
24 months   ki0047075b-MAL-ED          INDIA                          1              4     9
24 months   ki0047075b-MAL-ED          INDIA                          0              5     9
24 months   ki0047075b-MAL-ED          NEPAL                          1             69    83
24 months   ki0047075b-MAL-ED          NEPAL                          0             14    83
24 months   ki0047075b-MAL-ED          PERU                           1             39    49
24 months   ki0047075b-MAL-ED          PERU                           0             10    49
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    43
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             37    43
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            119   119
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0   119
24 months   ki1000108-IRC              INDIA                          1            121   121
24 months   ki1000108-IRC              INDIA                          0              0   121
24 months   ki1017093b-PROVIDE         BANGLADESH                     1             14   578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            564   578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            242   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            272   514
24 months   ki1113344-GMS-Nepal        NEPAL                          1              1     4
24 months   ki1113344-GMS-Nepal        NEPAL                          0              3     4


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/e2ef7e28-7046-49c2-8013-bc9ac32f0651/27345da7-6159-45d7-a389-d32d3d9d3edf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.9321968   -1.4806232   -0.3837704
Birth       ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.6701410   -1.2252848   -0.1149971
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.8393750   -0.9544639   -0.7242860
6 months    ki0047075b-MAL-ED       BRAZIL                         optimal              observed           0.1929637   -0.0230465    0.4089738
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.4753029   -0.6925933   -0.2580124
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -1.2949738   -2.0596454   -0.5303022
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.5674193   -2.6544635   -0.4803751
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -1.2338349   -1.4607997   -1.0068701
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.0909642   -1.1966065   -0.9853219
24 months   ki0047075b-MAL-ED       BRAZIL                         optimal              observed           0.2152709    0.0007578    0.4297839
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -1.2185458   -1.4567985   -0.9802931
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -1.8161474   -2.1021612   -1.5301335
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -3.0867438   -3.8077303   -2.3657572
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -1.7667327   -2.0347487   -1.4987166
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.4159394   -1.5395825   -1.2922963


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU                           observed             observed          -1.0902778   -1.3682718   -0.8122837
Birth       ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
6 months    ki0047075b-MAL-ED       BRAZIL                         observed             observed           0.1558900   -0.0436128    0.3553927
6 months    ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.5416867   -0.7337282   -0.3496452
6 months    ki0047075b-MAL-ED       PERU                           observed             observed          -1.4335034   -1.6988926   -1.1681142
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.5469444   -1.8498756   -1.2440133
6 months    ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
24 months   ki0047075b-MAL-ED       BRAZIL                         observed             observed           0.0833172   -0.1220854    0.2887197
24 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          -1.2665060   -1.4788044   -1.0542077
24 months   ki0047075b-MAL-ED       PERU                           observed             observed          -1.9093878   -2.1570845   -1.6616910
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.8477907   -3.1592380   -2.5363434
24 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.1580810   -0.6768756    0.3607136
Birth       ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.2149611   -0.7580953    0.3281732
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0701196   -0.1560100    0.0157709
6 months    ki0047075b-MAL-ED       BRAZIL                         optimal              observed          -0.0370737   -0.1106140    0.0364666
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0663839   -0.1490156    0.0162478
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -0.1385296   -0.8469545    0.5698953
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0204748   -0.9758966    1.0168463
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.1421434   -0.0715321    0.3558189
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.1077141   -0.1917860   -0.0236423
24 months   ki0047075b-MAL-ED       BRAZIL                         optimal              observed          -0.1319537   -0.2213696   -0.0425379
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0479602   -0.1494869    0.0535665
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0932404   -0.2206823    0.0342015
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2389531   -0.4529517    0.9308578
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.1643105   -0.0859760    0.4145970
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0253252   -0.1126794    0.0620290
