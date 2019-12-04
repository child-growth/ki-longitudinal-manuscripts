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

**Outcome Variable:** y_rate_wtkg

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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1               0     239  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0             239     239  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1               0     142  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0             142     142  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          1               0     232  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          0             232     232  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          1               1     227  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          0             226     227  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           1              11     258  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           0             247     258  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              38     251  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             213     251  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             158     232  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              74     232  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1             563     565  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0               2     565  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1              13      13  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               0      13  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             725     725  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0               0     725  y_rate_wtkg      
0-3 months     ki1114097-CONTENT          PERU                           1               5       6  y_rate_wtkg      
0-3 months     ki1114097-CONTENT          PERU                           0               1       6  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1           20239   20272  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0              33   20272  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1            2496    2496  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0               0    2496  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1               0     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0             233     233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1               0     141  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0             141     141  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          1               0     230  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          0             230     230  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          1               1     230  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          0             229     230  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           1              11     256  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           0             245     256  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              36     240  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             204     240  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             163     238  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              75     238  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1             520     522  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0               2     522  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1              11      11  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               0      11  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             702     702  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0               0     702  y_rate_wtkg      
3-6 months     ki1114097-CONTENT          PERU                           1              54      57  y_rate_wtkg      
3-6 months     ki1114097-CONTENT          PERU                           0               3      57  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1           12701   12713  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0              12   12713  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1            1817    1817  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0               0    1817  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1               0     224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0             224     224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1               0     133  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0             133     133  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          1               0     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          0             230     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          1               1     228  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          0             227     228  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           1              10     235  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           0             225     235  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              36     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             194     230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             155     224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              69     224  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1             309     309  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0               0     309  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     1             496     498  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0               2     498  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1               6       6  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0               0       6  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             693     693  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0               0     693  y_rate_wtkg      
6-9 months     ki1114097-CONTENT          PERU                           1              54      57  y_rate_wtkg      
6-9 months     ki1114097-CONTENT          PERU                           0               3      57  y_rate_wtkg      
6-9 months     ki1148112-LCNI-5           MALAWI                         1             461     556  y_rate_wtkg      
6-9 months     ki1148112-LCNI-5           MALAWI                         0              95     556  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1            3070    3071  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0               1    3071  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1               0     225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0             225     225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1               0     129  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0             129     129  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          1               0     227  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          0             227     227  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          1               1     227  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          0             226     227  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           1               9     226  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           0             217     226  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              37     232  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             195     232  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             153     223  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              70     223  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             298     298  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0     298  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     1             479     481  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0               2     481  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1               6       6  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               0       6  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             683     683  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0     683  y_rate_wtkg      
9-12 months    ki1114097-CONTENT          PERU                           1              54      57  y_rate_wtkg      
9-12 months    ki1114097-CONTENT          PERU                           0               3      57  y_rate_wtkg      
9-12 months    ki1148112-LCNI-5           MALAWI                         1             317     380  y_rate_wtkg      
9-12 months    ki1148112-LCNI-5           MALAWI                         0              63     380  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1            3516    3516  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0    3516  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1               0     212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0             212     212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1               0     122  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0             122     122  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          1               0     226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          0             226     226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          1               1     228  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          0             227     228  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           1               8     215  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           0             207     215  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              36     227  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             191     227  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             155     225  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              70     225  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1             300     300  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               0     300  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     1             459     461  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0               2     461  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1               8       8  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0               0       8  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             666     666  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     666  y_rate_wtkg      
12-15 months   ki1114097-CONTENT          PERU                           1              51      54  y_rate_wtkg      
12-15 months   ki1114097-CONTENT          PERU                           0               3      54  y_rate_wtkg      
12-15 months   ki1148112-LCNI-5           MALAWI                         1             104     125  y_rate_wtkg      
12-15 months   ki1148112-LCNI-5           MALAWI                         0              21     125  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1            3549    3549  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0    3549  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1               0     212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0             212     212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1               0     116  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0             116     116  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          1               0     226  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          0             226     226  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          1               1     225  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          0             224     225  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           1               8     206  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           0             198     206  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              35     224  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             189     224  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             150     219  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              69     219  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1             290     290  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0               0     290  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     1             447     449  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0               2     449  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1              10      10  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      10  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             605     605  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     605  y_rate_wtkg      
15-18 months   ki1114097-CONTENT          PERU                           1              45      48  y_rate_wtkg      
15-18 months   ki1114097-CONTENT          PERU                           0               3      48  y_rate_wtkg      
15-18 months   ki1148112-LCNI-5           MALAWI                         1             102     118  y_rate_wtkg      
15-18 months   ki1148112-LCNI-5           MALAWI                         0              16     118  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1            3507    3508  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1    3508  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1               0     209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0             209     209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1               0     111  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0             111     111  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          1               0     226  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          0             226     226  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          1               1     225  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          0             224     225  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           1               8     196  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           0             188     196  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              35     232  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             197     232  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             140     207  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              67     207  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     1             420     422  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0               2     422  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1               9       9  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0               0       9  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             547     547  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     547  y_rate_wtkg      
18-21 months   ki1114097-CONTENT          PERU                           1              46      49  y_rate_wtkg      
18-21 months   ki1114097-CONTENT          PERU                           0               3      49  y_rate_wtkg      
18-21 months   ki1148112-LCNI-5           MALAWI                         1             369     452  y_rate_wtkg      
18-21 months   ki1148112-LCNI-5           MALAWI                         0              83     452  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0     207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0             207     207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1               0     110  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0             110     110  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          1               0     226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          0             226     226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          1               1     225  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          0             224     225  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           1               7     182  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           0             175     182  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              34     234  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             200     234  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             140     205  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              65     205  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     1             409     411  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0               2     411  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               8       8  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0       8  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             493     493  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     493  y_rate_wtkg      
21-24 months   ki1114097-CONTENT          PERU                           1               8       9  y_rate_wtkg      
21-24 months   ki1114097-CONTENT          PERU                           0               1       9  y_rate_wtkg      
21-24 months   ki1148112-LCNI-5           MALAWI                         1             322     382  y_rate_wtkg      
21-24 months   ki1148112-LCNI-5           MALAWI                         0              60     382  y_rate_wtkg      


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
![](/tmp/9515c4b4-3421-4583-9275-d80c453e9aaa/b359deea-23d7-4473-9188-c20a30236a4c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9515c4b4-3421-4583-9275-d80c453e9aaa/b359deea-23d7-4473-9188-c20a30236a4c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9515c4b4-3421-4583-9275-d80c453e9aaa/b359deea-23d7-4473-9188-c20a30236a4c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid             country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED   PERU                           1                    NA                0.9926884    0.8774446   1.1079322
0-3 months     ki0047075b-MAL-ED   PERU                           0                    NA                0.9737767    0.9463813   1.0011720
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.9735020    0.8932685   1.0537355
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.9353601    0.9058039   0.9649164
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8985696    0.8630127   0.9341265
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8595864    0.8007321   0.9184407
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.8577546    0.8546705   0.8608387
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.8205127    0.8162772   0.8247482
3-6 months     ki0047075b-MAL-ED   PERU                           1                    NA                0.4817240    0.3941742   0.5692739
3-6 months     ki0047075b-MAL-ED   PERU                           0                    NA                0.4958517    0.4757455   0.5159579
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.4263275    0.3434109   0.5092441
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.4735818    0.4466841   0.5004795
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4736562    0.4430833   0.5042290
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4183322    0.3786807   0.4579837
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.4413841    0.4383459   0.4444223
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.4515764    0.4487019   0.4544508
6-9 months     ki0047075b-MAL-ED   PERU                           1                    NA                0.2004141    0.1586554   0.2421729
6-9 months     ki0047075b-MAL-ED   PERU                           0                    NA                0.2619480    0.2456522   0.2782438
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.2219947    0.1717232   0.2722663
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.2664013    0.2430645   0.2897381
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2241638    0.1938523   0.2544754
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2593000    0.2198704   0.2987296
6-9 months     ki1148112-LCNI-5    MALAWI                         1                    NA                0.2875151    0.2735759   0.3014543
6-9 months     ki1148112-LCNI-5    MALAWI                         0                    NA                0.2757881    0.2462894   0.3052869
9-12 months    ki0047075b-MAL-ED   PERU                           1                    NA                0.1723232    0.1222520   0.2223945
9-12 months    ki0047075b-MAL-ED   PERU                           0                    NA                0.1879670    0.1717185   0.2042154
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.1853412    0.1371966   0.2334857
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.2197091    0.1949510   0.2444672
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1673880    0.1429536   0.1918224
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1616764    0.1243222   0.1990306
9-12 months    ki1148112-LCNI-5    MALAWI                         1                    NA                0.2017393    0.1842063   0.2192723
9-12 months    ki1148112-LCNI-5    MALAWI                         0                    NA                0.2019527    0.1613623   0.2425431
12-15 months   ki0047075b-MAL-ED   PERU                           1                    NA                0.2334736    0.1667517   0.3001954
12-15 months   ki0047075b-MAL-ED   PERU                           0                    NA                0.1379933    0.1206783   0.1553083
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.1975646    0.1452742   0.2498549
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.1874382    0.1589222   0.2159541
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1503263    0.1200622   0.1805905
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1745123    0.1312511   0.2177735
12-15 months   ki1148112-LCNI-5    MALAWI                         1                    NA                0.1571372    0.1195664   0.1947080
12-15 months   ki1148112-LCNI-5    MALAWI                         0                    NA                0.1271330    0.0480190   0.2062470
15-18 months   ki0047075b-MAL-ED   PERU                           1                    NA                0.1874214    0.1072172   0.2676256
15-18 months   ki0047075b-MAL-ED   PERU                           0                    NA                0.1415552    0.1218013   0.1613092
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.1814782    0.1099776   0.2529789
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.2292203    0.1981074   0.2603332
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1336456    0.1080887   0.1592025
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1637670    0.1170557   0.2104784
15-18 months   ki1148112-LCNI-5    MALAWI                         1                    NA                0.1712929    0.1363404   0.2062455
15-18 months   ki1148112-LCNI-5    MALAWI                         0                    NA                0.2126287    0.1449998   0.2802577
18-21 months   ki0047075b-MAL-ED   PERU                           1                    NA                0.0653975   -0.0157629   0.1465580
18-21 months   ki0047075b-MAL-ED   PERU                           0                    NA                0.1660201    0.1463857   0.1856545
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.1953761    0.1447067   0.2460455
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.1705341    0.1404117   0.2006564
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1472590    0.1177243   0.1767938
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1421187    0.0987240   0.1855134
18-21 months   ki1148112-LCNI-5    MALAWI                         1                    NA                0.1774462    0.1548849   0.2000075
18-21 months   ki1148112-LCNI-5    MALAWI                         0                    NA                0.1926681    0.1449065   0.2404297
21-24 months   ki0047075b-MAL-ED   PERU                           1                    NA                0.1869388    0.0820127   0.2918650
21-24 months   ki0047075b-MAL-ED   PERU                           0                    NA                0.1795172    0.1591318   0.1999026
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.1679950    0.1086901   0.2272999
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.1870612    0.1608924   0.2132300
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1290143    0.0955981   0.1624305
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1551791    0.1046055   0.2057528
21-24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                0.1846098    0.1552921   0.2139275
21-24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                0.1558875    0.0871668   0.2246082


### Parameter: E(Y)


agecat         studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED   PERU                           NA                   NA                0.9748614   0.9482620   1.0014607
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.9415988   0.9136365   0.9695612
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8861087   0.8555112   0.9167061
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                0.8576858   0.8546736   0.8606979
3-6 months     ki0047075b-MAL-ED   PERU                           NA                   NA                0.4948529   0.4753805   0.5143254
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.4668837   0.4408277   0.4929397
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4566833   0.4325348   0.4808318
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                0.4413913   0.4384220   0.4443605
6-9 months     ki0047075b-MAL-ED   PERU                           NA                   NA                0.2593318   0.2435782   0.2750853
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.2596104   0.2384684   0.2807524
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2377801   0.2136152   0.2619451
6-9 months     ki1148112-LCNI-5    MALAWI                         NA                   NA                0.2849079   0.2723110   0.2975048
9-12 months    ki0047075b-MAL-ED   PERU                           NA                   NA                0.1873440   0.1716106   0.2030773
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.2153147   0.1931793   0.2374501
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1670684   0.1467422   0.1873945
9-12 months    ki1148112-LCNI-5    MALAWI                         NA                   NA                0.2022567   0.1863082   0.2182053
12-15 months   ki0047075b-MAL-ED   PERU                           NA                   NA                0.1415461   0.1245184   0.1585737
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.1879898   0.1627929   0.2131868
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1591083   0.1343053   0.1839113
12-15 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.1518822   0.1181702   0.1855942
15-18 months   ki0047075b-MAL-ED   PERU                           NA                   NA                0.1433364   0.1240576   0.1626152
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.2227120   0.1942678   0.2511562
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1449507   0.1222652   0.1676362
15-18 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.1738706   0.1423337   0.2054074
18-21 months   ki0047075b-MAL-ED   PERU                           NA                   NA                0.1619131   0.1425878   0.1812383
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.1755205   0.1490254   0.2020155
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1434559   0.1191029   0.1678089
18-21 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.1818489   0.1616805   0.2020172
21-24 months   ki0047075b-MAL-ED   PERU                           NA                   NA                0.1798026   0.1597891   0.1998162
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.1878453   0.1639966   0.2116939
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1402078   0.1124924   0.1679233
21-24 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.1789517   0.1520986   0.2058049


### Parameter: ATE


agecat         studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED   PERU                           0                    1                 -0.0189117   -0.1373052    0.0994818
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 -0.0381419   -0.1236606    0.0473769
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0389832   -0.1078080    0.0298415
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 -0.0372419   -0.0423858   -0.0320980
3-6 months     ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED   PERU                           0                    1                  0.0141277   -0.0756281    0.1038834
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.0472543   -0.0398514    0.1343600
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0553240   -0.1055846   -0.0050633
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     0                    1                  0.0101923    0.0061831    0.0142015
6-9 months     ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED   PERU                           0                    1                  0.0615339    0.0167617    0.1063061
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.0444066   -0.0110875    0.0999006
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0351362   -0.0149794    0.0852518
6-9 months     ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5    MALAWI                         0                    1                 -0.0117270   -0.0443887    0.0209347
9-12 months    ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED   PERU                           0                    1                  0.0156437   -0.0369979    0.0682854
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.0343680   -0.0198454    0.0885813
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0057116   -0.0504499    0.0390267
9-12 months    ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5    MALAWI                         0                    1                  0.0002134   -0.0441006    0.0445274
12-15 months   ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED   PERU                           0                    1                 -0.0954802   -0.1644122   -0.0265483
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 -0.0101264   -0.0702232    0.0499703
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0241859   -0.0285191    0.0768909
12-15 months   ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5    MALAWI                         0                    1                 -0.0300042   -0.1176659    0.0576575
15-18 months   ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED   PERU                           0                    1                 -0.0458662   -0.1284672    0.0367349
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.0477421   -0.0304565    0.1259406
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0301214   -0.0232697    0.0835126
15-18 months   ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5    MALAWI                         0                    1                  0.0413358   -0.0344614    0.1171329
18-21 months   ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED   PERU                           0                    1                  0.1006226    0.0171209    0.1841242
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 -0.0248420   -0.0846906    0.0350066
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0051403   -0.0579868    0.0477062
18-21 months   ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5    MALAWI                         0                    1                  0.0152219   -0.0379125    0.0683563
21-24 months   ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED   PERU                           0                    1                 -0.0074216   -0.1143097    0.0994665
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.0190662   -0.0457149    0.0838473
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0261648   -0.0344884    0.0868180
21-24 months   ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5    MALAWI                         0                    1                 -0.0287223   -0.1035412    0.0460966


### Parameter: PAR


agecat         studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED   PERU                           1                    NA                -0.0178270   -0.1320603    0.0964062
0-3 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0319032   -0.1043553    0.0405490
0-3 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0124609   -0.0342696    0.0093477
0-3 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0000688   -0.0001979    0.0000603
3-6 months     ki0047075b-MAL-ED   PERU                           1                    NA                 0.0131289   -0.0736720    0.0999299
3-6 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0405562   -0.0341183    0.1152306
3-6 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0169729   -0.0328725   -0.0010733
3-6 months     kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                 0.0000072   -0.0000911    0.0001055
6-9 months     ki0047075b-MAL-ED   PERU                           1                    NA                 0.0589176    0.0157434    0.1020919
6-9 months     ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0376157   -0.0095036    0.0847349
6-9 months     ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0136163   -0.0022169    0.0294495
6-9 months     ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0026072   -0.0081639    0.0029495
9-12 months    ki0047075b-MAL-ED   PERU                           1                    NA                 0.0150207   -0.0355261    0.0655676
9-12 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0299735   -0.0157492    0.0756962
9-12 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0003196   -0.0142467    0.0136075
9-12 months    ki1148112-LCNI-5    MALAWI                         1                    NA                 0.0005174   -0.0064752    0.0075100
12-15 months   ki0047075b-MAL-ED   PERU                           1                    NA                -0.0919275   -0.1583387   -0.0255163
12-15 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0095748   -0.0602001    0.0410506
12-15 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0087819   -0.0077030    0.0252668
12-15 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0052550   -0.0184810    0.0079709
15-18 months   ki0047075b-MAL-ED   PERU                           1                    NA                -0.0440850   -0.1234875    0.0353175
15-18 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0412338   -0.0251118    0.1075794
15-18 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0113051   -0.0057183    0.0283286
15-18 months   ki1148112-LCNI-5    MALAWI                         1                    NA                 0.0025776   -0.0068693    0.0120246
18-21 months   ki0047075b-MAL-ED   PERU                           1                    NA                 0.0965155    0.0163734    0.1766577
18-21 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0198556   -0.0709266    0.0312154
18-21 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0038031   -0.0207994    0.0131932
18-21 months   ki1148112-LCNI-5    MALAWI                         1                    NA                 0.0044027   -0.0051584    0.0139638
21-24 months   ki0047075b-MAL-ED   PERU                           1                    NA                -0.0071362   -0.1099134    0.0956410
21-24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0198502   -0.0360346    0.0757350
21-24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0111935   -0.0081081    0.0304950
21-24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0056580   -0.0172851    0.0059691
