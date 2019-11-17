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

**Intervention Variable:** impsan

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                 country                        impsan    n_cell      n
-------------  ----------------------  -----------------------------  -------  -------  -----
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1            198    236
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0             38    236
0-3 months     ki0047075b-MAL-ED       BRAZIL                         1            159    163
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0              4    163
0-3 months     ki0047075b-MAL-ED       INDIA                          1             80    176
0-3 months     ki0047075b-MAL-ED       INDIA                          0             96    176
0-3 months     ki0047075b-MAL-ED       NEPAL                          1            154    155
0-3 months     ki0047075b-MAL-ED       NEPAL                          0              1    155
0-3 months     ki0047075b-MAL-ED       PERU                           1             60    246
0-3 months     ki0047075b-MAL-ED       PERU                           0            186    246
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1              2    194
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0            192    194
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0    216
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            216    216
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1            218    566
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0            348    566
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1             13     13
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0              0     13
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1            626    710
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0             84    710
0-3 months     ki1114097-CONTENT       PERU                           1             25     29
0-3 months     ki1114097-CONTENT       PERU                           0              4     29
0-3 months     ki1135781-COHORTS       GUATEMALA                      1             13    208
0-3 months     ki1135781-COHORTS       GUATEMALA                      0            195    208
0-3 months     ki1135781-COHORTS       INDIA                          1           1732   4660
0-3 months     ki1135781-COHORTS       INDIA                          0           2928   4660
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1           6770   9816
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     0           3046   9816
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1            489    636
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     0            147    636
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1            193    231
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0             38    231
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1            204    208
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0              4    208
3-6 months     ki0047075b-MAL-ED       INDIA                          1            105    228
3-6 months     ki0047075b-MAL-ED       INDIA                          0            123    228
3-6 months     ki0047075b-MAL-ED       NEPAL                          1            232    233
3-6 months     ki0047075b-MAL-ED       NEPAL                          0              1    233
3-6 months     ki0047075b-MAL-ED       PERU                           1             63    260
3-6 months     ki0047075b-MAL-ED       PERU                           0            197    260
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1              4    237
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0            233    237
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0    231
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            231    231
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1            198    523
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0            325    523
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1             11     11
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0              0     11
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1            601    684
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0             83    684
3-6 months     ki1114097-CONTENT       PERU                           1            200    214
3-6 months     ki1114097-CONTENT       PERU                           0             14    214
3-6 months     ki1135781-COHORTS       GUATEMALA                      1             16    262
3-6 months     ki1135781-COHORTS       GUATEMALA                      0            246    262
3-6 months     ki1135781-COHORTS       INDIA                          1           1770   4719
3-6 months     ki1135781-COHORTS       INDIA                          0           2949   4719
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1           4489   6234
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     0           1745   6234
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1            330    432
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     0            102    432
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     1            186    224
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0             38    224
6-9 months     ki0047075b-MAL-ED       BRAZIL                         1            194    198
6-9 months     ki0047075b-MAL-ED       BRAZIL                         0              4    198
6-9 months     ki0047075b-MAL-ED       INDIA                          1            104    228
6-9 months     ki0047075b-MAL-ED       INDIA                          0            124    228
6-9 months     ki0047075b-MAL-ED       NEPAL                          1            229    230
6-9 months     ki0047075b-MAL-ED       NEPAL                          0              1    230
6-9 months     ki0047075b-MAL-ED       PERU                           1             56    238
6-9 months     ki0047075b-MAL-ED       PERU                           0            182    238
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1              4    227
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0            223    227
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0    219
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            219    219
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     1            193    498
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0            305    498
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1              6      6
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0              0      6
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1            589    678
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0             89    678
6-9 months     ki1114097-CONTENT       PERU                           1            200    214
6-9 months     ki1114097-CONTENT       PERU                           0             14    214
6-9 months     ki1135781-COHORTS       GUATEMALA                      1             17    280
6-9 months     ki1135781-COHORTS       GUATEMALA                      0            263    280
6-9 months     ki1135781-COHORTS       INDIA                          1           1650   4328
6-9 months     ki1135781-COHORTS       INDIA                          0           2678   4328
6-9 months     ki1148112-LCNI-5        MALAWI                         1              3    556
6-9 months     ki1148112-LCNI-5        MALAWI                         0            553    556
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     1            598    768
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     0            170    768
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     1            190    225
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0             35    225
9-12 months    ki0047075b-MAL-ED       BRAZIL                         1            190    194
9-12 months    ki0047075b-MAL-ED       BRAZIL                         0              4    194
9-12 months    ki0047075b-MAL-ED       INDIA                          1            103    225
9-12 months    ki0047075b-MAL-ED       INDIA                          0            122    225
9-12 months    ki0047075b-MAL-ED       NEPAL                          1            228    229
9-12 months    ki0047075b-MAL-ED       NEPAL                          0              1    229
9-12 months    ki0047075b-MAL-ED       PERU                           1             52    228
9-12 months    ki0047075b-MAL-ED       PERU                           0            176    228
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1              4    229
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0            225    229
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0    217
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            217    217
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     1            189    482
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0            293    482
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1              6      6
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0              0      6
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1            576    664
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0             88    664
9-12 months    ki1114097-CONTENT       PERU                           1            198    212
9-12 months    ki1114097-CONTENT       PERU                           0             14    212
9-12 months    ki1135781-COHORTS       GUATEMALA                      1             19    316
9-12 months    ki1135781-COHORTS       GUATEMALA                      0            297    316
9-12 months    ki1135781-COHORTS       INDIA                          1           1456   3725
9-12 months    ki1135781-COHORTS       INDIA                          0           2269   3725
9-12 months    ki1148112-LCNI-5        MALAWI                         1              3    381
9-12 months    ki1148112-LCNI-5        MALAWI                         0            378    381
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1            674    866
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     0            192    866
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     1            180    212
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0             32    212
12-15 months   ki0047075b-MAL-ED       BRAZIL                         1            181    184
12-15 months   ki0047075b-MAL-ED       BRAZIL                         0              3    184
12-15 months   ki0047075b-MAL-ED       INDIA                          1            103    224
12-15 months   ki0047075b-MAL-ED       INDIA                          0            121    224
12-15 months   ki0047075b-MAL-ED       NEPAL                          1            229    230
12-15 months   ki0047075b-MAL-ED       NEPAL                          0              1    230
12-15 months   ki0047075b-MAL-ED       PERU                           1             51    218
12-15 months   ki0047075b-MAL-ED       PERU                           0            167    218
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4    224
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            220    224
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0    219
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            219    219
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     1            181    461
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0            280    461
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1              8      8
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0              0      8
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            562    649
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             87    649
12-15 months   ki1114097-CONTENT       PERU                           1            186    199
12-15 months   ki1114097-CONTENT       PERU                           0             13    199
12-15 months   ki1135781-COHORTS       GUATEMALA                      1             22    328
12-15 months   ki1135781-COHORTS       GUATEMALA                      0            306    328
12-15 months   ki1148112-LCNI-5        MALAWI                         1              0    126
12-15 months   ki1148112-LCNI-5        MALAWI                         0            126    126
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     1            673    873
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     0            200    873
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     1            179    212
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0             33    212
15-18 months   ki0047075b-MAL-ED       BRAZIL                         1            172    175
15-18 months   ki0047075b-MAL-ED       BRAZIL                         0              3    175
15-18 months   ki0047075b-MAL-ED       INDIA                          1            104    224
15-18 months   ki0047075b-MAL-ED       INDIA                          0            120    224
15-18 months   ki0047075b-MAL-ED       NEPAL                          1            226    227
15-18 months   ki0047075b-MAL-ED       NEPAL                          0              1    227
15-18 months   ki0047075b-MAL-ED       PERU                           1             50    208
15-18 months   ki0047075b-MAL-ED       PERU                           0            158    208
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4    222
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            218    222
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0    211
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            211    211
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     1            180    449
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0            269    449
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1             10     10
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0              0     10
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            510    593
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             83    593
15-18 months   ki1114097-CONTENT       PERU                           1            176    189
15-18 months   ki1114097-CONTENT       PERU                           0             13    189
15-18 months   ki1135781-COHORTS       GUATEMALA                      1             20    295
15-18 months   ki1135781-COHORTS       GUATEMALA                      0            275    295
15-18 months   ki1148112-LCNI-5        MALAWI                         1              0    119
15-18 months   ki1148112-LCNI-5        MALAWI                         0            119    119
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     1            694    886
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     0            192    886
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     1            179    209
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0             30    209
18-21 months   ki0047075b-MAL-ED       BRAZIL                         1            164    167
18-21 months   ki0047075b-MAL-ED       BRAZIL                         0              3    167
18-21 months   ki0047075b-MAL-ED       INDIA                          1            103    224
18-21 months   ki0047075b-MAL-ED       INDIA                          0            121    224
18-21 months   ki0047075b-MAL-ED       NEPAL                          1            226    227
18-21 months   ki0047075b-MAL-ED       NEPAL                          0              1    227
18-21 months   ki0047075b-MAL-ED       PERU                           1             50    198
18-21 months   ki0047075b-MAL-ED       PERU                           0            148    198
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4    230
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            226    230
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0    198
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            198    198
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     1            169    422
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0            253    422
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1              9      9
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0              0      9
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            463    535
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             72    535
18-21 months   ki1114097-CONTENT       PERU                           1            171    183
18-21 months   ki1114097-CONTENT       PERU                           0             12    183
18-21 months   ki1135781-COHORTS       GUATEMALA                      1             21    305
18-21 months   ki1135781-COHORTS       GUATEMALA                      0            284    305
18-21 months   ki1148112-LCNI-5        MALAWI                         1              3    473
18-21 months   ki1148112-LCNI-5        MALAWI                         0            470    473
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     1            178    207
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0             29    207
21-24 months   ki0047075b-MAL-ED       BRAZIL                         1            162    165
21-24 months   ki0047075b-MAL-ED       BRAZIL                         0              3    165
21-24 months   ki0047075b-MAL-ED       INDIA                          1            103    224
21-24 months   ki0047075b-MAL-ED       INDIA                          0            121    224
21-24 months   ki0047075b-MAL-ED       NEPAL                          1            226    227
21-24 months   ki0047075b-MAL-ED       NEPAL                          0              1    227
21-24 months   ki0047075b-MAL-ED       PERU                           1             47    184
21-24 months   ki0047075b-MAL-ED       PERU                           0            137    184
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4    232
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            228    232
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0    198
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            198    198
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     1            163    411
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0            248    411
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1              8      8
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0              0      8
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            409    479
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             70    479
21-24 months   ki1114097-CONTENT       PERU                           1             36     38
21-24 months   ki1114097-CONTENT       PERU                           0              2     38
21-24 months   ki1135781-COHORTS       GUATEMALA                      1             23    339
21-24 months   ki1135781-COHORTS       GUATEMALA                      0            316    339
21-24 months   ki1148112-LCNI-5        MALAWI                         1              2    405
21-24 months   ki1148112-LCNI-5        MALAWI                         0            403    405


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
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/cb23f34b-e268-42f7-a842-6d2114718f5a/f6e64c9c-4265-4ee7-a51e-29643301d04d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/cb23f34b-e268-42f7-a842-6d2114718f5a/f6e64c9c-4265-4ee7-a51e-29643301d04d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/cb23f34b-e268-42f7-a842-6d2114718f5a/f6e64c9c-4265-4ee7-a51e-29643301d04d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                3.3433575   3.2740607   3.4126544
0-3 months     ki0047075b-MAL-ED       BANGLADESH   0                    NA                3.3660422   3.1779810   3.5541035
0-3 months     ki0047075b-MAL-ED       INDIA        1                    NA                3.3089974   3.1824588   3.4355360
0-3 months     ki0047075b-MAL-ED       INDIA        0                    NA                3.3397158   3.2134135   3.4660181
0-3 months     ki0047075b-MAL-ED       PERU         1                    NA                3.0809572   2.9306808   3.2312335
0-3 months     ki0047075b-MAL-ED       PERU         0                    NA                3.0702715   2.9966077   3.1439353
0-3 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                3.1337131   3.0419795   3.2254467
0-3 months     ki1017093-NIH-Birth     BANGLADESH   0                    NA                3.0951641   3.0300695   3.1602586
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                3.1437822   3.1042912   3.1832733
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                3.0571620   2.9623341   3.1519899
0-3 months     ki1135781-COHORTS       GUATEMALA    1                    NA                2.5645265   2.1887513   2.9403018
0-3 months     ki1135781-COHORTS       GUATEMALA    0                    NA                2.5330902   2.4476387   2.6185416
0-3 months     ki1135781-COHORTS       INDIA        1                    NA                3.5481583   3.5212218   3.5750948
0-3 months     ki1135781-COHORTS       INDIA        0                    NA                3.4616508   3.4404929   3.4828087
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   1                    NA                3.6612904   3.6448431   3.6777376
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   0                    NA                3.6204908   3.5961016   3.6448800
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                3.0085188   2.8872575   3.1297800
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   0                    NA                2.9435880   2.7097448   3.1774313
3-6 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                1.9464121   1.8912215   2.0016026
3-6 months     ki0047075b-MAL-ED       BANGLADESH   0                    NA                1.8323021   1.7157969   1.9488073
3-6 months     ki0047075b-MAL-ED       INDIA        1                    NA                1.8953711   1.8060981   1.9846440
3-6 months     ki0047075b-MAL-ED       INDIA        0                    NA                1.8632922   1.7804571   1.9461273
3-6 months     ki0047075b-MAL-ED       PERU         1                    NA                1.9119001   1.7822245   2.0415756
3-6 months     ki0047075b-MAL-ED       PERU         0                    NA                2.0513603   1.9748147   2.1279060
3-6 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                1.8552555   1.7728284   1.9376825
3-6 months     ki1017093-NIH-Birth     BANGLADESH   0                    NA                1.8189448   1.7602643   1.8776254
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                1.9909411   1.9526659   2.0292164
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                2.0882905   1.9837467   2.1928344
3-6 months     ki1114097-CONTENT       PERU         1                    NA                2.0902904   2.0409885   2.1395922
3-6 months     ki1114097-CONTENT       PERU         0                    NA                1.9969515   1.8006964   2.1932065
3-6 months     ki1135781-COHORTS       GUATEMALA    1                    NA                1.6458311   1.4628286   1.8288337
3-6 months     ki1135781-COHORTS       GUATEMALA    0                    NA                1.6741853   1.6154022   1.7329685
3-6 months     ki1135781-COHORTS       INDIA        1                    NA                1.9005768   1.8778511   1.9233024
3-6 months     ki1135781-COHORTS       INDIA        0                    NA                1.8311816   1.8134779   1.8488852
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   1                    NA                1.9317432   1.9157116   1.9477748
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   0                    NA                1.9168953   1.8888810   1.9449096
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                1.8890365   1.8203129   1.9577601
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   0                    NA                1.8668823   1.7137652   2.0199994
6-9 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                1.2462297   1.2030626   1.2893969
6-9 months     ki0047075b-MAL-ED       BANGLADESH   0                    NA                1.2569309   1.1560401   1.3578217
6-9 months     ki0047075b-MAL-ED       INDIA        1                    NA                1.3136419   1.2429755   1.3843083
6-9 months     ki0047075b-MAL-ED       INDIA        0                    NA                1.2115640   1.1474661   1.2756620
6-9 months     ki0047075b-MAL-ED       PERU         1                    NA                1.2292405   1.1355443   1.3229366
6-9 months     ki0047075b-MAL-ED       PERU         0                    NA                1.3484979   1.2824511   1.4145447
6-9 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                1.3086023   1.2384640   1.3787407
6-9 months     ki1017093-NIH-Birth     BANGLADESH   0                    NA                1.2220527   1.1733439   1.2707616
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                1.3295840   1.2972595   1.3619084
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                1.3157441   1.2455560   1.3859323
6-9 months     ki1114097-CONTENT       PERU         1                    NA                1.4006317   1.3514597   1.4498038
6-9 months     ki1114097-CONTENT       PERU         0                    NA                1.3515933   1.1885503   1.5146363
6-9 months     ki1135781-COHORTS       GUATEMALA    1                    NA                1.1839323   1.0357882   1.3320765
6-9 months     ki1135781-COHORTS       GUATEMALA    0                    NA                1.0615426   1.0134451   1.1096402
6-9 months     ki1135781-COHORTS       INDIA        1                    NA                1.1925413   1.1714868   1.2135957
6-9 months     ki1135781-COHORTS       INDIA        0                    NA                1.1752276   1.1589080   1.1915471
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                1.2978482   1.2548683   1.3408282
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   0                    NA                1.2463553   1.1744385   1.3182721
9-12 months    ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.9900815   0.9481648   1.0319981
9-12 months    ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.9872729   0.8871842   1.0873616
9-12 months    ki0047075b-MAL-ED       INDIA        1                    NA                1.0019545   0.9501084   1.0538007
9-12 months    ki0047075b-MAL-ED       INDIA        0                    NA                0.9634191   0.9076276   1.0192106
9-12 months    ki0047075b-MAL-ED       PERU         1                    NA                1.1864672   1.0901102   1.2828241
9-12 months    ki0047075b-MAL-ED       PERU         0                    NA                1.0664415   1.0065192   1.1263638
9-12 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                1.0956018   1.0402694   1.1509341
9-12 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                1.0840520   1.0385952   1.1295089
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                1.1235358   1.0944939   1.1525778
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                1.1368930   1.0751991   1.1985869
9-12 months    ki1114097-CONTENT       PERU         1                    NA                1.2077136   1.1661795   1.2492478
9-12 months    ki1114097-CONTENT       PERU         0                    NA                1.1647560   1.0277681   1.3017438
9-12 months    ki1135781-COHORTS       GUATEMALA    1                    NA                0.9399727   0.7551322   1.1248131
9-12 months    ki1135781-COHORTS       GUATEMALA    0                    NA                0.9233975   0.8821270   0.9646680
9-12 months    ki1135781-COHORTS       INDIA        1                    NA                1.0287353   1.0070243   1.0504464
9-12 months    ki1135781-COHORTS       INDIA        0                    NA                0.9560212   0.9380318   0.9740106
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                1.0573917   1.0205668   1.0942165
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                1.0464003   0.9807639   1.1120368
12-15 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.9208911   0.8755689   0.9662133
12-15 months   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.8759029   0.7966882   0.9551176
12-15 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.9441245   0.8882085   1.0000405
12-15 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.8864033   0.8348523   0.9379542
12-15 months   ki0047075b-MAL-ED       PERU         1                    NA                0.8681712   0.7753307   0.9610118
12-15 months   ki0047075b-MAL-ED       PERU         0                    NA                0.8961385   0.8414806   0.9507964
12-15 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.7582199   0.6991922   0.8172476
12-15 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.7021464   0.6398121   0.7644807
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.9784829   0.9517894   1.0051764
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.9262853   0.8591444   0.9934261
12-15 months   ki1114097-CONTENT       PERU         1                    NA                0.9353920   0.8915211   0.9792630
12-15 months   ki1114097-CONTENT       PERU         0                    NA                0.8397542   0.6841215   0.9953870
12-15 months   ki1135781-COHORTS       GUATEMALA    1                    NA                0.7809714   0.6491874   0.9127555
12-15 months   ki1135781-COHORTS       GUATEMALA    0                    NA                0.7406903   0.6999490   0.7814316
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.9467930   0.9093788   0.9842072
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.9286086   0.8721623   0.9850548
15-18 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.8149602   0.7742617   0.8556588
15-18 months   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.8738213   0.7888780   0.9587647
15-18 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.8269296   0.7779856   0.8758736
15-18 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.8627294   0.8095976   0.9158613
15-18 months   ki0047075b-MAL-ED       PERU         1                    NA                0.9018710   0.8068595   0.9968825
15-18 months   ki0047075b-MAL-ED       PERU         0                    NA                0.8444947   0.7969882   0.8920011
15-18 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.7788668   0.7154069   0.8423267
15-18 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.7686935   0.7167213   0.8206658
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.9171508   0.8925256   0.9417761
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.9105633   0.8441129   0.9770136
15-18 months   ki1114097-CONTENT       PERU         1                    NA                0.9948365   0.9480703   1.0416026
15-18 months   ki1114097-CONTENT       PERU         0                    NA                0.8667042   0.6920389   1.0413695
15-18 months   ki1135781-COHORTS       GUATEMALA    1                    NA                0.7841151   0.6487355   0.9194947
15-18 months   ki1135781-COHORTS       GUATEMALA    0                    NA                0.7269714   0.6771431   0.7767996
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.8487720   0.8123082   0.8852358
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.7928452   0.7402986   0.8453918
18-21 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.8266277   0.7901705   0.8630850
18-21 months   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.7343682   0.6389698   0.8297666
18-21 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.9197834   0.8698901   0.9696768
18-21 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.8437264   0.7943813   0.8930714
18-21 months   ki0047075b-MAL-ED       PERU         1                    NA                0.9099549   0.8278293   0.9920805
18-21 months   ki0047075b-MAL-ED       PERU         0                    NA                0.8170901   0.7644598   0.8697204
18-21 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.7316027   0.6744831   0.7887223
18-21 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.7275063   0.6810123   0.7740004
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.7966694   0.7709232   0.8224157
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.8050338   0.7466743   0.8633933
18-21 months   ki1114097-CONTENT       PERU         1                    NA                0.9180937   0.8725749   0.9636126
18-21 months   ki1114097-CONTENT       PERU         0                    NA                0.8653296   0.7168755   1.0137837
18-21 months   ki1135781-COHORTS       GUATEMALA    1                    NA                0.7779790   0.6490454   0.9069126
18-21 months   ki1135781-COHORTS       GUATEMALA    0                    NA                0.7052408   0.6593251   0.7511565
21-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.7680514   0.7300661   0.8060366
21-24 months   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.7778081   0.6790972   0.8765190
21-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.8098741   0.7689791   0.8507690
21-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.8390360   0.7933976   0.8846743
21-24 months   ki0047075b-MAL-ED       PERU         1                    NA                0.7167221   0.6278391   0.8056051
21-24 months   ki0047075b-MAL-ED       PERU         0                    NA                0.7779276   0.7234463   0.8324089
21-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.7042502   0.6500286   0.7584718
21-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.7257408   0.6789570   0.7725246
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.7954482   0.7685461   0.8223502
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.8340346   0.7683475   0.8997216
21-24 months   ki1135781-COHORTS       GUATEMALA    1                    NA                0.6710346   0.5144090   0.8276602
21-24 months   ki1135781-COHORTS       GUATEMALA    0                    NA                0.6185605   0.5805345   0.6565864


