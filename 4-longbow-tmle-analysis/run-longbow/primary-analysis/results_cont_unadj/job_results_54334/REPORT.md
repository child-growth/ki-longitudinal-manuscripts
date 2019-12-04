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
![](/tmp/277143b8-68bd-469d-a4f5-70f9450a97d1/a6aa6931-d3f4-4d31-b871-c2c80e323be8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/277143b8-68bd-469d-a4f5-70f9450a97d1/a6aa6931-d3f4-4d31-b871-c2c80e323be8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/277143b8-68bd-469d-a4f5-70f9450a97d1/a6aa6931-d3f4-4d31-b871-c2c80e323be8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.1219567   -0.1572334   -0.0866801
0-3 months     ki0047075b-MAL-ED       BANGLADESH   0                    NA                -0.0946050   -0.1943715    0.0051614
0-3 months     ki0047075b-MAL-ED       INDIA        1                    NA                -0.0741122   -0.1392504   -0.0089740
0-3 months     ki0047075b-MAL-ED       INDIA        0                    NA                -0.0701212   -0.1358761   -0.0043663
0-3 months     ki0047075b-MAL-ED       PERU         1                    NA                -0.2631009   -0.3401013   -0.1861005
0-3 months     ki0047075b-MAL-ED       PERU         0                    NA                -0.2491775   -0.2868915   -0.2114634
0-3 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.2294711   -0.2747531   -0.1841890
0-3 months     ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.2335622   -0.2662345   -0.2008899
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.2251934   -0.2442199   -0.2061669
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.2595593   -0.3021831   -0.2169355
0-3 months     ki1135781-COHORTS       GUATEMALA    1                    NA                -0.5500973   -0.7347765   -0.3654182
0-3 months     ki1135781-COHORTS       GUATEMALA    0                    NA                -0.5587562   -0.6006851   -0.5168273
0-3 months     ki1135781-COHORTS       INDIA        1                    NA                -0.0478891   -0.0610751   -0.0347032
0-3 months     ki1135781-COHORTS       INDIA        0                    NA                -0.0811411   -0.0914890   -0.0707932
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0588675    0.0509188    0.0668162
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   0                    NA                 0.0407401    0.0283972    0.0530831
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.2740497   -0.3374356   -0.2106637
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.3074721   -0.4366459   -0.1782982
3-6 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0144810   -0.0405993    0.0116374
3-6 months     ki0047075b-MAL-ED       BANGLADESH   0                    NA                -0.0628681   -0.1155076   -0.0102287
3-6 months     ki0047075b-MAL-ED       INDIA        1                    NA                -0.0337684   -0.0752917    0.0077549
3-6 months     ki0047075b-MAL-ED       INDIA        0                    NA                -0.0502119   -0.0884786   -0.0119452
3-6 months     ki0047075b-MAL-ED       PERU         1                    NA                -0.0254857   -0.0870496    0.0360783
3-6 months     ki0047075b-MAL-ED       PERU         0                    NA                 0.0435892    0.0075453    0.0796330
3-6 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0448877   -0.0827259   -0.0070496
3-6 months     ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0545640   -0.0816565   -0.0274714
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0191622    0.0015470    0.0367773
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.0689090    0.0196429    0.1181751
3-6 months     ki1114097-CONTENT       PERU         1                    NA                 0.0147937   -0.0084011    0.0379886
3-6 months     ki1114097-CONTENT       PERU         0                    NA                -0.0163506   -0.1069275    0.0742262
3-6 months     ki1135781-COHORTS       GUATEMALA    1                    NA                -0.1554889   -0.2397111   -0.0712667
3-6 months     ki1135781-COHORTS       GUATEMALA    0                    NA                -0.1352881   -0.1636321   -0.1069440
3-6 months     ki1135781-COHORTS       INDIA        1                    NA                -0.0480776   -0.0585274   -0.0376277
3-6 months     ki1135781-COHORTS       INDIA        0                    NA                -0.0721335   -0.0803110   -0.0639561
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0019771   -0.0056082    0.0095624
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0021707   -0.0151063    0.0107649
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0137179   -0.0450750    0.0176393
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0216219   -0.0925605    0.0493168
6-9 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0709741   -0.0896966   -0.0522516
6-9 months     ki0047075b-MAL-ED       BANGLADESH   0                    NA                -0.0653684   -0.1095110   -0.0212258
6-9 months     ki0047075b-MAL-ED       INDIA        1                    NA                -0.0411608   -0.0728955   -0.0094262
6-9 months     ki0047075b-MAL-ED       INDIA        0                    NA                -0.0852548   -0.1134107   -0.0570988
6-9 months     ki0047075b-MAL-ED       PERU         1                    NA                -0.0734500   -0.1152022   -0.0316977
6-9 months     ki0047075b-MAL-ED       PERU         0                    NA                -0.0211641   -0.0504731    0.0081448
6-9 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0391475   -0.0701259   -0.0081692
6-9 months     ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0724683   -0.0939293   -0.0510072
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0305565   -0.0445916   -0.0165214
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0379084   -0.0679837   -0.0078332
6-9 months     ki1114097-CONTENT       PERU         1                    NA                -0.0230906   -0.0450123   -0.0011690
6-9 months     ki1114097-CONTENT       PERU         0                    NA                -0.0404935   -0.1126206    0.0316336
6-9 months     ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0928879   -0.1540080   -0.0317677
6-9 months     ki1135781-COHORTS       GUATEMALA    0                    NA                -0.1369015   -0.1579337   -0.1158694
6-9 months     ki1135781-COHORTS       INDIA        1                    NA                -0.1017253   -0.1109893   -0.0924613
6-9 months     ki1135781-COHORTS       INDIA        0                    NA                -0.1007678   -0.1079808   -0.0935549
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0413496   -0.0598926   -0.0228065
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0609604   -0.0922219   -0.0296989
9-12 months    ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0868955   -0.1045507   -0.0692404
9-12 months    ki0047075b-MAL-ED       BANGLADESH   0                    NA                -0.0888874   -0.1289989   -0.0487758
9-12 months    ki0047075b-MAL-ED       INDIA        1                    NA                -0.0845356   -0.1060227   -0.0630484
9-12 months    ki0047075b-MAL-ED       INDIA        0                    NA                -0.0974554   -0.1205722   -0.0743385
9-12 months    ki0047075b-MAL-ED       PERU         1                    NA                -0.0031346   -0.0444210    0.0381518
9-12 months    ki0047075b-MAL-ED       PERU         0                    NA                -0.0561988   -0.0812494   -0.0311482
9-12 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0436002   -0.0665587   -0.0206417
9-12 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0417489   -0.0603412   -0.0231566
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0341472   -0.0462062   -0.0220883
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0293351   -0.0556995   -0.0029707
9-12 months    ki1114097-CONTENT       PERU         1                    NA                -0.0216933   -0.0391076   -0.0042791
9-12 months    ki1114097-CONTENT       PERU         0                    NA                -0.0334513   -0.0863036    0.0194010
9-12 months    ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0980832   -0.1746849   -0.0214816
9-12 months    ki1135781-COHORTS       GUATEMALA    0                    NA                -0.0958136   -0.1127651   -0.0788621
9-12 months    ki1135781-COHORTS       INDIA        1                    NA                -0.0785693   -0.0874248   -0.0697137
9-12 months    ki1135781-COHORTS       INDIA        0                    NA                -0.0990315   -0.1063980   -0.0916651
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0579428   -0.0731115   -0.0427740
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0611436   -0.0879905   -0.0342966
12-15 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0528212   -0.0703242   -0.0353182
12-15 months   ki0047075b-MAL-ED       BANGLADESH   0                    NA                -0.0719745   -0.1013776   -0.0425715
12-15 months   ki0047075b-MAL-ED       INDIA        1                    NA                -0.0455500   -0.0669301   -0.0241699
12-15 months   ki0047075b-MAL-ED       INDIA        0                    NA                -0.0640887   -0.0843937   -0.0437837
12-15 months   ki0047075b-MAL-ED       PERU         1                    NA                -0.0740534   -0.1106776   -0.0374292
12-15 months   ki0047075b-MAL-ED       PERU         0                    NA                -0.0638428   -0.0847514   -0.0429342
12-15 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.1165607   -0.1396551   -0.0934663
12-15 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.1320340   -0.1555421   -0.1085258
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0352446   -0.0455308   -0.0249584
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0572567   -0.0835634   -0.0309500
12-15 months   ki1114097-CONTENT       PERU         1                    NA                -0.0713961   -0.0884888   -0.0543033
12-15 months   ki1114097-CONTENT       PERU         0                    NA                -0.1025163   -0.1619334   -0.0430992
12-15 months   ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0961173   -0.1473906   -0.0448440
12-15 months   ki1135781-COHORTS       GUATEMALA    0                    NA                -0.1005466   -0.1162483   -0.0848449
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0430643   -0.0574685   -0.0286601
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0473425   -0.0686313   -0.0260537
15-18 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0490135   -0.0637351   -0.0342919
15-18 months   ki0047075b-MAL-ED       BANGLADESH   0                    NA                -0.0283326   -0.0611482    0.0044830
15-18 months   ki0047075b-MAL-ED       INDIA        1                    NA                -0.0473579   -0.0650938   -0.0296220
15-18 months   ki0047075b-MAL-ED       INDIA        0                    NA                -0.0291091   -0.0475197   -0.0106985
15-18 months   ki0047075b-MAL-ED       PERU         1                    NA                -0.0171449   -0.0528959    0.0186060
15-18 months   ki0047075b-MAL-ED       PERU         0                    NA                -0.0397130   -0.0569144   -0.0225116
15-18 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0584913   -0.0818694   -0.0351131
15-18 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0571548   -0.0760313   -0.0382783
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0174651   -0.0263400   -0.0085903
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0170718   -0.0422146    0.0080710
15-18 months   ki1114097-CONTENT       PERU         1                    NA                -0.0063235   -0.0237761    0.0111291
15-18 months   ki1114097-CONTENT       PERU         0                    NA                -0.0472219   -0.1101878    0.0157441
15-18 months   ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0471372   -0.0969742    0.0026998
15-18 months   ki1135781-COHORTS       GUATEMALA    0                    NA                -0.0577118   -0.0760977   -0.0393260
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0374275   -0.0507307   -0.0241243
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0545324   -0.0737724   -0.0352923
18-21 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0107554   -0.0231541    0.0016433
18-21 months   ki0047075b-MAL-ED       BANGLADESH   0                    NA                -0.0439618   -0.0750367   -0.0128868
18-21 months   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0172794    0.0010257    0.0335332
18-21 months   ki0047075b-MAL-ED       INDIA        0                    NA                -0.0043318   -0.0203291    0.0116655
18-21 months   ki0047075b-MAL-ED       PERU         1                    NA                 0.0162308   -0.0123764    0.0448380
18-21 months   ki0047075b-MAL-ED       PERU         0                    NA                -0.0168319   -0.0346327    0.0009688
18-21 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0410769   -0.0605238   -0.0216301
18-21 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0365935   -0.0527517   -0.0204353
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0283936   -0.0372720   -0.0195152
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0247742   -0.0447159   -0.0048326
18-21 months   ki1114097-CONTENT       PERU         1                    NA                -0.0057123   -0.0214836    0.0100591
18-21 months   ki1114097-CONTENT       PERU         0                    NA                -0.0094087   -0.0651857    0.0463682
18-21 months   ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0206458   -0.0650598    0.0237682
18-21 months   ki1135781-COHORTS       GUATEMALA    0                    NA                -0.0312365   -0.0469580   -0.0155151
21-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0272763    0.0141047    0.0404479
21-24 months   ki0047075b-MAL-ED       BANGLADESH   0                    NA                 0.0154408   -0.0159003    0.0467819
21-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0207626    0.0055397    0.0359855
21-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                 0.0369471    0.0212799    0.0526143
21-24 months   ki0047075b-MAL-ED       PERU         1                    NA                 0.0420277    0.0135376    0.0705179
21-24 months   ki0047075b-MAL-ED       PERU         0                    NA                 0.0628444    0.0450147    0.0806742
21-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0343449    0.0166074    0.0520824
21-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                 0.0448628    0.0292830    0.0604426
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0552507    0.0462315    0.0642698
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.0812377    0.0595323    0.1029432
21-24 months   ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0179947   -0.0703648    0.0343755
21-24 months   ki1135781-COHORTS       GUATEMALA    0                    NA                -0.0223734   -0.0354939   -0.0092528


### Parameter: E(Y)


agecat         studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH   NA                   NA                -0.1175527   -0.1512522   -0.0838531
0-3 months     ki0047075b-MAL-ED       INDIA        NA                   NA                -0.0719353   -0.1184447   -0.0254258
0-3 months     ki0047075b-MAL-ED       PERU         NA                   NA                -0.2525734   -0.2867261   -0.2184208
0-3 months     ki1017093-NIH-Birth     BANGLADESH   NA                   NA                -0.2319865   -0.2585900   -0.2053830
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                -0.2292592   -0.2467953   -0.2117232
0-3 months     ki1135781-COHORTS       GUATEMALA    NA                   NA                -0.5582150   -0.5991839   -0.5172460
0-3 months     ki1135781-COHORTS       INDIA        NA                   NA                -0.0687822   -0.0769373   -0.0606271
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                 0.0532424    0.0457826    0.0607022
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                -0.2817746   -0.3395565   -0.2239928
3-6 months     ki0047075b-MAL-ED       BANGLADESH   NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     ki0047075b-MAL-ED       INDIA        NA                   NA                -0.0426392   -0.0707991   -0.0144793
3-6 months     ki0047075b-MAL-ED       PERU         NA                   NA                 0.0268518   -0.0044749    0.0581786
3-6 months     ki1017093-NIH-Birth     BANGLADESH   NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                 0.0251987    0.0085620    0.0418354
3-6 months     ki1114097-CONTENT       PERU         NA                   NA                 0.0127563   -0.0097402    0.0352528
3-6 months     ki1135781-COHORTS       GUATEMALA    NA                   NA                -0.1365217   -0.1636337   -0.1094098
3-6 months     ki1135781-COHORTS       INDIA        NA                   NA                -0.0631107   -0.0695595   -0.0566618
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                 0.0008161   -0.0061348    0.0077670
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                -0.0155841   -0.0450436    0.0138754
6-9 months     ki0047075b-MAL-ED       BANGLADESH   NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     ki0047075b-MAL-ED       INDIA        NA                   NA                -0.0651417   -0.0864064   -0.0438771
6-9 months     ki0047075b-MAL-ED       PERU         NA                   NA                -0.0334667   -0.0581003   -0.0088331
6-9 months     ki1017093-NIH-Birth     BANGLADESH   NA                   NA                -0.0595548   -0.0774135   -0.0416961
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                -0.0315216   -0.0443389   -0.0187043
6-9 months     ki1114097-CONTENT       PERU         NA                   NA                -0.0242292   -0.0452610   -0.0031973
6-9 months     ki1135781-COHORTS       GUATEMALA    NA                   NA                -0.1342293   -0.1543678   -0.1140908
6-9 months     ki1135781-COHORTS       INDIA        NA                   NA                -0.1011329   -0.1068243   -0.0954414
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                -0.0456905   -0.0618720   -0.0295090
9-12 months    ki0047075b-MAL-ED       BANGLADESH   NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    ki0047075b-MAL-ED       INDIA        NA                   NA                -0.0915410   -0.1074964   -0.0755855
9-12 months    ki0047075b-MAL-ED       PERU         NA                   NA                -0.0440965   -0.0657987   -0.0223943
9-12 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                -0.0424748   -0.0569242   -0.0280255
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                -0.0335095   -0.0445391   -0.0224799
9-12 months    ki1114097-CONTENT       PERU         NA                   NA                -0.0224698   -0.0391090   -0.0058306
9-12 months    ki1135781-COHORTS       GUATEMALA    NA                   NA                -0.0959501   -0.1125348   -0.0793653
9-12 months    ki1135781-COHORTS       INDIA        NA                   NA                -0.0910334   -0.0967095   -0.0853573
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                -0.0586524   -0.0721516   -0.0451533
12-15 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   ki0047075b-MAL-ED       INDIA        NA                   NA                -0.0555642   -0.0703434   -0.0407850
12-15 months   ki0047075b-MAL-ED       PERU         NA                   NA                -0.0662315   -0.0844054   -0.0480576
12-15 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                -0.1259588   -0.1428870   -0.1090306
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                -0.0381954   -0.0477928   -0.0285980
12-15 months   ki1114097-CONTENT       PERU         NA                   NA                -0.0734290   -0.0899048   -0.0569533
12-15 months   ki1135781-COHORTS       GUATEMALA    NA                   NA                -0.1002495   -0.1152968   -0.0852022
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                -0.0440444   -0.0564983   -0.0315906
15-18 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   ki0047075b-MAL-ED       INDIA        NA                   NA                -0.0375818   -0.0504856   -0.0246779
15-18 months   ki0047075b-MAL-ED       PERU         NA                   NA                -0.0342880   -0.0499824   -0.0185936
15-18 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                -0.0576906   -0.0723785   -0.0430027
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                -0.0174101   -0.0258150   -0.0090052
15-18 months   ki1114097-CONTENT       PERU         NA                   NA                -0.0091366   -0.0260209    0.0077477
15-18 months   ki1135781-COHORTS       GUATEMALA    NA                   NA                -0.0569949   -0.0744668   -0.0395230
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                -0.0411342   -0.0525950   -0.0296734
18-21 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   ki0047075b-MAL-ED       INDIA        NA                   NA                 0.0056055   -0.0059067    0.0171177
18-21 months   ki0047075b-MAL-ED       PERU         NA                   NA                -0.0084828   -0.0237553    0.0067897
18-21 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                -0.0383890   -0.0508204   -0.0259576
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                -0.0279065   -0.0360459   -0.0197670
18-21 months   ki1114097-CONTENT       PERU         NA                   NA                -0.0059547   -0.0211395    0.0092302
18-21 months   ki1135781-COHORTS       GUATEMALA    NA                   NA                -0.0305073   -0.0454653   -0.0155493
21-24 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                 0.0295051    0.0184714    0.0405388
21-24 months   ki0047075b-MAL-ED       PERU         NA                   NA                 0.0575271    0.0423309    0.0727234
21-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                 0.0406915    0.0289394    0.0524435
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                 0.0590484    0.0506790    0.0674177
21-24 months   ki1135781-COHORTS       GUATEMALA    NA                   NA                -0.0220763   -0.0348129   -0.0093397


### Parameter: ATE


agecat         studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BANGLADESH   0                    1                  0.0273517   -0.0784679    0.1331713
0-3 months     ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA        0                    1                  0.0039910   -0.0885654    0.0965474
0-3 months     ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU         0                    1                  0.0139235   -0.0718169    0.0996638
0-3 months     ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0040912   -0.0599297    0.0517474
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 -0.0343659   -0.0810434    0.0123117
0-3 months     ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0086588   -0.1980379    0.1807202
0-3 months     ki1135781-COHORTS       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS       INDIA        0                    1                 -0.0332520   -0.0500135   -0.0164905
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   0                    1                 -0.0181273   -0.0310390   -0.0052156
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0334224   -0.1764074    0.1095626
3-6 months     ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0483872   -0.1071501    0.0103758
3-6 months     ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA        0                    1                 -0.0164435   -0.0729106    0.0400235
3-6 months     ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU         0                    1                  0.0690748   -0.0022643    0.1404140
3-6 months     ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0096762   -0.0562137    0.0368612
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0497469   -0.0025738    0.1020675
3-6 months     ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT       PERU         0                    1                 -0.0311444   -0.1246439    0.0623552
3-6 months     ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS       GUATEMALA    0                    1                  0.0202008   -0.0686629    0.1090646
3-6 months     ki1135781-COHORTS       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS       INDIA        0                    1                 -0.0240560   -0.0373251   -0.0107868
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   0                    1                 -0.0041478   -0.0182372    0.0099416
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0079040   -0.0849438    0.0691358
6-9 months     ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       BANGLADESH   0                    1                  0.0056057   -0.0423432    0.0535546
6-9 months     ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       INDIA        0                    1                 -0.0440939   -0.0865185   -0.0016693
6-9 months     ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       PERU         0                    1                  0.0522858    0.0012734    0.1032982
6-9 months     ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0333207   -0.0710068    0.0043653
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 -0.0073519   -0.0405409    0.0258370
6-9 months     ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT       PERU         0                    1                 -0.0174029   -0.0927877    0.0579820
6-9 months     ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0440137   -0.1086513    0.0206240
6-9 months     ki1135781-COHORTS       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS       INDIA        0                    1                  0.0009574   -0.0107835    0.0126983
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0196108   -0.0555790    0.0163573
9-12 months    ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0019918   -0.0458170    0.0418333
9-12 months    ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       INDIA        0                    1                 -0.0129198   -0.0444806    0.0186411
9-12 months    ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       PERU         0                    1                 -0.0530643   -0.1013561   -0.0047724
9-12 months    ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth     BANGLADESH   0                    1                  0.0018513   -0.0276913    0.0313939
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0048122   -0.0241792    0.0338035
9-12 months    ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT       PERU         0                    1                 -0.0117580   -0.0674053    0.0438893
9-12 months    ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS       GUATEMALA    0                    1                  0.0022696   -0.0761852    0.0807245
9-12 months    ki1135781-COHORTS       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS       INDIA        0                    1                 -0.0204622   -0.0319812   -0.0089433
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0032008   -0.0333835    0.0269819
12-15 months   ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0191533   -0.0533716    0.0150650
12-15 months   ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       INDIA        0                    1                 -0.0185387   -0.0480243    0.0109469
12-15 months   ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       PERU         0                    1                  0.0102106   -0.0319617    0.0523829
12-15 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0154733   -0.0484275    0.0174810
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 -0.0220120   -0.0502582    0.0062341
12-15 months   ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT       PERU         0                    1                 -0.0311203   -0.0929471    0.0307066
12-15 months   ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0044293   -0.0580530    0.0491943
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0042782   -0.0290436    0.0204872
15-18 months   ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       BANGLADESH   0                    1                  0.0206809   -0.0152856    0.0566474
15-18 months   ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       INDIA        0                    1                  0.0182488   -0.0073151    0.0438127
15-18 months   ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       PERU         0                    1                 -0.0225680   -0.0622419    0.0171058
15-18 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                  0.0013365   -0.0287112    0.0313841
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0003933   -0.0262698    0.0270564
15-18 months   ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT       PERU         0                    1                 -0.0408984   -0.1062383    0.0244415
15-18 months   ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0105746   -0.0636950    0.0425457
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0171049   -0.0399749    0.0057652
18-21 months   ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0332064   -0.0666635    0.0002508
18-21 months   ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       INDIA        0                    1                 -0.0216112   -0.0444169    0.0011944
18-21 months   ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       PERU         0                    1                 -0.0330627   -0.0667560    0.0006306
18-21 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                  0.0044834   -0.0208003    0.0297672
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0036193   -0.0182094    0.0254481
18-21 months   ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT       PERU         0                    1                 -0.0036965   -0.0616603    0.0542674
18-21 months   ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0105908   -0.0577052    0.0365236
21-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0118355   -0.0458319    0.0221609
21-24 months   ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       INDIA        0                    1                  0.0161845   -0.0056604    0.0380294
21-24 months   ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       PERU         0                    1                  0.0208167   -0.0127926    0.0544260
21-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                  0.0105179   -0.0130903    0.0341261
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0259871    0.0024823    0.0494918
21-24 months   ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0043787   -0.0583674    0.0496100


### Parameter: PAR


agecat         studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0044041   -0.0126831    0.0214913
0-3 months     ki0047075b-MAL-ED       INDIA        1                    NA                 0.0021769   -0.0483093    0.0526631
0-3 months     ki0047075b-MAL-ED       PERU         1                    NA                 0.0105275   -0.0543049    0.0753599
0-3 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0025154   -0.0368476    0.0318168
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0040658   -0.0096483    0.0015167
0-3 months     ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0081176   -0.1856607    0.1694254
0-3 months     ki1135781-COHORTS       INDIA        1                    NA                -0.0208931   -0.0314349   -0.0103513
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0056251   -0.0096489   -0.0016012
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0077250   -0.0407676    0.0253177
3-6 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0079598   -0.0179005    0.0019809
3-6 months     ki0047075b-MAL-ED       INDIA        1                    NA                -0.0088708   -0.0393520    0.0216103
3-6 months     ki0047075b-MAL-ED       PERU         1                    NA                 0.0523375   -0.0018357    0.1065107
3-6 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0060130   -0.0349348    0.0229089
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0060365   -0.0004281    0.0125012
3-6 months     ki1114097-CONTENT       PERU         1                    NA                -0.0020375   -0.0082411    0.0041661
3-6 months     ki1135781-COHORTS       GUATEMALA    1                    NA                 0.0189672   -0.0644718    0.1024062
3-6 months     ki1135781-COHORTS       INDIA        1                    NA                -0.0150331   -0.0233319   -0.0067342
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0011610   -0.0051069    0.0027848
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0018662   -0.0200281    0.0162957
6-9 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0009510   -0.0071879    0.0090898
6-9 months     ki0047075b-MAL-ED       INDIA        1                    NA                -0.0239809   -0.0472301   -0.0007317
6-9 months     ki0047075b-MAL-ED       PERU         1                    NA                 0.0399833    0.0008717    0.0790948
6-9 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0204073   -0.0435322    0.0027176
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0009651   -0.0053257    0.0033956
6-9 months     ki1114097-CONTENT       PERU         1                    NA                -0.0011385   -0.0061040    0.0038270
6-9 months     ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0413414   -0.1020672    0.0193843
6-9 months     ki1135781-COHORTS       INDIA        1                    NA                 0.0005924   -0.0066724    0.0078572
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0043409   -0.0123662    0.0036844
9-12 months    ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0003098   -0.0071277    0.0065081
9-12 months    ki0047075b-MAL-ED       INDIA        1                    NA                -0.0070054   -0.0241391    0.0101283
9-12 months    ki0047075b-MAL-ED       PERU         1                    NA                -0.0409619   -0.0783521   -0.0035716
9-12 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0011254   -0.0168333    0.0190840
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0006378   -0.0032065    0.0044820
9-12 months    ki1114097-CONTENT       PERU         1                    NA                -0.0007765   -0.0044724    0.0029194
9-12 months    ki1135781-COHORTS       GUATEMALA    1                    NA                 0.0021332   -0.0716045    0.0758708
9-12 months    ki1135781-COHORTS       INDIA        1                    NA                -0.0124641   -0.0194879   -0.0054403
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0007096   -0.0074217    0.0060024
12-15 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0028911   -0.0081383    0.0023562
12-15 months   ki0047075b-MAL-ED       INDIA        1                    NA                -0.0100142   -0.0259878    0.0059594
12-15 months   ki0047075b-MAL-ED       PERU         1                    NA                 0.0078219   -0.0244895    0.0401333
12-15 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0093981   -0.0294256    0.0106294
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0029508   -0.0067810    0.0008795
12-15 months   ki1114097-CONTENT       PERU         1                    NA                -0.0020330   -0.0062115    0.0021456
12-15 months   ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0041322   -0.0541593    0.0458948
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0009801   -0.0066345    0.0046743
15-18 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0032192   -0.0024700    0.0089084
15-18 months   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0097761   -0.0039708    0.0235231
15-18 months   ki0047075b-MAL-ED       PERU         1                    NA                -0.0171430   -0.0473085    0.0130225
15-18 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0008007   -0.0172012    0.0188026
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0000551   -0.0036769    0.0037870
15-18 months   ki1114097-CONTENT       PERU         1                    NA                -0.0028131   -0.0075447    0.0019185
15-18 months   ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0098577   -0.0593776    0.0396622
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0037067   -0.0087704    0.0013570
18-21 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0047665   -0.0098229    0.0002899
18-21 months   ki0047075b-MAL-ED       INDIA        1                    NA                -0.0116739   -0.0240739    0.0007260
18-21 months   ki0047075b-MAL-ED       PERU         1                    NA                -0.0247136   -0.0499782    0.0005511
18-21 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0026879   -0.0124718    0.0178476
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0004871   -0.0024525    0.0034267
18-21 months   ki1114097-CONTENT       PERU         1                    NA                -0.0002424   -0.0040456    0.0035608
18-21 months   ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0098616   -0.0537330    0.0340099
21-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0016581   -0.0064538    0.0031376
21-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0087425   -0.0031050    0.0205901
21-24 months   ki0047075b-MAL-ED       PERU         1                    NA                 0.0154994   -0.0095595    0.0405583
21-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0063466   -0.0079075    0.0206006
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0037977    0.0002656    0.0073298
21-24 months   ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0040816   -0.0544075    0.0462442
