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

**Intervention Variable:** earlybf

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                   country                        earlybf    n_cell      n
-------------  ------------------------  -----------------------------  --------  -------  -----
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1             151    242
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0              91    242
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1              76    168
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0              92    168
0-3 months     ki0047075b-MAL-ED         INDIA                          1             110    183
0-3 months     ki0047075b-MAL-ED         INDIA                          0              73    183
0-3 months     ki0047075b-MAL-ED         NEPAL                          1              70    156
0-3 months     ki0047075b-MAL-ED         NEPAL                          0              86    156
0-3 months     ki0047075b-MAL-ED         PERU                           1             200    265
0-3 months     ki0047075b-MAL-ED         PERU                           0              65    265
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1             134    208
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0              74    208
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             196    228
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              32    228
0-3 months     ki1000109-EE              PAKISTAN                       1              55    294
0-3 months     ki1000109-EE              PAKISTAN                       0             239    294
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1               8    389
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0             381    389
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1             623    721
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0              98    721
0-3 months     ki1113344-GMS-Nepal       NEPAL                          1             139    462
0-3 months     ki1113344-GMS-Nepal       NEPAL                          0             323    462
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1            3772   7074
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       0            3302   7074
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1              29   9826
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0            9797   9826
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1             459    636
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0             177    636
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1             140    230
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0              90    230
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1              95    208
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0             113    208
3-6 months     ki0047075b-MAL-ED         INDIA                          1             137    230
3-6 months     ki0047075b-MAL-ED         INDIA                          0              93    230
3-6 months     ki0047075b-MAL-ED         NEPAL                          1              95    233
3-6 months     ki0047075b-MAL-ED         NEPAL                          0             138    233
3-6 months     ki0047075b-MAL-ED         PERU                           1             199    267
3-6 months     ki0047075b-MAL-ED         PERU                           0              68    267
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1             150    240
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0              90    240
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             198    239
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              41    239
3-6 months     ki1000109-EE              PAKISTAN                       1              49    272
3-6 months     ki1000109-EE              PAKISTAN                       0             223    272
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1               7    349
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0             342    349
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1             602    695
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0              93    695
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1             127    422
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0             295    422
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1            2948   5473
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       0            2525   5473
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1              14   6239
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0            6225   6239
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1             309    432
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0             123    432
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     1             136    223
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     0              87    223
6-9 months     ki0047075b-MAL-ED         BRAZIL                         1              91    198
6-9 months     ki0047075b-MAL-ED         BRAZIL                         0             107    198
6-9 months     ki0047075b-MAL-ED         INDIA                          1             138    230
6-9 months     ki0047075b-MAL-ED         INDIA                          0              92    230
6-9 months     ki0047075b-MAL-ED         NEPAL                          1              95    230
6-9 months     ki0047075b-MAL-ED         NEPAL                          0             135    230
6-9 months     ki0047075b-MAL-ED         PERU                           1             179    245
6-9 months     ki0047075b-MAL-ED         PERU                           0              66    245
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1             138    227
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0              89    227
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             188    225
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              37    225
6-9 months     ki1000109-EE              PAKISTAN                       1              54    295
6-9 months     ki1000109-EE              PAKISTAN                       0             241    295
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          1               6    351
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          0             345    351
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     1             595    688
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     0              93    688
6-9 months     ki1113344-GMS-Nepal       NEPAL                          1             128    432
6-9 months     ki1113344-GMS-Nepal       NEPAL                          0             304    432
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       1            2839   5271
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       0            2432   5271
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     1             501    768
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     0             267    768
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     1             137    224
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     0              87    224
9-12 months    ki0047075b-MAL-ED         BRAZIL                         1              89    194
9-12 months    ki0047075b-MAL-ED         BRAZIL                         0             105    194
9-12 months    ki0047075b-MAL-ED         INDIA                          1             135    227
9-12 months    ki0047075b-MAL-ED         INDIA                          0              92    227
9-12 months    ki0047075b-MAL-ED         NEPAL                          1              95    229
9-12 months    ki0047075b-MAL-ED         NEPAL                          0             134    229
9-12 months    ki0047075b-MAL-ED         PERU                           1             173    235
9-12 months    ki0047075b-MAL-ED         PERU                           0              62    235
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1             138    230
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0              92    230
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             188    224
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              36    224
9-12 months    ki1000109-EE              PAKISTAN                       1              57    316
9-12 months    ki1000109-EE              PAKISTAN                       0             259    316
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          1               7    372
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          0             365    372
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1             580    674
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0              94    674
9-12 months    ki1113344-GMS-Nepal       NEPAL                          1             124    425
9-12 months    ki1113344-GMS-Nepal       NEPAL                          0             301    425
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1            2809   5265
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       0            2456   5265
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1             547    866
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0             319    866
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     1             127    211
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     0              84    211
12-15 months   ki0047075b-MAL-ED         BRAZIL                         1              86    184
12-15 months   ki0047075b-MAL-ED         BRAZIL                         0              98    184
12-15 months   ki0047075b-MAL-ED         INDIA                          1             135    226
12-15 months   ki0047075b-MAL-ED         INDIA                          0              91    226
12-15 months   ki0047075b-MAL-ED         NEPAL                          1              95    230
12-15 months   ki0047075b-MAL-ED         NEPAL                          0             135    230
12-15 months   ki0047075b-MAL-ED         PERU                           1             163    224
12-15 months   ki0047075b-MAL-ED         PERU                           0              61    224
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1             136    225
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0              89    225
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             190    226
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              36    226
12-15 months   ki1000109-EE              PAKISTAN                       1              54    289
12-15 months   ki1000109-EE              PAKISTAN                       0             235    289
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          1               6    377
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          0             371    377
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             565    660
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              95    660
12-15 months   ki1113344-GMS-Nepal       NEPAL                          1             125    426
12-15 months   ki1113344-GMS-Nepal       NEPAL                          0             301    426
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       1            1144   2218
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       0            1074   2218
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     1             558    873
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     0             315    873
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     1             128    211
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     0              83    211
15-18 months   ki0047075b-MAL-ED         BRAZIL                         1              85    175
15-18 months   ki0047075b-MAL-ED         BRAZIL                         0              90    175
15-18 months   ki0047075b-MAL-ED         INDIA                          1             135    226
15-18 months   ki0047075b-MAL-ED         INDIA                          0              91    226
15-18 months   ki0047075b-MAL-ED         NEPAL                          1              95    227
15-18 months   ki0047075b-MAL-ED         NEPAL                          0             132    227
15-18 months   ki0047075b-MAL-ED         PERU                           1             154    213
15-18 months   ki0047075b-MAL-ED         PERU                           0              59    213
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1             133    222
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0              89    222
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             185    217
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              32    217
15-18 months   ki1000109-EE              PAKISTAN                       1              52    270
15-18 months   ki1000109-EE              PAKISTAN                       0             218    270
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          1               6    362
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          0             356    362
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             518    604
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              86    604
15-18 months   ki1113344-GMS-Nepal       NEPAL                          1             132    437
15-18 months   ki1113344-GMS-Nepal       NEPAL                          0             305    437
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             947   1776
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             829   1776
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     1             563    887
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     0             324    887
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     1             126    208
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     0              82    208
18-21 months   ki0047075b-MAL-ED         BRAZIL                         1              80    167
18-21 months   ki0047075b-MAL-ED         BRAZIL                         0              87    167
18-21 months   ki0047075b-MAL-ED         INDIA                          1             134    226
18-21 months   ki0047075b-MAL-ED         INDIA                          0              92    226
18-21 months   ki0047075b-MAL-ED         NEPAL                          1              95    227
18-21 months   ki0047075b-MAL-ED         NEPAL                          0             132    227
18-21 months   ki0047075b-MAL-ED         PERU                           1             147    202
18-21 months   ki0047075b-MAL-ED         PERU                           0              55    202
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1             140    230
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0              90    230
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             173    204
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              31    204
18-21 months   ki1000109-EE              PAKISTAN                       1              52    248
18-21 months   ki1000109-EE              PAKISTAN                       0             196    248
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             469    546
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              77    546
18-21 months   ki1113344-GMS-Nepal       NEPAL                          1             122    406
18-21 months   ki1113344-GMS-Nepal       NEPAL                          0             284    406
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             728   1382
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             654   1382
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     1             126    206
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     0              80    206
21-24 months   ki0047075b-MAL-ED         BRAZIL                         1              77    165
21-24 months   ki0047075b-MAL-ED         BRAZIL                         0              88    165
21-24 months   ki0047075b-MAL-ED         INDIA                          1             133    226
21-24 months   ki0047075b-MAL-ED         INDIA                          0              93    226
21-24 months   ki0047075b-MAL-ED         NEPAL                          1              94    227
21-24 months   ki0047075b-MAL-ED         NEPAL                          0             133    227
21-24 months   ki0047075b-MAL-ED         PERU                           1             139    189
21-24 months   ki0047075b-MAL-ED         PERU                           0              50    189
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1             142    232
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0              90    232
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             171    204
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              33    204
21-24 months   ki1000109-EE              PAKISTAN                       1              21    103
21-24 months   ki1000109-EE              PAKISTAN                       0              82    103
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             422    490
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              68    490
21-24 months   ki1113344-GMS-Nepal       NEPAL                          1             100    318
21-24 months   ki1113344-GMS-Nepal       NEPAL                          0             218    318
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             527   1000
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             473   1000


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH



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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/50948570-9d70-413f-84a9-d3edd2c922f2/e53b5a0e-d007-40e0-9a26-1989b7c61ff7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/50948570-9d70-413f-84a9-d3edd2c922f2/e53b5a0e-d007-40e0-9a26-1989b7c61ff7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/50948570-9d70-413f-84a9-d3edd2c922f2/e53b5a0e-d007-40e0-9a26-1989b7c61ff7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                3.3198211   3.2398671   3.3997750
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                3.3780145   3.2645877   3.4914414
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                3.7802703   3.6164383   3.9441023
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                3.8139270   3.6644836   3.9633704
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    NA                3.3347286   3.2022843   3.4671729
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    NA                3.3685621   3.2258949   3.5112293
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                3.5334367   3.3957763   3.6710970
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                3.6966577   3.5751583   3.8181572
0-3 months     ki0047075b-MAL-ED         PERU                           1                    NA                3.0271650   2.9521292   3.1022008
0-3 months     ki0047075b-MAL-ED         PERU                           0                    NA                3.1282263   2.9879739   3.2684788
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                3.1777158   3.0514413   3.3039903
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                3.1882433   3.0362606   3.3402260
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                3.2828183   3.2019579   3.3636786
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                3.1522945   2.9195314   3.3850577
0-3 months     ki1000109-EE              PAKISTAN                       1                    NA                3.0235850   2.8634329   3.1837371
0-3 months     ki1000109-EE              PAKISTAN                       0                    NA                3.0891241   2.9915264   3.1867218
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                2.7090317   2.3575526   3.0605108
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                3.4162157   3.2933614   3.5390700
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                3.1347303   3.0958761   3.1735844
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                3.0943735   2.9912718   3.1974752
0-3 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                3.6481561   3.5640722   3.7322399
0-3 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                3.5802919   3.5138814   3.6467024
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                3.4119834   3.3825924   3.4413744
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                3.2498681   3.2172701   3.2824661
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                3.4271566   3.3993868   3.4549263
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                3.6492907   3.6335758   3.6650055
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                3.0656675   2.9548358   3.1764993
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                2.8063938   2.5674202   3.0453674
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                1.9318611   1.8637618   1.9999604
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                1.9172396   1.8441630   1.9903161
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                2.2033645   2.0888522   2.3178768
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                2.0979233   1.9892097   2.2066370
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    NA                1.9087121   1.8320650   1.9853591
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    NA                1.8681182   1.7587273   1.9775091
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                1.9271131   1.8451318   2.0090944
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                1.9901699   1.9142951   2.0660448
3-6 months     ki0047075b-MAL-ED         PERU                           1                    NA                1.9903976   1.9115137   2.0692814
3-6 months     ki0047075b-MAL-ED         PERU                           0                    NA                2.0896766   1.9718308   2.2075224
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                1.9195298   1.8144597   2.0245998
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                2.0476188   1.9248398   2.1703978
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8113725   1.7371330   1.8856120
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                1.9204828   1.7563158   2.0846498
3-6 months     ki1000109-EE              PAKISTAN                       1                    NA                2.0377451   1.8916727   2.1838175
3-6 months     ki1000109-EE              PAKISTAN                       0                    NA                2.1093839   2.0445081   2.1742596
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                2.0038385   1.7058933   2.3017837
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                1.9126221   1.8720150   1.9532291
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                1.9784344   1.9402819   2.0165868
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                2.1829205   2.0752819   2.2905591
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                1.7417588   1.6623478   1.8211698
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                1.7034063   1.6571746   1.7496381
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                1.9690267   1.9411347   1.9969188
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                1.9923834   1.9610598   2.0237070
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                1.8510376   1.8169808   1.8850944
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                1.9276824   1.9123806   1.9429842
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                1.8859958   1.8051197   1.9668719
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                1.8783035   1.7822428   1.9743643
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                1.2541040   1.1982680   1.3099399
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                1.2440827   1.1919069   1.2962584
6-9 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                1.4898087   1.3863527   1.5932648
6-9 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                1.4774239   1.3573299   1.5975180
6-9 months     ki0047075b-MAL-ED         INDIA                          1                    NA                1.1940942   1.1276708   1.2605176
6-9 months     ki0047075b-MAL-ED         INDIA                          0                    NA                1.3244178   1.2441033   1.4047323
6-9 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                1.3403994   1.2776628   1.4031359
6-9 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                1.3689219   1.3080937   1.4297500
6-9 months     ki0047075b-MAL-ED         PERU                           1                    NA                1.3231721   1.2602772   1.3860671
6-9 months     ki0047075b-MAL-ED         PERU                           0                    NA                1.3113839   1.2037752   1.4189927
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                1.3357832   1.2559935   1.4155730
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                1.4300617   1.3204646   1.5396589
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1903618   1.1029928   1.2777307
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1927566   1.0288776   1.3566357
6-9 months     ki1000109-EE              PAKISTAN                       1                    NA                1.1661716   1.0680713   1.2642718
6-9 months     ki1000109-EE              PAKISTAN                       0                    NA                1.1781164   1.1238974   1.2323353
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                1.6105031   1.5925392   1.6284670
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                1.2131556   1.1640572   1.2622539
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                1.3248748   1.2936279   1.3561217
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                1.3499882   1.2636931   1.4362832
6-9 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                1.3374572   1.2570280   1.4178864
6-9 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                1.3055374   1.2538675   1.3572073
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                1.3495588   1.3224696   1.3766480
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                1.3426852   1.3130195   1.3723509
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                1.2949731   1.2478268   1.3421194
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                1.2704573   1.2049824   1.3359322
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.9595764   0.9098386   1.0093142
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                1.0356901   0.9748344   1.0965459
9-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                1.3074032   1.2129955   1.4018109
9-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                1.2905026   1.1792395   1.4017656
9-12 months    ki0047075b-MAL-ED         INDIA                          1                    NA                0.9799304   0.9306828   1.0291781
9-12 months    ki0047075b-MAL-ED         INDIA                          0                    NA                0.9837297   0.9231516   1.0443078
9-12 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                1.0978832   1.0375708   1.1581957
9-12 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                1.0831075   1.0281418   1.1380732
9-12 months    ki0047075b-MAL-ED         PERU                           1                    NA                1.1021869   1.0431791   1.1611948
9-12 months    ki0047075b-MAL-ED         PERU                           0                    NA                1.0882593   0.9876296   1.1888890
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                1.0543829   0.9781573   1.1306086
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.9569696   0.8404047   1.0735345
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8165055   0.7263680   0.9066430
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7953635   0.6129420   0.9777850
9-12 months    ki1000109-EE              PAKISTAN                       1                    NA                0.9132577   0.8346826   0.9918327
9-12 months    ki1000109-EE              PAKISTAN                       0                    NA                0.9078377   0.8677730   0.9479024
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.6717148   0.4702423   0.8731873
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.9925879   0.9725532   1.0126226
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                1.1270154   1.0985884   1.1554423
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                1.1016264   1.0335811   1.1696717
9-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.9750166   0.9037251   1.0463081
9-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                1.0049930   0.9655891   1.0443969
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                1.0694151   1.0429663   1.0958639
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                1.0926377   1.0660032   1.1192723
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                1.0397929   1.0013380   1.0782478
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                1.0809534   1.0256598   1.1362469
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.8893687   0.8365166   0.9422207
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.9508182   0.8885149   1.0131215
12-15 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                1.1524190   1.0655627   1.2392753
12-15 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                1.1331899   1.0527637   1.2136160
12-15 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.9113672   0.8613453   0.9613890
12-15 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.9091977   0.8463087   0.9720867
12-15 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.9480080   0.8894055   1.0066105
12-15 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.9538081   0.9008625   1.0067537
12-15 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.8627888   0.8119370   0.9136406
12-15 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.9690572   0.8695010   1.0686134
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.9325220   0.8625670   1.0024770
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.9019572   0.8006180   1.0032965
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8541082   0.7839701   0.9242463
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8682182   0.7068073   1.0296291
12-15 months   ki1000109-EE              PAKISTAN                       1                    NA                1.0308159   0.9605319   1.1010999
12-15 months   ki1000109-EE              PAKISTAN                       0                    NA                1.0044039   0.9668462   1.0419617
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                1.2543676   0.8305523   1.6781828
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.8435065   0.8215063   0.8655068
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.9697570   0.9431309   0.9963831
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.9793615   0.9158659   1.0428570
12-15 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.9143009   0.8646642   0.9639376
12-15 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.8603050   0.8217889   0.8988212
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.9018462   0.8611329   0.9425595
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.9328634   0.8908048   0.9749220
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.9408067   0.9000017   0.9816118
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.9458516   0.8922129   0.9994903
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.8190439   0.7693851   0.8687027
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.8331206   0.7781386   0.8881026
15-18 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                1.0213215   0.9328343   1.1098086
15-18 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.9839685   0.9052418   1.0626952
15-18 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.8566307   0.8099190   0.9033423
15-18 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.8262269   0.7686806   0.8837731
15-18 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.8659453   0.8005424   0.9313483
15-18 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.8227652   0.7694861   0.8760442
15-18 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.8503665   0.8001262   0.9006068
15-18 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.8614289   0.7832809   0.9395769
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.8778961   0.8086989   0.9470932
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.9150570   0.8330045   0.9971096
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6853026   0.6196882   0.7509170
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6951038   0.5294704   0.8607372
15-18 months   ki1000109-EE              PAKISTAN                       1                    NA                0.8143549   0.7564590   0.8722508
15-18 months   ki1000109-EE              PAKISTAN                       0                    NA                0.8489961   0.8110477   0.8869445
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                1.2718193   1.0616784   1.4819601
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.9531204   0.8651660   1.0410748
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.9125369   0.8874868   0.9375871
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.9489162   0.8926489   1.0051835
15-18 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.7886828   0.7323155   0.8450501
15-18 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.7376322   0.6899779   0.7852864
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.7909972   0.7472158   0.8347786
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.8081469   0.7601717   0.8561222
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.8264959   0.7889997   0.8639922
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.8535240   0.8012724   0.9057755
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.8268660   0.7791048   0.8746272
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.7966198   0.7496643   0.8435754
18-21 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.9727993   0.8556262   1.0899724
18-21 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.8639164   0.7825912   0.9452415
18-21 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.8734596   0.8309771   0.9159421
18-21 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.8863575   0.8257388   0.9469762
18-21 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.7921407   0.7313627   0.8529187
18-21 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.8370920   0.7885479   0.8856361
18-21 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.8525803   0.8052310   0.8999296
18-21 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.8116793   0.7078051   0.9155535
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.7576108   0.6931862   0.8220355
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.8227096   0.7203584   0.9250608
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7657392   0.6935370   0.8379414
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6207323   0.4395703   0.8018942
18-21 months   ki1000109-EE              PAKISTAN                       1                    NA                0.7214561   0.6536353   0.7892769
18-21 months   ki1000109-EE              PAKISTAN                       0                    NA                0.7206126   0.6804154   0.7608097
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.7913952   0.7657761   0.8170143
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.8366375   0.7822869   0.8909880
18-21 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.8738614   0.7992632   0.9484595
18-21 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.9214776   0.8803811   0.9625741
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.7009338   0.6494743   0.7523934
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.6352109   0.5827102   0.6877116
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.7676333   0.7205785   0.8146881
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.7780870   0.7252063   0.8309677
21-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.7622154   0.6935064   0.8309243
21-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.8258464   0.7699572   0.8817355
21-24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.8289678   0.7886140   0.8693215
21-24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.8206654   0.7728141   0.8685168
21-24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.8275449   0.7558362   0.8992537
21-24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.7521256   0.7052153   0.7990359
21-24 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.7440766   0.6873382   0.8008150
21-24 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.8082381   0.7288417   0.8876345
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.8499411   0.7837590   0.9161232
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.8191540   0.7353975   0.9029105
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7154957   0.6436971   0.7872942
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7367432   0.5934247   0.8800618
21-24 months   ki1000109-EE              PAKISTAN                       1                    NA                0.6413093   0.5612404   0.7213783
21-24 months   ki1000109-EE              PAKISTAN                       0                    NA                0.6572461   0.6133915   0.7011006
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.8018192   0.7748987   0.8287396
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.7839211   0.7262612   0.8415810
21-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.8628821   0.7730086   0.9527556
21-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.7759788   0.7199763   0.8319813
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.6636275   0.6131244   0.7141307
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.7147707   0.6510318   0.7785096