### Parameter: E(Y)


agecat         studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH   NA                   NA                3.3470101   3.2814494   3.4125709
0-3 months     ki0047075b-MAL-ED       INDIA        NA                   NA                3.3257529   3.2359780   3.4155278
0-3 months     ki0047075b-MAL-ED       PERU         NA                   NA                3.0728777   3.0062000   3.1395554
0-3 months     ki1017093-NIH-Birth     BANGLADESH   NA                   NA                3.1100116   3.0566021   3.1634210
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                3.1335342   3.0968946   3.1701738
0-3 months     ki1135781-COHORTS       GUATEMALA    NA                   NA                2.5350549   2.4515660   2.6185438
0-3 months     ki1135781-COHORTS       INDIA        NA                   NA                3.4938034   3.4771179   3.5104888
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                3.6486299   3.6333265   3.6639332
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                2.9935112   2.8845861   3.1024362
3-6 months     ki0047075b-MAL-ED       BANGLADESH   NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     ki0047075b-MAL-ED       INDIA        NA                   NA                1.8780654   1.8173074   1.9388233
3-6 months     ki0047075b-MAL-ED       PERU         NA                   NA                2.0175680   1.9512051   2.0839310
3-6 months     ki1017093-NIH-Birth     BANGLADESH   NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                2.0027540   1.9667312   2.0387768
3-6 months     ki1114097-CONTENT       PERU         NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     ki1135781-COHORTS       GUATEMALA    NA                   NA                1.6724538   1.6161343   1.7287732
3-6 months     ki1135781-COHORTS       INDIA        NA                   NA                1.8572103   1.8432112   1.8712094
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                1.9275870   1.9126865   1.9424875
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                1.8838056   1.8192936   1.9483176
6-9 months     ki0047075b-MAL-ED       BANGLADESH   NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     ki0047075b-MAL-ED       INDIA        NA                   NA                1.2581259   1.2101884   1.3060633
6-9 months     ki0047075b-MAL-ED       PERU         NA                   NA                1.3204373   1.2649539   1.3759207
6-9 months     ki1017093-NIH-Birth     BANGLADESH   NA                   NA                1.2555950   1.2150667   1.2961234
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                1.3277672   1.2982110   1.3573234
6-9 months     ki1114097-CONTENT       PERU         NA                   NA                1.3974236   1.3502187   1.4446285
6-9 months     ki1135781-COHORTS       GUATEMALA    NA                   NA                1.0689735   1.0227820   1.1151649
6-9 months     ki1135781-COHORTS       INDIA        NA                   NA                1.1818282   1.1689263   1.1947301
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                1.2864500   1.2489340   1.3239661
9-12 months    ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    ki0047075b-MAL-ED       INDIA        NA                   NA                0.9810598   0.9425271   1.0195925
9-12 months    ki0047075b-MAL-ED       PERU         NA                   NA                1.0938158   1.0421876   1.1454440
9-12 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                1.0885809   1.0534446   1.1237171
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                1.1253061   1.0988172   1.1517949
9-12 months    ki1114097-CONTENT       PERU         NA                   NA                1.2048768   1.1650186   1.2447350
9-12 months    ki1135781-COHORTS       GUATEMALA    NA                   NA                0.9243941   0.8840420   0.9647463
9-12 months    ki1135781-COHORTS       INDIA        NA                   NA                0.9844431   0.9705367   0.9983496
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                1.0549548   1.0220826   1.0878270
12-15 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.9129447   0.8748557   0.9510337
12-15 months   ki0047075b-MAL-ED       PERU         NA                   NA                0.8895957   0.8424004   0.9367911
12-15 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.7241623   0.6797013   0.7686233
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.9714857   0.9466423   0.9963290
12-15 months   ki1114097-CONTENT       PERU         NA                   NA                0.9291443   0.8867697   0.9715190
12-15 months   ki1135781-COHORTS       GUATEMALA    NA                   NA                0.7433921   0.7043539   0.7824303
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.9426270   0.9101880   0.9750661
15-18 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.8461081   0.8096109   0.8826053
15-18 months   ki0047075b-MAL-ED       PERU         NA                   NA                0.8582871   0.8154498   0.9011244
15-18 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.7727719   0.7325606   0.8129832
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.9162288   0.8930973   0.9393604
15-18 months   ki1114097-CONTENT       PERU         NA                   NA                0.9860231   0.9406097   1.0314365
15-18 months   ki1135781-COHORTS       GUATEMALA    NA                   NA                0.7308455   0.6834689   0.7782221
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.8366524   0.8050734   0.8682315
18-21 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.8786990   0.8431802   0.9142178
18-21 months   ki0047075b-MAL-ED       PERU         NA                   NA                0.8405408   0.7957138   0.8853678
18-21 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.7291468   0.6930874   0.7652062
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.7977951   0.7741689   0.8214214
18-21 months   ki1114097-CONTENT       PERU         NA                   NA                0.9146338   0.8709588   0.9583088
18-21 months   ki1135781-COHORTS       GUATEMALA    NA                   NA                0.7102490   0.6665338   0.7539642
21-24 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.8256267   0.7945621   0.8566913
21-24 months   ki0047075b-MAL-ED       PERU         NA                   NA                0.7622936   0.7156467   0.8089404
21-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.7172178   0.6817161   0.7527194
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.8010871   0.7761614   0.8260128
21-24 months   ki1135781-COHORTS       GUATEMALA    NA                   NA                0.6221207   0.5850893   0.6591520


