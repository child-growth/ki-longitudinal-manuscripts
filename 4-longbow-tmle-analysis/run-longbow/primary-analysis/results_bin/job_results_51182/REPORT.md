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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** trth2o

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nhh
* W_nchldlt5
* cleanck
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
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

agecat                       studyid                    country                        trth2o    ever_stunted   n_cell     n
---------------------------  -------------------------  -----------------------------  -------  -------------  -------  ----
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                    0       54   114
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                    1       58   114
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    0        1   114
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    1        1   114
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                    0        8    92
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                    1        3    92
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                    0       72    92
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                    1        9    92
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    0        1     6
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    1        2     6
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    0        2     6
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    1        1     6
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                    0       46    73
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                    1       16    73
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    0        7    73
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    1        4    73
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                    0        7    42
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                    1       26    42
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                    0        2    42
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                    1        7    42
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        1    10
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0    10
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0        5    10
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        4    10
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        0    37
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        6    37
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0        3    37
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       28    37
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       12   102
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       90   102
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0   102
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0   102
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    0       43   104
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    1       61   104
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    0        0   104
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    1        0   104
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    0        9   634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    1        6   634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    0      387   634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    1      232   634
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      218   653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1      141   653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      178   653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1      116   653
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    0        0     4
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    1        1     4
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    0        1     4
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    1        2     4
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                    0       90   114
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                    1       22   114
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    0        2   114
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    1        0   114
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                    0       10    92
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                    1        1    92
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                    0       75    92
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                    1        6    92
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    0        3     6
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    1        0     6
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    0        2     6
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    1        1     6
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                    0       57    73
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                    1        5    73
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                    0       11    73
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                    1        0    73
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                    0       20    42
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                    1       13    42
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                    0        6    42
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                    1        3    42
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        1    10
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0    10
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0        9    10
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        0    10
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        3    37
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        3    37
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0       19    37
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       12    37
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       61   102
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       41   102
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0   102
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0   102
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    0       65   104
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    1       39   104
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    0        0   104
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    1        0   104
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    0       14   634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    1        1   634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    0      519   634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    1      100   634
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      289   653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       70   653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      240   653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       54   653
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    0        1     4
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    1        0     4
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    0        3     4
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    1        0     4
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                    0       54    92
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                    1       36    92
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    0        1    92
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    1        1    92
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                    0        8    85
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                    1        2    85
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                    0       72    85
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                    1        3    85
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                    0        1     5
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                    1        2     5
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    0        2     5
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    1        0     5
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                    0       46    68
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                    1       11    68
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    0        7    68
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    1        4    68
6-24 months                  ki0047075b-MAL-ED          PERU                           1                    0        7    26
6-24 months                  ki0047075b-MAL-ED          PERU                           1                    1       13    26
6-24 months                  ki0047075b-MAL-ED          PERU                           0                    0        2    26
6-24 months                  ki0047075b-MAL-ED          PERU                           0                    1        4    26
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        1    10
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0    10
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0        5    10
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        4    10
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        0    22
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        3    22
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0        3    22
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       16    22
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       12    61
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       49    61
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0    61
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0    61
6-24 months                  ki1000108-IRC              INDIA                          1                    0       43    65
6-24 months                  ki1000108-IRC              INDIA                          1                    1       22    65
6-24 months                  ki1000108-IRC              INDIA                          0                    0        0    65
6-24 months                  ki1000108-IRC              INDIA                          0                    1        0    65
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    0        7   457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    1        5   457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    0      313   457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    1      132   457
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      202   506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       71   506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      171   506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       62   506
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    0        0     4
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    1        1     4
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    0        1     4
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    1        2     4


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/4c8b5c83-00ff-4dc4-a896-e3c6bdec844c/63bc7630-b088-48da-bb2a-8b98596094ee/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4c8b5c83-00ff-4dc4-a896-e3c6bdec844c/63bc7630-b088-48da-bb2a-8b98596094ee/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4c8b5c83-00ff-4dc4-a896-e3c6bdec844c/63bc7630-b088-48da-bb2a-8b98596094ee/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4c8b5c83-00ff-4dc4-a896-e3c6bdec844c/63bc7630-b088-48da-bb2a-8b98596094ee/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.4000000   0.1651920   0.6348080
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.3747981   0.3365815   0.4130146
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.3985312   0.3476435   0.4494190
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.3952400   0.3391963   0.4512838
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1956375   0.1547749   0.2365002
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.1842088   0.1400989   0.2283186
6-24 months                  ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.4166667   0.1374213   0.6959120
6-24 months                  ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.2966292   0.2541435   0.3391149
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.2559328   0.2040243   0.3078414
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.2713649   0.2151014   0.3276285


### Parameter: E(Y)


agecat                       studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.3935681   0.3560687   0.4310676
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1898928   0.1597870   0.2199986
6-24 months                  ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2628458   0.2244546   0.3012371


### Parameter: RR


agecat                       studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH   0                    1                 0.9369952   0.5163931   1.700178
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 0.9917417   0.8218782   1.196712
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 0.9415820   0.6864256   1.291584
6-24 months                  ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093b-PROVIDE      BANGLADESH   0                    1                 0.7119101   0.3587511   1.412723
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.0602975   0.7955893   1.413079


### Parameter: PAR


agecat                       studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH   1                    NA                -0.0246057   -0.2565561   0.2073447
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0049631   -0.0388480   0.0289218
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0057447   -0.0326223   0.0211329
6-24 months                  ki1017093b-PROVIDE      BANGLADESH   1                    NA                -0.1168855   -0.3919331   0.1581621
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0069130   -0.0279422   0.0417682


### Parameter: PAF


agecat                       studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH   1                    NA                -0.0655462   -0.9029931   0.4033669
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0126105   -0.1024643   0.0699200
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0302524   -0.1819311   0.1019612
6-24 months                  ki1017093b-PROVIDE      BANGLADESH   1                    NA                -0.3899027   -1.6900800   0.2818691
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0263006   -0.1158335   0.1503299