### Parameter: E(Y)


agecat         studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                3.3417037   3.2759713   3.4074362
0-3 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                3.7987014   3.6882619   3.9091408
0-3 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                3.3482250   3.2503342   3.4461159
0-3 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                3.6234175   3.5314103   3.7154247
0-3 months     ki0047075b-MAL-ED         PERU                           NA                   NA                3.0519536   2.9854854   3.1184219
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                3.1814611   3.0837784   3.2791439
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2644991   3.1874675   3.3415308
0-3 months     ki1000109-EE              PAKISTAN                       NA                   NA                3.0768634   2.9920049   3.1617219
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                3.4016721   3.2751931   3.5281511
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                3.6007099   3.5477591   3.6536607
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                3.3363113   3.3143866   3.3582359
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                3.6486351   3.6333080   3.6639622
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                2.9935112   2.8845861   3.1024362
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                1.9261396   1.8757731   1.9765061
3-6 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                1.8922980   1.8286780   1.9559180
3-6 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                1.9644601   1.9083113   2.0206088
3-6 months     ki0047075b-MAL-ED         PERU                           NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                1.9675632   1.8869774   2.0481490
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1000109-EE              PAKISTAN                       NA                   NA                2.0964784   2.0370459   2.1559108
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                1.9144516   1.8761636   1.9527397
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                1.7149484   1.6747185   1.7551783
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                1.9798025   1.9589541   2.0006508
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                1.9275104   1.9126078   1.9424130
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                1.8838056   1.8192936   1.9483176
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                1.2501943   1.2105165   1.2898721
6-9 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                1.2462236   1.1943701   1.2980772
6-9 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                1.3571408   1.3129874   1.4012943
6-9 months     ki0047075b-MAL-ED         PERU                           NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                1.3727471   1.3076679   1.4378262
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1907556   1.1129385   1.2685726
6-9 months     ki1000109-EE              PAKISTAN                       NA                   NA                1.1759299   1.1281312   1.2237286
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                1.2199478   1.1697810   1.2701146
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                1.3149951   1.2714994   1.3584908
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                1.3463873   1.3263814   1.3663933
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                1.2864500   1.2489340   1.3239661
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.9891384   0.9503088   1.0279680
9-12 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                0.9814702   0.9432520   1.0196885
9-12 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                1.0892372   1.0484769   1.1299974
9-12 months    ki0047075b-MAL-ED         PERU                           NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                1.0154176   0.9498134   1.0810218
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8131077   0.7319679   0.8942474
9-12 months    ki1000109-EE              PAKISTAN                       NA                   NA                0.9088153   0.8730486   0.9445821
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.9865499   0.9621090   1.0109908
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.9962469   0.9614166   1.0310773
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                1.0802479   1.0614441   1.0990518
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                1.0549548   1.0220826   1.0878270
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.9138320   0.8732892   0.9543748
12-15 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.9104936   0.8713262   0.9496610
12-15 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.9514124   0.9120195   0.9908054
12-15 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.9204319   0.8621345   0.9787294
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8563558   0.7920248   0.9206869
12-15 months   ki1000109-EE              PAKISTAN                       NA                   NA                1.0093391   0.9760739   1.0426043
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.8500454   0.8255871   0.8745037
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.8761489   0.8451937   0.9071041
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.9168654   0.8876056   0.9461252
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.9426270   0.9101880   0.9750661
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.8245812   0.7874849   0.8616775
15-18 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.8443884   0.8080665   0.8807103
15-18 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.8408362   0.7994023   0.8822700
15-18 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.8927939   0.8398181   0.9457697
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6867479   0.6257076   0.7477883
15-18 months   ki1000109-EE              PAKISTAN                       NA                   NA                0.8423245   0.8096780   0.8749710
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.9584027   0.8755768   1.0412286
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.7530525   0.7156232   0.7904818
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.7990024   0.7666506   0.8313542
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.8363686   0.8047923   0.8679450
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.8149421   0.7805357   0.8493484
18-21 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.8787101   0.8434384   0.9139818
18-21 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.8182798   0.7801724   0.8563871
18-21 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.7830843   0.7268811   0.8392874
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7437038   0.6761886   0.8112190
18-21 months   ki1000109-EE              PAKISTAN                       NA                   NA                0.7207894   0.6859832   0.7555957
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.9071693   0.8706533   0.9436852
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.6698320   0.6330206   0.7066433
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.7716930   0.7363295   0.8070564
21-24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.8255513   0.7946970   0.8564056
21-24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.7833565   0.7426056   0.8241074
21-24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.8379978   0.7860329   0.8899627
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7189328   0.6544287   0.7834368
21-24 months   ki1000109-EE              PAKISTAN                       NA                   NA                0.6539968   0.6154353   0.6925583
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.8033069   0.7554279   0.8511859
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.6878183   0.6475714   0.7280651


