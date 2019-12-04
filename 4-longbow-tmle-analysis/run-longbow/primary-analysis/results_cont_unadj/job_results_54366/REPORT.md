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

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        hhwealth_quart    n_cell      n
-------------  -------------------------  -----------------------------  ---------------  -------  -----
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             60    236
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             56    236
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             60    236
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             60    236
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             47    163
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             39    163
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             43    163
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             34    163
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4             42    177
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1             47    177
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2             47    177
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3             41    177
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4             37    155
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1             38    155
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2             35    155
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3             45    155
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4             63    254
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q1             64    254
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q2             66    254
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q3             61    254
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             45    198
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             53    198
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             49    198
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             51    198
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             54    225
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             57    225
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             56    225
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             58    225
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             32     88
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             15     88
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             16     88
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             25     88
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4             86    377
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1             98    377
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2             96    377
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3             97    377
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            148    640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            166    640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            170    640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            156    640
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            127    509
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            126    509
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            134    509
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            122    509
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4              7     29
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1              7     29
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2              7     29
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3              8     29
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            130    342
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1             84    342
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2             56    342
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3             72    342
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           2461   9817
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           2426   9817
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           2435   9817
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           2495   9817
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            136    636
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            163    636
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            152    636
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            185    636
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             60    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             54    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             58    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             59    231
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             52    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             52    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51    208
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4             57    230
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1             60    230
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2             55    230
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3             58    230
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4             58    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1             58    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2             58    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59    233
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4             67    267
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q1             67    267
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q2             69    267
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q3             64    267
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             61    241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             55    241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             62    241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             63    241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             63    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             60    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             58    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             58    239
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             80    307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             75    307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             79    307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             73    307
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4             94    397
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            105    397
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2             98    397
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            100    397
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            133    598
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            156    598
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            163    598
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            146    598
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            409   1656
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            501   1656
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            332   1656
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            414   1656
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            118    469
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            117    469
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            122    469
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            112    469
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4             51    214
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1             59    214
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2             52    214
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3             52    214
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            151    377
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1             80    377
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2             68    377
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3             78    377
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           1862   6235
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           1312   6235
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           1419   6235
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           1642   6235
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4             92    432
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            115    432
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            104    432
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            121    432
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61    224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             49    224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             56    224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             58    224
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53    198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             46    198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             48    198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51    198
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4             59    230
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1             57    230
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2             56    230
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3             58    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4             58    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1             56    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2             57    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59    230
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q4             67    245
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q1             60    245
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q2             58    245
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q3             60    245
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             59    231
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             50    231
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             60    231
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             62    231
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             62    225
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             48    225
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             59    225
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             56    225
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             77    313
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             76    313
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             84    313
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             76    313
6-9 months     ki1000108-IRC              INDIA                          Wealth Q4             99    407
6-9 months     ki1000108-IRC              INDIA                          Wealth Q1            105    407
6-9 months     ki1000108-IRC              INDIA                          Wealth Q2            100    407
6-9 months     ki1000108-IRC              INDIA                          Wealth Q3            103    407
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            123    565
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            148    565
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            150    565
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            144    565
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            359   1480
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            440   1480
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            311   1480
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            370   1480
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            119    481
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            123    481
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            128    481
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            111    481
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q4             52    214
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q1             59    214
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q2             52    214
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q3             51    214
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            149    374
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1             83    374
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2             71    374
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3             71    374
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q4            153    559
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q1            132    559
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q2            131    559
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q3            143    559
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            192    768
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            201    768
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            184    768
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            191    768
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61    225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             49    225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             57    225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             58    225
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53    194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             43    194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             47    194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51    194
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4             58    227
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1             53    227
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2             58    227
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3             58    227
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4             58    229
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1             55    229
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2             57    229
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59    229
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4             65    235
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q1             53    235
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q2             58    235
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q3             59    235
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             61    233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             53    233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             59    233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             60    233
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             61    224
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             45    224
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             60    224
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             58    224
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             79    317
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             75    317
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             85    317
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             78    317
9-12 months    ki1000108-IRC              INDIA                          Wealth Q4             98    400
9-12 months    ki1000108-IRC              INDIA                          Wealth Q1            102    400
9-12 months    ki1000108-IRC              INDIA                          Wealth Q2             98    400
9-12 months    ki1000108-IRC              INDIA                          Wealth Q3            102    400
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            123    566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            150    566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            148    566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            145    566
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            257   1075
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            338   1075
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            234   1075
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            246   1075
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            119    469
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            116    469
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            127    469
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            107    469
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q4             52    212
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q1             59    212
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q2             52    212
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q3             49    212
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            167    417
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1             92    417
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2             80    417
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3             78    417
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            110    383
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1             92    383
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2             80    383
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            101    383
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            220    866
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            218    866
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            202    866
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            226    866
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             60    212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             39    212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             56    212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             57    212
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53    184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             38    184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             42    184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51    184
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             58    226
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             52    226
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             58    226
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             58    226
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             59    230
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             55    230
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             57    230
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59    230
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             64    224
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q1             49    224
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q2             53    224
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q3             58    224
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             62    228
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             50    228
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             60    228
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             56    228
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             61    226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             43    226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             62    226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             60    226
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             84    329
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             77    329
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             86    329
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             82    329
12-15 months   ki1000108-IRC              INDIA                          Wealth Q4             95    390
12-15 months   ki1000108-IRC              INDIA                          Wealth Q1            100    390
12-15 months   ki1000108-IRC              INDIA                          Wealth Q2             97    390
12-15 months   ki1000108-IRC              INDIA                          Wealth Q3             98    390
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            112    532
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            141    532
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            143    532
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            136    532
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            187    786
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            238    786
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            175    786
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            186    786
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            125    469
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            112    469
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            126    469
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            106    469
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q4             47    199
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q1             56    199
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q2             48    199
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q3             48    199
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            172    406
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1             86    406
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2             81    406
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3             67    406
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4             40    126
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1             31    126
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2             24    126
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3             31    126
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            207    873
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            226    873
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            208    873
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            232    873
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             60    212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             37    212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             58    212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             57    212
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             52    175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             34    175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             39    175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             50    175
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             59    226
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             52    226
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             57    226
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             58    226
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             58    227
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             55    227
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             56    227
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             58    227
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             66    213
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q1             43    213
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q2             49    213
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q3             55    213
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             61    225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             45    225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             62    225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             57    225
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             61    217
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             40    217
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             59    217
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             57    217
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             83    321
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             77    321
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             83    321
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             78    321
15-18 months   ki1000108-IRC              INDIA                          Wealth Q4             92    382
15-18 months   ki1000108-IRC              INDIA                          Wealth Q1            102    382
15-18 months   ki1000108-IRC              INDIA                          Wealth Q2             93    382
15-18 months   ki1000108-IRC              INDIA                          Wealth Q3             95    382
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            111    528
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            140    528
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            145    528
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            132    528
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            153    662
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            207    662
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            141    662
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            161    662
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            128    480
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            117    480
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            128    480
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            107    480
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q4             45    189
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q1             53    189
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q2             45    189
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q3             46    189
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            157    361
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1             75    361
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2             71    361
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3             58    361
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4             31    119
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1             30    119
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2             25    119
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3             33    119
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            205    886
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            228    886
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            231    886
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            222    886
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61    209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             31    209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             60    209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             57    209
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             52    167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             26    167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             39    167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             50    167
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             59    226
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             53    226
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             56    226
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             58    226
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             58    227
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             55    227
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             56    227
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             58    227
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             64    202
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q1             40    202
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q2             45    202
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q3             53    202
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             62    233
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             49    233
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             62    233
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             60    233
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             60    204
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             33    204
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             57    204
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             54    204
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             80    305
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             75    305
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             77    305
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             73    305
18-21 months   ki1000108-IRC              INDIA                          Wealth Q4             90    379
18-21 months   ki1000108-IRC              INDIA                          Wealth Q1            102    379
18-21 months   ki1000108-IRC              INDIA                          Wealth Q2             91    379
18-21 months   ki1000108-IRC              INDIA                          Wealth Q3             96    379
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            118    541
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            143    541
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            144    541
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            136    541
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              2      9
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              4      9
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1      9
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              2      9
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            115    445
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            106    445
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            124    445
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            100    445
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q4             44    183
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q1             50    183
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q2             44    183
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q3             45    183
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            150    360
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1             75    360
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2             68    360
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3             67    360
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            143    474
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1             98    474
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            116    474
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            117    474
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             61    207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             29    207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             60    207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             57    207
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4             53    165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1             23    165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2             38    165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3             51    165
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             59    226
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             52    226
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             57    226
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             58    226
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             59    227
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             54    227
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             55    227
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             59    227
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             62    189
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1             40    189
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2             34    189
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3             53    189
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             63    235
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             48    235
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             63    235
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             61    235
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             61    204
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             26    204
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             60    204
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             57    204
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             79    308
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             77    308
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             76    308
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             76    308
21-24 months   ki1000108-IRC              INDIA                          Wealth Q4             93    389
21-24 months   ki1000108-IRC              INDIA                          Wealth Q1            103    389
21-24 months   ki1000108-IRC              INDIA                          Wealth Q2             94    389
21-24 months   ki1000108-IRC              INDIA                          Wealth Q3             99    389
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4             95    471
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            126    471
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            126    471
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            124    471
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4             92    342
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1             75    342
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2             97    342
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3             78    342
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q4              5     38
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q1             14     38
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q2             10     38
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q3              9     38
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            163    403
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1             87    403
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2             78    403
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3             75    403
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            122    405
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1             84    405
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            102    405
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3             97    405


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-21 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/7fb1f631-b884-46a7-8b3e-da3c5302aca0/cc9d5952-f240-4b0b-a8cc-c6970de0624e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7fb1f631-b884-46a7-8b3e-da3c5302aca0/cc9d5952-f240-4b0b-a8cc-c6970de0624e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7fb1f631-b884-46a7-8b3e-da3c5302aca0/cc9d5952-f240-4b0b-a8cc-c6970de0624e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                3.3743058   3.2685538   3.4800578
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                3.4120126   3.2544662   3.5695589
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                3.2781129   3.1561080   3.4001179
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                3.3279428   3.1931185   3.4627671
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                3.7033847   3.5283704   3.8783991
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                3.9166326   3.6952941   4.1379710
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                3.9260062   3.6824749   4.1695376
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                3.7316755   3.4857957   3.9775553
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                3.2046596   3.0396377   3.3696814
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                3.4057533   3.2297520   3.5817545
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                3.3428362   3.1538198   3.5318525
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                3.3594998   3.1813594   3.5376401
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                3.5327836   3.3185569   3.7470103
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                3.7651394   3.6257611   3.9045177
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                3.6746996   3.4725645   3.8768347
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                3.5314671   3.3611182   3.7018160
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                3.0748741   2.9457060   3.2040422
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                3.0701213   2.9324878   3.2077549
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                3.0105640   2.8852181   3.1359099
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                3.1375206   3.0123440   3.2626972
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                3.2191295   3.0243572   3.4139017
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                3.0107595   2.8002211   3.2212979
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                3.3157656   3.1110016   3.5205297
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                3.1392973   2.9553800   3.3232147
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                3.2996663   3.1704417   3.4288910
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                3.2596360   3.1141361   3.4051360
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                3.3704540   3.2195212   3.5213869
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                3.1177902   2.9379857   3.2975946
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                3.1432839   2.7684867   3.5180810
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                3.5372113   3.0669132   4.0075094
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                3.4923962   2.9807797   4.0040127
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                3.7989965   3.4480844   4.1499086
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                3.2474033   3.0136766   3.4811301
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                2.9051127   2.6945727   3.1156528
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                3.0957276   2.8852393   3.3062159
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                3.3190968   3.0962899   3.5419036
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                3.2119382   3.1360693   3.2878071
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                3.3323514   3.2611405   3.4035623
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                3.2656862   3.1969110   3.3344615
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                3.2128975   3.1337814   3.2920137
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                3.5511267   3.4566853   3.6455680
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                3.5965157   3.4910700   3.7019614
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                3.6485957   3.5510026   3.7461889
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                3.5967950   3.4863046   3.7072854
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                3.9898145   3.8052975   4.1743315
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                3.6471591   3.2148518   4.0794664
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                3.3840446   3.1441402   3.6239490
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                3.5583976   3.2016959   3.9150994
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                2.5369670   2.4356456   2.6382884
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                2.4808939   2.3679901   2.5937977
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                2.5833365   2.4300250   2.7366480
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                2.4779655   2.3132657   2.6426654
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                3.6802807   3.6549317   3.7056296
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                3.6101535   3.5812110   3.6390959
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                3.6300216   3.6033221   3.6567210
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                3.6732820   3.6478492   3.6987148
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                3.0428970   2.8569022   3.2288918
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                2.9477655   2.8024946   3.0930365
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                2.9276482   2.7346433   3.1206530
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                3.0516260   2.7779320   3.3253201
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                1.9321495   1.8343507   2.0299484
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                1.9711208   1.8701370   2.0721045
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                1.9360695   1.8341234   2.0380155
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                1.8749743   1.7754520   1.9744967
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                2.2076027   2.0577655   2.3574399
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                2.0525603   1.8925986   2.2125219
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                2.1109655   1.9520232   2.2699078
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                2.2133074   2.0525221   2.3740927
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                1.8754232   1.7671046   1.9837417
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                1.8476427   1.7007105   1.9945748
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                1.9327183   1.8034592   2.0619774
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                1.9167475   1.7988918   2.0346031
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                2.0349980   1.9294662   2.1405298
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                2.0058350   1.8958649   2.1158050
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                1.9813500   1.8701383   2.0925616
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                1.8378405   1.7226446   1.9530364
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                1.9815309   1.8456675   2.1173943
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                2.0672974   1.9260014   2.2085934
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                2.0531618   1.9168015   2.1895220
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                1.9569917   1.8472342   2.0667493
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                2.0949907   1.9332108   2.2567705
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                2.0447650   1.8774630   2.2120669
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                1.7618169   1.6167130   1.9069209
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                2.0146953   1.8565169   2.1728738
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                1.7599880   1.6630930   1.8568831
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.8705341   1.7219300   2.0191381
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.8202861   1.6639907   1.9765815
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                1.8742012   1.7384778   2.0099246
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                1.7853847   1.5806502   1.9901193
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                2.0084703   1.8197517   2.1971890
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                1.7064158   1.5111848   1.9016469
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                1.7190412   1.5094648   1.9286176
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                1.8993306   1.7456184   2.0530427
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                1.8457051   1.7369106   1.9544996
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                1.8453766   1.7215215   1.9692318
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                1.9344450   1.8108720   2.0580179
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                1.9259475   1.8578173   1.9940776
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                1.9842428   1.9145304   2.0539553
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                1.9898424   1.9304692   2.0492156
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                1.9553338   1.8818854   2.0287823
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                1.7529404   1.6823949   1.8234858
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.8578798   1.7931365   1.9226232
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.8154517   1.7299232   1.9009801
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                1.7373109   1.6686910   1.8059309
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                1.7110072   1.6324853   1.7895291
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                1.7219625   1.6423628   1.8015622
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                1.6648314   1.5906218   1.7390409
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                1.7438370   1.6619621   1.8257119
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                2.0969752   1.9944791   2.1994712
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                2.1073650   2.0086301   2.2061000
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                2.1093902   2.0242966   2.1944838
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                2.0201314   1.9273612   2.1129017
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                1.7147757   1.6454866   1.7840649
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                1.5911857   1.5024016   1.6799697
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                1.6358386   1.5209616   1.7507157
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                1.6874348   1.5871679   1.7877018
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                1.9241458   1.8974294   1.9508621
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                1.9308934   1.8996574   1.9621294
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                1.9335393   1.9038232   1.9632553
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                1.9237086   1.8978532   1.9495639
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                1.9234470   1.8243291   2.0225649
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                1.8481943   1.7119995   1.9843891
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                1.8512188   1.7454069   1.9570308
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                1.9155191   1.7756274   2.0554108
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                1.2943623   1.2285280   1.3601966
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                1.2871712   1.1993908   1.3749516
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                1.2132788   1.1349923   1.2915652
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                1.1998449   1.1158116   1.2838782
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                1.5607403   1.3937448   1.7277357
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                1.4497312   1.3126625   1.5867999
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                1.3747953   1.2316686   1.5179219
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                1.5345081   1.3544022   1.7146140
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                1.2565184   1.1715901   1.3414467
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                1.2428946   1.1080424   1.3777469
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                1.2363680   1.1423132   1.3304229
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                1.2485387   1.1537034   1.3433741
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                1.3313249   1.2527359   1.4099139
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                1.4649761   1.3616202   1.5683320
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                1.3582987   1.2709368   1.4456606
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                1.2790484   1.2032378   1.3548591
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                1.2840227   1.1799950   1.3880503
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                1.3324745   1.2397032   1.4252459
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                1.3529806   1.2365622   1.4693990
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                1.3158047   1.1962682   1.4353413
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                1.5086517   1.3853077   1.6319958
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                1.2874653   1.1558271   1.4191034
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                1.3898832   1.2760666   1.5036998
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                1.3111799   1.1763929   1.4459668
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                1.2757848   1.0863890   1.4651805
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.1950476   1.0705782   1.3195170
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.1790823   1.0321207   1.3260439
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                1.1052360   0.9734663   1.2370057
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                1.2820109   1.1314050   1.4326169
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                1.1507319   1.0045647   1.2968992
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                1.1679883   1.0172310   1.3187455
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                1.2729652   1.1032919   1.4426385
6-9 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                1.4619120   1.3393019   1.5845220
6-9 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                1.3786186   1.2893698   1.4678673
6-9 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                1.3043328   1.2283968   1.3802689
6-9 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                1.3461132   1.2522651   1.4399613
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                1.2251152   1.1737566   1.2764738
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                1.3424377   1.2927971   1.3920783
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                1.3033605   1.2526345   1.3540866
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                1.2478640   1.2002561   1.2954718
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                1.2909965   1.2203561   1.3616369
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.3261478   1.2568099   1.3954857
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.3020649   1.2244003   1.3797296
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                1.3758781   1.3007615   1.4509946
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                1.2813971   1.2152187   1.3475755
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                1.3660783   1.2626835   1.4694732
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                1.3116468   1.2322866   1.3910071
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                1.3078359   1.2415482   1.3741236
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                1.4610953   1.3794773   1.5427133
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                1.3383738   1.2374858   1.4392618
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                1.4325994   1.3411991   1.5239997
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                1.3649505   1.2689904   1.4609106
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                1.1127479   1.0455637   1.1799322
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                1.0705079   0.9902478   1.1507680
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.9662037   0.8834365   1.0489708
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                1.0730764   0.9846537   1.1614991
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                1.4702882   1.4022812   1.5382952
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                1.4458067   1.3563816   1.5352319
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                1.4545345   1.3918929   1.5171761
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                1.4629424   1.3924428   1.5334421
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                1.3014480   1.2340133   1.3688827
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                1.2223609   1.1654375   1.2792843
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                1.2638140   1.1882902   1.3393377
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                1.3606246   1.2751852   1.4460641
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.9678851   0.8932433   1.0425269
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                1.0239754   0.9396057   1.1083450
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.9531335   0.8792930   1.0269741
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                1.0194075   0.9435887   1.0952262
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                1.3732658   1.2188188   1.5277127
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                1.2184476   1.1023728   1.3345224
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                1.2934701   1.1245190   1.4624212
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                1.2920044   1.1534368   1.4305719
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.9472641   0.8771087   1.0174195
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.9512140   0.8627796   1.0396485
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.9921991   0.9201241   1.0642740
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                1.0325954   0.9590313   1.1061596
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                1.0694561   0.9807694   1.1581427
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                1.0776704   0.9944696   1.1608713
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                1.1574930   1.0734771   1.2415089
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                1.0535234   0.9870930   1.1199539
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                1.0771623   0.9808669   1.1734577
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                1.0878891   0.9946050   1.1811731
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                1.1048558   1.0100531   1.1996585
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                1.1253408   1.0066910   1.2439906
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                1.0251048   0.8866733   1.1635363
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                1.0683443   0.9303001   1.2063885
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.9924376   0.8627262   1.1221490
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.9771743   0.8669986   1.0873499
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.7954438   0.5989544   0.9919332
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.8138737   0.6713488   0.9563986
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.7746184   0.6282421   0.9209946
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.8709074   0.7295191   1.0122956
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.8799307   0.7501819   1.0096796
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.8524886   0.7340012   0.9709759
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.9093061   0.7959830   1.0226293
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.9539284   0.7799277   1.1279290
9-12 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                1.1107841   1.0324082   1.1891600
9-12 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                1.1784921   1.0948554   1.2621288
9-12 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                1.1509742   1.0716880   1.2302604
9-12 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                1.0542240   0.9832470   1.1252011
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                1.0085842   0.9591260   1.0580425
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                1.0861892   1.0332563   1.1391222
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                1.0676031   1.0117504   1.1234558
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                1.0296299   0.9750961   1.0841637
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                1.1275641   1.0611730   1.1939551
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.0765064   1.0120490   1.1409637
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.1314364   1.0614093   1.2014634
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                1.0105360   0.9400236   1.0810485
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                1.0377986   0.9885288   1.0870685
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.9659643   0.8840494   1.0478793
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                1.0066062   0.9383831   1.0748294
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.9799019   0.9278276   1.0319762
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                1.2557319   1.1715862   1.3398777
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q1            NA                1.1850894   1.1061270   1.2640517
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q2            NA                1.2213918   1.1460574   1.2967261
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q3            NA                1.1572076   1.0805400   1.2338753
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.9708772   0.9138189   1.0279355
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.9211769   0.8451396   0.9972142
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.9696712   0.8937723   1.0455700
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.8662818   0.7827827   0.9497808
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                1.1104849   1.0207615   1.2002083
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                1.0050229   0.9031207   1.1069252
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                1.1232926   1.0374030   1.2091822
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                1.1596356   1.0687015   1.2505698
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                1.0394256   0.9715942   1.1072571
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                1.0867907   1.0304321   1.1431494
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                1.0313391   0.9449083   1.1177699
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                1.0604705   1.0029817   1.1179594
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.9545269   0.8858160   1.0232378
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.8809200   0.7762443   0.9855957
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.8825857   0.8094806   0.9556908
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.9252105   0.8429544   1.0074667
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                1.1776076   1.0727827   1.2824325
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                1.0796192   0.9448271   1.2144112
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                1.0922369   0.9415908   1.2428829
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                1.1930972   1.1073997   1.2787948
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.9508927   0.8777498   1.0240356
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.9005005   0.8119879   0.9890132
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.9067656   0.8392864   0.9742449
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.8827818   0.7995658   0.9659979
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                1.0993996   1.0323513   1.1664479
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.8692710   0.7843881   0.9541540
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.8987104   0.8199778   0.9774430
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.9309132   0.8602479   1.0015786
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.8976431   0.7905530   1.0047331
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.9407554   0.8570040   1.0245067
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.8346574   0.7446961   0.9246188
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.8959319   0.8191394   0.9727244
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.9598014   0.8522857   1.0673170
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.8701073   0.7680404   0.9721741
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.9623129   0.8440302   1.0805956
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.8736373   0.7471946   1.0000801
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.8126368   0.6906458   0.9346277
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.7961177   0.6560035   0.9362319
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.9483791   0.8226621   1.0740962
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.8488834   0.7243193   0.9734475
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.8580820   0.7358087   0.9803554
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.8618258   0.7118170   1.0118345
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.8995317   0.7713943   1.0276690
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.7921991   0.6365590   0.9478391
12-15 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.9786897   0.8712505   1.0861290
12-15 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.9657242   0.8899863   1.0414620
12-15 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.9701894   0.9010766   1.0393022
12-15 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.9074666   0.8315979   0.9833352
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.8796454   0.8303997   0.9288910
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.9747525   0.9206927   1.0288122
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                1.0139974   0.9600322   1.0679625
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.9531251   0.9059956   1.0002547
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.9567224   0.8839403   1.0295046
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.9350164   0.8649441   1.0050887
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.9146811   0.8308217   0.9985406
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.9192700   0.8509824   0.9875575
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.8601923   0.8146014   0.9057832
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.8369761   0.7842271   0.8897251
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.8778569   0.8285622   0.9271516
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.9500579   0.8683388   1.0317770
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.8980090   0.8090962   0.9869219
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.9262625   0.8528422   0.9996827
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.9094587   0.8263867   0.9925308
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.9826788   0.8893704   1.0759873
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7753873   0.7165158   0.8342587
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.7541718   0.6840125   0.8243311
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.7234873   0.6338622   0.8131124
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.7271024   0.6409411   0.8132638
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.8899458   0.6628508   1.1170409
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                1.1374292   0.9415843   1.3332742
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.9641674   0.8245742   1.1037607
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.8609587   0.7500602   0.9718571
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                1.0006029   0.9238274   1.0773783
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.9118900   0.8613014   0.9624786
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.9562570   0.8982452   1.0142688
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.9086208   0.8444012   0.9728403
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.8227343   0.7454461   0.9000225
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.7978081   0.6960649   0.8995513
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.8043927   0.7441084   0.8646771
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.8627412   0.7997640   0.9257184
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                1.0364387   0.9161931   1.1566844
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                0.9763233   0.8724287   1.0802178
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                0.9777701   0.8408052   1.1147349
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                1.0029331   0.8999991   1.1058670
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.8229573   0.7524255   0.8934890
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.8665038   0.7803749   0.9526327
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.8615158   0.7984855   0.9245462
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.8295294   0.7588957   0.9001632
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.8927712   0.8201644   0.9653780
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.8230740   0.7336018   0.9125463
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.8546286   0.7704679   0.9387892
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.7924277   0.7096252   0.8752303
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.8871099   0.7992274   0.9749924
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.8525613   0.7754099   0.9297128
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.7963693   0.7083360   0.8844026
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.8645321   0.7896699   0.9393942
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.9429006   0.8452148   1.0405865
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.9981593   0.8801461   1.1161725
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.8568189   0.7589814   0.9546565
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.7728407   0.6706766   0.8750048
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.8189154   0.7186575   0.9191733
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.6676810   0.5215082   0.8138537
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.5931802   0.4652569   0.7211034
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.6555368   0.5438592   0.7672144
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7749805   0.6562364   0.8937245
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.7701765   0.6134898   0.9268632
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6195592   0.5175320   0.7215864
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.7761007   0.6563300   0.8958714
15-18 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.8884963   0.8112735   0.9657190
15-18 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.8618271   0.7825516   0.9411025
15-18 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.8916594   0.8074161   0.9759028
15-18 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.7959168   0.7239813   0.8678524
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.8552488   0.8058238   0.9046739
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.8635736   0.8179616   0.9091856
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.8654342   0.8197431   0.9111253
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.8386350   0.7868525   0.8904175
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.8818398   0.7973742   0.9663054
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.0115240   0.9354388   1.0876091
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.9210899   0.8263998   1.0157800
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.9083647   0.8261247   0.9906047
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.7652978   0.7166353   0.8139604
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.7437507   0.6762295   0.8112720
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.7612264   0.7141430   0.8083097
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.7473179   0.6365776   0.8580583
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                1.0143822   0.9221613   1.1066032
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.9942793   0.9102026   1.0783561
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.9512243   0.8622628   1.0401859
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.9828103   0.8851065   1.0805142
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7477758   0.6911763   0.8043753
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.6895079   0.6042707   0.7747451
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.6998893   0.5850879   0.8146908
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.7467940   0.6380597   0.8555284
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.8117720   0.6435335   0.9800105
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.7619825   0.6576515   0.8663135
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.8119812   0.6452313   0.9787311
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.8965966   0.7727623   1.0204309
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.8217674   0.7468105   0.8967244
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.8409690   0.7871614   0.8947765
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.8188120   0.7619167   0.8757073
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.8645280   0.7855185   0.9435375
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.8786557   0.8196999   0.9376115
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.8292607   0.7301147   0.9284067
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.7755607   0.7177362   0.8333853
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.7747138   0.7056195   0.8438081
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                0.8862883   0.7394484   1.0331283
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                0.8757643   0.7469537   1.0045748
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                1.0242676   0.8492157   1.1993195
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                0.8836273   0.7911052   0.9761493
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.8813017   0.8132853   0.9493180
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.8363611   0.7513079   0.9214144
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.9309194   0.8674319   0.9944070
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.8643630   0.8010717   0.9276543
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.7723466   0.7057083   0.8389849
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.9181745   0.8355476   1.0008013
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.8155688   0.7418365   0.8893012
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.7721026   0.6967104   0.8474948
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.8392342   0.7583467   0.9201218
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.8127073   0.7102457   0.9151690
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.7473092   0.6766302   0.8179882
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.9457258   0.8537976   1.0376540
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.8307626   0.7004057   0.9611194
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.6744236   0.5707984   0.7780488
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.7952882   0.6991812   0.8913951
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.8064377   0.7037121   0.9091633
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.6760690   0.5572237   0.7949143
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.8673840   0.7292285   1.0055395
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.7597063   0.6172430   0.9021696
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.7263798   0.5967537   0.8560059
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7211205   0.6084683   0.8337727
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5734564   0.4649603   0.6819526
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.7088611   0.5743855   0.8433366
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.7974845   0.6498186   0.9451505
18-21 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.7858948   0.7070742   0.8647154
18-21 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.7031086   0.6318327   0.7743845
18-21 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.7850140   0.7085742   0.8614537
18-21 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.7716785   0.6925774   0.8507797
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.7946971   0.7455539   0.8438403
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.9180456   0.8727851   0.9633060
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.8413931   0.7951259   0.8876603
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.7931347   0.7448663   0.8414031
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.9306769   0.8840844   0.9772695
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.8910552   0.8190934   0.9630171
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.9005578   0.8535000   0.9476156
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.8908465   0.7874828   0.9942102
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.9317100   0.8443728   1.0190473
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.8398773   0.7617316   0.9180231
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.9399588   0.8433169   1.0366006
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.9562375   0.8724214   1.0400537
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7721084   0.7173908   0.8268260
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.7029223   0.6096260   0.7962187
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.7303990   0.6276700   0.8331280
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.6936845   0.5994928   0.7878761
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.8537012   0.7798057   0.9275968
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.8304229   0.7338054   0.9270404
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.7794061   0.6541804   0.9046318
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.8095527   0.7368428   0.8822626
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.7619966   0.6984794   0.8255137
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.7454723   0.6456322   0.8453124
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.7790701   0.7069312   0.8512090
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.7793839   0.7194528   0.8393150
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                0.7961560   0.7253803   0.8669318
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                0.8216800   0.7301818   0.9131782
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                0.7767590   0.6569214   0.8965965
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                0.7990846   0.7271201   0.8710491
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.8476586   0.7827350   0.9125823
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.8201736   0.7654819   0.8748652
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.7951325   0.7228797   0.8673854
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.8377786   0.7873712   0.8881860
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.7917968   0.6969494   0.8866442
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.7348694   0.6468457   0.8228931
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.8094776   0.7289435   0.8900117
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.7949441   0.7378149   0.8520732
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.8408360   0.7527608   0.9289112
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.8052117   0.7041451   0.9062782
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.6983232   0.6200533   0.7765931
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.6746277   0.5872863   0.7619691
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.8797041   0.7935171   0.9658911
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.8538110   0.7058807   1.0017413
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.7789884   0.6851597   0.8728172
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.8491928   0.7591696   0.9392160
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.7456259   0.6456058   0.8456459
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.8364769   0.6738230   0.9991308
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.6564262   0.5104612   0.8023913
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.7025463   0.5932299   0.8118627
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.6864500   0.5901088   0.7827912
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.7014391   0.5605274   0.8423507
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6980535   0.5927615   0.8033456
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.7423224   0.5999825   0.8846623
21-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.7244880   0.6430586   0.8059175
21-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.6527357   0.5866476   0.7188238
21-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.6820179   0.6004761   0.7635597
21-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.7763006   0.6816348   0.8709664
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.7289933   0.6738021   0.7841844
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.7466649   0.6956089   0.7977209
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.7571787   0.7081290   0.8062284
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.8120955   0.7648900   0.8593009
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.7871350   0.7077784   0.8664916
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.7693741   0.6993699   0.8393784
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.7836468   0.7084848   0.8588087
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.8607109   0.7293353   0.9920865
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                1.0124849   0.8046538   1.2203160
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.9254472   0.7860447   1.0648496
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                1.0274973   0.8756221   1.1793725
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.8043787   0.6853502   0.9234072
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.6460901   0.5935990   0.6985811
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.6090752   0.5344098   0.6837406
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.6240968   0.5417986   0.7063949
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.6278967   0.5569174   0.6988760
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.7679126   0.7018393   0.8339860
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.7598484   0.6351070   0.8845899
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.7118554   0.6220579   0.8016529
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.7611555   0.6679839   0.8543272


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.3470101   3.2814494   3.4125709
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                3.8190367   3.7078440   3.9302295
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.3306152   3.2408417   3.4203888
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.6214116   3.5288934   3.7139297
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.0720111   3.0070171   3.1370050
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.1667059   3.0657224   3.2676894
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2602600   3.1826202   3.3378997
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                3.4601875   3.2440906   3.6762845
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1382493   3.0275242   3.2489743
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                3.5989683   3.5479067   3.6500300
0-3 months     ki1114097-CONTENT          PERU                           NA                   NA                3.6418727   3.4619177   3.8218277
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.5183660   2.4543207   2.5824113
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.6487057   3.6333906   3.6640209
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                2.9935112   2.8845861   3.1024362
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8922980   1.8286780   1.9559180
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9644601   1.9083113   2.0206088
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9768255   1.8961556   2.0574955
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7933135   1.7575160   1.8291109
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.7095685   1.6702436   1.7488934
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.6686550   1.6238300   1.7134800
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9275883   1.9126878   1.9424888
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.8838056   1.8192936   1.9483176
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.2462236   1.1943701   1.2980772
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.3571408   1.3129874   1.4012943
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.3769258   1.3128158   1.4410357
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1907556   1.1129385   1.2685726
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.2173381   1.1398153   1.2948610
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                1.3724009   1.3237927   1.4210091
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3249931   1.2883838   1.3616025
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.3172026   1.2765236   1.3578817
6-9 months     ki1114097-CONTENT          PERU                           NA                   NA                1.3974236   1.3502187   1.4446285
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.0680227   1.0281370   1.1079084
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                1.4589363   1.4224162   1.4954563
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.2864500   1.2489340   1.3239661
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9814702   0.9432520   1.0196885
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.0892372   1.0484769   1.1299974
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.0143258   0.9494983   1.0791533
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8131077   0.7319679   0.8942474
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8995224   0.8316661   0.9673787
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.1234734   1.0841051   1.1628417
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0855731   1.0514671   1.1196792
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9983761   0.9658898   1.0308625
9-12 months    ki1114097-CONTENT          PERU                           NA                   NA                1.2048768   1.1650186   1.2447350
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.9401162   0.9044128   0.9758195
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.1007887   1.0539615   1.1476158
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.0549548   1.0220826   1.0878270
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9104936   0.8713262   0.9496610
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9514124   0.9120195   0.9908054
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9196294   0.8619875   0.9772714
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8563558   0.7920248   0.9206869
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8533724   0.7837188   0.9230260
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                0.9553539   0.9137750   0.9969329
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9319267   0.8950348   0.9688186
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8797046   0.8507834   0.9086259
12-15 months   ki1114097-CONTENT          PERU                           NA                   NA                0.9291443   0.8867697   0.9715190
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7525707   0.7155639   0.7895775
12-15 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.9578403   0.8612449   1.0544357
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.9426270   0.9101880   0.9750661
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8443884   0.8080665   0.8807103
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8408362   0.7994023   0.8822700
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8871502   0.8344911   0.9398094
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6867479   0.6257076   0.7477883
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7339135   0.6710399   0.7967871
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                0.8591216   0.8197594   0.8984837
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9372014   0.8951355   0.9792674
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.7549520   0.7202105   0.7896934
15-18 months   ki1114097-CONTENT          PERU                           NA                   NA                0.9860231   0.9406097   1.0314365
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7260944   0.6843593   0.7678295
15-18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8227868   0.7513696   0.8942040
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8366524   0.8050734   0.8682315
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8787101   0.8434384   0.9139818
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8182798   0.7801724   0.8563871
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.7821810   0.7266294   0.8377325
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7437038   0.6761886   0.8112190
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6999920   0.6362204   0.7637635
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                0.7598022   0.7214752   0.7981291
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9038955   0.8699458   0.9378453
18-21 months   ki1114097-CONTENT          PERU                           NA                   NA                0.9146338   0.8709588   0.9583088
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7352206   0.6953046   0.7751367
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8198090   0.7732927   0.8663254
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8255513   0.7946970   0.8564056
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.7833565   0.7426056   0.8241074
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8394950   0.7880175   0.8909725
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7189328   0.6544287   0.7834368
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7068472   0.6454809   0.7682134
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.7084129   0.6674749   0.7493508
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.7990312   0.7536798   0.8443825
21-24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.9350807   0.8543561   1.0158053
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6304566   0.5966816   0.6642317
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.7505036   0.7048983   0.7961088


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0377068   -0.1520414    0.2274549
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0961929   -0.2576509    0.0652652
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0463630   -0.2177138    0.1249877
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4          0.2132478   -0.0689236    0.4954193
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.2226215   -0.0772743    0.5225174
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.0282908   -0.2735152    0.3300968
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.2010937   -0.0401710    0.4423584
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.1381766   -0.1127405    0.3890938
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.1548402   -0.0879894    0.3976698
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.2323558   -0.0232208    0.4879324
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.1419160   -0.1526204    0.4364524
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0013165   -0.2750167    0.2723838
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0047527   -0.1935050    0.1839995
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0643101   -0.2442990    0.1156787
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0626465   -0.1172245    0.2425175
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.2083699   -0.4951846    0.0784447
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.0966362   -0.1859670    0.3792393
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0798321   -0.3477161    0.1880519
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0400303   -0.2346305    0.1545699
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0707877   -0.1279074    0.2694828
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.1818762   -0.4033003    0.0395480
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.3939274   -0.2074487    0.9953035
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.3491124   -0.2850992    0.9833239
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.6557126    0.1422809    1.1691444
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.3422906   -0.6568622   -0.0277189
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.1516757   -0.4662127    0.1628613
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0716934   -0.2512170    0.3946038
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.1204132    0.0163599    0.2244665
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0537480   -0.0486538    0.1561499
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0009593   -0.1086557    0.1105744
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0453890   -0.0961665    0.1869445
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0974691   -0.0383382    0.2332763
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0456684   -0.0996840    0.1910207
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.3426554   -0.8126938    0.1273830
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.6057699   -0.9084259   -0.3031139
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.4314168   -0.8330170   -0.0298167
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0560731   -0.2077745    0.0956282
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0463695   -0.1373978    0.2301369
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0590015   -0.2523718    0.1343688
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0701272   -0.1075061   -0.0327483
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0502591   -0.0870507   -0.0134675
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0069987   -0.0410644    0.0270671
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0951315   -0.3273406    0.1370776
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1152489   -0.3849688    0.1544711
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4          0.0087290   -0.3136606    0.3311186
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0389712   -0.1016073    0.1795498
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4          0.0039199   -0.1373515    0.1451913
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0571752   -0.1967077    0.0823572
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.1550425   -0.3742203    0.0641353
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0966373   -0.3150723    0.1217977
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.0057047   -0.2140750    0.2254843
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0277805   -0.2103236    0.1547626
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0572952   -0.1113489    0.2259392
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0413243   -0.1187471    0.2013958
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0291630   -0.1815781    0.1232521
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0536480   -0.2069614    0.0996654
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.1971575   -0.3533851   -0.0409299
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0857665   -0.1102525    0.2817854
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0716308   -0.1208607    0.2641224
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0245392   -0.1991977    0.1501193
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0502257   -0.2829544    0.1825030
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.3331737   -0.5504934   -0.1158540
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0802953   -0.3065543    0.1459636
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1105460   -0.0668569    0.2879489
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0602981   -0.1235957    0.2441918
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.1142132   -0.0525486    0.2809750
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.2230856   -0.0553582    0.5015294
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0789689   -0.3618671    0.2039293
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0663435   -0.3593256    0.2266386
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0536255   -0.2419435    0.1346925
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0539539   -0.2513559    0.1434480
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0351144   -0.1621106    0.2323394
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0582954   -0.0391805    0.1557713
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0638949   -0.0264760    0.1542658
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0293864   -0.0707954    0.1295682
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1049395    0.0091879    0.2006911
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0625113   -0.0483569    0.1733796
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0156294   -0.1140436    0.0827848
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0109553   -0.1008562    0.1227667
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0461758   -0.1542163    0.0618646
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0328297   -0.0806127    0.1462722
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4          0.0103899   -0.1319268    0.1527066
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0124151   -0.1208004    0.1456306
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0768437   -0.2150890    0.0614015
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.1235901   -0.2362116   -0.0109686
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0789371   -0.2130927    0.0552185
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0273409   -0.1492197    0.0945379
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4          0.0067476   -0.0345816    0.0480768
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4          0.0093935   -0.0295383    0.0483253
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0004372   -0.0377889    0.0369145
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0752527   -0.2452140    0.0947086
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0722282   -0.2166987    0.0722424
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0079279   -0.1762943    0.1604385
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0071911   -0.1169160    0.1025337
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0810836   -0.1833720    0.0212048
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0945174   -0.2012683    0.0122335
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.1110091   -0.3270538    0.1050356
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.1859450   -0.4058830    0.0339929
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0262322   -0.2718449    0.2193805
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0136238   -0.1729911    0.1457436
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0201504   -0.1468750    0.1065743
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.0079797   -0.1352847    0.1193253
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.1336512    0.0038103    0.2634921
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0269738   -0.0905351    0.1444827
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0522765   -0.1614712    0.0569182
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0484519   -0.0909335    0.1878373
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0689580   -0.0871670    0.2250829
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0317821   -0.1266816    0.1902458
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.2211865   -0.4015815   -0.0407915
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.1187686   -0.2866017    0.0490646
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.1974719   -0.3801773   -0.0147665
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0807372   -0.3073721    0.1458977
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0967025   -0.3364283    0.1430233
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.1705488   -0.4012738    0.0601762
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.1312790   -0.3411528    0.0785948
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.1140227   -0.3271187    0.0990733
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0090457   -0.2359183    0.2178269
6-9 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0832934   -0.2349462    0.0683594
6-9 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.1575791   -0.3017995   -0.0133587
6-9 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.1157987   -0.2702031    0.0386056
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.1173225    0.0458950    0.1887501
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0782454    0.0060592    0.1504315
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0227488   -0.0472813    0.0927789
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0351513   -0.0638325    0.1341352
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0110685   -0.0939166    0.1160536
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0848816   -0.0182327    0.1879959
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0846812   -0.0380790    0.2074414
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0302497   -0.0730829    0.1335824
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0264388   -0.0672289    0.1201065
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.1227215   -0.2524901    0.0070471
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0284959   -0.1510337    0.0940419
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0961448   -0.2221204    0.0298307
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0422400   -0.1469081    0.0624280
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.1465443   -0.2531469   -0.0399417
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0396715   -0.1507224    0.0713793
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0244814   -0.1368283    0.0878654
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0157536   -0.1082140    0.0767067
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0073457   -0.1053006    0.0906091
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0790870   -0.1665172    0.0083431
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0376340   -0.1395200    0.0642520
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4          0.0591766   -0.0473214    0.1656746
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0560903   -0.0565580    0.1687385
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0147515   -0.1197460    0.0902429
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4          0.0515224   -0.0548725    0.1579173
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.1548182   -0.3480207    0.0383843
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0797956   -0.3087024    0.1491112
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0812614   -0.2887579    0.1262352
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.0039499   -0.1089324    0.1168323
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0449350   -0.0556463    0.1455162
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0853313   -0.0163223    0.1869850
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.0082144   -0.1133903    0.1298191
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0880370   -0.0341268    0.2102008
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0159326   -0.1267402    0.0948750
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0107268   -0.1233431    0.1447966
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0276935   -0.1074374    0.1628244
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0481785   -0.1046305    0.2009875
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0432395   -0.1522586    0.2387375
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0326672   -0.2223732    0.1570387
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0479306   -0.2248542    0.1289931
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0184299   -0.2243075    0.2611673
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0208254   -0.2658440    0.2241931
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0754636   -0.1666082    0.3175353
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0274422   -0.2031522    0.1482678
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.0293754   -0.1428945    0.2016452
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0739976   -0.1430531    0.2910483
9-12 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4          0.0677080   -0.0469125    0.1823286
9-12 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4          0.0401901   -0.0712957    0.1516759
9-12 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0565601   -0.1622980    0.0491779
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0776050    0.0051618    0.1500482
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0590189   -0.0155844    0.1336221
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0210457   -0.0525754    0.0946667
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0510577   -0.1435916    0.0414762
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0038723   -0.0926242    0.1003687
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.1170280   -0.2138773   -0.0201788
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0718343   -0.1674250    0.0237564
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0311924   -0.1153465    0.0529617
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0578967   -0.1295853    0.0137918
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0706426   -0.1860356    0.0447505
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0343402   -0.1472817    0.0786013
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0985243   -0.2123594    0.0153108
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0497003   -0.1447651    0.0453645
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0012060   -0.0961601    0.0937480
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.1045954   -0.2057277   -0.0034632
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.1054619   -0.2412351    0.0303112
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4          0.0128078   -0.1113990    0.1370145
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4          0.0491508   -0.0785963    0.1768978
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4          0.0473651   -0.0378410    0.1325712
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0080865   -0.1264978    0.1103247
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4          0.0210449   -0.0724946    0.1145845
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0736069   -0.1988194    0.0516057
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0719412   -0.1722683    0.0283860
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0293163   -0.1364950    0.0778623
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.0979884   -0.2687431    0.0727662
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0853707   -0.2688986    0.0981572
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.0154896   -0.1199073    0.1508866
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0503922   -0.1652154    0.0644311
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0441271   -0.1436426    0.0553884
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.0681109   -0.1789025    0.0426808
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.2301286   -0.3382978   -0.1219593
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.2006892   -0.3041024   -0.0972760
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.1684864   -0.2658982   -0.0710746
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0431123   -0.0928383    0.1790629
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0629856   -0.2028474    0.0768762
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0017112   -0.1334888    0.1300665
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0896941   -0.2379414    0.0585532
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.0025115   -0.1573334    0.1623565
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0861640   -0.2521381    0.0798101
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0165191   -0.2022979    0.1692598
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.1357424   -0.0394334    0.3109182
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0362467   -0.1381035    0.2105969
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.0037438   -0.1897850    0.1972725
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.0414496   -0.1356660    0.2185653
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0658830   -0.2638087    0.1320427
12-15 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0129656   -0.1444168    0.1184856
12-15 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0085004   -0.1362493    0.1192485
12-15 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0712232   -0.2027498    0.0603034
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0951071    0.0219799    0.1682343
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.1343520    0.0612947    0.2074093
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0734797    0.0053157    0.1416437
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0217060   -0.1227375    0.0793255
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0420413   -0.1530803    0.0689976
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0374524   -0.1372544    0.0623495
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0232162   -0.0929370    0.0465046
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0176646   -0.0494807    0.0848099
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0898656   -0.0037108    0.1834420
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4          0.0282534   -0.0870549    0.1435618
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0114497   -0.1102321    0.1331315
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0846698   -0.0442176    0.2135572
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0212154   -0.1128024    0.0703715
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0519000   -0.1591311    0.0553311
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0482848   -0.1526382    0.0560685
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4          0.2474834   -0.0523956    0.5473624
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4          0.0742216   -0.1923463    0.3407895
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0289872   -0.2817135    0.2237392
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0887129   -0.1788522    0.0014264
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0443459   -0.1393618    0.0506700
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0919821   -0.1907907    0.0068264
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0249263   -0.1526962    0.1028436
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0183416   -0.1163603    0.0796771
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4          0.0400069   -0.0596906    0.1397044
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.0601155   -0.2190277    0.0987968
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0586687   -0.2409278    0.1235904
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0335057   -0.1917915    0.1247802
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.0435465   -0.0677769    0.1548700
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0385586   -0.0560329    0.1331501
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0065722   -0.0932470    0.1063913
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0696972   -0.1849232    0.0455288
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0381427   -0.1492946    0.0730093
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.1003435   -0.2104707    0.0097838
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0345486   -0.1514916    0.0823945
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0907406   -0.2151319    0.0336507
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0225778   -0.1380234    0.0928677
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0552587   -0.0979394    0.2084567
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0860817   -0.2243377    0.0521742
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.1700599   -0.3114107   -0.0287092
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.1512344   -0.3284860    0.0260172
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.2257352   -0.3882652   -0.0632052
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.1633786   -0.3134570   -0.0133002
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0048040   -0.2014022    0.1917942
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.1554213   -0.3119770    0.0011345
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0011202   -0.1675368    0.1697772
15-18 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0266692   -0.1373396    0.0840012
15-18 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4          0.0031632   -0.1111185    0.1174448
15-18 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0925795   -0.1981165    0.0129576
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0083247   -0.0589307    0.0755801
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0101853   -0.0571237    0.0774944
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0166138   -0.0881978    0.0549701
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1296842    0.0160031    0.2433653
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0392501   -0.0876383    0.1661385
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0265249   -0.0913643    0.1444140
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0215471   -0.1047767    0.0616825
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0040715   -0.0717833    0.0636403
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0179799   -0.1389405    0.1029808
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0201029   -0.1448972    0.1046913
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0631579   -0.1912940    0.0649782
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0315719   -0.1659250    0.1027812
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0582679   -0.1605854    0.0440496
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0478864   -0.1758820    0.0801091
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0009818   -0.1235651    0.1216015
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0497895   -0.2477520    0.1481730
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4          0.0002092   -0.2366657    0.2370842
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4          0.0848245   -0.1240753    0.2937244
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4          0.0192015   -0.0736665    0.1120695
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0029554   -0.0950626    0.0891518
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4          0.0427606   -0.0691766    0.1546978
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0493950   -0.1647454    0.0659554
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1030950   -0.1856751   -0.0205149
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1039419   -0.1947704   -0.0131135
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.0105241   -0.2058549    0.1848068
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.1379793   -0.0905052    0.3664637
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0026611   -0.1762189    0.1708967
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0449405   -0.1538454    0.0639644
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0496178   -0.0434247    0.1426602
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.0169387   -0.1098473    0.0759699
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.1458279    0.0396778    0.2519781
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0432223   -0.0561615    0.1426060
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0002439   -0.1008652    0.1003774
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0265269   -0.1570688    0.1040150
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0919251   -0.1993416    0.0154915
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.1064915   -0.0159568    0.2289399
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.1563389   -0.3228655    0.0101876
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0354744   -0.1974295    0.1264807
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0243249   -0.1902931    0.1416434
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1913150    0.0090758    0.3735543
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0836373   -0.1018889    0.2691636
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0503108   -0.1255503    0.2261719
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.1476641   -0.3040672    0.0087391
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0122594   -0.1876852    0.1631663
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0763640   -0.1093663    0.2620944
18-21 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0827862   -0.1890545    0.0234821
18-21 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0008808   -0.1106794    0.1089177
18-21 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0142163   -0.1258840    0.0974515
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.1233485    0.0565386    0.1901584
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0466960   -0.0208000    0.1141920
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0015624   -0.0704455    0.0673208
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0396217   -0.1253501    0.0461068
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0301191   -0.0963408    0.0361025
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0398304   -0.1532100    0.0735491
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0918327   -0.2090272    0.0253618
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0082488   -0.1220104    0.1385079
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0245275   -0.0965218    0.1455768
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0691861   -0.1773444    0.0389723
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0417094   -0.1581021    0.0746834
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0784239   -0.1873555    0.0305077
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0232783   -0.1449151    0.0983584
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0742951   -0.2196981    0.0711079
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0441485   -0.1478176    0.0595205
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0165243   -0.1348563    0.1018078
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4          0.0170736   -0.0790433    0.1131904
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4          0.0173874   -0.0699406    0.1047153
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4          0.0255240   -0.0901528    0.1412008
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0193970   -0.1585741    0.1197800
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.0029286   -0.0980075    0.1038647
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0274851   -0.1123747    0.0574046
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0525261   -0.1496629    0.0446107
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.0098800   -0.0920749    0.0723148
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0569273   -0.1863267    0.0724720
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0176808   -0.1067450    0.1421066
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4          0.0031473   -0.1075765    0.1138711
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0356243   -0.1696828    0.0984342
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.1425128   -0.2603407   -0.0246849
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.1662083   -0.2902476   -0.0421689
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0258931   -0.1970993    0.1453132
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.1007157   -0.2281207    0.0266893
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0305113   -0.1551403    0.0941176
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0908510   -0.1000948    0.2817968
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0891996   -0.2661454    0.0877461
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0430796   -0.1912487    0.1050896
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.0149890   -0.1557087    0.1856868
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.0116035   -0.1311131    0.1543202
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0558724   -0.1160063    0.2277510
21-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0717523   -0.1766256    0.0331209
21-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0424701   -0.1577083    0.0727680
21-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0518125   -0.0730569    0.1766820
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0176716   -0.0575134    0.0928566
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0281854   -0.0456518    0.1020226
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0831022    0.0104770    0.1557274
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0177609   -0.1235817    0.0880600
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0034882   -0.1127896    0.1058131
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0735759   -0.0799070    0.2270588
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0870377   -0.3372912    0.1632158
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0150124   -0.2423975    0.2724223
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.2081062   -0.4476089    0.0313965
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0370149   -0.1282850    0.0542552
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0219933   -0.1196063    0.0756197
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0181934   -0.1064734    0.0700867
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0080642   -0.1492241    0.1330957
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0560572   -0.1675439    0.0554294
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0067571   -0.1209790    0.1074648


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0272957   -0.1262662    0.0716749
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.1156520   -0.0435017    0.2748057
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.1259557   -0.0236028    0.2755142
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0886280   -0.0917673    0.2690232
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0028630   -0.1152556    0.1095296
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0524236   -0.2281796    0.1233324
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0394064   -0.1606970    0.0818843
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.3169037    0.0253412    0.6084662
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.1091541   -0.3140077    0.0956996
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0457428   -0.0210639    0.1125496
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0478417   -0.0362752    0.1319585
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.3479418   -0.5715353   -0.1243483
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0186010   -0.0996149    0.0624128
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0315749   -0.0538476   -0.0093023
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0493858   -0.2215935    0.1228218
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0045088   -0.0888857    0.0798681
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0615212   -0.1929918    0.0699494
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0168748   -0.0829499    0.1166995
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0705379   -0.1640529    0.0229771
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0341512   -0.0823793    0.1506817
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.1181651   -0.2575605    0.0212303
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0701021   -0.0249881    0.1651923
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0184033   -0.1554690    0.1922755
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0186567   -0.1471434    0.1098299
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0397983   -0.0212332    0.1008298
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0403731   -0.0212697    0.1020159
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0014387   -0.0693326    0.0664551
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0127911   -0.1010842    0.0755020
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0461207   -0.1005669    0.0083254
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0034426   -0.0188958    0.0257810
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0396414   -0.1381093    0.0588266
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0463172   -0.1059126    0.0132781
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0776244   -0.2170205    0.0617718
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0102948   -0.0890420    0.0684524
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0258159   -0.0449710    0.0966028
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0359739   -0.0526560    0.1246037
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.1317260   -0.2392076   -0.0242443
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0850292   -0.2338831    0.0638247
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0646728   -0.1970814    0.0677358
6-9 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0895110   -0.1899228    0.0109008
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0573033    0.0111937    0.1034129
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0339967   -0.0285290    0.0965223
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0358055   -0.0263824    0.0979935
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0636717   -0.1388544    0.0115110
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0447253   -0.0948061    0.0053556
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0113519   -0.0698920    0.0471881
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0149979   -0.0742956    0.0442997
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0217595   -0.0418470    0.0853660
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0750098   -0.2027750    0.0527554
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0342061   -0.0279817    0.0963939
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0197811   -0.0546671    0.0942293
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0213501   -0.0607210    0.1034212
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0107790   -0.1262428    0.1046848
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0176639   -0.1377843    0.1731120
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0195917   -0.0946380    0.1338213
9-12 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0126893   -0.0557408    0.0811194
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0413908   -0.0045431    0.0873246
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0419910   -0.1008422    0.0168602
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0394225   -0.0868673    0.0080223
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0508552   -0.1229365    0.0212262
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0307610   -0.0746100    0.0130880
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0096962   -0.0846554    0.0652630
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0155292   -0.0469265    0.0779848
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0404264   -0.1010672    0.0202143
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0354302   -0.1256683    0.0548079
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0403991   -0.1047265    0.0239283
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.1479872   -0.2091501   -0.0868242
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0059151   -0.0899259    0.0780958
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0401719   -0.1328833    0.0525395
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0437191   -0.0610986    0.1485367
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0047096   -0.1150181    0.1055988
12-15 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0233358   -0.1107909    0.0641193
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0801047    0.0344059    0.1258034
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0247957   -0.0891205    0.0395292
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0195123   -0.0229966    0.0620213
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.0311353   -0.0461101    0.1083807
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0228165   -0.0663914    0.0207584
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0678944   -0.0999108    0.2356997
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0579758   -0.1206458    0.0046941
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0013882   -0.0615103    0.0642868
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0343274   -0.1310767    0.0624220
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0214312   -0.0393684    0.0822307
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0519351   -0.1174681    0.0135980
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0336791   -0.1024214    0.0350631
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0557504   -0.1402568    0.0287560
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1321674   -0.2223141   -0.0420208
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0410670   -0.1448050    0.0626711
15-18 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0293747   -0.0974947    0.0387453
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0008510   -0.0438238    0.0455257
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0553616   -0.0195129    0.1302361
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0103458   -0.0584297    0.0377380
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0283591   -0.1090884    0.0523702
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0216814   -0.0681453    0.0247826
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0110148   -0.1255791    0.1476087
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0148850   -0.0492717    0.0790416
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0652710   -0.1165413   -0.0140007
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0297875   -0.0848784    0.1444534
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0025916   -0.0613696    0.0561864
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0459332   -0.0142631    0.1061295
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0022096   -0.0640504    0.0684697
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0485816   -0.1536313    0.0564681
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0676348   -0.0342187    0.1694884
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0211285   -0.1216274    0.0793703
18-21 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0260926   -0.0948751    0.0426898
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0446406    0.0006291    0.0886522
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0267814   -0.0737008    0.0201380
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0170762   -0.0936745    0.0595220
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0368878   -0.0826294    0.0088538
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0338922   -0.0996915    0.0319072
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0074217   -0.0465692    0.0614126
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0000041   -0.0610891    0.0610809
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0221073   -0.0765708    0.0323562
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0084403   -0.0857727    0.0688922
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0797854   -0.1495466   -0.0100242
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0402091   -0.1182819    0.0378637
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0266931   -0.1171475    0.0637613
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0203972   -0.0706308    0.1114251
21-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0160752   -0.0877424    0.0555920
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0341458   -0.0154741    0.0837657
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0118962   -0.0585744    0.0823667
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0774042   -0.2732190    0.1184106
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0156334   -0.0564649    0.0251980
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0174091   -0.0791775    0.0443593
