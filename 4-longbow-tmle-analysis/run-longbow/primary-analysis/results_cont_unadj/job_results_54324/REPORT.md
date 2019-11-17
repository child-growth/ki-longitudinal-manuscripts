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
![](/tmp/88cfb61a-2978-4c9e-83e9-380866904a7f/0abd007c-4816-424e-bf3d-079172f86990/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/88cfb61a-2978-4c9e-83e9-380866904a7f/0abd007c-4816-424e-bf3d-079172f86990/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/88cfb61a-2978-4c9e-83e9-380866904a7f/0abd007c-4816-424e-bf3d-079172f86990/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.1146454   -0.1687455   -0.0605453
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.0638745   -0.1419904    0.0142414
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.1388281   -0.2053394   -0.0723168
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.1492841   -0.2173757   -0.0811925
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.1055499    0.0093378    0.2017619
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                 0.1966953    0.0815272    0.3118633
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                 0.1880326    0.0680829    0.3079824
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                 0.0841749   -0.0451182    0.2134680
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.1369936   -0.2227333   -0.0512540
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.0175248   -0.1157471    0.0806974
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -0.0722859   -0.1687623    0.0241905
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.0542589   -0.1387036    0.0301858
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0166341   -0.0915056    0.1247738
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                 0.1157802    0.0489000    0.1826605
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                 0.0780017   -0.0140309    0.1700344
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                 0.0155981   -0.0669519    0.0981480
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.2424891   -0.3057530   -0.1792251
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -0.2483735   -0.3194312   -0.1773158
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -0.2789620   -0.3420960   -0.2158281
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -0.2464018   -0.3150420   -0.1777616
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.1440904   -0.2477440   -0.0404367
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.2520248   -0.3552069   -0.1488427
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.1225771   -0.2254376   -0.0197167
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.2241874   -0.3155275   -0.1328472
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1129553   -0.1815530   -0.0443575
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.1362845   -0.2066442   -0.0659248
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0964143   -0.1779419   -0.0148866
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.2111858   -0.2992128   -0.1231589
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.2511906   -0.4341811   -0.0682002
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.0297697   -0.2727146    0.2131751
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.0545882   -0.2918454    0.1826690
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                 0.0651305   -0.1096458    0.2399069
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.2135780   -0.3324135   -0.0947425
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.3639135   -0.4671707   -0.2606563
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.2772532   -0.3825019   -0.1720045
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.1628793   -0.2746843   -0.0510742
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.2072344   -0.2429864   -0.1714823
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.1501863   -0.1829317   -0.1174408
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.1823177   -0.2141841   -0.1504514
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.2163469   -0.2543151   -0.1783786
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0557305   -0.1024839   -0.0089771
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.0213098   -0.0729222    0.0303025
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.0168470   -0.0667000    0.0330061
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.0340132   -0.0869304    0.0189039
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.2116983    0.1106556    0.3127409
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.0178807   -0.2673442    0.2315828
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.1310214   -0.2551796   -0.0068632
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.0512877   -0.2547109    0.1521355
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.5614469   -0.6122758   -0.5106180
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.5872913   -0.6435949   -0.5309877
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.5544674   -0.6354282   -0.4735066
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.5898069   -0.6691520   -0.5104618
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0643167    0.0518752    0.0767582
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                 0.0370115    0.0230357    0.0509873
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                 0.0466801    0.0336924    0.0596677
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                 0.0646643    0.0524481    0.0768806
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.2689141   -0.3679207   -0.1699075
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.2987879   -0.3773991   -0.2201767
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.3169574   -0.4181809   -0.2157339
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.2473319   -0.3932275   -0.1014362
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0242032   -0.0678311    0.0194247
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                 0.0033813   -0.0446027    0.0513653
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.0128140   -0.0623395    0.0367116
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.0537458   -0.1001547   -0.0073369
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0921590    0.0236042    0.1607138
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                 0.0178791   -0.0553554    0.0911136
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                 0.0415036   -0.0325098    0.1155171
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                 0.0872811    0.0128080    0.1617542
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0463107   -0.0972443    0.0046229
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.0507918   -0.1171993    0.0156158
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -0.0216815   -0.0828449    0.0394820
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.0243025   -0.0794793    0.0308742
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0136503   -0.0354751    0.0627756
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -0.0052906   -0.0580422    0.0474610
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -0.0238122   -0.0755025    0.0278781
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -0.0759497   -0.1320000   -0.0198995
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0127457   -0.0504017    0.0758931
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                 0.0504508   -0.0162503    0.1171518
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                 0.0450483   -0.0202450    0.1103415
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -0.0073172   -0.0590060    0.0443716
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.0507196   -0.0250440    0.1264833
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                 0.0391939   -0.0391966    0.1175843
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.1052435   -0.1728316   -0.0376554
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                 0.0138893   -0.0614213    0.0891999
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1013157   -0.1468891   -0.0557422
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0519078   -0.1224104    0.0185949
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0793420   -0.1529921   -0.0056919
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0476039   -0.1128482    0.0176404
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1076145   -0.2042072   -0.0110218
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                 0.0055970   -0.0823603    0.0935543
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.1426140   -0.2359707   -0.0492572
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.1454561   -0.2440950   -0.0468172
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0514392   -0.1233850    0.0205067
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.0578166   -0.1090255   -0.0066077
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.0679879   -0.1272324   -0.0087434
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.0303221   -0.0887010    0.0280568
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0414989   -0.0732891   -0.0097088
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.0197834   -0.0518814    0.0123147
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.0162432   -0.0439827    0.0114963
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.0333586   -0.0688042    0.0020870
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1033446   -0.1364845   -0.0702048
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0584490   -0.0884163   -0.0284817
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0757319   -0.1154369   -0.0360270
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.1090826   -0.1406330   -0.0775322
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.1592404   -0.1965394   -0.1219414
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.1537588   -0.1912188   -0.1162989
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.1862067   -0.2223483   -0.1500651
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.1446265   -0.1822543   -0.1069986
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.0179365   -0.0312599    0.0671328
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                 0.0244053   -0.0204440    0.0692546
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                 0.0285651   -0.0114979    0.0686281
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.0213503   -0.0652880    0.0225875
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1186621   -0.1516458   -0.0856784
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.1743639   -0.2170467   -0.1316810
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.1590677   -0.2135632   -0.1045722
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.1319880   -0.1803657   -0.0836104
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0050957   -0.0175218    0.0073305
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                 0.0052012   -0.0094980    0.0199004
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                 0.0058922   -0.0076270    0.0194115
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -0.0003843   -0.0124653    0.0116966
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0038510   -0.0482706    0.0405685
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.0253397   -0.0880283    0.0373488
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.0323026   -0.0824524    0.0178472
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.0008636   -0.0647657    0.0630386
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0536494   -0.0825296   -0.0247692
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.0522285   -0.0902804   -0.0141765
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.0812648   -0.1151164   -0.0474132
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.0914233   -0.1280711   -0.0547755
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0429223   -0.0299417    0.1157862
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                -0.0047832   -0.0639817    0.0544153
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                -0.0402507   -0.1040491    0.0235477
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                 0.0316920   -0.0445606    0.1079446
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0663698   -0.1035378   -0.0292019
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.0688309   -0.1282416   -0.0094202
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -0.0761851   -0.1176446   -0.0347255
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.0702006   -0.1126517   -0.0277495
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0470281   -0.0814127   -0.0126435
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                 0.0098976   -0.0357270    0.0555222
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -0.0364762   -0.0749258    0.0019735
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -0.0626473   -0.0952671   -0.0300275
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0505607   -0.0956788   -0.0054426
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -0.0320820   -0.0732579    0.0090939
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -0.0167960   -0.0688796    0.0352876
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -0.0323343   -0.0860739    0.0214053
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.0341509   -0.0205294    0.0888311
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.0533126   -0.1128050    0.0061797
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.0109469   -0.0589013    0.0370074
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.0451657   -0.1046846    0.0143531
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0552659   -0.1345800    0.0240481
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0908518   -0.1466311   -0.0350726
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.1001901   -0.1638746   -0.0365055
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.1306898   -0.1887522   -0.0726274
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0499102   -0.1165517    0.0167313
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.1162708   -0.1813974   -0.0511441
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.1013383   -0.1678411   -0.0348354
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.0587257   -0.1327348    0.0152833
6-9 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0191540   -0.0355742    0.0738822
6-9 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.0082061   -0.0473484    0.0309362
6-9 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.0436051   -0.0769760   -0.0102342
6-9 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.0319907   -0.0742642    0.0102827
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0825043   -0.1047236   -0.0602850
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.0374433   -0.0588484   -0.0160381
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.0543623   -0.0763939   -0.0323306
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.0754302   -0.0955891   -0.0552712
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0638669   -0.0947606   -0.0329733
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0527794   -0.0832106   -0.0223481
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0613552   -0.0956528   -0.0270576
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0303142   -0.0633895    0.0027610
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0609069   -0.0904809   -0.0313329
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.0209519   -0.0646163    0.0227125
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.0459105   -0.0800322   -0.0117888
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.0487483   -0.0775468   -0.0199497
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.0009471   -0.0357660    0.0376601
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.0482610   -0.0932043   -0.0033178
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.0108572   -0.0515655    0.0298511
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.0357316   -0.0785998    0.0071366
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1186687   -0.1479990   -0.0893385
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.1313690   -0.1668247   -0.0959133
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.1794413   -0.2168650   -0.1420176
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.1323792   -0.1707040   -0.0940544
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0321796    0.0027168    0.0616425
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                 0.0213624   -0.0178140    0.0605388
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                 0.0275872   -0.0002121    0.0553866
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                 0.0297728   -0.0006491    0.0601948
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0436476   -0.0727610   -0.0145342
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.0683594   -0.0932368   -0.0434820
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.0535853   -0.0863057   -0.0208648
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.0162829   -0.0533404    0.0207745
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.1008756   -0.1319398   -0.0698114
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.0724192   -0.1077203   -0.0371181
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.0983943   -0.1287432   -0.0680453
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.0743239   -0.1065735   -0.0420743
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0357647   -0.0265219    0.0980513
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                -0.0230595   -0.0708311    0.0247121
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                 0.0062355   -0.0643372    0.0768082
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                 0.0076386   -0.0521922    0.0674695
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.1050572   -0.1341620   -0.0759524
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.1013327   -0.1379029   -0.0647626
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -0.0870427   -0.1165910   -0.0574944
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.0723971   -0.1033052   -0.0414890
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0712487   -0.1070576   -0.0354398
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -0.0711889   -0.1061458   -0.0362319
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -0.0362066   -0.0717022   -0.0007110
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -0.0704120   -0.0980887   -0.0427352
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0501873   -0.0914258   -0.0089488
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -0.0490216   -0.0880067   -0.0100365
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -0.0387796   -0.0789032    0.0013441
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -0.0295440   -0.0789540    0.0198660
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0885873   -0.1461083   -0.0310662
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.0595211   -0.1166503   -0.0023919
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.0888906   -0.1424815   -0.0352996
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.0994981   -0.1453641   -0.0536320
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1603093   -0.2419757   -0.0786429
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.1565773   -0.2153032   -0.0978513
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.1722058   -0.2340038   -0.1104078
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.1302622   -0.1885986   -0.0719258
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1208224   -0.1760068   -0.0656380
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.1441576   -0.1930317   -0.0952835
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.1120097   -0.1586556   -0.0653639
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.0998325   -0.1737718   -0.0258932
9-12 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0458090   -0.0789615   -0.0126565
9-12 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.0106311   -0.0460469    0.0247848
9-12 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.0205983   -0.0555253    0.0143288
9-12 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.0672572   -0.0979614   -0.0365531
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0739187   -0.0942722   -0.0535651
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.0526844   -0.0744774   -0.0308915
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.0594847   -0.0817962   -0.0371733
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.0681807   -0.0905962   -0.0457652
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0448301   -0.0724710   -0.0171891
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0705429   -0.0976062   -0.0434796
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0490572   -0.0785145   -0.0195998
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0978884   -0.1273989   -0.0683780
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0639568   -0.0848285   -0.0430852
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.0912965   -0.1257036   -0.0568893
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.0763099   -0.1048288   -0.0477909
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.0892038   -0.1105645   -0.0678431
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0041965   -0.0400028    0.0316097
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.0272698   -0.0605973    0.0060576
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.0195896   -0.0504589    0.0112798
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.0391387   -0.0708011   -0.0074764
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0805214   -0.1034137   -0.0576291
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.0941497   -0.1251971   -0.0631024
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.0759491   -0.1066075   -0.0452906
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.1201226   -0.1553618   -0.0848833
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0390385   -0.0760610   -0.0020160
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                -0.0839124   -0.1257613   -0.0420635
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -0.0334782   -0.0685328    0.0015765
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                -0.0187808   -0.0570886    0.0195271
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0686910   -0.0970948   -0.0402872
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.0397863   -0.0617721   -0.0178005
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.0681050   -0.1036052   -0.0326048
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.0586299   -0.0818698   -0.0353899
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0457840   -0.0720512   -0.0195167
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.0694829   -0.1095478   -0.0294180
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.0639093   -0.0911121   -0.0367065
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.0486880   -0.0816355   -0.0157406
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0065631   -0.0334154    0.0465417
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                -0.0246830   -0.0745817    0.0252157
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                -0.0204440   -0.0786844    0.0377964
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                 0.0174283   -0.0163390    0.0511956
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0420684   -0.0689772   -0.0151596
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.0574556   -0.0926848   -0.0222263
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -0.0572454   -0.0840595   -0.0304313
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.0694166   -0.1018948   -0.0369384
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0023426   -0.0292522    0.0245670
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -0.0919002   -0.1253456   -0.0584548
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -0.0806380   -0.1111328   -0.0501432
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -0.0580602   -0.0855909   -0.0305296
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0635441   -0.1050308   -0.0220573
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -0.0501494   -0.0823145   -0.0179844
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -0.0850953   -0.1201052   -0.0500854
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -0.0621539   -0.0916877   -0.0326200
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0517273   -0.0941774   -0.0092773
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.0746613   -0.1152954   -0.0340271
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.0394105   -0.0860013    0.0071803
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.0747734   -0.1256431   -0.0239037
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0845466   -0.1324747   -0.0366186
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0951788   -0.1480716   -0.0422861
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0339400   -0.0828561    0.0149761
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0720036   -0.1211167   -0.0228905
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0635814   -0.1129379   -0.0142248
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.0754685   -0.1346757   -0.0162613
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.0509707   -0.1017614   -0.0001799
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.0963472   -0.1598360   -0.0328584
12-15 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0412579   -0.0852573    0.0027415
12-15 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.0408488   -0.0702999   -0.0113976
12-15 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.0346432   -0.0622901   -0.0069963
12-15 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.0649130   -0.0957731   -0.0340529
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0633931   -0.0825310   -0.0442552
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.0397413   -0.0605462   -0.0189363
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.0240202   -0.0452348   -0.0028056
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.0413682   -0.0594712   -0.0232652
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0505409   -0.0792108   -0.0218711
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0647061   -0.0923887   -0.0370235
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0719799   -0.1046324   -0.0393275
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0708516   -0.0974902   -0.0442129
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0736015   -0.0910036   -0.0561994
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.0809665   -0.1004514   -0.0614815
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.0682439   -0.0869948   -0.0494929
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.0417626   -0.0723271   -0.0111980
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0901018   -0.1237806   -0.0564229
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.0742651   -0.1010621   -0.0474681
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.0831618   -0.1165556   -0.0497679
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.0463955   -0.0837759   -0.0090151
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0916626   -0.1148488   -0.0684763
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.0931634   -0.1201866   -0.0661403
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.1042864   -0.1382023   -0.0703705
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.1065045   -0.1399630   -0.0730460
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0663076   -0.1535147    0.0208994
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                 0.0288301   -0.0454842    0.1031443
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -0.0351908   -0.0900903    0.0197087
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                -0.0800608   -0.1226672   -0.0374545
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0256805   -0.0557229    0.0043619
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.0502134   -0.0694464   -0.0309803
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.0372006   -0.0593057   -0.0150954
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.0605560   -0.0854355   -0.0356764
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0520878   -0.0804802   -0.0236955
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.0556501   -0.0922111   -0.0190890
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.0475294   -0.0691102   -0.0259487
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.0310063   -0.0544933   -0.0075194
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0110366   -0.0533465    0.0312733
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                -0.0264465   -0.0643395    0.0114464
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                -0.0262039   -0.0755604    0.0231527
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                -0.0212971   -0.0580710    0.0154768
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0459946   -0.0710258   -0.0209634
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.0269720   -0.0578140    0.0038699
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -0.0314970   -0.0532285   -0.0097656
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.0461591   -0.0709338   -0.0213843
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0412674   -0.0670306   -0.0155043
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -0.0630110   -0.0957668   -0.0302552
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -0.0505379   -0.0811135   -0.0199623
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -0.0651880   -0.0959872   -0.0343888
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0234205   -0.0553508    0.0085098
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -0.0435816   -0.0726015   -0.0145616
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -0.0541861   -0.0860312   -0.0223409
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -0.0291848   -0.0569538   -0.0014158
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0162554   -0.0510832    0.0185723
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                 0.0137459   -0.0285061    0.0559979
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.0372458   -0.0724573   -0.0020344
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.0656308   -0.1036161   -0.0276454
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0348278   -0.0724631    0.0028074
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0952940   -0.1484457   -0.0421422
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.1222205   -0.1687725   -0.0756685
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0953571   -0.1354589   -0.0552552
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0488795   -0.0932844   -0.0044745
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.0606443   -0.1183413   -0.0029474
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.1080068   -0.1460218   -0.0699919
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.0533946   -0.0987664   -0.0080227
15-18 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0326848   -0.0616432   -0.0037263
15-18 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.0367704   -0.0664951   -0.0070456
15-18 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.0234516   -0.0551423    0.0082392
15-18 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.0607873   -0.0869988   -0.0345758
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0293391   -0.0470994   -0.0115788
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.0399797   -0.0565308   -0.0234287
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.0390032   -0.0561201   -0.0218864
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.0406561   -0.0590011   -0.0223112
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0371876   -0.0682762   -0.0060991
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.0048130   -0.0227805    0.0324066
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0264779   -0.0607330    0.0077772
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0273786   -0.0574604    0.0027033
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0650651   -0.0827487   -0.0473815
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.0720813   -0.0965775   -0.0475851
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.0665867   -0.0841055   -0.0490679
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.0730346   -0.1127084   -0.0333607
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0002034   -0.0350586    0.0346519
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.0057808   -0.0366319    0.0250703
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.0228394   -0.0556874    0.0100087
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.0083372   -0.0448154    0.0281410
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0538074   -0.0746125   -0.0330024
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.0671435   -0.0989566   -0.0353304
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.0671444   -0.1097940   -0.0244948
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.0490940   -0.0883743   -0.0098136
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0476902   -0.1084563    0.0130759
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                -0.0711024   -0.1108254   -0.0313794
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -0.0480304   -0.1090622    0.0130013
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                -0.0215044   -0.0641644    0.0211556
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0520591   -0.0792639   -0.0248543
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.0343131   -0.0539164   -0.0147098
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.0455213   -0.0664782   -0.0245643
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.0334865   -0.0628887   -0.0040843
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0014337   -0.0176278    0.0204953
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.0101328   -0.0450042    0.0247386
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.0229707   -0.0427108   -0.0032306
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.0287574   -0.0526718   -0.0048429
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0346539   -0.0848893    0.0155815
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                -0.0317093   -0.0764397    0.0130211
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                 0.0200569   -0.0410462    0.0811601
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                -0.0311145   -0.0635827    0.0013537
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0074199   -0.0154131    0.0302528
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.0072693   -0.0344365    0.0198979
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                 0.0232852    0.0041156    0.0424548
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.0008886   -0.0221504    0.0203731
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0493297   -0.0715814   -0.0270780
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                 0.0061443   -0.0223643    0.0346529
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -0.0302003   -0.0563836   -0.0040171
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -0.0373360   -0.0623099   -0.0123621
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0104914   -0.0384980    0.0175152
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -0.0235500   -0.0573262    0.0102263
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -0.0368981   -0.0617948   -0.0120013
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                 0.0308455   -0.0001282    0.0618192
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0248839   -0.0693709    0.0196031
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.0691412   -0.1044166   -0.0338657
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.0235042   -0.0569071    0.0098987
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.0184469   -0.0546783    0.0177845
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0503535   -0.0904763   -0.0102307
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.0089285   -0.0373194    0.0551764
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0205821   -0.0695949    0.0284308
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0343280   -0.0781732    0.0095171
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0339920   -0.0731094    0.0051254
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.0920808   -0.1302158   -0.0539459
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.0383717   -0.0857148    0.0089714
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.0105277   -0.0620592    0.0410038
18-21 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0354521   -0.0633401   -0.0075641
18-21 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.0583928   -0.0825664   -0.0342192
18-21 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.0289377   -0.0551938   -0.0026816
18-21 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.0355297   -0.0630633   -0.0079962
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0179431   -0.0350872   -0.0007990
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                 0.0106838   -0.0042745    0.0256422
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.0157115   -0.0313840   -0.0000390
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.0225481   -0.0395666   -0.0055296
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0234329    0.0076051    0.0392608
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                 0.0144276   -0.0113239    0.0401791
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                 0.0154124   -0.0003984    0.0312232
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                 0.0080347   -0.0275123    0.0435817
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0027126   -0.0312863    0.0258611
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.0293708   -0.0574429   -0.0012988
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                 0.0010253   -0.0313950    0.0334457
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                 0.0100684   -0.0211664    0.0413033
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0132982   -0.0321593    0.0055628
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.0275393   -0.0597142    0.0046357
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.0186552   -0.0542911    0.0169808
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.0355440   -0.0685419   -0.0025461
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0049566   -0.0304867    0.0205736
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                -0.0123670   -0.0461187    0.0213847
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -0.0251339   -0.0695372    0.0192694
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                -0.0183506   -0.0430516    0.0063503
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0236918    0.0028916    0.0444921
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                 0.0188294   -0.0195425    0.0572013
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                 0.0277981    0.0030512    0.0525451
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                 0.0288390    0.0090358    0.0486422
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0172304   -0.0091456    0.0436064
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            NA                 0.0374381    0.0017307    0.0731455
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            NA                 0.0092024   -0.0316062    0.0500110
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            NA                 0.0116937   -0.0152296    0.0386170
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0399001    0.0142459    0.0655543
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                 0.0282398    0.0072922    0.0491874
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                 0.0222369   -0.0007744    0.0452481
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                 0.0283129    0.0121251    0.0445008
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0020176   -0.0327567    0.0287215
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -0.0108385   -0.0397513    0.0180743
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                 0.0185810   -0.0094153    0.0465774
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                 0.0156034   -0.0047202    0.0359269
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0789066    0.0504463    0.1073668
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                 0.0683286    0.0338361    0.1028212
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                 0.0389186    0.0140490    0.0637881
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                 0.0343315    0.0053487    0.0633144
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.0507127    0.0199585    0.0814668
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                 0.0410269   -0.0039004    0.0859541
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                 0.0261656   -0.0043492    0.0566803
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                 0.0573333    0.0276039    0.0870627
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0177646   -0.0163150    0.0518442
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.0459606   -0.0071320    0.0990532
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0141318   -0.0636501    0.0353866
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.0065368   -0.0298160    0.0428895
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0057566   -0.0279583    0.0394715
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                 0.0197772   -0.0290626    0.0686169
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                 0.0208274   -0.0134812    0.0551359
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                 0.0248875   -0.0237795    0.0735545
21-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0086300   -0.0368629    0.0196029
21-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.0268864   -0.0492347   -0.0045381
21-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.0238046   -0.0500461    0.0024368
21-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                 0.0040329   -0.0268602    0.0349260
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0381121    0.0185133    0.0577109
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                 0.0374996    0.0193456    0.0556536
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                 0.0403791    0.0245530    0.0562052
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                 0.0672819    0.0519325    0.0826312
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0425641    0.0161078    0.0690204
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                 0.0390729    0.0156737    0.0624720
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                 0.0504271    0.0239773    0.0768770
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                 0.0605334    0.0151190    0.1059479
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.0362889   -0.0374565    0.1100343
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                 0.0153226   -0.0346650    0.0653103
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                 0.0622963    0.0060934    0.1184992
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.0229405   -0.0598948    0.0140137
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0146923   -0.0325934    0.0032089
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.0171894   -0.0429189    0.0085402
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.0184988   -0.0471833    0.0101857
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.0212258   -0.0455583    0.0031067
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0307104    0.0085019    0.0529189
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                 0.0231675   -0.0185608    0.0648957
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                 0.0201864   -0.0097827    0.0501555
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                 0.0279854   -0.0039332    0.0599040


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1175527   -0.1512522   -0.0838531
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1446583    0.0870976    0.2022191
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0689235   -0.1155446   -0.0223023
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0544973    0.0099212    0.0990734
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.2543887   -0.2877193   -0.2210580
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1882890   -0.2390479   -0.1375301
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1400701   -0.1794271   -0.1007131
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0878386   -0.1937874    0.0181102
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2558271   -0.3111464   -0.2005078
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0317680   -0.0569509   -0.0065852
0-3 months     ki1114097-CONTENT          PERU                           NA                   NA                 0.0010094   -0.1011210    0.1031397
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5726223   -0.6045871   -0.5406575
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0532828    0.0458161    0.0607494
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.2817746   -0.3395565   -0.2239928
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0360402   -0.0655320   -0.0065484
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0230785   -0.0496785    0.0035216
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0016619   -0.0396107    0.0362870
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856607   -0.1022688   -0.0690525
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1613977   -0.1800128   -0.1427826
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                 0.0127563   -0.0097402    0.0352528
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1405272   -0.1619420   -0.1191124
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0008125   -0.0061384    0.0077634
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0155841   -0.0450436    0.0138754
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0703356   -0.0932354   -0.0474358
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0345596   -0.0538350   -0.0152841
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0177828   -0.0459046    0.0103391
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0934098   -0.1268763   -0.0599434
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0819656   -0.1161677   -0.0477635
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0162677   -0.0378604    0.0053250
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0516546   -0.0677408   -0.0355685
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0438931   -0.0614010   -0.0263853
6-9 months     ki1114097-CONTENT          PERU                           NA                   NA                -0.0242292   -0.0452610   -0.0031973
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1356271   -0.1531444   -0.1181097
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.0279334    0.0120046    0.0438622
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0456905   -0.0618720   -0.0295090
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0912399   -0.1070647   -0.0754152
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0622965   -0.0791919   -0.0454011
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0848621   -0.1117463   -0.0579779
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1549661   -0.1887326   -0.1211995
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1188156   -0.1473352   -0.0902961
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0361313   -0.0530672   -0.0191954
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0659765   -0.0802683   -0.0516847
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0798239   -0.0934194   -0.0662284
9-12 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.0224698   -0.0391090   -0.0058306
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0900584   -0.1045944   -0.0755223
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0433141   -0.0626948   -0.0239333
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0586524   -0.0721516   -0.0451533
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0565224   -0.0717497   -0.0412950
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0574550   -0.0729039   -0.0420060
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0591759   -0.0820448   -0.0363070
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693563   -0.0944134   -0.0442993
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0712336   -0.0991765   -0.0432907
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0454519   -0.0622041   -0.0286997
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0644098   -0.0788912   -0.0499283
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0667249   -0.0775841   -0.0558657
12-15 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.0734290   -0.0899048   -0.0569533
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0969483   -0.1112979   -0.0825988
12-15 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0403575   -0.0774359   -0.0032790
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0440444   -0.0564983   -0.0315906
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0380035   -0.0508395   -0.0251674
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0549346   -0.0699931   -0.0398761
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0285476   -0.0475339   -0.0095614
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856342   -0.1079770   -0.0632914
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0680871   -0.0915055   -0.0446686
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0385167   -0.0531981   -0.0238352
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0193878   -0.0347002   -0.0040754
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0689576   -0.0815283   -0.0563869
15-18 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.0091366   -0.0260209    0.0077477
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0584438   -0.0738165   -0.0430712
15-18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0464023   -0.0722064   -0.0205982
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0411342   -0.0525950   -0.0296734
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0057740   -0.0056559    0.0172040
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0281053   -0.0411303   -0.0150802
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0321665   -0.0513327   -0.0130003
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282032   -0.0511144   -0.0052921
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0437658   -0.0661084   -0.0214232
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0400816   -0.0533440   -0.0268193
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0155926    0.0038526    0.0273327
18-21 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.0059547   -0.0211395    0.0092302
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0214172   -0.0352196   -0.0076147
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0147327   -0.0309734    0.0015080
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0297886    0.0188457    0.0407315
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0054548   -0.0082397    0.0191492
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.0438721    0.0271077    0.0606365
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0088397   -0.0128780    0.0305575
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0177011   -0.0032847    0.0386869
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0139081   -0.0274784   -0.0003379
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0481269    0.0325947    0.0636591
21-24 months   ki1114097-CONTENT          PERU                           NA                   NA                 0.0213805   -0.0073799    0.0501409
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0171840   -0.0287884   -0.0055796
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.0258428    0.0105053    0.0411803


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0507710   -0.0442497    0.1457916
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0241827   -0.1099181    0.0615528
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0346386   -0.1216058    0.0523285
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4          0.0911454   -0.0589227    0.2412135
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.0824828   -0.0712855    0.2362511
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0213750   -0.1825378    0.1397879
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.1194688   -0.0109110    0.2498485
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0647077   -0.0643620    0.1937773
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0827347   -0.0376073    0.2030767
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.0991461   -0.0280041    0.2262963
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0613676   -0.0806331    0.2033683
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0010360   -0.1370827    0.1350106
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0058844   -0.1010240    0.0892551
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0364730   -0.1258498    0.0529039
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0039127   -0.0972605    0.0894351
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.1079345   -0.2541898    0.0383209
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.0215132   -0.1245154    0.1675419
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0800970   -0.2182531    0.0580591
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0233293   -0.1215949    0.0749364
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0165410   -0.0900067    0.1230887
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0982306   -0.2098298    0.0133687
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.2214209   -0.0827299    0.5255717
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.1966024   -0.1030248    0.4962297
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.3163212    0.0632752    0.5693672
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.1503355   -0.3077647    0.0070936
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0636752   -0.2224177    0.0950672
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0506987   -0.1124646    0.2138620
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0570481    0.0085664    0.1055298
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0249166   -0.0229757    0.0728090
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0091125   -0.0612642    0.0430392
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0344207   -0.0352192    0.1040606
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0388836   -0.0294626    0.1072298
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0217173   -0.0488951    0.0923297
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.2295790   -0.4987288    0.0395709
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.3427197   -0.5027974   -0.1826420
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.2629860   -0.4901217   -0.0358503
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0258444   -0.1016974    0.0500086
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0069795   -0.0886146    0.1025736
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0283600   -0.1225897    0.0658696
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0273052   -0.0454345   -0.0091758
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0176366   -0.0354729    0.0001996
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4          0.0003476   -0.0162630    0.0169583
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0298738   -0.1548057    0.0950581
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0480433   -0.1910346    0.0949479
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4          0.0215822   -0.1504029    0.1935673
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0275845   -0.0372680    0.0924371
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4          0.0113892   -0.0546121    0.0773906
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0295426   -0.0932385    0.0341534
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.0742799   -0.1745947    0.0260348
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0506554   -0.1515403    0.0502295
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0048779   -0.1061005    0.0963446
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0044810   -0.0881721    0.0792100
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0246293   -0.0549647    0.1042232
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0220082   -0.0530831    0.0970995
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0189409   -0.0910244    0.0531426
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0374624   -0.1087729    0.0338480
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0896000   -0.1641314   -0.0150686
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0377051   -0.0541460    0.1295562
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0323025   -0.0585314    0.1231365
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0200629   -0.1016676    0.0615418
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0115257   -0.1205450    0.0974935
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.1559631   -0.2574928   -0.0544334
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0368303   -0.1436564    0.0699958
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0494079   -0.0345418    0.1333576
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0219737   -0.0646363    0.1085836
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0537118   -0.0258731    0.1332967
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.1132115   -0.0174279    0.2438508
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0349995   -0.1693335    0.0993345
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0378416   -0.1758988    0.1002156
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0063774   -0.0946869    0.0819320
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0165487   -0.1097481    0.0766506
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0211170   -0.0715345    0.1137686
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0217156   -0.0234607    0.0668919
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0252557   -0.0169354    0.0674468
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0081403   -0.0394727    0.0557533
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0448956    0.0002158    0.0895755
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0276127   -0.0241051    0.0793305
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0057379   -0.0514947    0.0400188
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0054816   -0.0473811    0.0583442
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0269663   -0.0789030    0.0249705
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0146139   -0.0383678    0.0675957
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4          0.0064688   -0.0601025    0.0730401
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0106286   -0.0528168    0.0740740
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0392867   -0.1052473    0.0266739
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0557018   -0.1096438   -0.0017597
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0404056   -0.1041055    0.0232944
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0133259   -0.0718778    0.0452259
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4          0.0102969   -0.0090604    0.0296542
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4          0.0109879   -0.0069798    0.0289556
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4          0.0047114   -0.0125695    0.0219922
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0214887   -0.0990729    0.0560955
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0284516   -0.0953667    0.0384636
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4          0.0029874   -0.0739776    0.0799525
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0014209   -0.0463495    0.0491914
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0276154   -0.0721126    0.0168818
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0377739   -0.0844336    0.0088858
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.0477055   -0.1415864    0.0461754
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0831730   -0.1800203    0.0136743
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0112303   -0.1166989    0.0942383
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0024611   -0.0725402    0.0676181
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0098152   -0.0654960    0.0458655
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.0038308   -0.0602538    0.0525922
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.0569257   -0.0002049    0.1140563
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0105520   -0.0410298    0.0621337
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0156192   -0.0630149    0.0317765
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0184788   -0.0426039    0.0795615
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0337648   -0.0351435    0.1026730
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0182264   -0.0519419    0.0883947
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0874635   -0.1682674   -0.0066596
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0450978   -0.1178271    0.0276315
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0793166   -0.1601400    0.0015068
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0355859   -0.1325500    0.0613782
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0449242   -0.1466416    0.0567933
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0754239   -0.1737191    0.0228714
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0663606   -0.1595409    0.0268197
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0514280   -0.1455754    0.0427193
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0088155   -0.1084068    0.0907758
6-9 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0273602   -0.0946453    0.0399250
6-9 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0627591   -0.1268590    0.0013407
6-9 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0511448   -0.1202984    0.0180089
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0450610    0.0142085    0.0759135
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0281420   -0.0031484    0.0594324
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0070741   -0.0229272    0.0370754
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0110876   -0.0322769    0.0544520
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0025117   -0.0436482    0.0486717
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0335527   -0.0117065    0.0788118
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0399550   -0.0127821    0.0926921
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0149964   -0.0301579    0.0601507
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0121587   -0.0291206    0.0534379
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0492081   -0.1072404    0.0088242
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0118042   -0.0666223    0.0430138
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0366786   -0.0931191    0.0197619
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0127003   -0.0587152    0.0333146
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0607726   -0.1083204   -0.0132247
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0137105   -0.0619707    0.0345498
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0108173   -0.0598362    0.0382017
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0045924   -0.0451000    0.0359152
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0024068   -0.0447572    0.0399436
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0247118   -0.0628004    0.0133768
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0099376   -0.0539062    0.0340310
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4          0.0273647   -0.0191556    0.0738849
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0284564   -0.0185665    0.0754793
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4          0.0024813   -0.0409473    0.0459099
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4          0.0265517   -0.0182257    0.0713292
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.0588242   -0.1373210    0.0196726
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0295292   -0.1236574    0.0645991
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0281260   -0.1144936    0.0582415
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.0037244   -0.0430138    0.0504627
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0180145   -0.0234607    0.0594896
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0326601   -0.0097946    0.0751147
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.0000599   -0.0499828    0.0501025
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0350421   -0.0153783    0.0854625
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4          0.0008368   -0.0444212    0.0460947
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0011657   -0.0555833    0.0579147
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0114077   -0.0461294    0.0689448
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0206433   -0.0437147    0.0850014
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0290661   -0.0520044    0.1101366
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0003033   -0.0789205    0.0783139
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0109108   -0.0844796    0.0626580
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0037321   -0.0968569    0.1043210
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0118965   -0.1143094    0.0905164
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0300471   -0.0703149    0.1304092
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0233352   -0.0970509    0.0503804
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.0088127   -0.0634449    0.0810702
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0209899   -0.0712724    0.1132522
9-12 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4          0.0351780   -0.0133336    0.0836895
9-12 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4          0.0252108   -0.0229450    0.0733666
9-12 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0214482   -0.0666348    0.0237385
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0212343   -0.0085852    0.0510537
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0144340   -0.0157665    0.0446344
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0057380   -0.0245394    0.0360154
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0257128   -0.0643968    0.0129711
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0042271   -0.0446221    0.0361679
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0530584   -0.0934921   -0.0126246
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0273396   -0.0675824    0.0129031
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0123530   -0.0476936    0.0229875
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0252470   -0.0551117    0.0046178
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0230733   -0.0719896    0.0258430
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0153930   -0.0626689    0.0318828
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0349422   -0.0827396    0.0128553
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0136283   -0.0522028    0.0249463
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0045724   -0.0336898    0.0428346
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0396011   -0.0816233    0.0024210
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0448740   -0.1007488    0.0110009
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4          0.0055603   -0.0454249    0.0565455
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4          0.0202577   -0.0330166    0.0735321
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4          0.0289047   -0.0060312    0.0638405
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4          0.0005860   -0.0484868    0.0496587
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4          0.0100611   -0.0283392    0.0484614
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0236989   -0.0716068    0.0242089
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0181253   -0.0559402    0.0196895
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0029041   -0.0450408    0.0392326
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.0312462   -0.0951849    0.0326926
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0270072   -0.0976487    0.0436344
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.0108651   -0.0414657    0.0631960
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0153871   -0.0597175    0.0289432
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0151770   -0.0531648    0.0228109
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.0273481   -0.0695253    0.0148290
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0895576   -0.1324845   -0.0466307
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0782955   -0.1189656   -0.0376253
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0557177   -0.0942152   -0.0172201
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0133947   -0.0391005    0.0658898
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0215512   -0.0758360    0.0327336
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0013902   -0.0495352    0.0523156
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0229339   -0.0816974    0.0358295
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.0123168   -0.0507126    0.0753463
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0230461   -0.0893012    0.0432090
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0106322   -0.0820097    0.0607452
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0506066   -0.0178761    0.1190894
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0125430   -0.0560805    0.0811666
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0118871   -0.0889687    0.0651944
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.0126107   -0.0582114    0.0834328
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0327658   -0.1131828    0.0476512
12-15 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4          0.0004092   -0.0525372    0.0533555
12-15 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4          0.0066147   -0.0453497    0.0585791
12-15 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0236551   -0.0773979    0.0300878
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0236518   -0.0046166    0.0519203
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0393729    0.0108016    0.0679442
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0220249   -0.0043186    0.0483684
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0141652   -0.0540185    0.0256881
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0214390   -0.0648918    0.0220137
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0203106   -0.0594460    0.0188247
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0073650   -0.0334896    0.0187596
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0053576   -0.0202243    0.0309395
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0318389   -0.0033325    0.0670103
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4          0.0158366   -0.0272022    0.0588755
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0069400   -0.0404880    0.0543679
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0437063   -0.0066083    0.0940208
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0015009   -0.0371078    0.0341060
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0126239   -0.0537078    0.0284601
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0148419   -0.0555491    0.0258653
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4          0.0951377   -0.0194383    0.2097137
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4          0.0311168   -0.0719318    0.1341655
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0137532   -0.1108118    0.0833054
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0245329   -0.0595252    0.0104595
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0115201   -0.0485105    0.0254703
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0348755   -0.0733404    0.0035895
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0035622   -0.0498530    0.0427285
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4          0.0045584   -0.0311046    0.0402215
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4          0.0210815   -0.0157663    0.0579294
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4         -0.0154100   -0.0722079    0.0413880
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0151673   -0.0801765    0.0498419
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0102606   -0.0663181    0.0457970
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.0190225   -0.0206989    0.0587439
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0144975   -0.0186509    0.0476459
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.0001645   -0.0353831    0.0350541
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0217436   -0.0634171    0.0199299
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0092705   -0.0492531    0.0307121
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0239206   -0.0640744    0.0162333
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0201611   -0.0633085    0.0229863
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0307656   -0.0758617    0.0143305
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0057643   -0.0480805    0.0365519
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0300013   -0.0247545    0.0847572
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0209904   -0.0705163    0.0285355
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0493753   -0.1009103    0.0021597
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0604661   -0.1255931    0.0046608
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0873927   -0.1472551   -0.0275304
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0605292   -0.1155253   -0.0055331
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0117649   -0.0845710    0.0610413
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0591274   -0.1175819   -0.0006728
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0045151   -0.0680005    0.0589704
15-18 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0040856   -0.0455844    0.0374132
15-18 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4          0.0092332   -0.0336957    0.0521621
15-18 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0281025   -0.0671619    0.0109568
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0106406   -0.0349174    0.0136362
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0096641   -0.0343302    0.0150020
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0113170   -0.0368507    0.0142166
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0420007    0.0004327    0.0835687
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0107097   -0.0355494    0.0569689
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0098091   -0.0334508    0.0530689
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0070162   -0.0372284    0.0231960
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0015216   -0.0264137    0.0233705
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0079694   -0.0514059    0.0354670
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0055775   -0.0521251    0.0409701
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0226360   -0.0705305    0.0252585
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0081338   -0.0585873    0.0423196
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0133361   -0.0513483    0.0246761
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0133370   -0.0607905    0.0341166
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0047135   -0.0397365    0.0491634
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0234122   -0.0960099    0.0491856
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0003402   -0.0864645    0.0857841
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4          0.0261858   -0.0480596    0.1004313
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4          0.0177460   -0.0161923    0.0516844
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4          0.0065378   -0.0269340    0.0400096
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4          0.0185726   -0.0227530    0.0598982
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0115665   -0.0513077    0.0281746
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0244044   -0.0518455    0.0030367
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0301911   -0.0607728    0.0003906
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4          0.0029446   -0.0643191    0.0702083
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4          0.0547109   -0.0243915    0.1338132
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4          0.0035394   -0.0562751    0.0633540
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0146891   -0.0501772    0.0207989
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0158654   -0.0139476    0.0456784
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.0083085   -0.0395079    0.0228909
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.0554740    0.0193094    0.0916386
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0191294   -0.0152320    0.0534907
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4          0.0119937   -0.0214553    0.0454426
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0130586   -0.0569357    0.0308186
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0264067   -0.0638796    0.0110662
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0413369   -0.0004212    0.0830950
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0442573   -0.1010327    0.0125181
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.0013797   -0.0542516    0.0570110
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.0064370   -0.0509373    0.0638113
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0592820   -0.0019446    0.1205087
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0297714   -0.0335697    0.0931126
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0160255   -0.0434071    0.0754581
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0580888   -0.1127189   -0.0034587
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0043796   -0.0657925    0.0570332
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0234644   -0.0412324    0.0881611
18-21 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0229407   -0.0598474    0.0139659
18-21 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4          0.0065144   -0.0317886    0.0448175
18-21 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0000777   -0.0392674    0.0391121
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4          0.0286269    0.0058745    0.0513793
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0022316   -0.0209966    0.0254598
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0046050   -0.0287618    0.0195517
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0090054   -0.0392322    0.0212214
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0080205   -0.0303925    0.0143514
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0153982   -0.0543098    0.0235133
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0266583   -0.0667144    0.0133979
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0037379   -0.0394771    0.0469529
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0127810   -0.0295519    0.0551139
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0142410   -0.0515367    0.0230547
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0053569   -0.0456764    0.0349625
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0222458   -0.0602537    0.0157621
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0074104   -0.0497303    0.0349094
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0201773   -0.0713969    0.0310422
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0133941   -0.0489177    0.0221295
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0048624   -0.0485093    0.0387845
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4          0.0041063   -0.0282211    0.0364337
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4          0.0051472   -0.0235724    0.0338668
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1            Wealth Q4          0.0202077   -0.0241850    0.0646004
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2            Wealth Q4         -0.0080280   -0.0566185    0.0405625
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3            Wealth Q4         -0.0055367   -0.0432270    0.0321536
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0116603   -0.0447803    0.0214598
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0176632   -0.0521256    0.0167992
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.0115872   -0.0419217    0.0187473
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0088209   -0.0510209    0.0333791
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0205986   -0.0209788    0.0621761
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4          0.0176210   -0.0192292    0.0544712
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0105780   -0.0552962    0.0341403
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0399880   -0.0777832   -0.0021928
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0445751   -0.0851951   -0.0039550
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0096858   -0.0641310    0.0447593
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0245471   -0.0678711    0.0187769
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.0066206   -0.0361538    0.0493950
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0281960   -0.0348932    0.0912851
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0318964   -0.0920087    0.0282159
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0112279   -0.0610570    0.0386013
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.0140206   -0.0453260    0.0733672
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.0150708   -0.0330308    0.0631725
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0191310   -0.0400735    0.0783354
21-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0182565   -0.0542640    0.0177511
21-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0151747   -0.0537196    0.0233703
21-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0126629   -0.0291878    0.0545136
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0006126   -0.0273274    0.0261023
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4          0.0022670   -0.0229239    0.0274578
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0291697    0.0042756    0.0540638
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0034912   -0.0388106    0.0318281
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0078630   -0.0295472    0.0452733
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0179693   -0.0345893    0.0705279
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0209663   -0.1100569    0.0681244
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0260074   -0.0667134    0.1187282
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0592294   -0.1417158    0.0232569
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0024971   -0.0338414    0.0288472
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0038065   -0.0376185    0.0300055
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0065335   -0.0367415    0.0236744
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0075429   -0.0548130    0.0397272
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0105240   -0.0478250    0.0267770
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0027250   -0.0416096    0.0361596


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0029072   -0.0536445    0.0478300
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0391085   -0.0459312    0.1241482
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0680702   -0.0096220    0.1457623
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0378632   -0.0521267    0.1278531
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0118996   -0.0678268    0.0440276
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0441986   -0.1360511    0.0476538
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0271149   -0.0903281    0.0360984
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1633521    0.0206722    0.3060320
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0422491   -0.1458794    0.0613811
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0191942   -0.0122510    0.0506394
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0239625   -0.0176219    0.0655469
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.2106889   -0.3360342   -0.0853436
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0111754   -0.0516872    0.0293363
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0110339   -0.0219095   -0.0001584
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0128606   -0.1050209    0.0792998
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0017625   -0.0365933    0.0401183
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0324299   -0.0927535    0.0278938
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0102705   -0.0364003    0.0569413
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0367287   -0.0805395    0.0070821
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0130003   -0.0414405    0.0674411
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0523815   -0.1177608    0.0129978
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0307708   -0.0141459    0.0756876
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0096530   -0.0724229    0.0917289
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0004527   -0.0607071    0.0598018
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0145365   -0.0139924    0.0430653
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0176840   -0.0111533    0.0465212
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0021573   -0.0343703    0.0300557
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0051802   -0.0472846    0.0369242
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0218651   -0.0478463    0.0041161
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0059082   -0.0044808    0.0162971
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0117331   -0.0564951    0.0330290
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0163738   -0.0424053    0.0096578
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0341389   -0.0948211    0.0265432
6-9 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0039657   -0.0385650    0.0306335
6-9 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0124686   -0.0184758    0.0434129
6-9 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0169823   -0.0217957    0.0557603
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0519337   -0.0994041   -0.0044632
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0381439   -0.1009439    0.0246561
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0320554   -0.0905857    0.0264749
6-9 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0354217   -0.0801912    0.0093478
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0210779    0.0011705    0.0409853
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0122123   -0.0151768    0.0396013
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0170138   -0.0103428    0.0443703
6-9 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0251762   -0.0588683    0.0085159
6-9 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0169583   -0.0389053    0.0049886
6-9 months     ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0042463   -0.0296747    0.0211822
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0020429   -0.0278706    0.0237848
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0136702   -0.0128432    0.0401837
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0275863   -0.0796409    0.0244684
9-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0138173   -0.0119633    0.0395978
9-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0089522   -0.0213495    0.0392540
9-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0082612   -0.0266727    0.0431952
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.0037252   -0.0442227    0.0516730
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0053432   -0.0592876    0.0699740
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0020068   -0.0463753    0.0503889
9-12 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0096777   -0.0194317    0.0387872
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0108717   -0.0079587    0.0297021
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0211465   -0.0457019    0.0034089
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0158671   -0.0358521    0.0041179
9-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0182732   -0.0487692    0.0122227
9-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0095369   -0.0273022    0.0082284
9-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0042756   -0.0352425    0.0266914
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0100386   -0.0159595    0.0360366
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0099284   -0.0331840    0.0133273
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0096062   -0.0440611    0.0248488
12-15 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0144539   -0.0386263    0.0097184
12-15 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0551124   -0.0794288   -0.0307960
12-15 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0018091   -0.0343247    0.0307064
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0074485   -0.0441222    0.0292251
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0151903   -0.0258576    0.0562382
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0076522   -0.0520699    0.0367654
12-15 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0041940   -0.0398791    0.0314912
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0224824    0.0047639    0.0402009
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0138689   -0.0391782    0.0114404
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0068766   -0.0092272    0.0229803
12-15 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.0166727   -0.0128219    0.0461673
12-15 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0052858   -0.0222565    0.0116850
12-15 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0259502   -0.0384801    0.0903805
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0183639   -0.0428559    0.0061281
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0062936   -0.0167596    0.0293468
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0093057   -0.0435229    0.0249116
15-18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0079911   -0.0135538    0.0295360
15-18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0136671   -0.0371473    0.0098130
15-18 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0126361   -0.0376900    0.0124179
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0122922   -0.0425535    0.0179692
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0508064   -0.0842621   -0.0173506
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0192076   -0.0579444    0.0195292
15-18 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0058319   -0.0313310    0.0196673
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0083046   -0.0244065    0.0077973
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0177998   -0.0096632    0.0452628
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0038925   -0.0213267    0.0135418
15-18 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0089332   -0.0392886    0.0214222
15-18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0046364   -0.0217441    0.0124713
15-18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0012879   -0.0480531    0.0506289
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0109249   -0.0124843    0.0343340
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0169556   -0.0338793   -0.0000319
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                 0.0142949   -0.0251370    0.0537268
18-21 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0016458   -0.0211338    0.0178421
18-21 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0212244    0.0009324    0.0415165
18-21 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0023773   -0.0204195    0.0251741
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0072826   -0.0432435    0.0286783
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0221503   -0.0123142    0.0566147
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0097737   -0.0447973    0.0252498
18-21 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0046295   -0.0288009    0.0195418
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0070032   -0.0082371    0.0222434
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0078403   -0.0239297    0.0082490
18-21 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0032421   -0.0288238    0.0223396
18-21 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0081189   -0.0239239    0.0076860
18-21 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0097762   -0.0326295    0.0130772
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                 0.0019264   -0.0161163    0.0199690
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4            NA                -0.0007434   -0.0232109    0.0217241
21-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0101115   -0.0309503    0.0107273
21-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                 0.0074724   -0.0178506    0.0327953
21-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0219322   -0.0445819    0.0007175
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0068406   -0.0336686    0.0199875
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0089249   -0.0395599    0.0217102
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0119446   -0.0195830    0.0434721
21-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0052782   -0.0297755    0.0192192
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0081221   -0.0093116    0.0255558
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0055628   -0.0181988    0.0293244
21-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0149084   -0.0844381    0.0546214
21-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0024917   -0.0164878    0.0115043
21-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0048676   -0.0256356    0.0159004
