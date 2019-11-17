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

**Outcome Variable:** ever_co

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
* W_parity
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
* delta_W_parity
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        safeh20    ever_co   n_cell       n
------------  -------------------------  -----------------------------  --------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0        0     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        0     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0      203     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1       39     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                0        0     142
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0     142
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                0      141     142
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        1     142
0-24 months   ki0047075b-MAL-ED          INDIA                          1                0        0     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                1        0     235
0-24 months   ki0047075b-MAL-ED          INDIA                          0                0      182     235
0-24 months   ki0047075b-MAL-ED          INDIA                          0                1       53     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                0        1     233
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                1        0     233
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                0      211     233
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                1       21     233
0-24 months   ki0047075b-MAL-ED          PERU                           1                0       11     259
0-24 months   ki0047075b-MAL-ED          PERU                           1                1        0     259
0-24 months   ki0047075b-MAL-ED          PERU                           0                0      237     259
0-24 months   ki0047075b-MAL-ED          PERU                           0                1       11     259
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       34     254
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        4     254
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      199     254
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       17     254
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0      151     249
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1       19     249
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       75     249
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        4     249
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                0      263     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                1      155     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                0        0     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                1        0     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0      486     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1      136     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                0        1     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                1        1     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0       59      60
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1        1      60
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0        0      60
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1        0      60
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      687     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       71     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0        0     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0     758
0-24 months   ki1114097-CONTENT          PERU                           1                0       53      57
0-24 months   ki1114097-CONTENT          PERU                           1                1        1      57
0-24 months   ki1114097-CONTENT          PERU                           0                0        3      57
0-24 months   ki1114097-CONTENT          PERU                           0                1        0      57
0-24 months   ki1148112-LCNI-5           MALAWI                         1                0      639     817
0-24 months   ki1148112-LCNI-5           MALAWI                         1                1       34     817
0-24 months   ki1148112-LCNI-5           MALAWI                         0                0      136     817
0-24 months   ki1148112-LCNI-5           MALAWI                         0                1        8     817
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0    24472   26897
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     2383   26897
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0       36   26897
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1        6   26897
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     4549    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      876    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0        1    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1        0    5426
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0        0     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        0     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                0      233     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                1        9     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                0        0     142
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        0     142
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                0      142     142
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                1        0     142
0-6 months    ki0047075b-MAL-ED          INDIA                          1                0        0     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                1        0     235
0-6 months    ki0047075b-MAL-ED          INDIA                          0                0      217     235
0-6 months    ki0047075b-MAL-ED          INDIA                          0                1       18     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                0        1     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                1        0     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                0      225     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                1        7     233
0-6 months    ki0047075b-MAL-ED          PERU                           1                0       11     259
0-6 months    ki0047075b-MAL-ED          PERU                           1                1        0     259
0-6 months    ki0047075b-MAL-ED          PERU                           0                0      247     259
0-6 months    ki0047075b-MAL-ED          PERU                           0                1        1     259
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       36     254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        2     254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      215     254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        1     254
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0      167     249
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        3     249
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       78     249
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        1     249
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0      384     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1       32     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                0        0     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                1        0     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0      576     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1       44     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                0        1     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                1        1     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0       60      60
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1        0      60
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0        0      60
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1        0      60
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      741     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1       17     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0        0     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0     758
0-6 months    ki1114097-CONTENT          PERU                           1                0       54      57
0-6 months    ki1114097-CONTENT          PERU                           1                1        0      57
0-6 months    ki1114097-CONTENT          PERU                           0                0        3      57
0-6 months    ki1114097-CONTENT          PERU                           0                1        0      57
0-6 months    ki1148112-LCNI-5           MALAWI                         1                0      213     269
0-6 months    ki1148112-LCNI-5           MALAWI                         1                1        0     269
0-6 months    ki1148112-LCNI-5           MALAWI                         0                0       56     269
0-6 months    ki1148112-LCNI-5           MALAWI                         0                1        0     269
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0    25691   26790
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1     1058   26790
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0       37   26790
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1        4   26790
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     4944    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1      134    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0        1    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1        0    5079
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0        0     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        0     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0      204     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1       35     239
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                0        0     140
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0     140
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                0      139     140
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        1     140
6-24 months   ki0047075b-MAL-ED          INDIA                          1                0        0     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                1        0     235
6-24 months   ki0047075b-MAL-ED          INDIA                          0                0      188     235
6-24 months   ki0047075b-MAL-ED          INDIA                          0                1       47     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                0        1     232
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                1        0     232
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                0      215     232
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                1       16     232
6-24 months   ki0047075b-MAL-ED          PERU                           1                0       11     259
6-24 months   ki0047075b-MAL-ED          PERU                           1                1        0     259
6-24 months   ki0047075b-MAL-ED          PERU                           0                0      237     259
6-24 months   ki0047075b-MAL-ED          PERU                           0                1       11     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       34     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        4     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      200     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       16     254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0      150     244
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1       17     244
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       73     244
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        4     244
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                0      256     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                1      145     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                0        0     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                1        0     401
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0      426     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1      114     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                0        2     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                1        0     542
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0        9      10
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1        1      10
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0        0      10
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1        0      10
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      667     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       63     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0        0     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0     730
6-24 months   ki1114097-CONTENT          PERU                           1                0       53      57
6-24 months   ki1114097-CONTENT          PERU                           1                1        1      57
6-24 months   ki1114097-CONTENT          PERU                           0                0        3      57
6-24 months   ki1114097-CONTENT          PERU                           0                1        0      57
6-24 months   ki1148112-LCNI-5           MALAWI                         1                0      630     805
6-24 months   ki1148112-LCNI-5           MALAWI                         1                1       34     805
6-24 months   ki1148112-LCNI-5           MALAWI                         0                0      133     805
6-24 months   ki1148112-LCNI-5           MALAWI                         0                1        8     805
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0    15755   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     1496   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0       17   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1        3   17271
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     4620    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      801    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0        1    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1        0    5422


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/4e9584a1-22c2-4c88-a14d-70e664bcc485/5d8057e5-98dc-4129-94b6-0e5a4f9ba279/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4e9584a1-22c2-4c88-a14d-70e664bcc485/5d8057e5-98dc-4129-94b6-0e5a4f9ba279/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4e9584a1-22c2-4c88-a14d-70e664bcc485/5d8057e5-98dc-4129-94b6-0e5a4f9ba279/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4e9584a1-22c2-4c88-a14d-70e664bcc485/5d8057e5-98dc-4129-94b6-0e5a4f9ba279/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1148112-LCNI-5    MALAWI       1                    NA                0.0505201   0.0339631   0.0670770
0-24 months   ki1148112-LCNI-5    MALAWI       0                    NA                0.0555556   0.0181200   0.0929912
0-24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0887358   0.0847285   0.0927431
0-24 months   kiGH5241-JiVitA-3   BANGLADESH   0                    NA                0.1428571   0.1345210   0.1511933
6-24 months   ki1148112-LCNI-5    MALAWI       1                    NA                0.0512048   0.0344293   0.0679803
6-24 months   ki1148112-LCNI-5    MALAWI       0                    NA                0.0567376   0.0185291   0.0949461


