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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1            110   112
Birth       ki0047075b-MAL-ED          BANGLADESH                     0              2   112
Birth       ki0047075b-MAL-ED          BRAZIL                         1              3    20
Birth       ki0047075b-MAL-ED          BRAZIL                         0             17    20
Birth       ki0047075b-MAL-ED          INDIA                          1              0     1
Birth       ki0047075b-MAL-ED          INDIA                          0              1     1
Birth       ki0047075b-MAL-ED          NEPAL                          1              7     9
Birth       ki0047075b-MAL-ED          NEPAL                          0              2     9
Birth       ki0047075b-MAL-ED          PERU                           1             28    36
Birth       ki0047075b-MAL-ED          PERU                           0              8    36
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              1     5
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0              4     5
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              4    21
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             17    21
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             24    24
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              0    24
Birth       ki1000108-IRC              INDIA                          1            105   105
Birth       ki1000108-IRC              INDIA                          0              0   105
Birth       ki1017093b-PROVIDE         BANGLADESH                     1             11   532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0            521   532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1            397   707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0            310   707
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     1             14   603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            589   603
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     1             14   579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            565   579
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
![](/tmp/5592161a-f70c-4e41-94c0-6c79e95c43ab/3398b381-5756-445b-9592-d2e1b3323a7d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed           0.0423323   -0.3663508    0.4510154
Birth       ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -1.5513702   -1.9218489   -1.1808916
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -1.1654819   -1.2741313   -1.0568325
6 months    ki0047075b-MAL-ED       BRAZIL                         optimal              observed           1.0908594    0.8288040    1.3529147
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0767572   -0.5115821    0.3580676
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed           1.0268505    0.6664591    1.3872420
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.3137992    0.9203803    1.7072181
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.6865812    0.1634454    1.2097169
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0224652   -0.0917082    0.1366386
24 months   ki0047075b-MAL-ED       BRAZIL                         optimal              observed           0.7157438    0.0507843    1.3807033
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.0051762   -0.5041262    0.5144786
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.3695115   -0.7222908   -0.0167322
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2477996   -0.7800855    0.2844863
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.3595850   -0.7899465    0.0707765
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.5000309   -0.6486326   -0.3514291


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU                           observed             observed          -0.1791667   -0.4729428    0.1146094
Birth       ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
6 months    ki0047075b-MAL-ED       BRAZIL                         observed             observed           0.9728964    0.7346428    1.2111501
6 months    ki0047075b-MAL-ED       NEPAL                          observed             observed           0.1409639   -0.1073951    0.3893228
6 months    ki0047075b-MAL-ED       PERU                           observed             observed           0.9150000    0.5978622    1.2321378
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7418651    0.4248303    1.0588998
6 months    ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
24 months   ki0047075b-MAL-ED       BRAZIL                         observed             observed           0.5196602    0.2625058    0.7768146
24 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.2262651   -0.4277663   -0.0247638
24 months   ki0047075b-MAL-ED       PERU                           observed             observed           0.1168367   -0.1828151    0.4164886
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.1037209   -0.1942394    0.4016813
24 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.2214989   -0.6543415    0.2113436
Birth       ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.2529116   -0.1102514    0.6160745
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0786694   -0.1562579   -0.0010810
6 months    ki0047075b-MAL-ED       BRAZIL                         optimal              observed          -0.1179629   -0.2257953   -0.0101305
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.2177211   -0.1957386    0.6311808
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -0.1118505   -0.2710781    0.0473771
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5719341   -1.0413784   -0.1024899
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.8856718   -1.4026527   -0.3686910
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0072971   -0.0706064    0.0852005
24 months   ki0047075b-MAL-ED       BRAZIL                         optimal              observed          -0.1960836   -0.7816679    0.3895006
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.2314413   -0.6963826    0.2335000
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed           0.4863483    0.1429415    0.8297550
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3515205   -0.1801035    0.8831445
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.5332820   -0.9617872   -0.1047767
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.1103193   -0.2053456   -0.0152931
