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

**Intervention Variable:** impsan

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                 country                        impsan    n_cell       n
-------------  ----------------------  -----------------------------  -------  -------  ------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1            201     239
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0             38     239
0-3 months     ki0047075b-MAL-ED       BRAZIL                         1            206     210
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0              4     210
0-3 months     ki0047075b-MAL-ED       INDIA                          1            106     230
0-3 months     ki0047075b-MAL-ED       INDIA                          0            124     230
0-3 months     ki0047075b-MAL-ED       NEPAL                          1            229     230
0-3 months     ki0047075b-MAL-ED       NEPAL                          0              1     230
0-3 months     ki0047075b-MAL-ED       PERU                           1             64     262
0-3 months     ki0047075b-MAL-ED       PERU                           0            198     262
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     248
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0            244     248
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     224
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            224     224
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1            217     565
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0            348     565
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1             13      13
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0              0      13
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1            629     714
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0             85     714
0-3 months     ki1114097-CONTENT       PERU                           1             25      29
0-3 months     ki1114097-CONTENT       PERU                           0              4      29
0-3 months     ki1135781-COHORTS       GUATEMALA                      1             14     243
0-3 months     ki1135781-COHORTS       GUATEMALA                      0            229     243
0-3 months     ki1135781-COHORTS       INDIA                          1           1808    4802
0-3 months     ki1135781-COHORTS       INDIA                          0           2994    4802
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1           6914   10012
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     0           3098   10012
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1            491     639
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     0            148     639
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1            195     233
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0             38     233
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1            204     208
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0              4     208
3-6 months     ki0047075b-MAL-ED       INDIA                          1            105     228
3-6 months     ki0047075b-MAL-ED       INDIA                          0            123     228
3-6 months     ki0047075b-MAL-ED       NEPAL                          1            232     233
3-6 months     ki0047075b-MAL-ED       NEPAL                          0              1     233
3-6 months     ki0047075b-MAL-ED       PERU                           1             63     260
3-6 months     ki0047075b-MAL-ED       PERU                           0            197     260
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     237
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0            233     237
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     231
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            231     231
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1            198     522
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0            324     522
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1             11      11
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0              0      11
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1            607     691
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0             84     691
3-6 months     ki1114097-CONTENT       PERU                           1            200     214
3-6 months     ki1114097-CONTENT       PERU                           0             14     214
3-6 months     ki1135781-COHORTS       GUATEMALA                      1             16     261
3-6 months     ki1135781-COHORTS       GUATEMALA                      0            245     261
3-6 months     ki1135781-COHORTS       INDIA                          1           1844    4859
3-6 months     ki1135781-COHORTS       INDIA                          0           3015    4859
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1           4530    6294
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     0           1764    6294
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1            329     430
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     0            101     430
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     1            186     224
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0             38     224
6-9 months     ki0047075b-MAL-ED       BRAZIL                         1            194     198
6-9 months     ki0047075b-MAL-ED       BRAZIL                         0              4     198
6-9 months     ki0047075b-MAL-ED       INDIA                          1            104     228
6-9 months     ki0047075b-MAL-ED       INDIA                          0            124     228
6-9 months     ki0047075b-MAL-ED       NEPAL                          1            229     230
6-9 months     ki0047075b-MAL-ED       NEPAL                          0              1     230
6-9 months     ki0047075b-MAL-ED       PERU                           1             56     238
6-9 months     ki0047075b-MAL-ED       PERU                           0            182     238
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     227
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0            223     227
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     219
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            219     219
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     1            193     498
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0            305     498
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1              6       6
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0              0       6
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1            594     683
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0             89     683
6-9 months     ki1114097-CONTENT       PERU                           1            200     214
6-9 months     ki1114097-CONTENT       PERU                           0             14     214
6-9 months     ki1135781-COHORTS       GUATEMALA                      1             17     280
6-9 months     ki1135781-COHORTS       GUATEMALA                      0            263     280
6-9 months     ki1135781-COHORTS       INDIA                          1           1669    4345
6-9 months     ki1135781-COHORTS       INDIA                          0           2676    4345
6-9 months     ki1148112-LCNI-5        MALAWI                         1              3     553
6-9 months     ki1148112-LCNI-5        MALAWI                         0            550     553
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     1            607     777
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     0            170     777
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     1            190     225
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0             35     225
9-12 months    ki0047075b-MAL-ED       BRAZIL                         1            190     194
9-12 months    ki0047075b-MAL-ED       BRAZIL                         0              4     194
9-12 months    ki0047075b-MAL-ED       INDIA                          1            103     225
9-12 months    ki0047075b-MAL-ED       INDIA                          0            122     225
9-12 months    ki0047075b-MAL-ED       NEPAL                          1            228     229
9-12 months    ki0047075b-MAL-ED       NEPAL                          0              1     229
9-12 months    ki0047075b-MAL-ED       PERU                           1             52     228
9-12 months    ki0047075b-MAL-ED       PERU                           0            176     228
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     229
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0            225     229
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     217
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            217     217
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     1            189     481
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0            292     481
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1              6       6
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0              0       6
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1            585     673
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0             88     673
9-12 months    ki1114097-CONTENT       PERU                           1            198     212
9-12 months    ki1114097-CONTENT       PERU                           0             14     212
9-12 months    ki1135781-COHORTS       GUATEMALA                      1             19     318
9-12 months    ki1135781-COHORTS       GUATEMALA                      0            299     318
9-12 months    ki1135781-COHORTS       INDIA                          1           1475    3747
9-12 months    ki1135781-COHORTS       INDIA                          0           2272    3747
9-12 months    ki1148112-LCNI-5        MALAWI                         1              3     378
9-12 months    ki1148112-LCNI-5        MALAWI                         0            375     378
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1            681     870
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     0            189     870
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     1            180     212
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0             32     212
12-15 months   ki0047075b-MAL-ED       BRAZIL                         1            181     184
12-15 months   ki0047075b-MAL-ED       BRAZIL                         0              3     184
12-15 months   ki0047075b-MAL-ED       INDIA                          1            103     224
12-15 months   ki0047075b-MAL-ED       INDIA                          0            121     224
12-15 months   ki0047075b-MAL-ED       NEPAL                          1            229     230
12-15 months   ki0047075b-MAL-ED       NEPAL                          0              1     230
12-15 months   ki0047075b-MAL-ED       PERU                           1             51     218
12-15 months   ki0047075b-MAL-ED       PERU                           0            167     218
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     224
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            220     224
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     219
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            219     219
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     1            181     461
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0            280     461
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1              8       8
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0              0       8
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            568     655
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             87     655
12-15 months   ki1114097-CONTENT       PERU                           1            186     199
12-15 months   ki1114097-CONTENT       PERU                           0             13     199
12-15 months   ki1135781-COHORTS       GUATEMALA                      1             22     331
12-15 months   ki1135781-COHORTS       GUATEMALA                      0            309     331
12-15 months   ki1148112-LCNI-5        MALAWI                         1              0     125
12-15 months   ki1148112-LCNI-5        MALAWI                         0            125     125
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     1            673     871
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     0            198     871
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     1            179     212
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0             33     212
15-18 months   ki0047075b-MAL-ED       BRAZIL                         1            172     175
15-18 months   ki0047075b-MAL-ED       BRAZIL                         0              3     175
15-18 months   ki0047075b-MAL-ED       INDIA                          1            104     224
15-18 months   ki0047075b-MAL-ED       INDIA                          0            120     224
15-18 months   ki0047075b-MAL-ED       NEPAL                          1            226     227
15-18 months   ki0047075b-MAL-ED       NEPAL                          0              1     227
15-18 months   ki0047075b-MAL-ED       PERU                           1             50     209
15-18 months   ki0047075b-MAL-ED       PERU                           0            159     209
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     222
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            218     222
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     214
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            214     214
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     1            180     449
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0            269     449
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1             10      10
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0              0      10
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            511     594
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             83     594
15-18 months   ki1114097-CONTENT       PERU                           1            176     189
15-18 months   ki1114097-CONTENT       PERU                           0             13     189
15-18 months   ki1135781-COHORTS       GUATEMALA                      1             20     302
15-18 months   ki1135781-COHORTS       GUATEMALA                      0            282     302
15-18 months   ki1148112-LCNI-5        MALAWI                         1              0     118
15-18 months   ki1148112-LCNI-5        MALAWI                         0            118     118
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     1            687     879
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     0            192     879
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     1            179     209
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0             30     209
18-21 months   ki0047075b-MAL-ED       BRAZIL                         1            164     167
18-21 months   ki0047075b-MAL-ED       BRAZIL                         0              3     167
18-21 months   ki0047075b-MAL-ED       INDIA                          1            103     224
18-21 months   ki0047075b-MAL-ED       INDIA                          0            121     224
18-21 months   ki0047075b-MAL-ED       NEPAL                          1            226     227
18-21 months   ki0047075b-MAL-ED       NEPAL                          0              1     227
18-21 months   ki0047075b-MAL-ED       PERU                           1             50     198
18-21 months   ki0047075b-MAL-ED       PERU                           0            148     198
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     230
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            226     230
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     202
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            202     202
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     1            169     422
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0            253     422
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1              9       9
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0              0       9
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            464     536
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             72     536
18-21 months   ki1114097-CONTENT       PERU                           1            171     183
18-21 months   ki1114097-CONTENT       PERU                           0             12     183
18-21 months   ki1135781-COHORTS       GUATEMALA                      1             21     317
18-21 months   ki1135781-COHORTS       GUATEMALA                      0            296     317
18-21 months   ki1148112-LCNI-5        MALAWI                         1              3     451
18-21 months   ki1148112-LCNI-5        MALAWI                         0            448     451
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     1            178     207
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0             29     207
21-24 months   ki0047075b-MAL-ED       BRAZIL                         1            162     165
21-24 months   ki0047075b-MAL-ED       BRAZIL                         0              3     165
21-24 months   ki0047075b-MAL-ED       INDIA                          1            103     224
21-24 months   ki0047075b-MAL-ED       INDIA                          0            121     224
21-24 months   ki0047075b-MAL-ED       NEPAL                          1            226     227
21-24 months   ki0047075b-MAL-ED       NEPAL                          0              1     227
21-24 months   ki0047075b-MAL-ED       PERU                           1             47     184
21-24 months   ki0047075b-MAL-ED       PERU                           0            137     184
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     232
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            228     232
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     200
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            200     200
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     1            163     411
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0            248     411
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1              8       8
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0              0       8
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            412     482
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             70     482
21-24 months   ki1114097-CONTENT       PERU                           1             36      38
21-24 months   ki1114097-CONTENT       PERU                           0              2      38
21-24 months   ki1135781-COHORTS       GUATEMALA                      1             23     348
21-24 months   ki1135781-COHORTS       GUATEMALA                      0            325     348
21-24 months   ki1148112-LCNI-5        MALAWI                         1              3     382
21-24 months   ki1148112-LCNI-5        MALAWI                         0            379     382


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
![](/tmp/a2bf7931-ceda-40f4-bdf3-561ddf44df35/a0076b29-70ef-49c4-9435-ba44026b33cb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a2bf7931-ceda-40f4-bdf3-561ddf44df35/a0076b29-70ef-49c4-9435-ba44026b33cb/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a2bf7931-ceda-40f4-bdf3-561ddf44df35/a0076b29-70ef-49c4-9435-ba44026b33cb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.8816978   0.8558420   0.9075535
0-3 months     ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.8536546   0.7953468   0.9119623
0-3 months     ki0047075b-MAL-ED       INDIA        1                    NA                0.7617555   0.7313728   0.7921382
0-3 months     ki0047075b-MAL-ED       INDIA        0                    NA                0.7622248   0.7293517   0.7950979
0-3 months     ki0047075b-MAL-ED       PERU         1                    NA                0.9725875   0.9194827   1.0256922
0-3 months     ki0047075b-MAL-ED       PERU         0                    NA                0.9677461   0.9380054   0.9974869
0-3 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.8422352   0.8179717   0.8664987
0-3 months     ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.8002089   0.7776464   0.8227714
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.8828827   0.8674958   0.8982696
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.8965353   0.8484395   0.9446310
0-3 months     ki1135781-COHORTS       GUATEMALA    1                    NA                0.8654772   0.7793825   0.9515718
0-3 months     ki1135781-COHORTS       GUATEMALA    0                    NA                0.7563884   0.7227383   0.7900386
0-3 months     ki1135781-COHORTS       INDIA        1                    NA                0.8365663   0.8278444   0.8452882
0-3 months     ki1135781-COHORTS       INDIA        0                    NA                0.7868571   0.7799844   0.7937299
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.8577679   0.8531228   0.8624129
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.8347172   0.8278007   0.8416337
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.7343085   0.7063680   0.7622489
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.7184869   0.6594703   0.7775034
3-6 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.4752853   0.4573938   0.4931768
3-6 months     ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.4713904   0.4264237   0.5163572
3-6 months     ki0047075b-MAL-ED       INDIA        1                    NA                0.4494567   0.4220908   0.4768227
3-6 months     ki0047075b-MAL-ED       INDIA        0                    NA                0.4411569   0.4181798   0.4641340
3-6 months     ki0047075b-MAL-ED       PERU         1                    NA                0.4826222   0.4483035   0.5169409
3-6 months     ki0047075b-MAL-ED       PERU         0                    NA                0.5031023   0.4801477   0.5260570
3-6 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.4775071   0.4537920   0.5012223
3-6 months     ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.4483305   0.4248392   0.4718218
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.4960825   0.4842805   0.5078846
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.5139361   0.4803355   0.5475367
3-6 months     ki1114097-CONTENT       PERU         1                    NA                0.5911693   0.5690303   0.6133082
3-6 months     ki1114097-CONTENT       PERU         0                    NA                0.5482364   0.4881268   0.6083461
3-6 months     ki1135781-COHORTS       GUATEMALA    1                    NA                0.4326677   0.3752628   0.4900726
3-6 months     ki1135781-COHORTS       GUATEMALA    0                    NA                0.4336271   0.4132864   0.4539679
3-6 months     ki1135781-COHORTS       INDIA        1                    NA                0.5025427   0.4953289   0.5097565
3-6 months     ki1135781-COHORTS       INDIA        0                    NA                0.4595766   0.4539677   0.4651855
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.4488702   0.4437031   0.4540374
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.4371753   0.4301089   0.4442416
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.4439475   0.4167319   0.4711632
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.4322486   0.3929592   0.4715379
6-9 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.2458602   0.2293499   0.2623705
6-9 months     ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.2281466   0.2003994   0.2558937
6-9 months     ki0047075b-MAL-ED       INDIA        1                    NA                0.2471296   0.2247587   0.2695005
6-9 months     ki0047075b-MAL-ED       INDIA        0                    NA                0.2209930   0.2010823   0.2409037
6-9 months     ki0047075b-MAL-ED       PERU         1                    NA                0.2680900   0.2359294   0.3002506
6-9 months     ki0047075b-MAL-ED       PERU         0                    NA                0.2570545   0.2390954   0.2750136
6-9 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.2490912   0.2257905   0.2723919
6-9 months     ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.2281399   0.2113147   0.2449651
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.2664878   0.2548049   0.2781706
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.2689019   0.2451508   0.2926530
6-9 months     ki1114097-CONTENT       PERU         1                    NA                0.3228112   0.3028396   0.3427829
6-9 months     ki1114097-CONTENT       PERU         0                    NA                0.2855323   0.2020508   0.3690139
6-9 months     ki1135781-COHORTS       GUATEMALA    1                    NA                0.2349869   0.1634669   0.3065070
6-9 months     ki1135781-COHORTS       GUATEMALA    0                    NA                0.2024142   0.1845046   0.2203239
6-9 months     ki1135781-COHORTS       INDIA        1                    NA                0.2942543   0.2868568   0.3016517
6-9 months     ki1135781-COHORTS       INDIA        0                    NA                0.2601635   0.2542094   0.2661176
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.2311381   0.2198943   0.2423820
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.2312040   0.2094654   0.2529425
9-12 months    ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.1776926   0.1624089   0.1929764
9-12 months    ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.1477483   0.1203482   0.1751484
9-12 months    ki0047075b-MAL-ED       INDIA        1                    NA                0.1757032   0.1525491   0.1988573
9-12 months    ki0047075b-MAL-ED       INDIA        0                    NA                0.1812467   0.1638948   0.1985986
9-12 months    ki0047075b-MAL-ED       PERU         1                    NA                0.1986981   0.1693399   0.2280563
9-12 months    ki0047075b-MAL-ED       PERU         0                    NA                0.1844897   0.1663319   0.2026474
9-12 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.1714873   0.1512894   0.1916852
9-12 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1585300   0.1413101   0.1757499
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1984662   0.1870530   0.2098794
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.1969927   0.1708996   0.2230857
9-12 months    ki1114097-CONTENT       PERU         1                    NA                0.2271879   0.2085593   0.2458164
9-12 months    ki1114097-CONTENT       PERU         0                    NA                0.1832827   0.1098991   0.2566663
9-12 months    ki1135781-COHORTS       GUATEMALA    1                    NA                0.1471981   0.0964376   0.1979585
9-12 months    ki1135781-COHORTS       GUATEMALA    0                    NA                0.1383610   0.1233019   0.1534201
9-12 months    ki1135781-COHORTS       INDIA        1                    NA                0.2279259   0.2203413   0.2355106
9-12 months    ki1135781-COHORTS       INDIA        0                    NA                0.2046250   0.1983954   0.2108545
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1402890   0.1313793   0.1491987
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.1476765   0.1268631   0.1684899
12-15 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.1409635   0.1242334   0.1576937
12-15 months   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.1038312   0.0599969   0.1476654
12-15 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.1906250   0.1659433   0.2153067
12-15 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.1593930   0.1397517   0.1790344
12-15 months   ki0047075b-MAL-ED       PERU         1                    NA                0.1353609   0.1027880   0.1679338
12-15 months   ki0047075b-MAL-ED       PERU         0                    NA                0.1431119   0.1231262   0.1630976
12-15 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.1212911   0.1027156   0.1398666
12-15 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1364632   0.1207625   0.1521638
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1651240   0.1535841   0.1766639
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.1635574   0.1360903   0.1910245
12-15 months   ki1114097-CONTENT       PERU         1                    NA                0.1820761   0.1624799   0.2016723
12-15 months   ki1114097-CONTENT       PERU         0                    NA                0.1666121   0.1141556   0.2190686
12-15 months   ki1135781-COHORTS       GUATEMALA    1                    NA                0.1443868   0.1133352   0.1754385
12-15 months   ki1135781-COHORTS       GUATEMALA    0                    NA                0.1465647   0.1306236   0.1625059
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1268860   0.1152423   0.1385296
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.1208669   0.1042218   0.1375120
15-18 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.1359352   0.1191473   0.1527231
15-18 months   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.1799605   0.1403588   0.2195621
15-18 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.1629641   0.1384071   0.1875212
15-18 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.1612169   0.1429949   0.1794389
15-18 months   ki0047075b-MAL-ED       PERU         1                    NA                0.1397251   0.1053385   0.1741116
15-18 months   ki0047075b-MAL-ED       PERU         0                    NA                0.1465770   0.1237667   0.1693873
15-18 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.1646894   0.1427840   0.1865949
15-18 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1451518   0.1258614   0.1644422
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1595933   0.1482148   0.1709717
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.1682426   0.1378176   0.1986675
15-18 months   ki1114097-CONTENT       PERU         1                    NA                0.1678955   0.1490196   0.1867714
15-18 months   ki1114097-CONTENT       PERU         0                    NA                0.2181320   0.1460125   0.2902515
15-18 months   ki1135781-COHORTS       GUATEMALA    1                    NA                0.1052089   0.0529285   0.1574892
15-18 months   ki1135781-COHORTS       GUATEMALA    0                    NA                0.1125508   0.0942153   0.1308863
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1535645   0.1417215   0.1654075
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.1667486   0.1522454   0.1812518
18-21 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.1504503   0.1337949   0.1671057
18-21 months   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.0965586   0.0357345   0.1573828
18-21 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.1804073   0.1570656   0.2037489
18-21 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.1687529   0.1496425   0.1878633
18-21 months   ki0047075b-MAL-ED       PERU         1                    NA                0.1619131   0.1244871   0.1993391
18-21 months   ki0047075b-MAL-ED       PERU         0                    NA                0.1636731   0.1411986   0.1861477
18-21 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.1620744   0.1373748   0.1867739
18-21 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1793627   0.1581786   0.2005469
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1406653   0.1288855   0.1524450
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.1485800   0.1205524   0.1766075
18-21 months   ki1114097-CONTENT       PERU         1                    NA                0.1910782   0.1713411   0.2108153
18-21 months   ki1114097-CONTENT       PERU         0                    NA                0.2070151   0.1493277   0.2647024
18-21 months   ki1135781-COHORTS       GUATEMALA    1                    NA                0.1271805   0.0567876   0.1975734
18-21 months   ki1135781-COHORTS       GUATEMALA    0                    NA                0.1439507   0.1258830   0.1620184
21-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.1535248   0.1368357   0.1702138
21-24 months   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.1434659   0.1095258   0.1774059
21-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.1629402   0.1424350   0.1834455
21-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.1503195   0.1333651   0.1672740
21-24 months   ki0047075b-MAL-ED       PERU         1                    NA                0.1808473   0.1414542   0.2202403
21-24 months   ki0047075b-MAL-ED       PERU         0                    NA                0.1783159   0.1548804   0.2017514
21-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.1529366   0.1292502   0.1766229
21-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1347671   0.1150226   0.1545117
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1681730   0.1542954   0.1820507
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.2153043   0.1837978   0.2468108
21-24 months   ki1135781-COHORTS       GUATEMALA    1                    NA                0.1899590   0.1471638   0.2327541
21-24 months   ki1135781-COHORTS       GUATEMALA    0                    NA                0.1676737   0.1498036   0.1855439


### Parameter: E(Y)


agecat         studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.8772390   0.8535646   0.9009134
0-3 months     ki0047075b-MAL-ED       INDIA        NA                   NA                0.7620085   0.7394216   0.7845954
0-3 months     ki0047075b-MAL-ED       PERU         NA                   NA                0.9689288   0.9429768   0.9948807
0-3 months     ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.8163500   0.7995330   0.8331670
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.8845080   0.8697896   0.8992264
0-3 months     ki1135781-COHORTS       GUATEMALA    NA                   NA                0.7626734   0.7304170   0.7949298
0-3 months     ki1135781-COHORTS       INDIA        NA                   NA                0.8055731   0.8001316   0.8110146
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.8506353   0.8465873   0.8546833
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.7306440   0.7043689   0.7569191
3-6 months     ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.4746501   0.4579760   0.4913241
3-6 months     ki0047075b-MAL-ED       INDIA        NA                   NA                0.4449792   0.4272939   0.4626645
3-6 months     ki0047075b-MAL-ED       PERU         NA                   NA                0.4981398   0.4788320   0.5174477
3-6 months     ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.4593975   0.4422221   0.4765729
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.4982529   0.4871014   0.5094044
3-6 months     ki1114097-CONTENT       PERU         NA                   NA                0.5883606   0.5672514   0.6094698
3-6 months     ki1135781-COHORTS       GUATEMALA    NA                   NA                0.4335683   0.4141529   0.4529837
3-6 months     ki1135781-COHORTS       INDIA        NA                   NA                0.4758823   0.4714157   0.4803490
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.4455925   0.4413088   0.4498762
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.4411996   0.4183110   0.4640882
6-9 months     ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     ki0047075b-MAL-ED       INDIA        NA                   NA                0.2329150   0.2179398   0.2478901
6-9 months     ki0047075b-MAL-ED       PERU         NA                   NA                0.2596511   0.2439596   0.2753427
6-9 months     ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2362596   0.2225288   0.2499904
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2668023   0.2561807   0.2774240
6-9 months     ki1114097-CONTENT       PERU         NA                   NA                0.3203724   0.3008854   0.3398595
6-9 months     ki1135781-COHORTS       GUATEMALA    NA                   NA                0.2043919   0.1869942   0.2217895
6-9 months     ki1135781-COHORTS       INDIA        NA                   NA                0.2732584   0.2685932   0.2779236
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.2311525   0.2209713   0.2413338
9-12 months    ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    ki0047075b-MAL-ED       INDIA        NA                   NA                0.1787090   0.1645315   0.1928865
9-12 months    ki0047075b-MAL-ED       PERU         NA                   NA                0.1877302   0.1721772   0.2032832
9-12 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.1636213   0.1504841   0.1767585
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1982735   0.1877823   0.2087647
9-12 months    ki1114097-CONTENT       PERU         NA                   NA                0.2242885   0.2061680   0.2424089
9-12 months    ki1135781-COHORTS       GUATEMALA    NA                   NA                0.1388890   0.1244066   0.1533713
9-12 months    ki1135781-COHORTS       INDIA        NA                   NA                0.2137973   0.2089688   0.2186259
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1418939   0.1335225   0.1502652
12-15 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.1737542   0.1580843   0.1894241
12-15 months   ki0047075b-MAL-ED       PERU         NA                   NA                0.1412986   0.1241913   0.1584059
12-15 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.1305063   0.1184818   0.1425307
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1649159   0.1542644   0.1755674
12-15 months   ki1114097-CONTENT       PERU         NA                   NA                0.1810659   0.1624244   0.1997074
12-15 months   ki1135781-COHORTS       GUATEMALA    NA                   NA                0.1464200   0.1313958   0.1614442
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1255177   0.1155109   0.1355245
15-18 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.1620281   0.1470182   0.1770381
15-18 months   ki0047075b-MAL-ED       PERU         NA                   NA                0.1449378   0.1257292   0.1641464
15-18 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.1529843   0.1384423   0.1675263
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1608018   0.1501273   0.1714764
15-18 months   ki1114097-CONTENT       PERU         NA                   NA                0.1713509   0.1529966   0.1897053
15-18 months   ki1135781-COHORTS       GUATEMALA    NA                   NA                0.1120646   0.0945956   0.1295336
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1564443   0.1467929   0.1660957
18-21 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.1741118   0.1592007   0.1890230
18-21 months   ki0047075b-MAL-ED       PERU         NA                   NA                0.1632287   0.1439532   0.1825042
18-21 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.1724392   0.1563209   0.1885575
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1417284   0.1308558   0.1526011
18-21 months   ki1114097-CONTENT       PERU         NA                   NA                0.1921232   0.1732877   0.2109588
18-21 months   ki1135781-COHORTS       GUATEMALA    NA                   NA                0.1428397   0.1253303   0.1603492
21-24 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.1561228   0.1429524   0.1692932
21-24 months   ki0047075b-MAL-ED       PERU         NA                   NA                0.1789625   0.1588192   0.1991058
21-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.1419730   0.1267767   0.1571693
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1750178   0.1622174   0.1878182
21-24 months   ki1135781-COHORTS       GUATEMALA    NA                   NA                0.1691466   0.1522095   0.1860837


### Parameter: ATE


agecat         studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0280432   -0.0918265    0.0357402
0-3 months     ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA        0                    1                  0.0004694   -0.0442939    0.0452326
0-3 months     ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU         0                    1                 -0.0048414   -0.0657070    0.0560243
0-3 months     ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0420263   -0.0751591   -0.0088935
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0136526   -0.0368445    0.0641496
0-3 months     ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS       GUATEMALA    0                    1                 -0.1090887   -0.2015259   -0.0166516
0-3 months     ki1135781-COHORTS       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS       INDIA        0                    1                 -0.0497091   -0.0608135   -0.0386048
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   0                    1                 -0.0230507   -0.0309952   -0.0151062
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0158216   -0.0795439    0.0479008
3-6 months     ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0038948   -0.0522902    0.0445005
3-6 months     ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA        0                    1                 -0.0082998   -0.0440328    0.0274331
3-6 months     ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU         0                    1                  0.0204801   -0.0208077    0.0617680
3-6 months     ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0291767   -0.0625570    0.0042037
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0178536   -0.0177595    0.0534666
3-6 months     ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT       PERU         0                    1                 -0.0429328   -0.1069899    0.0211242
3-6 months     ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS       GUATEMALA    0                    1                  0.0009594   -0.0599427    0.0618616
3-6 months     ki1135781-COHORTS       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS       INDIA        0                    1                 -0.0429661   -0.0521039   -0.0338283
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   0                    1                 -0.0116950   -0.0203195   -0.0030704
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0116989   -0.0593746    0.0359767
6-9 months     ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0177136   -0.0500013    0.0145740
6-9 months     ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       INDIA        0                    1                 -0.0261366   -0.0560848    0.0038116
6-9 months     ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       PERU         0                    1                 -0.0110355   -0.0478707    0.0257997
6-9 months     ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0209513   -0.0496917    0.0077891
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0024142   -0.0240548    0.0288831
6-9 months     ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT       PERU         0                    1                 -0.0372789   -0.1231162    0.0485584
6-9 months     ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0325727   -0.1063011    0.0411557
6-9 months     ki1135781-COHORTS       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS       INDIA        0                    1                 -0.0340908   -0.0435867   -0.0245948
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   0                    1                  0.0000659   -0.0239387    0.0240704
9-12 months    ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0299443   -0.0613188    0.0014302
9-12 months    ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       INDIA        0                    1                  0.0055435   -0.0233909    0.0344780
9-12 months    ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       PERU         0                    1                 -0.0142085   -0.0487281    0.0203112
9-12 months    ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0129573   -0.0394993    0.0135848
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 -0.0014736   -0.0299535    0.0270064
9-12 months    ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT       PERU         0                    1                 -0.0439052   -0.1196163    0.0318059
9-12 months    ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0088371   -0.0617842    0.0441100
9-12 months    ki1135781-COHORTS       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS       INDIA        0                    1                 -0.0233010   -0.0331160   -0.0134860
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   0                    1                  0.0073876   -0.0151662    0.0299413
12-15 months   ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0371323   -0.0840508    0.0097861
12-15 months   ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       INDIA        0                    1                 -0.0312320   -0.0627751    0.0003112
12-15 months   ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       PERU         0                    1                  0.0077510   -0.0304644    0.0459664
12-15 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                  0.0151721   -0.0091499    0.0394941
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 -0.0015666   -0.0313595    0.0282262
12-15 months   ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT       PERU         0                    1                 -0.0154640   -0.0714613    0.0405332
12-15 months   ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS       GUATEMALA    0                    1                  0.0021779   -0.0327266    0.0370824
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 -0.0060191   -0.0255809    0.0135428
15-18 months   ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       BANGLADESH   0                    1                  0.0440253    0.0010122    0.0870384
15-18 months   ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       INDIA        0                    1                 -0.0017473   -0.0323265    0.0288320
15-18 months   ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       PERU         0                    1                  0.0068520   -0.0344124    0.0481163
15-18 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0195376   -0.0487261    0.0096509
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0086493   -0.0238337    0.0411323
15-18 months   ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT       PERU         0                    1                  0.0502365   -0.0243123    0.1247853
15-18 months   ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS       GUATEMALA    0                    1                  0.0073420   -0.0480605    0.0627444
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                  0.0131841   -0.0059262    0.0322945
18-21 months   ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0538917   -0.1169549    0.0091716
18-21 months   ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       INDIA        0                    1                 -0.0116544   -0.0418213    0.0185124
18-21 months   ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       PERU         0                    1                  0.0017600   -0.0418956    0.0454156
18-21 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                  0.0172884   -0.0152514    0.0498281
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0079147   -0.0224878    0.0383171
18-21 months   ki1114097-CONTENT       PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT       PERU         0                    1                  0.0159368   -0.0450335    0.0769072
18-21 months   ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS       GUATEMALA    0                    1                  0.0167702   -0.0559044    0.0894449
21-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       BANGLADESH   0                    1                 -0.0100589   -0.0478802    0.0277624
21-24 months   ki0047075b-MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       INDIA        0                    1                 -0.0126207   -0.0392274    0.0139860
21-24 months   ki0047075b-MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       PERU         0                    1                 -0.0025314   -0.0483684    0.0433056
21-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 -0.0181694   -0.0490059    0.0126671
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                  0.0471313    0.0127038    0.0815587
21-24 months   ki1135781-COHORTS       GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS       GUATEMALA    0                    1                 -0.0222852   -0.0686616    0.0240912


### Parameter: PAR


agecat         studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0044587   -0.0146834    0.0057659
0-3 months     ki0047075b-MAL-ED       INDIA        1                    NA                 0.0002530   -0.0238802    0.0243863
0-3 months     ki0047075b-MAL-ED       PERU         1                    NA                -0.0036587   -0.0496571    0.0423397
0-3 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0258852   -0.0463623   -0.0054082
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0016253   -0.0043950    0.0076456
0-3 months     ki1135781-COHORTS       GUATEMALA    1                    NA                -0.1028038   -0.1899742   -0.0156334
0-3 months     ki1135781-COHORTS       INDIA        1                    NA                -0.0309932   -0.0379500   -0.0240363
0-3 months     kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0071325   -0.0095728   -0.0046922
0-3 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0036645   -0.0185072    0.0111782
3-6 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0006352   -0.0085302    0.0072598
3-6 months     ki0047075b-MAL-ED       INDIA        1                    NA                -0.0044775   -0.0237620    0.0148070
3-6 months     ki0047075b-MAL-ED       PERU         1                    NA                 0.0155176   -0.0157841    0.0468194
3-6 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0181096   -0.0388641    0.0026448
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0021703   -0.0021807    0.0065214
3-6 months     ki1114097-CONTENT       PERU         1                    NA                -0.0028087   -0.0072352    0.0016178
3-6 months     ki1135781-COHORTS       GUATEMALA    1                    NA                 0.0009006   -0.0562681    0.0580693
3-6 months     ki1135781-COHORTS       INDIA        1                    NA                -0.0266604   -0.0323606   -0.0209602
3-6 months     kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0032777   -0.0057019   -0.0008535
3-6 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0027479   -0.0139601    0.0084643
6-9 months     ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0030050   -0.0085514    0.0025415
6-9 months     ki0047075b-MAL-ED       INDIA        1                    NA                -0.0142147   -0.0305901    0.0021607
6-9 months     ki0047075b-MAL-ED       PERU         1                    NA                -0.0084389   -0.0366133    0.0197355
6-9 months     ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0128316   -0.0304566    0.0047933
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0003146   -0.0031351    0.0037642
6-9 months     ki1114097-CONTENT       PERU         1                    NA                -0.0024388   -0.0081892    0.0033115
6-9 months     ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0305951   -0.0998531    0.0386630
6-9 months     ki1135781-COHORTS       INDIA        1                    NA                -0.0209958   -0.0268650   -0.0151267
6-9 months     kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0000144   -0.0052373    0.0052661
9-12 months    ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0046580   -0.0097412    0.0004252
9-12 months    ki0047075b-MAL-ED       INDIA        1                    NA                 0.0030058   -0.0126873    0.0186989
9-12 months    ki0047075b-MAL-ED       PERU         1                    NA                -0.0109679   -0.0376260    0.0156901
9-12 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0078659   -0.0239887    0.0082568
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0001927   -0.0039168    0.0035315
9-12 months    ki1114097-CONTENT       PERU         1                    NA                -0.0028994   -0.0081112    0.0023124
9-12 months    ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0083091   -0.0580933    0.0414750
9-12 months    ki1135781-COHORTS       INDIA        1                    NA                -0.0141286   -0.0200911   -0.0081661
9-12 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0016049   -0.0032876    0.0064974
12-15 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0056049   -0.0129105    0.0017007
12-15 months   ki0047075b-MAL-ED       INDIA        1                    NA                -0.0168708   -0.0340318    0.0002901
12-15 months   ki0047075b-MAL-ED       PERU         1                    NA                 0.0059377   -0.0233407    0.0352161
12-15 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0092151   -0.0055729    0.0240032
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0002081   -0.0041655    0.0037493
12-15 months   ki1114097-CONTENT       PERU         1                    NA                -0.0010102   -0.0047068    0.0026864
12-15 months   ki1135781-COHORTS       GUATEMALA    1                    NA                 0.0020332   -0.0305515    0.0346178
12-15 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0013683   -0.0057702    0.0030337
15-18 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0068530   -0.0001803    0.0138862
15-18 months   ki0047075b-MAL-ED       INDIA        1                    NA                -0.0009360   -0.0173181    0.0154461
15-18 months   ki0047075b-MAL-ED       PERU         1                    NA                 0.0052127   -0.0261823    0.0366077
15-18 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0117052   -0.0292147    0.0058044
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0012086   -0.0033367    0.0057539
15-18 months   ki1114097-CONTENT       PERU         1                    NA                 0.0034554   -0.0019848    0.0088957
15-18 months   ki1135781-COHORTS       GUATEMALA    1                    NA                 0.0068557   -0.0448781    0.0585896
15-18 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0028798   -0.0013024    0.0070620
18-21 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0077356   -0.0171450    0.0016737
18-21 months   ki0047075b-MAL-ED       INDIA        1                    NA                -0.0062955   -0.0226088    0.0100178
18-21 months   ki0047075b-MAL-ED       PERU         1                    NA                 0.0013155   -0.0313161    0.0339472
18-21 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0103648   -0.0091604    0.0298900
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0010632   -0.0030271    0.0051535
18-21 months   ki1114097-CONTENT       PERU         1                    NA                 0.0010450   -0.0029939    0.0050840
18-21 months   ki1135781-COHORTS       GUATEMALA    1                    NA                 0.0156593   -0.0522025    0.0835211
21-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0014092   -0.0067293    0.0039108
21-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                -0.0068174   -0.0212135    0.0075786
21-24 months   ki0047075b-MAL-ED       PERU         1                    NA                -0.0018848   -0.0360138    0.0322442
21-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0109635   -0.0295904    0.0076633
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0068448    0.0016294    0.0120602
21-24 months   ki1135781-COHORTS       GUATEMALA    1                    NA                -0.0208124   -0.0641275    0.0225028
