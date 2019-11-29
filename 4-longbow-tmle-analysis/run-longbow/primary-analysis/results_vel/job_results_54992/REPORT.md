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

**Outcome Variable:** y_rate_len

## Predictor Variables

**Intervention Variable:** safeh20

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
* W_nchldlt5
* impfloor
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nchldlt5
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        safeh20    n_cell       n  outcome_variable 
-------------  -------------------------  -----------------------------  --------  -------  ------  -----------------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1               0     236  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0             236     236  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1               0     116  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0             116     116  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          1               0     177  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          0             177     177  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          1               1     153  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          0             152     153  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           1              11     243  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           0             232     243  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              31     196  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             165     196  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             155     224  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              69     224  y_rate_len       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1             564     566  y_rate_len       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0               2     566  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1              13      13  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               0      13  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             721     721  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0               0     721  y_rate_len       
0-3 months     ki1114097-CONTENT          PERU                           1               5       6  y_rate_len       
0-3 months     ki1114097-CONTENT          PERU                           0               1       6  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1           19829   19863  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0              34   19863  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1            2513    2513  y_rate_len       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0               0    2513  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1               0     231  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0             231     231  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1               0     141  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0             141     141  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          1               0     230  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          0             230     230  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          1               1     230  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          0             229     230  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           1              11     256  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           0             245     256  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              36     240  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             204     240  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             163     238  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              75     238  y_rate_len       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1             521     523  y_rate_len       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0               2     523  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1              11      11  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               0      11  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             695     695  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0               0     695  y_rate_len       
3-6 months     ki1114097-CONTENT          PERU                           1              54      57  y_rate_len       
3-6 months     ki1114097-CONTENT          PERU                           0               3      57  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1           12562   12574  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0              12   12574  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1            1839    1839  y_rate_len       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0               0    1839  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1               0     224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0             224     224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1               0     133  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0             133     133  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          1               0     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          0             230     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          1               1     228  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          0             227     228  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           1              10     235  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           0             225     235  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              36     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             194     230  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             155     224  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              69     224  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1             314     314  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0               0     314  y_rate_len       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     1             496     498  y_rate_len       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0               2     498  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1               6       6  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0               0       6  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             688     688  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0               0     688  y_rate_len       
6-9 months     ki1114097-CONTENT          PERU                           1              54      57  y_rate_len       
6-9 months     ki1114097-CONTENT          PERU                           0               3      57  y_rate_len       
6-9 months     ki1148112-LCNI-5           MALAWI                         1             464     559  y_rate_len       
6-9 months     ki1148112-LCNI-5           MALAWI                         0              95     559  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1            3051    3052  y_rate_len       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0               1    3052  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1               0     225  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0             225     225  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1               0     129  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0             129     129  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          1               0     227  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          0             227     227  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          1               1     227  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          0             226     227  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           1               9     226  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           0             217     226  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              37     232  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             195     232  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             154     223  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              69     223  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             311     311  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0     311  y_rate_len       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     1             480     482  y_rate_len       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0               2     482  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1               6       6  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               0       6  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             674     674  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0     674  y_rate_len       
9-12 months    ki1114097-CONTENT          PERU                           1              54      57  y_rate_len       
9-12 months    ki1114097-CONTENT          PERU                           0               3      57  y_rate_len       
9-12 months    ki1148112-LCNI-5           MALAWI                         1             319     383  y_rate_len       
9-12 months    ki1148112-LCNI-5           MALAWI                         0              64     383  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1            3499    3499  y_rate_len       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0    3499  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1               0     212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0             212     212  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1               0     122  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0             122     122  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          1               0     226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          0             226     226  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          1               1     228  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          0             227     228  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           1               8     215  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           0             207     215  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              36     227  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             191     227  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             156     225  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              69     225  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1             303     303  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               0     303  y_rate_len       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     1             459     461  y_rate_len       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0               2     461  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1               8       8  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0               0       8  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             660     660  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     660  y_rate_len       
12-15 months   ki1114097-CONTENT          PERU                           1              51      54  y_rate_len       
12-15 months   ki1114097-CONTENT          PERU                           0               3      54  y_rate_len       
12-15 months   ki1148112-LCNI-5           MALAWI                         1             105     126  y_rate_len       
12-15 months   ki1148112-LCNI-5           MALAWI                         0              21     126  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1            3547    3547  y_rate_len       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0    3547  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1               0     212  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0             212     212  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1               0     116  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0             116     116  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          1               0     226  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          0             226     226  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          1               1     225  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          0             224     225  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           1               8     205  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           0             197     205  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              35     224  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             189     224  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             147     216  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              69     216  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1             291     291  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               0     291  y_rate_len       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     1             447     449  y_rate_len       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0               2     449  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1              10      10  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      10  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             604     604  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     604  y_rate_len       
15-18 months   ki1114097-CONTENT          PERU                           1              45      48  y_rate_len       
15-18 months   ki1114097-CONTENT          PERU                           0               3      48  y_rate_len       
15-18 months   ki1148112-LCNI-5           MALAWI                         1             103     119  y_rate_len       
15-18 months   ki1148112-LCNI-5           MALAWI                         0              16     119  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1            3548    3548  y_rate_len       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0    3548  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1               0     209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0             209     209  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1               0     111  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0             111     111  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          1               0     226  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          0             226     226  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          1               1     225  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          0             224     225  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           1               8     196  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           0             188     196  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              35     232  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             197     232  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             136     203  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              67     203  y_rate_len       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     1             420     422  y_rate_len       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0               2     422  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1               9       9  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0               0       9  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             546     546  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     546  y_rate_len       
18-21 months   ki1114097-CONTENT          PERU                           1              46      49  y_rate_len       
18-21 months   ki1114097-CONTENT          PERU                           0               3      49  y_rate_len       
18-21 months   ki1148112-LCNI-5           MALAWI                         1             391     474  y_rate_len       
18-21 months   ki1148112-LCNI-5           MALAWI                         0              83     474  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0     207  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0             207     207  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1               0     110  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0             110     110  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          1               0     226  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          0             226     226  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          1               1     225  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          0             224     225  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           1               7     182  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           0             175     182  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              34     234  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             200     234  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             138     203  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              65     203  y_rate_len       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     1             409     411  y_rate_len       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0               2     411  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               8       8  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0       8  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             490     490  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     490  y_rate_len       
21-24 months   ki1114097-CONTENT          PERU                           1               8       9  y_rate_len       
21-24 months   ki1114097-CONTENT          PERU                           0               1       9  y_rate_len       
21-24 months   ki1148112-LCNI-5           MALAWI                         1             342     405  y_rate_len       
21-24 months   ki1148112-LCNI-5           MALAWI                         0              63     405  y_rate_len       


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-21 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU

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
![](/tmp/b22da18d-47db-4e39-bc4e-42f5d7a4433a/b7195445-00a5-485b-8e3f-9b714f0769da/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b22da18d-47db-4e39-bc4e-42f5d7a4433a/b7195445-00a5-485b-8e3f-9b714f0769da/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b22da18d-47db-4e39-bc4e-42f5d7a4433a/b7195445-00a5-485b-8e3f-9b714f0769da/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED   PERU                           1                    NA                3.0405135   2.7936384   3.2873886
0-3 months     ki0047075b-MAL-ED   PERU                           0                    NA                3.0779674   3.0085564   3.1473784
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                3.1186211   2.7977355   3.4395067
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                3.1837583   3.0782360   3.2892806
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                3.2825556   3.1839120   3.3811993
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                3.2318280   3.1065005   3.3571554
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                3.6647026   3.6542072   3.6751980
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                3.5828403   3.5727382   3.5929424
3-6 months     ki0047075b-MAL-ED   PERU                           1                    NA                1.9735918   1.5932823   2.3539014
3-6 months     ki0047075b-MAL-ED   PERU                           0                    NA                2.0129535   1.9429719   2.0829350
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                2.0074932   1.7957533   2.2192330
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                1.9615859   1.8736354   2.0495364
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8352926   1.7538682   1.9167170
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8160052   1.6862802   1.9457301
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                1.9203154   1.9096054   1.9310254
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                1.8011938   1.7911233   1.8112642
6-9 months     ki0047075b-MAL-ED   PERU                           1                    NA                1.1603298   0.9272872   1.3933724
6-9 months     ki0047075b-MAL-ED   PERU                           0                    NA                1.3236438   1.2664759   1.3808117
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                1.4121554   1.2497428   1.5745680
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                1.3739136   1.3030818   1.4447453
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1811667   1.0910597   1.2712738
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.2003406   1.0428592   1.3578220
6-9 months     ki1148112-LCNI-5    MALAWI                         1                    NA                1.4580858   1.4167366   1.4994351
6-9 months     ki1148112-LCNI-5    MALAWI                         0                    NA                1.4682443   1.3887265   1.5477622
9-12 months    ki0047075b-MAL-ED   PERU                           1                    NA                1.1160877   0.9289289   1.3032464
9-12 months    ki0047075b-MAL-ED   PERU                           0                    NA                1.1019161   1.0482767   1.1555555
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                1.0040218   0.8495378   1.1585058
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                1.0189222   0.9465160   1.0913285
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8485466   0.7477258   0.9493673
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7189278   0.5792579   0.8585977
9-12 months    ki1148112-LCNI-5    MALAWI                         1                    NA                1.1069421   1.0537119   1.1601723
9-12 months    ki1148112-LCNI-5    MALAWI                         0                    NA                1.0770203   0.9712069   1.1828337
12-15 months   ki0047075b-MAL-ED   PERU                           1                    NA                0.8846595   0.7695897   0.9997294
12-15 months   ki0047075b-MAL-ED   PERU                           0                    NA                0.8907084   0.8410984   0.9403185
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.9155003   0.7584995   1.0725012
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.9195924   0.8566753   0.9825095
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8287440   0.7480637   0.9094243
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9239749   0.8017008   1.0462490
12-15 months   ki1148112-LCNI-5    MALAWI                         1                    NA                0.9513489   0.8408411   1.0618568
12-15 months   ki1148112-LCNI-5    MALAWI                         0                    NA                0.9703095   0.6971386   1.2434805
15-18 months   ki0047075b-MAL-ED   PERU                           1                    NA                0.8534728   0.6397559   1.0671898
15-18 months   ki0047075b-MAL-ED   PERU                           0                    NA                0.8578623   0.8135834   0.9021411
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.7529469   0.6374779   0.8684159
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.9057967   0.8472031   0.9643903
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6579968   0.5842619   0.7317317
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7078835   0.5939858   0.8217812
15-18 months   ki1148112-LCNI-5    MALAWI                         1                    NA                0.8623055   0.7889850   0.9356261
15-18 months   ki1148112-LCNI-5    MALAWI                         0                    NA                0.6030703   0.2786579   0.9274827
18-21 months   ki0047075b-MAL-ED   PERU                           1                    NA                0.6966493   0.5976815   0.7956172
18-21 months   ki0047075b-MAL-ED   PERU                           0                    NA                0.8438128   0.7975106   0.8901149
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.8312213   0.7194256   0.9430171
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.7788667   0.7157945   0.8419389
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7498517   0.6626134   0.8370899
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7456381   0.6387634   0.8525129
18-21 months   ki1148112-LCNI-5    MALAWI                         1                    NA                0.8169688   0.7654775   0.8684602
18-21 months   ki1148112-LCNI-5    MALAWI                         0                    NA                0.8510725   0.7407633   0.9613818
21-24 months   ki0047075b-MAL-ED   PERU                           1                    NA                0.6442119   0.4583975   0.8300263
21-24 months   ki0047075b-MAL-ED   PERU                           0                    NA                0.7627749   0.7144494   0.8111003
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.8208162   0.6886225   0.9530100
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.8443667   0.7880158   0.9007176
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7402840   0.6705911   0.8099768
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7052764   0.5637091   0.8468436
21-24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                0.7538765   0.7046621   0.8030910
21-24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                0.7668358   0.6427673   0.8909044


### Parameter: E(Y)


agecat         studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED   PERU                           NA                   NA                3.0766479   3.0096811   3.1436148
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                3.1670516   3.0651964   3.2689068
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2631757   3.1854001   3.3409512
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                3.6645502   3.6543148   3.6747857
3-6 months     ki0047075b-MAL-ED   PERU                           NA                   NA                2.0114190   1.9435740   2.0792639
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                1.9735408   1.8927925   2.0542892
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8286113   1.7605412   1.8966813
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                1.9201969   1.9097350   1.9306589
6-9 months     ki0047075b-MAL-ED   PERU                           NA                   NA                1.3168407   1.2615074   1.3721740
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                1.3769400   1.3125507   1.4413293
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1868199   1.1090396   1.2646002
6-9 months     ki1148112-LCNI-5    MALAWI                         NA                   NA                1.4589363   1.4224162   1.4954563
9-12 months    ki0047075b-MAL-ED   PERU                           NA                   NA                1.1024805   1.0504394   1.1545215
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                1.0146639   0.9495597   1.0797680
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8155931   0.7342357   0.8969504
9-12 months    ki1148112-LCNI-5    MALAWI                         NA                   NA                1.1007887   1.0539615   1.1476158
12-15 months   ki0047075b-MAL-ED   PERU                           NA                   NA                0.8904833   0.8425275   0.9384392
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.9172722   0.8595621   0.9749824
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8542196   0.7897390   0.9187003
12-15 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.9578403   0.8612449   1.0544357
15-18 months   ki0047075b-MAL-ED   PERU                           NA                   NA                0.8576910   0.8143303   0.9010517
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.8873549   0.8344616   0.9402481
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6862933   0.6249762   0.7476104
15-18 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.8227868   0.7513696   0.8942040
18-21 months   ki0047075b-MAL-ED   PERU                           NA                   NA                0.8378061   0.7930237   0.8825886
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.7810829   0.7253333   0.8368325
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7413740   0.6736807   0.8090672
18-21 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.8198090   0.7732927   0.8663254
21-24 months   ki0047075b-MAL-ED   PERU                           NA                   NA                0.7582148   0.7110844   0.8053451
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.8395115   0.7878135   0.8912095
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7174798   0.6527204   0.7822392
21-24 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.7505036   0.7048983   0.7961088


### Parameter: ATE


agecat         studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED   PERU                           0                    1                  0.0374539   -0.2190827    0.2939905
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.0651372   -0.2728710    0.4031454
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0507277   -0.2108284    0.1093731
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 -0.0818623   -0.0963003   -0.0674243
3-6 months     ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED   PERU                           0                    1                  0.0393616   -0.3474423    0.4261655
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 -0.0459072   -0.2753431    0.1835286
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0192874   -0.1726696    0.1340947
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 -0.1191216   -0.1332165   -0.1050268
6-9 months     ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED   PERU                           0                    1                  0.1633140   -0.0771030    0.4037309
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 -0.0382419   -0.2163832    0.1398994
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0191738   -0.1630430    0.2013907
6-9 months     ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5    MALAWI                         0                    1                  0.0101585   -0.0797972    0.1001142
9-12 months    ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED   PERU                           0                    1                 -0.0141716   -0.2088651    0.1805220
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.0149004   -0.1563960    0.1861969
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1296188   -0.3019706    0.0427331
9-12 months    ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5    MALAWI                         0                    1                 -0.0299218   -0.1498601    0.0900165
12-15 months   ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED   PERU                           0                    1                  0.0060489   -0.1192597    0.1313574
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.0040920   -0.1663783    0.1745624
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0952309   -0.0559021    0.2463640
12-15 months   ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5    MALAWI                         0                    1                  0.0189606   -0.2892227    0.3271439
15-18 months   ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED   PERU                           0                    1                  0.0043894   -0.2138663    0.2226452
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.1528498    0.0231235    0.2825762
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0498867   -0.0871828    0.1869563
15-18 months   ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5    MALAWI                         0                    1                 -0.2592353   -0.5920509    0.0735804
18-21 months   ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED   PERU                           0                    1                  0.1471634    0.0378999    0.2564270
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 -0.0523546   -0.1813562    0.0766469
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0042135   -0.1434622    0.1350351
18-21 months   ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5    MALAWI                         0                    1                  0.0341037   -0.0880895    0.1562968
21-24 months   ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED   PERU                           0                    1                  0.1185629   -0.0734327    0.3105586
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.0235505   -0.1203710    0.1674719
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0350076   -0.1931908    0.1231756
21-24 months   ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5    MALAWI                         0                    1                  0.0129593   -0.1215412    0.1474598


### Parameter: PAR


agecat         studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED   PERU                           1                    NA                 0.0361345   -0.2108195    0.2830884
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0484305   -0.2372698    0.3341308
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0193800   -0.0683708    0.0296108
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0001524   -0.0005122    0.0002074
3-6 months     ki0047075b-MAL-ED   PERU                           1                    NA                 0.0378271   -0.3370339    0.4126881
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0339523   -0.2297828    0.1618781
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0066813   -0.0540021    0.0406395
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0001185   -0.0004741    0.0002372
6-9 months     ki0047075b-MAL-ED   PERU                           1                    NA                 0.1565109   -0.0759671    0.3889889
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0352154   -0.1857590    0.1153282
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0056532   -0.0499930    0.0612994
6-9 months     ki1148112-LCNI-5    MALAWI                         1                    NA                 0.0008504   -0.0136935    0.0153943
9-12 months    ki0047075b-MAL-ED   PERU                           1                    NA                -0.0136072   -0.2005478    0.1733334
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0106421   -0.1337613    0.1550455
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0329535   -0.0862529    0.0203459
9-12 months    ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0061534   -0.0255557    0.0132488
12-15 months   ki0047075b-MAL-ED   PERU                           1                    NA                 0.0058238   -0.1148222    0.1264698
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0017719   -0.1425638    0.1461076
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0254756   -0.0210214    0.0719727
12-15 months   ki1148112-LCNI-5    MALAWI                         1                    NA                 0.0064914   -0.0379476    0.0509304
15-18 months   ki0047075b-MAL-ED   PERU                           1                    NA                 0.0042181   -0.2055203    0.2139566
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.1344080    0.0237847    0.2450312
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0282965   -0.0153074    0.0719005
15-18 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0395188   -0.0764461   -0.0025915
18-21 months   ki0047075b-MAL-ED   PERU                           1                    NA                 0.1411568    0.0362733    0.2460402
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0501384   -0.1605226    0.0602458
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0084777   -0.0541951    0.0372396
18-21 months   ki1148112-LCNI-5    MALAWI                         1                    NA                 0.0028402   -0.0186994    0.0243798
21-24 months   ki0047075b-MAL-ED   PERU                           1                    NA                 0.1140028   -0.0706383    0.2986439
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0186953   -0.1051349    0.1425255
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0228042   -0.0730476    0.0274392
21-24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0033730   -0.0243519    0.0176060