### Parameter: ATE


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0581935   -0.0805808    0.1969677
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0336567   -0.1880960    0.2554094
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    1                  0.0338335   -0.1608340    0.2285010
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    1                  0.1632210   -0.0203886    0.3468306
0-3 months     ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU                           0                    1                  0.1010613   -0.0580019    0.2601246
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0105275   -0.1870679    0.2081230
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1305237   -0.3769321    0.1158846
0-3 months     ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE              PAKISTAN                       0                    1                  0.0655391   -0.1220082    0.2530865
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    1                  0.7071841    0.4310636    0.9833045
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 -0.0403568   -0.1505367    0.0698231
0-3 months     ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0678642   -0.1750111    0.0392827
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.1621153   -0.2060068   -0.1182239
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.2221341    0.1897785    0.2544897
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.2592737   -0.5151988   -0.0033486
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0146215   -0.1145100    0.0852669
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.1054412   -0.2633390    0.0524567
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0405939   -0.1741646    0.0929768
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0630568   -0.0486478    0.1747615
3-6 months     ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU                           0                    1                  0.0992790   -0.0425317    0.2410898
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.1280891   -0.0335104    0.2896885
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1091103   -0.0710627    0.2892833
3-6 months     ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE              PAKISTAN                       0                    1                  0.0716388   -0.0881924    0.2314700
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0912164   -0.4023075    0.2198747
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.2044861    0.0902860    0.3186863
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0383525   -0.1302409    0.0535360
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                  0.0233567   -0.0185854    0.0652987
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.0766448    0.0385899    0.1146997
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.0076923   -0.1320682    0.1166837
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0100213   -0.0864410    0.0663983
6-9 months     ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0123848   -0.1708958    0.1461262
6-9 months     ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         INDIA                          0                    1                  0.1303236    0.0261003    0.2345468
6-9 months     ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0285225   -0.0588614    0.1159064
6-9 months     ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         PERU                           0                    1                 -0.0117882   -0.1364294    0.1128530
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0942785   -0.0412868    0.2298437
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0023949   -0.1833191    0.1881088
6-9 months     ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE              PAKISTAN                       0                    1                  0.0119448   -0.1001416    0.1240312
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.3973475   -0.4600494   -0.3346457
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.0251133   -0.0666647    0.1168914
6-9 months     ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0319198   -0.1275160    0.0636764
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.0068736   -0.0470467    0.0332995
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.0245158   -0.1067831    0.0577515
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0761137   -0.0024819    0.1547094
9-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0169006   -0.1628193    0.1290181
9-12 months    ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         INDIA                          0                    1                  0.0037993   -0.0742714    0.0818700
9-12 months    ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0147758   -0.0963774    0.0668258
9-12 months    ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         PERU                           0                    1                 -0.0139276   -0.1305820    0.1027268
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0974134   -0.2366891    0.0418623
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0211420   -0.2246177    0.1823337
9-12 months    ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE              PAKISTAN                       0                    1                 -0.0054200   -0.0936199    0.0827798
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                  0.3208731    0.1259140    0.5158322
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 -0.0253890   -0.0991335    0.0483555
9-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0299764   -0.0514800    0.1114329
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                  0.0232226   -0.0143132    0.0607585
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0411604   -0.0238244    0.1061453
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0614495   -0.0202514    0.1431505
12-15 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0192291   -0.1376030    0.0991448
12-15 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0021695   -0.0825263    0.0781873
12-15 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0058001   -0.0731777    0.0847779
12-15 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.1062685   -0.0055230    0.2180600
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0305648   -0.1537043    0.0925748
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0141100   -0.1618811    0.1901010
12-15 months   ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE              PAKISTAN                       0                    1                 -0.0264120   -0.1061015    0.0532776
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.4108610   -0.8270648    0.0053427
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.0096044   -0.0592478    0.0784567
12-15 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0539959   -0.1168234    0.0088316
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                  0.0310172   -0.0275191    0.0895535
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0050449   -0.0624437    0.0725335
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0140767   -0.0600112    0.0881646
15-18 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0373529   -0.1557922    0.0810864
15-18 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0304038   -0.1045223    0.0437147
15-18 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0431802   -0.1275378    0.0411774
15-18 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.0110624   -0.0818419    0.1039666
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0371610   -0.0701743    0.1444962
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0098012   -0.1683552    0.1879575
15-18 months   ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE              PAKISTAN                       0                    1                  0.0346412   -0.0345832    0.1038656
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.3186989   -0.5536072   -0.0837906
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.0363792   -0.0252123    0.0979708
15-18 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0510506   -0.1248626    0.0227613
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                  0.0171497   -0.0477997    0.0820992
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0270281   -0.0347633    0.0888194
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0302462   -0.0972235    0.0367311
18-21 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.1088829   -0.2515129    0.0337471
18-21 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.0128979   -0.0611250    0.0869208
18-21 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0449513   -0.0328336    0.1227363
18-21 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         PERU                           0                    1                 -0.0409010   -0.1550579    0.0732560
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0650987   -0.0558405    0.1860380
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1450069   -0.3400269    0.0500131
18-21 months   ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE              PAKISTAN                       0                    1                 -0.0008435   -0.0796818    0.0779948
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.0452423   -0.0148436    0.1053282
18-21 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0476162   -0.0375530    0.1327855
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.0657229   -0.1392376    0.0077918
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0104537   -0.0603314    0.0812388
21-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0636310   -0.0249383    0.1522003
21-24 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0083023   -0.0708977    0.0542930
21-24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0754194   -0.1611091    0.0102703
21-24 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.0641615   -0.0334246    0.1617475
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0307871   -0.1375355    0.0759613
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0212476   -0.1390497    0.1815449
21-24 months   ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE              PAKISTAN                       0                    1                  0.0159367   -0.0753554    0.1072289
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 -0.0178981   -0.0815328    0.0457367
21-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0869033   -0.1927972    0.0189907
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                  0.0511431   -0.0301785    0.1324648