### Parameter: E(Y)


agecat        studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1148112-LCNI-5    MALAWI       NA                   NA                0.0514076   0.0362561   0.0665591
0-24 months   kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0888203   0.0849130   0.0927276
6-24 months   ki1148112-LCNI-5    MALAWI       NA                   NA                0.0521739   0.0368026   0.0675452


### Parameter: RR


agecat        studyid             country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  ------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   ki1148112-LCNI-5    MALAWI       1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5    MALAWI       0                    1                 1.099673   0.5198062   2.326408
0-24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3   BANGLADESH   0                    1                 1.609916   1.4939568   1.734875
6-24 months   ki1148112-LCNI-5    MALAWI       1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5    MALAWI       0                    1                 1.108052   0.5239889   2.343139


### Parameter: PAR


agecat        studyid             country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1148112-LCNI-5    MALAWI       1                    NA                0.0008875   -0.0063284   0.0081035
0-24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0000845   -0.0001556   0.0003246
6-24 months   ki1148112-LCNI-5    MALAWI       1                    NA                0.0009691   -0.0063414   0.0082796


### Parameter: PAF


agecat        studyid             country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1148112-LCNI-5    MALAWI       1                    NA                0.0172646   -0.1335268   0.1479963
0-24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0009515   -0.0017718   0.0036674
6-24 months   ki1148112-LCNI-5    MALAWI       1                    NA                0.0185743   -0.1319294   0.1490667
