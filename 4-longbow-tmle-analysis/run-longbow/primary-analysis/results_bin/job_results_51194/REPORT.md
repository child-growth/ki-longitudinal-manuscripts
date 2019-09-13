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

**Intervention Variable:** exclfeed36

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                    country                        exclfeed36    ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  -----------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                        0       24     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                        1       29     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                        0       74     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                        1       82     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                        0       13     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                        1        1     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                        0      161     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                        1       27     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                        0        2     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                        1        2     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                        0       92     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                        1      106     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                        0       11     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                        1        4     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                        0      145     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                        1       51     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                        0        5     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                        1        9     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                        0       97     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                        1      141     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        0     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      115     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1      137     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        0     214
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        1     214
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0       36     214
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1      177     214
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                        0        1       6
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                        1        5       6
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                        0        0       6
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                        1        0       6
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                        0        0       3
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                        1        0       3
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                        0        1       3
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                        1        2       3
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                        0       15     245
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                        1      122     245
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                        0       17     245
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                        1       91     245
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       25      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        1       70      95
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                        0       92     577
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                        1       67     577
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                        0      248     577
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                        1      170     577
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                        0      285    1798
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                        1      286    1798
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                        0      544    1798
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                        1      683    1798
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                        0      143     474
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                        1      243     474
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                        0       25     474
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                        1       63     474
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                        0       18     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                        1       12     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                        0       83     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                        1       62     175
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                        0     8046   13401
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                        1     2831   13401
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                        0     1738   13401
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                        1      786   13401
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                        0     1488    3246
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                        1     1081    3246
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                        0      370    3246
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                        1      307    3246
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                        0       43     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                        1       10     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                        0      122     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                        1       34     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                        0       14     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                        1        0     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                        0      169     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                        1       19     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                        0        4     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                        1        0     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                        0      154     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                        1       44     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                        0       14     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                        1        1     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                        0      183     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                        1       13     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                        0        9     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                        1        5     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                        0      152     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                        1       86     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        0     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      173     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1       79     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        1     214
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0     214
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      148     214
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1       65     214
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                        0        4       6
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                        1        2       6
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                        0        0       6
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                        1        0       6
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                        0        0       3
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                        1        0       3
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                        0        3       3
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                        1        0       3
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                        0       46     245
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                        1       91     245
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                        0       50     245
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                        1       58     245
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       95      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        1        0      95
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                        0      131     577
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                        1       28     577
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                        0      346     577
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                        1       72     577
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                        0      431    1798
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                        1      140    1798
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                        0      890    1798
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                        1      337    1798
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                        0      317     474
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                        1       69     474
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                        0       63     474
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                        1       25     474
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                        0       30     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                        1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                        0      145     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                        1        0     175
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                        0     9499   13401
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                        1     1378   13401
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                        0     2053   13401
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                        1      471   13401
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                        0     2340    3246
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                        1      229    3246
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                        0      605    3246
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                        1       72    3246
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                        0       23     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                        1       19     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                        0       69     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                        1       48     159
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                        0       12     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                        1        1     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                        0      147     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                        1        8     168
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                        0        2     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                        1        2     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                        0       89     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                        1       62     155
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                        0       11     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                        1        3     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                        0      143     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                        1       38     195
6-24 months                  ki0047075b-MAL-ED          PERU                           1                        0        5     149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                        1        4     149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                        0       85     149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                        1       55     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        0     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      101     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1       58     159
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        0     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        1     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0       32     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1      112     145
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                        0        1       4
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                        1        3       4
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                        0        0       4
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                        1        0       4
6-24 months                  ki1000108-IRC              INDIA                          1                        0        0       3
6-24 months                  ki1000108-IRC              INDIA                          1                        1        0       3
6-24 months                  ki1000108-IRC              INDIA                          0                        0        1       3
6-24 months                  ki1000108-IRC              INDIA                          0                        1        2       3
6-24 months                  ki1000109-EE               PAKISTAN                       1                        0       14      95
6-24 months                  ki1000109-EE               PAKISTAN                       1                        1       31      95
6-24 months                  ki1000109-EE               PAKISTAN                       0                        0       17      95
6-24 months                  ki1000109-EE               PAKISTAN                       0                        1       33      95
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       20      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                        1       71      91
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                        0       83     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                        1       39     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                        0      236     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                        1       98     456
6-24 months                  ki1101329-Keneba           GAMBIA                         1                        0      253    1269
6-24 months                  ki1101329-Keneba           GAMBIA                         1                        1      146    1269
6-24 months                  ki1101329-Keneba           GAMBIA                         0                        0      524    1269
6-24 months                  ki1101329-Keneba           GAMBIA                         0                        1      346    1269
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                        0      142     379
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                        1      174     379
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                        0       25     379
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                        1       38     379
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                        0       16     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                        1       12     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                        0       72     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                        1       62     162
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                        0     5474    8360
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                        1     1455    8360
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                        0     1112    8360
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                        1      319    8360
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                        0     1484    2940
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                        1      853    2940
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                        0      367    2940
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                        1      236    2940


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
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA

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
![](/tmp/d8a5f124-c0b1-4884-b2c1-e23074942666/27aade09-7a38-479b-bae8-325c20916243/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d8a5f124-c0b1-4884-b2c1-e23074942666/27aade09-7a38-479b-bae8-325c20916243/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d8a5f124-c0b1-4884-b2c1-e23074942666/27aade09-7a38-479b-bae8-325c20916243/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d8a5f124-c0b1-4884-b2c1-e23074942666/27aade09-7a38-479b-bae8-325c20916243/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.4913536   0.3570481   0.6256592
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.5375431   0.4612175   0.6138687
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    NA                0.6428571   0.3913643   0.8943500
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    NA                0.5924370   0.5298849   0.6549890
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     1                    NA                0.8832757   0.8309072   0.9356442
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     0                    NA                0.8295499   0.7617345   0.8973654
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.3860502   0.3135511   0.4585493
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.4173523   0.3712611   0.4634435
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       1                    NA                0.5022707   0.4626705   0.5418710
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       0                    NA                0.5538425   0.5265399   0.5811452
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6320600   0.5837656   0.6803543
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.7336912   0.6379727   0.8294098
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                0.4558494   0.2859271   0.6257717
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    NA                0.4287038   0.3477609   0.5096466
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2600350   0.2502972   0.2697728
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.3098892   0.2912773   0.3285011
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.4185639   0.3956910   0.4414368
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4621228   0.4207602   0.5034854
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1761255   0.0686003   0.2836508
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2245348   0.1598239   0.2892458
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    NA                0.3571429   0.1056500   0.6086357
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    NA                0.3613445   0.3001916   0.4224974
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     1                    NA                0.6784684   0.6026582   0.7542785
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     0                    NA                0.5355774   0.4433611   0.6277937
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1557986   0.0995319   0.2120653
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1827285   0.1472334   0.2182236
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       1                    NA                0.2438194   0.2094679   0.2781708
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       0                    NA                0.2745947   0.2500296   0.2991598
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1783672   0.1400488   0.2166855
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2722174   0.1795347   0.3649002
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1278527   0.1208585   0.1348469
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1809845   0.1654409   0.1965281
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0877090   0.0740492   0.1013688
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1120961   0.0873429   0.1368494
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.4662361   0.3130423   0.6194299
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4154522   0.3264493   0.5044552
6-24 months                  ki1000109-EE          PAKISTAN     1                    NA                0.6884223   0.5503171   0.8265275
6-24 months                  ki1000109-EE          PAKISTAN     0                    NA                0.6596491   0.5230215   0.7962768
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.2947571   0.2137583   0.3757559
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.3026234   0.2540852   0.3511616
6-24 months                  ki1101329-Keneba      GAMBIA       1                    NA                0.3581724   0.3126288   0.4037159
6-24 months                  ki1101329-Keneba      GAMBIA       0                    NA                0.3987674   0.3665541   0.4309806
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5505570   0.4956042   0.6055097
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5913492   0.4694435   0.7132548
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                0.4982221   0.3060239   0.6904203
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    NA                0.4610202   0.3765831   0.5454572
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2098850   0.1986961   0.2210739
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2235603   0.2012555   0.2458652
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3645250   0.3416176   0.3874324
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3959644   0.3500604   0.4418683


### Parameter: E(Y)


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.5311005   0.4632825   0.5989184
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         NA                   NA                0.5952381   0.5345146   0.6559615
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     NA                   NA                0.8693878   0.8271061   0.9116694
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.4107452   0.3705685   0.4509220
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       NA                   NA                0.5389321   0.5158847   0.5619796
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.6455696   0.6024620   0.6886773
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       NA                   NA                0.4228571   0.3494545   0.4962598
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2699052   0.2606917   0.2791188
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.4276032   0.4069572   0.4482492
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.2105263   0.1551227   0.2659300
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         NA                   NA                0.3611111   0.3016895   0.4205327
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     NA                   NA                0.6081633   0.5469119   0.6694146
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1733102   0.1423987   0.2042217
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       NA                   NA                0.2652948   0.2448823   0.2857072
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1983122   0.1623791   0.2342454
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1379748   0.1313000   0.1446495
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0927295   0.0806900   0.1047690
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4213836   0.3443902   0.4983771
6-24 months                  ki1000109-EE          PAKISTAN     NA                   NA                0.6736842   0.5789010   0.7684674
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months                  ki1101329-Keneba      GAMBIA       NA                   NA                0.3877069   0.3608893   0.4145245
6-24 months                  ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5593668   0.5093185   0.6094150
6-24 months                  ki1148112-LCNI-5      MALAWI       NA                   NA                0.4567901   0.3798457   0.5337346
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2122010   0.2018013   0.2226006
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.3704082   0.3493754   0.3914410


### Parameter: RR


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.0940045   0.8099899   1.4776058
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    1                 0.9215686   0.6145365   1.3819987
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     0                    1                 0.9391744   0.8484000   1.0396611
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.0810831   0.8756946   1.3346441
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       0                    1                 1.1026773   1.0074709   1.2068808
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1607937   0.9978251   1.3503791
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    1                 0.9404503   0.6210840   1.4240374
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.1917210   1.1176964   1.2706482
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1040675   0.9977971   1.2216562
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.2748570   0.6530939   2.4885555
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    1                 1.0117647   0.4903994   2.0874166
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     0                    1                 0.7893918   0.6473930   0.9625365
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.1728509   0.7890611   1.7433112
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       0                    1                 1.1262219   0.9565073   1.3260493
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.5261634   1.0205190   2.2823434
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.4155703   1.2856017   1.5586782
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2780462   0.9789826   1.6684689
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.8910770   0.6044247   1.3136761
6-24 months                  ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000109-EE          PAKISTAN     0                    1                 0.9582042   0.7173479   1.2799304
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.0266872   0.7504406   1.4046236
6-24 months                  ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1101329-Keneba      GAMBIA       0                    1                 1.1133394   0.9599220   1.2912763
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0740926   0.8543687   1.3503244
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    1                 0.9253306   0.6051184   1.4149905
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0651562   0.9562530   1.1864619
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0862474   0.9557033   1.2346231


### Parameter: PAR


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0397468   -0.0748535    0.1543472
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    NA                -0.0476190   -0.2923809    0.1971428
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     1                    NA                -0.0138880   -0.0529754    0.0251994
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0246951   -0.0354654    0.0848555
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       1                    NA                 0.0366614    0.0045952    0.0687276
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0135097   -0.0064842    0.0335035
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0329923   -0.1876054    0.1216208
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0098702    0.0062830    0.0134575
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0090393   -0.0005040    0.0185825
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0344008   -0.0591124    0.1279140
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    NA                 0.0039683   -0.2404739    0.2484104
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     1                    NA                -0.0703051   -0.1220876   -0.0185226
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0175116   -0.0291542    0.0641774
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       1                    NA                 0.0214754   -0.0067680    0.0497189
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0199451    0.0005490    0.0393411
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0101221    0.0070779    0.0131662
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0050205   -0.0007783    0.0108193
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0448524   -0.1759511    0.0862462
6-24 months                  ki1000109-EE          PAKISTAN     1                    NA                -0.0147381   -0.1169672    0.0874911
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0056815   -0.0626027    0.0739656
6-24 months                  ki1101329-Keneba      GAMBIA       1                    NA                 0.0295345   -0.0081024    0.0671714
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0088098   -0.0133842    0.0310038
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                -0.0414320   -0.2166857    0.1338218
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0023159   -0.0017555    0.0063874
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0058831   -0.0042037    0.0159699


### Parameter: PAF


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0748386   -0.1686838    0.2676175
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    NA                -0.0800000   -0.5806955    0.2620970
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     1                    NA                -0.0159744   -0.0620913    0.0281400
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0601226   -0.0985431    0.1958717
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       1                    NA                 0.0680261    0.0064921    0.1257489
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0209267   -0.0106337    0.0515016
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0780223   -0.5140204    0.2324197
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0365693    0.0231833    0.0497719
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0211394   -0.0014742    0.0432425
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.1634038   -0.4244223    0.5086477
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    NA                 0.0109890   -0.9608705    0.5011691
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     1                    NA                -0.1156024   -0.2062756   -0.0317449
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.1010421   -0.2139801    0.3343175
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       1                    NA                 0.0809493   -0.0319189    0.1814722
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1005741   -0.0017339    0.1924333
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0733618    0.0511801    0.0950248
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0541415   -0.0113551    0.1153964
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1064409   -0.4660550    0.1649622
6-24 months                  ki1000109-EE          PAKISTAN     1                    NA                -0.0218768   -0.1855721    0.1192166
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0189106   -0.2369449    0.2218437
6-24 months                  ki1101329-Keneba      GAMBIA       1                    NA                 0.0761774   -0.0261627    0.1683110
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0157496   -0.0247788    0.0546751
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                -0.0907024   -0.5506904    0.2328373
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0109139   -0.0084708    0.0299260
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0158828   -0.0117021    0.0427156