### Parameter: PAR


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0218827   -0.0304222    0.0741876
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0184310   -0.1030315    0.1398936
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0134964   -0.0641951    0.0911880
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0899808   -0.0120435    0.1920051
0-3 months     ki0047075b-MAL-ED         PERU                           1                    NA                 0.0247886   -0.0145779    0.0641551
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0037454   -0.0665564    0.0740471
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0183191   -0.0534020    0.0167638
0-3 months     ki1000109-EE              PAKISTAN                       1                    NA                 0.0532784   -0.0992117    0.2057684
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.6926404    0.4239515    0.9613293
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0054854   -0.0204953    0.0095246
0-3 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0474462   -0.1224101    0.0275177
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0756722   -0.0962463   -0.0550980
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.2214785    0.1899191    0.2530379
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0721564   -0.1437173   -0.0005954
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0057215   -0.0448192    0.0333762
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0572829   -0.1433618    0.0287960
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0164140   -0.0704847    0.0376566
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0373470   -0.0289329    0.1036269
3-6 months     ki0047075b-MAL-ED         PERU                           1                    NA                 0.0252845   -0.0112042    0.0617733
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0480334   -0.0130742    0.1091410
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0187177   -0.0126293    0.0500647
3-6 months     ki1000109-EE              PAKISTAN                       1                    NA                 0.0587333   -0.0723458    0.1898124
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0893869   -0.3929813    0.2142075
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0273629    0.0112275    0.0434983
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0268104   -0.0910672    0.0374464
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0107757   -0.0085769    0.0301284
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0764728    0.0393326    0.1136130
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0021902   -0.0376067    0.0332264
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0039097   -0.0337305    0.0259112
6-9 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0066928   -0.0923571    0.0789715
6-9 months     ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0521294    0.0096279    0.0946309
6-9 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0167415   -0.0345813    0.0680642
6-9 months     ki0047075b-MAL-ED         PERU                           1                    NA                -0.0031756   -0.0367588    0.0304076
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0369638   -0.0165250    0.0904526
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0003938   -0.0301460    0.0309337
6-9 months     ki1000109-EE              PAKISTAN                       1                    NA                 0.0097583   -0.0818121    0.1013287
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.3905553   -0.4534409   -0.3276697
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0033947   -0.0090280    0.0158173
6-9 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0224621   -0.0897475    0.0448234
6-9 months     ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0031714   -0.0217072    0.0153644
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0085231   -0.0370385    0.0199924
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0295620   -0.0013498    0.0604739
9-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0091472   -0.0881328    0.0698383
9-12 months    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0015398   -0.0301021    0.0331817
9-12 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0086461   -0.0564048    0.0391127
9-12 months    ki0047075b-MAL-ED         PERU                           1                    NA                -0.0036745   -0.0344615    0.0271124
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0389653   -0.0950175    0.0170868
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0033978   -0.0361152    0.0293195
9-12 months    ki1000109-EE              PAKISTAN                       1                    NA                -0.0044424   -0.0767331    0.0678484
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.3148351    0.1240544    0.5056159
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0035409   -0.0138472    0.0067654
9-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0212304   -0.0364746    0.0789353
9-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0108328   -0.0066796    0.0283452
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0151619   -0.0088717    0.0391954
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0244633   -0.0083156    0.0572423
12-15 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0102416   -0.0733039    0.0528207
12-15 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0008736   -0.0332299    0.0314828
12-15 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0034044   -0.0429536    0.0497624
12-15 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0289392   -0.0021307    0.0600091
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0120901   -0.0608379    0.0366578
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0022476   -0.0257945    0.0302897
12-15 months   ki1000109-EE              PAKISTAN                       1                    NA                -0.0214769   -0.0862872    0.0433335
12-15 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.4043221   -0.8104917    0.0018475
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0013825   -0.0085314    0.0112964
12-15 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0381520   -0.0826057    0.0063017
12-15 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0150191   -0.0133326    0.0433709
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0018203   -0.0225312    0.0261719
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0055373   -0.0236212    0.0346957
15-18 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0192101   -0.0801848    0.0417647
15-18 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0122422   -0.0421499    0.0176655
15-18 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0251092   -0.0742415    0.0240231
15-18 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0030642   -0.0226784    0.0288069
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0148979   -0.0281999    0.0579956
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0014453   -0.0248307    0.0277213
15-18 months   ki1000109-EE              PAKISTAN                       1                    NA                 0.0279696   -0.0279466    0.0838857
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.3134166   -0.5410794   -0.0857537
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0051798   -0.0036483    0.0140080
15-18 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0356303   -0.0871936    0.0159330
15-18 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0080051   -0.0223145    0.0383248
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0098727   -0.0126039    0.0323493
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0119240   -0.0384051    0.0145572
18-21 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0567234   -0.1314870    0.0180401
18-21 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0052505   -0.0248941    0.0353951
18-21 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0261391   -0.0191850    0.0714632
18-21 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0111364   -0.0423205    0.0200477
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0254734   -0.0220292    0.0729760
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0220354   -0.0525236    0.0084529
18-21 months   ki1000109-EE              PAKISTAN                       1                    NA                -0.0006666   -0.0629743    0.0616411
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0063803   -0.0021958    0.0149565
18-21 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0333079   -0.0263065    0.0929224
18-21 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0311019   -0.0659340    0.0037303
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0040597   -0.0234385    0.0315579
21-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0339365   -0.0135496    0.0814227
21-24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0034165   -0.0291802    0.0223473
21-24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0441884   -0.0946274    0.0062505
21-24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0169739   -0.0091575    0.0431054
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0119433   -0.0533994    0.0295129
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0034371   -0.0225157    0.0293899
21-24 months   ki1000109-EE              PAKISTAN                       1                    NA                 0.0126875   -0.0600024    0.0853774
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0024838   -0.0113318    0.0063641
21-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0595752   -0.1323049    0.0131545
21-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0241907   -0.0143070    0.0626884