### Parameter: ATE


agecat         studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BANGLADESH   0                    1                  0.0226847   -0.1777375    0.2231070
0-3 months     ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA        0                    1                  0.0307184   -0.1480672    0.2095040
0-3 months     ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU         0                    1                 -0.0106857   -0.1780456    0.1566742
0-3 months     ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0385490   -0.1510317    0.0739336
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 -0.0866202   -0.1893425    0.0161021
0-3 months     ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0314364   -0.4168051    0.3539323
0-3 months     ki1135781-COHORTS       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS       INDIA        0                    1                 -0.0865075   -0.1207600   -0.0522550
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   0                    1                 -0.0407996   -0.0662819   -0.0153173
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0649307   -0.3267234    0.1968619
3-6 months     ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.1141099   -0.2430264    0.0148065
3-6 months     ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA        0                    1                 -0.0320788   -0.1538627    0.0897050
3-6 months     ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU         0                    1                  0.1394603   -0.0111219    0.2900424
3-6 months     ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0363106   -0.1374918    0.0648705
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0973494   -0.0139808    0.2086796
3-6 months     ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT       PERU         0                    1                 -0.0933389   -0.2956918    0.1090140
3-6 months     ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS       GUATEMALA    0                    1                  0.0283542   -0.1638576    0.2205660
3-6 months     ki1135781-COHORTS       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS       INDIA        0                    1                 -0.0693952   -0.0982027   -0.0405877
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   0                    1                 -0.0148479   -0.0449980    0.0153021
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0221542   -0.1882687    0.1439603
6-9 months     ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       BANGLADESH   0                    1                  0.0107012   -0.0990365    0.1204388
6-9 months     ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       INDIA        0                    1                 -0.1020778   -0.1974838   -0.0066719
6-9 months     ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       PERU         0                    1                  0.1192574    0.0046226    0.2338923
6-9 months     ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0865496   -0.1719424   -0.0011567
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 -0.0138398   -0.0911137    0.0634340
6-9 months     ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT       PERU         0                    1                 -0.0490385   -0.2193350    0.1212581
6-9 months     ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS       GUATEMALA    0                    1                 -0.1223897   -0.2781462    0.0333668
6-9 months     ki1135781-COHORTS       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS       INDIA        0                    1                 -0.0173137   -0.0439523    0.0093249
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0514929   -0.1343126    0.0313267
9-12 months    ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0028086   -0.1113201    0.1057030
9-12 months    ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       INDIA        0                    1                 -0.0385354   -0.1146978    0.0376270
9-12 months    ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       PERU         0                    1                 -0.1200257   -0.2334952   -0.0065561
9-12 months    ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0115497   -0.0831597    0.0600603
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0133572   -0.0548306    0.0815450
9-12 months    ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT       PERU         0                    1                 -0.0429577   -0.1861036    0.1001883
9-12 months    ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0165751   -0.2059669    0.1728166
9-12 months    ki1135781-COHORTS       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS       INDIA        0                    1                 -0.0727141   -0.1009097   -0.0445186
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0109913   -0.0845910    0.0626083
12-15 months   ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0449882   -0.1362520    0.0462756
12-15 months   ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       INDIA        0                    1                 -0.0577212   -0.1337745    0.0183321
12-15 months   ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       PERU         0                    1                  0.0279673   -0.0797678    0.1357024
12-15 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0560735   -0.1419212    0.0297743
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 -0.0521976   -0.1244502    0.0200550
12-15 months   ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT       PERU         0                    1                 -0.0956378   -0.2573358    0.0660601
12-15 months   ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0402811   -0.1782192    0.0976569
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0181844   -0.0834860    0.0471171
15-18 months   ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       BANGLADESH   0                    1                  0.0588611   -0.0353289    0.1530511
15-18 months   ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       INDIA        0                    1                  0.0357998   -0.0364394    0.1080391
15-18 months   ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       PERU         0                    1                 -0.0573763   -0.1636027    0.0488501
15-18 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0101733   -0.0921993    0.0718528
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 -0.0065876   -0.0774540    0.0642788
15-18 months   ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT       PERU         0                    1                 -0.1281323   -0.3089500    0.0526854
15-18 months   ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0571438   -0.2014022    0.0871146
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0559268   -0.1181466    0.0062929
18-21 months   ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0922595   -0.1943869    0.0098678
18-21 months   ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       INDIA        0                    1                 -0.0760571   -0.1462303   -0.0058839
18-21 months   ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       PERU         0                    1                 -0.0928648   -0.1904074    0.0046778
18-21 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0040964   -0.0777465    0.0695538
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0083643   -0.0554220    0.0721507
18-21 months   ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT       PERU         0                    1                 -0.0527641   -0.2080400    0.1025117
18-21 months   ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0727382   -0.2096035    0.0641271
21-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       BANGLADESH   0                    1                  0.0097567   -0.0960106    0.1155240
21-24 months   ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       INDIA        0                    1                  0.0291619   -0.0321182    0.0904421
21-24 months   ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       PERU         0                    1                  0.0612055   -0.0430462    0.1654571
21-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                  0.0214906   -0.0501244    0.0931056
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0385864   -0.0323961    0.1095689
21-24 months   ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0524741   -0.2136496    0.1087014


