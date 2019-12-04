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

**Outcome Variable:** y_rate_haz

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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1               0     236  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0             236     236  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1               0     116  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0             116     116  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          1               0     177  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          0             177     177  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          1               1     153  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          0             152     153  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           1              11     243  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           0             232     243  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              31     196  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             165     196  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             155     224  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              69     224  y_rate_haz       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1             564     566  y_rate_haz       
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0               2     566  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1              13      13  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               0      13  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             721     721  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0               0     721  y_rate_haz       
0-3 months     ki1114097-CONTENT          PERU                           1               5       6  y_rate_haz       
0-3 months     ki1114097-CONTENT          PERU                           0               1       6  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1           19829   19863  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0              34   19863  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1            2513    2513  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0               0    2513  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1               0     231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0             231     231  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1               0     141  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0             141     141  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          1               0     230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          0             230     230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          1               1     230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          0             229     230  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           1              11     256  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           0             245     256  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              36     240  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             204     240  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             163     238  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              75     238  y_rate_haz       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1             521     523  y_rate_haz       
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0               2     523  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1              11      11  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               0      11  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             695     695  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0               0     695  y_rate_haz       
3-6 months     ki1114097-CONTENT          PERU                           1              54      57  y_rate_haz       
3-6 months     ki1114097-CONTENT          PERU                           0               3      57  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1           12562   12574  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0              12   12574  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1            1839    1839  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0               0    1839  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1               0     224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0             224     224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1               0     133  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0             133     133  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          1               0     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          0             230     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          1               1     228  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          0             227     228  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           1              10     235  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           0             225     235  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              36     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             194     230  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             155     224  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              69     224  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1             314     314  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0               0     314  y_rate_haz       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     1             496     498  y_rate_haz       
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0               2     498  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1               6       6  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0               0       6  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             688     688  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0               0     688  y_rate_haz       
6-9 months     ki1114097-CONTENT          PERU                           1              54      57  y_rate_haz       
6-9 months     ki1114097-CONTENT          PERU                           0               3      57  y_rate_haz       
6-9 months     ki1148112-LCNI-5           MALAWI                         1             464     559  y_rate_haz       
6-9 months     ki1148112-LCNI-5           MALAWI                         0              95     559  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1            3051    3052  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0               1    3052  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1               0     225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0             225     225  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1               0     129  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0             129     129  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          1               0     227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          0             227     227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          1               1     227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          0             226     227  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           1               9     226  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           0             217     226  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              37     232  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             195     232  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             154     223  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              69     223  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             311     311  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0     311  y_rate_haz       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     1             480     482  y_rate_haz       
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0               2     482  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1               6       6  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               0       6  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             674     674  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0     674  y_rate_haz       
9-12 months    ki1114097-CONTENT          PERU                           1              54      57  y_rate_haz       
9-12 months    ki1114097-CONTENT          PERU                           0               3      57  y_rate_haz       
9-12 months    ki1148112-LCNI-5           MALAWI                         1             319     383  y_rate_haz       
9-12 months    ki1148112-LCNI-5           MALAWI                         0              64     383  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1            3499    3499  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0    3499  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1               0     212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0             212     212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1               0     122  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0             122     122  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          1               0     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          0             226     226  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          1               1     228  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          0             227     228  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           1               8     215  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           0             207     215  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              36     227  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             191     227  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             156     225  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              69     225  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1             303     303  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               0     303  y_rate_haz       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     1             459     461  y_rate_haz       
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0               2     461  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1               8       8  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0               0       8  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             660     660  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     660  y_rate_haz       
12-15 months   ki1114097-CONTENT          PERU                           1              51      54  y_rate_haz       
12-15 months   ki1114097-CONTENT          PERU                           0               3      54  y_rate_haz       
12-15 months   ki1148112-LCNI-5           MALAWI                         1             105     126  y_rate_haz       
12-15 months   ki1148112-LCNI-5           MALAWI                         0              21     126  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1            3547    3547  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0    3547  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1               0     212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0             212     212  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1               0     116  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0             116     116  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          1               0     226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          0             226     226  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          1               1     225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          0             224     225  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           1               8     205  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           0             197     205  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              35     224  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             189     224  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             147     216  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              69     216  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1             291     291  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               0     291  y_rate_haz       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     1             447     449  y_rate_haz       
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0               2     449  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1              10      10  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      10  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             604     604  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     604  y_rate_haz       
15-18 months   ki1114097-CONTENT          PERU                           1              45      48  y_rate_haz       
15-18 months   ki1114097-CONTENT          PERU                           0               3      48  y_rate_haz       
15-18 months   ki1148112-LCNI-5           MALAWI                         1             103     119  y_rate_haz       
15-18 months   ki1148112-LCNI-5           MALAWI                         0              16     119  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1            3548    3548  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0    3548  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1               0     209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0             209     209  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1               0     111  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0             111     111  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          1               0     226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          0             226     226  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          1               1     225  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          0             224     225  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           1               8     196  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           0             188     196  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              35     232  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             197     232  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             136     203  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              67     203  y_rate_haz       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     1             420     422  y_rate_haz       
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0               2     422  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1               9       9  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0               0       9  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             546     546  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     546  y_rate_haz       
18-21 months   ki1114097-CONTENT          PERU                           1              46      49  y_rate_haz       
18-21 months   ki1114097-CONTENT          PERU                           0               3      49  y_rate_haz       
18-21 months   ki1148112-LCNI-5           MALAWI                         1             391     474  y_rate_haz       
18-21 months   ki1148112-LCNI-5           MALAWI                         0              83     474  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0     207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0             207     207  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1               0     110  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0             110     110  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          1               0     226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          0             226     226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          1               1     225  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          0             224     225  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           1               7     182  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           0             175     182  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              34     234  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             200     234  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             138     203  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              65     203  y_rate_haz       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     1             409     411  y_rate_haz       
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0               2     411  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               8       8  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0       8  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             490     490  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     490  y_rate_haz       
21-24 months   ki1114097-CONTENT          PERU                           1               8       9  y_rate_haz       
21-24 months   ki1114097-CONTENT          PERU                           0               1       9  y_rate_haz       
21-24 months   ki1148112-LCNI-5           MALAWI                         1             342     405  y_rate_haz       
21-24 months   ki1148112-LCNI-5           MALAWI                         0              63     405  y_rate_haz       


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
![](/tmp/2e5d5d04-bd9d-412f-8417-328567c39d34/b5078918-dc8f-4af4-80fb-64bb15f00d82/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2e5d5d04-bd9d-412f-8417-328567c39d34/b5078918-dc8f-4af4-80fb-64bb15f00d82/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2e5d5d04-bd9d-412f-8417-328567c39d34/b5078918-dc8f-4af4-80fb-64bb15f00d82/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED   PERU                           1                    NA                -0.4722970   -0.5856010   -0.3589930
0-3 months     ki0047075b-MAL-ED   PERU                           0                    NA                -0.2515576   -0.2871787   -0.2159365
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.2603384   -0.4111373   -0.1095395
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.1843162   -0.2377425   -0.1308899
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1329742   -0.1826669   -0.0832814
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1514944   -0.2187266   -0.0842622
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                 0.0589638    0.0539209    0.0640066
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                 0.0113917    0.0069105    0.0158729
3-6 months     ki0047075b-MAL-ED   PERU                           1                    NA                -0.0342899   -0.1640780    0.0954981
3-6 months     ki0047075b-MAL-ED   PERU                           0                    NA                 0.0244926   -0.0086001    0.0575852
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0554530   -0.0418830    0.1527889
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0086275   -0.0500445    0.0327895
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0643374   -0.1041664   -0.0245084
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0841364   -0.1458375   -0.0224353
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0033702   -0.0083532    0.0016127
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.0708620   -0.0747028   -0.0670212
6-9 months     ki0047075b-MAL-ED   PERU                           1                    NA                -0.0905021   -0.1807506   -0.0002535
6-9 months     ki0047075b-MAL-ED   PERU                           0                    NA                -0.0331023   -0.0583749   -0.0078297
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0080146   -0.0809169    0.0648877
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0208916   -0.0517800    0.0099967
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0989210   -0.1379574   -0.0598846
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0888401   -0.1565087   -0.0211714
6-9 months     ki1148112-LCNI-5    MALAWI                         1                    NA                 0.0279109    0.0098190    0.0460027
6-9 months     ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0399427    0.0077603    0.0721251
9-12 months    ki0047075b-MAL-ED   PERU                           1                    NA                -0.0326081   -0.1116005    0.0463844
9-12 months    ki0047075b-MAL-ED   PERU                           0                    NA                -0.0406500   -0.0632066   -0.0180933
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.1004670   -0.1640357   -0.0368982
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0827418   -0.1128190   -0.0526646
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1441739   -0.1874811   -0.1008668
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1583777   -0.2237545   -0.0930009
9-12 months    ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0405630   -0.0628504   -0.0182756
9-12 months    ki1148112-LCNI-5    MALAWI                         0                    NA                -0.0629054   -0.1056533   -0.0201574
12-15 months   ki0047075b-MAL-ED   PERU                           1                    NA                -0.0657169   -0.1092700   -0.0221637
12-15 months   ki0047075b-MAL-ED   PERU                           0                    NA                -0.0660215   -0.0851882   -0.0468548
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0545207   -0.1218318    0.0127904
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0601164   -0.0848791   -0.0353537
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0807773   -0.1109974   -0.0505572
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0533153   -0.0988130   -0.0078176
12-15 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0455351   -0.0880994   -0.0029709
12-15 months   ki1148112-LCNI-5    MALAWI                         0                    NA                -0.0097388   -0.0784429    0.0589653
15-18 months   ki0047075b-MAL-ED   PERU                           1                    NA                -0.0323292   -0.1121274    0.0474690
15-18 months   ki0047075b-MAL-ED   PERU                           0                    NA                -0.0347368   -0.0509458   -0.0185277
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0597273   -0.1032249   -0.0162298
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0226958   -0.0438968   -0.0014948
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0978789   -0.1246858   -0.0710720
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0550271   -0.0965833   -0.0134710
15-18 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0329026   -0.0593716   -0.0064335
15-18 months   ki1148112-LCNI-5    MALAWI                         0                    NA                -0.0848121   -0.1716592    0.0020349
18-21 months   ki0047075b-MAL-ED   PERU                           1                    NA                -0.0527482   -0.0889320   -0.0165645
18-21 months   ki0047075b-MAL-ED   PERU                           0                    NA                -0.0074914   -0.0233551    0.0083722
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0213956   -0.0612623    0.0184711
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0344711   -0.0563219   -0.0126203
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0290559   -0.0588319    0.0007201
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0312627   -0.0667073    0.0041819
18-21 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0158882   -0.0339845    0.0022081
18-21 months   ki1148112-LCNI-5    MALAWI                         0                    NA                -0.0090934   -0.0473890    0.0292022
21-24 months   ki0047075b-MAL-ED   PERU                           1                    NA                 0.0232134   -0.0327597    0.0791864
21-24 months   ki0047075b-MAL-ED   PERU                           0                    NA                 0.0574631    0.0416924    0.0732338
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0413722   -0.0015812    0.0843255
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                 0.0449502    0.0265757    0.0633248
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0147476   -0.0090291    0.0385244
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0137175   -0.0609986    0.0335636
21-24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                 0.0268315    0.0101805    0.0434825
21-24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0163638   -0.0232459    0.0559735


### Parameter: E(Y)


agecat         studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED   PERU                           NA                   NA                -0.2525945   -0.2869213   -0.2182678
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                -0.1900029   -0.2411148   -0.1388910
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1389943   -0.1784707   -0.0995180
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                 0.0588770    0.0539560    0.0637979
3-6 months     ki0047075b-MAL-ED   PERU                           NA                   NA                 0.0236350   -0.0084722    0.0557423
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                -0.0033394   -0.0413034    0.0346246
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0714664   -0.1037306   -0.0392021
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                -0.0034346   -0.0083001    0.0014310
6-9 months     ki0047075b-MAL-ED   PERU                           NA                   NA                -0.0349381   -0.0594933   -0.0103830
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                -0.0177890   -0.0460334    0.0104554
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0951251   -0.1285712   -0.0616789
6-9 months     ki1148112-LCNI-5    MALAWI                         NA                   NA                 0.0279334    0.0120046    0.0438622
9-12 months    ki0047075b-MAL-ED   PERU                           NA                   NA                -0.0403297   -0.0622163   -0.0184431
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                -0.0847380   -0.1117373   -0.0577388
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1539778   -0.1878402   -0.1201153
9-12 months    ki1148112-LCNI-5    MALAWI                         NA                   NA                -0.0433141   -0.0626948   -0.0239333
12-15 months   ki0047075b-MAL-ED   PERU                           NA                   NA                -0.0660102   -0.0845347   -0.0474856
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                -0.0600337   -0.0829414   -0.0371260
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0701548   -0.0952743   -0.0450353
12-15 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                -0.0403575   -0.0774359   -0.0032790
15-18 months   ki0047075b-MAL-ED   PERU                           NA                   NA                -0.0346428   -0.0505277   -0.0187579
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                -0.0284295   -0.0474993   -0.0093597
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0857732   -0.1082180   -0.0633284
15-18 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                -0.0464023   -0.0722064   -0.0205982
18-21 months   ki0047075b-MAL-ED   PERU                           NA                   NA                -0.0093386   -0.0246779    0.0060006
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                -0.0324839   -0.0517228   -0.0132451
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0289082   -0.0518906   -0.0059258
18-21 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                -0.0147327   -0.0309734    0.0015080
21-24 months   ki0047075b-MAL-ED   PERU                           NA                   NA                 0.0561458    0.0407996    0.0714920
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                 0.0440882    0.0272574    0.0609190
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0082340   -0.0135584    0.0300264
21-24 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                 0.0258428    0.0105053    0.0411803


### Parameter: ATE


agecat         studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED   PERU                           0                    1                  0.2207394    0.1015387    0.3399402
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.0760222   -0.0842378    0.2362821
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0185202   -0.1024545    0.0654141
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 -0.0475721   -0.0542041   -0.0409400
3-6 months     ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED   PERU                           0                    1                  0.0587825   -0.0749285    0.1924935
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 -0.0640805   -0.1701174    0.0419564
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0197990   -0.0943697    0.0547717
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 -0.0674918   -0.0736192   -0.0613644
6-9 months     ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED   PERU                           0                    1                  0.0573998   -0.0365767    0.1513763
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 -0.0128770   -0.0919230    0.0661690
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0100809   -0.0681677    0.0883296
6-9 months     ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5    MALAWI                         0                    1                  0.0120319   -0.0249577    0.0490215
9-12 months    ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED   PERU                           0                    1                 -0.0080419   -0.0901918    0.0741080
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.0177252   -0.0526728    0.0881231
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0142038   -0.0961268    0.0677192
9-12 months    ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5    MALAWI                         0                    1                 -0.0223423   -0.0707015    0.0260168
12-15 months   ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED   PERU                           0                    1                 -0.0003046   -0.0478886    0.0472794
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 -0.0055957   -0.0775787    0.0663874
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0274620   -0.0272820    0.0822060
12-15 months   ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5    MALAWI                         0                    1                  0.0357963   -0.0452696    0.1168623
15-18 months   ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED   PERU                           0                    1                 -0.0024076   -0.0838354    0.0790202
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.0370315   -0.0114522    0.0855153
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0428517   -0.0070749    0.0927784
15-18 months   ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5    MALAWI                         0                    1                 -0.0519096   -0.1431499    0.0393308
18-21 months   ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED   PERU                           0                    1                  0.0452568    0.0057484    0.0847653
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 -0.0130755   -0.0590663    0.0329153
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0022068   -0.0484934    0.0440799
18-21 months   ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5    MALAWI                         0                    1                  0.0067948   -0.0357525    0.0493420
21-24 months   ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED   PERU                           0                    1                  0.0342497   -0.0239026    0.0924021
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.0035781   -0.0433914    0.0505475
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0284652   -0.0818869    0.0249566
21-24 months   ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5    MALAWI                         0                    1                 -0.0104677   -0.0534559    0.0325204


### Parameter: PAR


agecat         studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED   PERU                           1                    NA                 0.2197025    0.1041078   0.3352971
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0703355   -0.0645348   0.2052058
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0060202   -0.0314801   0.0194398
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0000868   -0.0002504   0.0000768
3-6 months     ki0047075b-MAL-ED   PERU                           1                    NA                 0.0579250   -0.0704979   0.1863479
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0587924   -0.1496280   0.0320432
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0071289   -0.0303048   0.0160470
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0000644   -0.0002261   0.0000974
6-9 months     ki0047075b-MAL-ED   PERU                           1                    NA                 0.0555639   -0.0349361   0.1460640
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0097744   -0.0767120   0.0571632
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0037960   -0.0196632   0.0272551
6-9 months     ki1148112-LCNI-5    MALAWI                         1                    NA                 0.0000225   -0.0063814   0.0064264
9-12 months    ki0047075b-MAL-ED   PERU                           1                    NA                -0.0077217   -0.0866004   0.0711570
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0157289   -0.0437565   0.0752144
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0098038   -0.0347796   0.0151719
9-12 months    ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0027510   -0.0107417   0.0052396
12-15 months   ki0047075b-MAL-ED   PERU                           1                    NA                -0.0002933   -0.0461067   0.0455202
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0055130   -0.0670226   0.0559966
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0106225   -0.0062233   0.0274683
12-15 months   ki1148112-LCNI-5    MALAWI                         1                    NA                 0.0051777   -0.0083207   0.0186761
15-18 months   ki0047075b-MAL-ED   PERU                           1                    NA                -0.0023136   -0.0805638   0.0759365
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0312978   -0.0101574   0.0727530
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0121056   -0.0036556   0.0278669
15-18 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0134997   -0.0274514   0.0004520
18-21 months   ki0047075b-MAL-ED   PERU                           1                    NA                 0.0434096    0.0054929   0.0813263
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0110883   -0.0505294   0.0283527
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0001477   -0.0152101   0.0155055
18-21 months   ki1148112-LCNI-5    MALAWI                         1                    NA                 0.0011554   -0.0063136   0.0086245
21-24 months   ki0047075b-MAL-ED   PERU                           1                    NA                 0.0329325   -0.0229915   0.0888564
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0027160   -0.0377327   0.0431647
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0065136   -0.0234939   0.0104667
21-24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0009887   -0.0075962   0.0056188
