---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** swasted

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

agecat      studyid                    country                        trth2o    swasted   n_cell     n
----------  -------------------------  -----------------------------  -------  --------  -------  ----
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0      105   112
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               1        5   112
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               0        2   112
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               1        0   112
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0        3    20
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        0    20
Birth       ki0047075b-MAL-ED          BRAZIL                         0               0       17    20
Birth       ki0047075b-MAL-ED          BRAZIL                         0               1        0    20
Birth       ki0047075b-MAL-ED          INDIA                          1               0        0     1
Birth       ki0047075b-MAL-ED          INDIA                          1               1        0     1
Birth       ki0047075b-MAL-ED          INDIA                          0               0        1     1
Birth       ki0047075b-MAL-ED          INDIA                          0               1        0     1
Birth       ki0047075b-MAL-ED          NEPAL                          1               0        7     9
Birth       ki0047075b-MAL-ED          NEPAL                          1               1        0     9
Birth       ki0047075b-MAL-ED          NEPAL                          0               0        2     9
Birth       ki0047075b-MAL-ED          NEPAL                          0               1        0     9
Birth       ki0047075b-MAL-ED          PERU                           1               0       28    36
Birth       ki0047075b-MAL-ED          PERU                           1               1        0    36
Birth       ki0047075b-MAL-ED          PERU                           0               0        8    36
Birth       ki0047075b-MAL-ED          PERU                           0               1        0    36
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0        1     5
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0     5
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               0        4     5
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        0     5
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        4    21
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0    21
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       17    21
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        0    21
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0       24    24
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1        0    24
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               0        0    24
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               1        0    24
Birth       ki1000108-IRC              INDIA                          1               0       91   105
Birth       ki1000108-IRC              INDIA                          1               1       14   105
Birth       ki1000108-IRC              INDIA                          0               0        0   105
Birth       ki1000108-IRC              INDIA                          0               1        0   105
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               0       10   532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               1        1   532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               0      509   532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               1       12   532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0      373   707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1       24   707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0      287   707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               1       23   707
Birth       ki1113344-GMS-Nepal        NEPAL                          1               0        1     4
Birth       ki1113344-GMS-Nepal        NEPAL                          1               1        0     4
Birth       ki1113344-GMS-Nepal        NEPAL                          0               0        3     4
Birth       ki1113344-GMS-Nepal        NEPAL                          0               1        0     4
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0      131   134
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1        1   134
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               0        2   134
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               1        0   134
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0       13   103
6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        0   103
6 months    ki0047075b-MAL-ED          BRAZIL                         0               0       90   103
6 months    ki0047075b-MAL-ED          BRAZIL                         0               1        0   103
6 months    ki0047075b-MAL-ED          INDIA                          1               0        4     9
6 months    ki0047075b-MAL-ED          INDIA                          1               1        0     9
6 months    ki0047075b-MAL-ED          INDIA                          0               0        5     9
6 months    ki0047075b-MAL-ED          INDIA                          0               1        0     9
6 months    ki0047075b-MAL-ED          NEPAL                          1               0       69    83
6 months    ki0047075b-MAL-ED          NEPAL                          1               1        0    83
6 months    ki0047075b-MAL-ED          NEPAL                          0               0       14    83
6 months    ki0047075b-MAL-ED          NEPAL                          0               1        0    83
6 months    ki0047075b-MAL-ED          PERU                           1               0       39    49
6 months    ki0047075b-MAL-ED          PERU                           1               1        0    49
6 months    ki0047075b-MAL-ED          PERU                           0               0       10    49
6 months    ki0047075b-MAL-ED          PERU                           0               1        0    49
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0        2    12
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0    12
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               0        9    12
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        1    12
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        6    42
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0    42
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       36    42
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        0    42
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0      114   120
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1        6   120
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               0        0   120
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               1        0   120
6 months    ki1000108-IRC              INDIA                          1               0      114   121
6 months    ki1000108-IRC              INDIA                          1               1        7   121
6 months    ki1000108-IRC              INDIA                          0               0        0   121
6 months    ki1000108-IRC              INDIA                          0               1        0   121
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0       14   603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1        0   603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      584   603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               1        5   603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      396   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1        0   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0      319   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               1        0   715
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0        1     4
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1        0     4
6 months    ki1113344-GMS-Nepal        NEPAL                          0               0        3     4
6 months    ki1113344-GMS-Nepal        NEPAL                          0               1        0     4
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0      133   135
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1        0   135
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               0        2   135
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               1        0   135
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0       13   103
24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        0   103
24 months   ki0047075b-MAL-ED          BRAZIL                         0               0       90   103
24 months   ki0047075b-MAL-ED          BRAZIL                         0               1        0   103
24 months   ki0047075b-MAL-ED          INDIA                          1               0        4     9
24 months   ki0047075b-MAL-ED          INDIA                          1               1        0     9
24 months   ki0047075b-MAL-ED          INDIA                          0               0        5     9
24 months   ki0047075b-MAL-ED          INDIA                          0               1        0     9
24 months   ki0047075b-MAL-ED          NEPAL                          1               0       69    83
24 months   ki0047075b-MAL-ED          NEPAL                          1               1        0    83
24 months   ki0047075b-MAL-ED          NEPAL                          0               0       14    83
24 months   ki0047075b-MAL-ED          NEPAL                          0               1        0    83
24 months   ki0047075b-MAL-ED          PERU                           1               0       39    49
24 months   ki0047075b-MAL-ED          PERU                           1               1        0    49
24 months   ki0047075b-MAL-ED          PERU                           0               0       10    49
24 months   ki0047075b-MAL-ED          PERU                           0               1        0    49
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0        2    11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0    11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               0        9    11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        0    11
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        6    43
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0    43
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       37    43
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        0    43
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0      118   119
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1        1   119
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               0        0   119
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               1        0   119
24 months   ki1000108-IRC              INDIA                          1               0      121   121
24 months   ki1000108-IRC              INDIA                          1               1        0   121
24 months   ki1000108-IRC              INDIA                          0               0        0   121
24 months   ki1000108-IRC              INDIA                          0               1        0   121
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0       14   579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1        0   579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      556   579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1        9   579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      239   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1        3   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0      271   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1        1   514
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0        1     4
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1        0     4
24 months   ki1113344-GMS-Nepal        NEPAL                          0               0        2     4
24 months   ki1113344-GMS-Nepal        NEPAL                          0               1        1     4


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
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

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/e25422c2-425f-452f-8911-a0657802419f/a6712d7f-6c28-4258-9fb9-e00abccb0985/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e25422c2-425f-452f-8911-a0657802419f/a6712d7f-6c28-4258-9fb9-e00abccb0985/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e25422c2-425f-452f-8911-a0657802419f/a6712d7f-6c28-4258-9fb9-e00abccb0985/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e25422c2-425f-452f-8911-a0657802419f/a6712d7f-6c28-4258-9fb9-e00abccb0985/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat   studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0600929   0.0367966   0.0833893
Birth    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0744177   0.0450075   0.1038279


### Parameter: E(Y)


agecat   studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0664781   0.0481022   0.0848539


### Parameter: RR


agecat   studyid                 country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------  ----------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
Birth    ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
Birth    ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.238377   0.7116993   2.154811


### Parameter: PAR


agecat   studyid                 country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------  ----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0063851   -0.0099677   0.0227379


### Parameter: PAF


agecat   studyid                 country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------  ----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0960489   -0.1849237   0.3103964
