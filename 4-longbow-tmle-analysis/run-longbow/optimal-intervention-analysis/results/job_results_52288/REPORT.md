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
![](/tmp/94e5c965-3c80-4872-a9e5-92539119c75d/1ebde643-65cb-4091-bc2d-8ba22643e91f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -1.1052816   -1.5674815   -0.6430816
Birth       ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.7252177   -1.2908157   -0.1596198
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.8386928   -0.9644191   -0.7129664
6 months    ki0047075b-MAL-ED       BRAZIL                         optimal              observed           0.1952823   -0.0211062    0.4116707
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.4778257   -0.6933787   -0.2622727
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -1.5079950   -2.0228041   -0.9931860
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3330377   -2.5037392   -0.1623362
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -1.2796607   -1.5155837   -1.0437376
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.1043609   -1.2225412   -0.9861806
24 months   ki0047075b-MAL-ED       BRAZIL                         optimal              observed           0.2085408   -0.0069979    0.4240795
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -1.2194786   -1.4533110   -0.9856463
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -1.8122933   -2.0888435   -1.5357431
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -3.3617342   -3.8261676   -2.8973009
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -1.9196168   -2.0271597   -1.8120738
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.4355080   -1.5663213   -1.3046948


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU                           observed             observed          -1.0902778   -1.3682718   -0.8122837
Birth       ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
6 months    ki0047075b-MAL-ED       BRAZIL                         observed             observed           0.1586084   -0.0412881    0.3585049
6 months    ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.5388554   -0.7304990   -0.3472118
6 months    ki0047075b-MAL-ED       PERU                           observed             observed          -1.4397959   -1.7022556   -1.1773362
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.5469444   -1.8498756   -1.2440133
6 months    ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
24 months   ki0047075b-MAL-ED       BRAZIL                         observed             observed           0.0839320   -0.1213874    0.2892514
24 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          -1.2665060   -1.4788044   -1.0542077
24 months   ki0047075b-MAL-ED       PERU                           observed             observed          -1.9109184   -2.1555913   -1.6662455
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.8477907   -3.1592380   -2.5363434
24 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed           0.0150038   -0.4369286    0.4669362
Birth       ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.1598843   -0.7132052    0.3934367
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0708018   -0.1735299    0.0319263
6 months    ki0047075b-MAL-ED       BRAZIL                         optimal              observed          -0.0366739   -0.1101354    0.0367877
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0610297   -0.1412390    0.0191796
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed           0.0681991   -0.4091538    0.5455521
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2139068   -1.2784394    0.8506259
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.1879692   -0.0330711    0.4090094
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0943174   -0.1956878    0.0070530
24 months   ki0047075b-MAL-ED       BRAZIL                         optimal              observed          -0.1246088   -0.2114397   -0.0377779
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0470274   -0.1357681    0.0417133
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0986251   -0.2205334    0.0232832
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5139435    0.0308401    0.9970470
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.3171946    0.2383621    0.3960272
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0057566   -0.1087435    0.0972304