### Parameter: PAR


agecat         studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0036526   -0.0286364    0.0359416
0-3 months     ki0047075b-MAL-ED       INDIA        1                    NA                 0.0167555   -0.0807902    0.1143012
0-3 months     ki0047075b-MAL-ED       PERU         1                    NA                -0.0080794   -0.1346211    0.1184623
0-3 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0237015   -0.0928778    0.0454747
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0102480   -0.0225743    0.0020783
0-3 months     ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0294716   -0.3907562    0.3318130
0-3 months     ki1135781-COHORTS       INDIA        1                    NA                -0.0543549   -0.0759101   -0.0327997
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0126605   -0.0205802   -0.0047408
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0150076   -0.0755727    0.0455576
3-6 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0187713   -0.0406718    0.0031291
3-6 months     ki0047075b-MAL-ED       INDIA        1                    NA                -0.0173057   -0.0830378    0.0484264
3-6 months     ki0047075b-MAL-ED       PERU         1                    NA                 0.1056680   -0.0086588    0.2199948
3-6 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0225640   -0.0854576    0.0403297
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0118129   -0.0019052    0.0255310
3-6 months     ki1114097-CONTENT       PERU         1                    NA                -0.0061063   -0.0197023    0.0074898
3-6 months     ki1135781-COHORTS       GUATEMALA    1                    NA                 0.0266226   -0.1538529    0.2070982
3-6 months     ki1135781-COHORTS       INDIA        1                    NA                -0.0433665   -0.0613944   -0.0253386
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0041562   -0.0126019    0.0042895
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0052309   -0.0443794    0.0339177
6-9 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0018154   -0.0168083    0.0204390
6-9 months     ki0047075b-MAL-ED       INDIA        1                    NA                -0.0555160   -0.1078233   -0.0032088
6-9 months     ki0047075b-MAL-ED       PERU         1                    NA                 0.0911969    0.0032987    0.1790951
6-9 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0530073   -0.1054373   -0.0005772
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0018167   -0.0119665    0.0083330
6-9 months     ki1114097-CONTENT       PERU         1                    NA                -0.0032081   -0.0144674    0.0080511
6-9 months     ki1135781-COHORTS       GUATEMALA    1                    NA                -0.1149589   -0.2612989    0.0313811
6-9 months     ki1135781-COHORTS       INDIA        1                    NA                -0.0107131   -0.0271979    0.0057718
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0113982   -0.0299174    0.0071211
9-12 months    ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0004369   -0.0173170    0.0164432
9-12 months    ki0047075b-MAL-ED       INDIA        1                    NA                -0.0208948   -0.0622682    0.0204786
9-12 months    ki0047075b-MAL-ED       PERU         1                    NA                -0.0926514   -0.1804866   -0.0048162
9-12 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0070209   -0.0505544    0.0365126
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0017702   -0.0072733    0.0108137
9-12 months    ki1114097-CONTENT       PERU         1                    NA                -0.0028368   -0.0123988    0.0067252
9-12 months    ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0155785   -0.1935833    0.1624263
9-12 months    ki1135781-COHORTS       INDIA        1                    NA                -0.0442922   -0.0615046   -0.0270797
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0024369   -0.0188193    0.0139456
12-15 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0067907   -0.0207367    0.0071553
12-15 months   ki0047075b-MAL-ED       INDIA        1                    NA                -0.0311798   -0.0724352    0.0100757
12-15 months   ki0047075b-MAL-ED       PERU         1                    NA                 0.0214245   -0.0611216    0.1039706
12-15 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0340576   -0.0862595    0.0181442
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0069972   -0.0167792    0.0027847
12-15 months   ki1114097-CONTENT       PERU         1                    NA                -0.0062477   -0.0173119    0.0048165
12-15 months   ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0375794   -0.1662701    0.0911113
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0041660   -0.0190334    0.0107015
15-18 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0091623   -0.0057793    0.0241040
15-18 months   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0191785   -0.0195920    0.0579490
15-18 months   ki0047075b-MAL-ED       PERU         1                    NA                -0.0435839   -0.1243442    0.0371764
15-18 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0060949   -0.0552396    0.0430498
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0009220   -0.0108427    0.0089986
15-18 months   ki1114097-CONTENT       PERU         1                    NA                -0.0088133   -0.0220863    0.0044596
15-18 months   ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0532696   -0.1877578    0.0812186
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0121196   -0.0259814    0.0017423
18-21 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0132430   -0.0285474    0.0020614
18-21 months   ki0047075b-MAL-ED       INDIA        1                    NA                -0.0410844   -0.0793156   -0.0028533
18-21 months   ki0047075b-MAL-ED       PERU         1                    NA                -0.0694141   -0.1425421    0.0037139
18-21 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0024559   -0.0466115    0.0416997
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0011257   -0.0074621    0.0097134
18-21 months   ki1114097-CONTENT       PERU         1                    NA                -0.0034599   -0.0138173    0.0068974
18-21 months   ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0677300   -0.1951886    0.0597287
21-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0013669   -0.0134580    0.0161917
21-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0157526   -0.0174045    0.0489098
21-24 months   ki0047075b-MAL-ED       PERU         1                    NA                 0.0455715   -0.0321470    0.1232899
21-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0129676   -0.0302574    0.0561925
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0056389   -0.0048060    0.0160839
21-24 months   ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0489139   -0.1991608    0.1013330
