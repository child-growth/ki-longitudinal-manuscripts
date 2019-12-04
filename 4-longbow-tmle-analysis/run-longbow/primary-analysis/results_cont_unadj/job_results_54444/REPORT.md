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

**Intervention Variable:** mbmi

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        mbmi             n_cell      n
-------------  -------------------------  -----------------------------  --------------  -------  -----
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight       214    246
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight          32    246
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight       206    216
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Underweight          10    216
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal weight       189    237
0-3 months     ki0047075b-MAL-ED          INDIA                          Underweight          48    237
0-3 months     ki0047075b-MAL-ED          NEPAL                          Normal weight       232    232
0-3 months     ki0047075b-MAL-ED          NEPAL                          Underweight           0    232
0-3 months     ki0047075b-MAL-ED          PERU                           Normal weight       276    281
0-3 months     ki0047075b-MAL-ED          PERU                           Underweight           5    281
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       257    264
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           7    264
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       224    237
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          13    237
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight       245    342
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight          97    342
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight       471    565
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight          94    565
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight       520    639
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight         119    639
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       658    725
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          67    725
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1946   1977
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          31   1977
0-3 months     ki1119695-PROBIT           BELARUS                        Normal weight      6047   6287
0-3 months     ki1119695-PROBIT           BELARUS                        Underweight         240   6287
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      6796   7143
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         347   7143
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal weight      6218   9980
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Underweight        3762   9980
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight       203    233
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight          30    233
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight       198    207
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Underweight           9    207
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal weight       183    229
3-6 months     ki0047075b-MAL-ED          INDIA                          Underweight          46    229
3-6 months     ki0047075b-MAL-ED          NEPAL                          Normal weight       233    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          Underweight           0    233
3-6 months     ki0047075b-MAL-ED          PERU                           Normal weight       261    266
3-6 months     ki0047075b-MAL-ED          PERU                           Underweight           5    266
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       233    239
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           6    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       226    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          13    239
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight       215    303
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight          88    303
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight       431    522
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight          91    522
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight       493    600
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight         107    600
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       637    702
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          65    702
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1600   1627
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          27   1627
3-6 months     ki1119695-PROBIT           BELARUS                        Normal weight      5418   5638
3-6 months     ki1119695-PROBIT           BELARUS                        Underweight         220   5638
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      5324   5588
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         264   5588
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal weight      3918   6283
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Underweight        2365   6283
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight       197    224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight          27    224
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight       188    197
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Underweight           9    197
6-9 months     ki0047075b-MAL-ED          INDIA                          Normal weight       183    229
6-9 months     ki0047075b-MAL-ED          INDIA                          Underweight          46    229
6-9 months     ki0047075b-MAL-ED          NEPAL                          Normal weight       230    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          Underweight           0    230
6-9 months     ki0047075b-MAL-ED          PERU                           Normal weight       239    244
6-9 months     ki0047075b-MAL-ED          PERU                           Underweight           5    244
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       221    227
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           6    227
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       213    225
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          12    225
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight       218    307
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight          89    307
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight       409    498
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight          89    498
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight       476    576
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight         100    576
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       628    693
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          65    693
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1436   1457
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          21   1457
6-9 months     ki1119695-PROBIT           BELARUS                        Normal weight      5124   5328
6-9 months     ki1119695-PROBIT           BELARUS                        Underweight         204   5328
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      4785   5034
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         249   5034
6-9 months     ki1148112-LCNI-5           MALAWI                         Normal weight       462    558
6-9 months     ki1148112-LCNI-5           MALAWI                         Underweight          96    558
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight       197    225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          28    225
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight       184    193
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Underweight           9    193
9-12 months    ki0047075b-MAL-ED          INDIA                          Normal weight       181    226
9-12 months    ki0047075b-MAL-ED          INDIA                          Underweight          45    226
9-12 months    ki0047075b-MAL-ED          NEPAL                          Normal weight       229    229
9-12 months    ki0047075b-MAL-ED          NEPAL                          Underweight           0    229
9-12 months    ki0047075b-MAL-ED          PERU                           Normal weight       230    234
9-12 months    ki0047075b-MAL-ED          PERU                           Underweight           4    234
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       222    229
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           7    229
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       212    224
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          12    224
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight       235    326
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          91    326
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight       394    481
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          87    481
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight       467    569
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight         102    569
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       621    683
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          62    683
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1044   1059
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          15   1059
9-12 months    ki1119695-PROBIT           BELARUS                        Normal weight      5144   5349
9-12 months    ki1119695-PROBIT           BELARUS                        Underweight         205   5349
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      4303   4544
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         241   4544
9-12 months    ki1148112-LCNI-5           MALAWI                         Normal weight       313    382
9-12 months    ki1148112-LCNI-5           MALAWI                         Underweight          69    382
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight       185    212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          27    212
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight       176    183
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Underweight           7    183
12-15 months   ki0047075b-MAL-ED          INDIA                          Normal weight       180    225
12-15 months   ki0047075b-MAL-ED          INDIA                          Underweight          45    225
12-15 months   ki0047075b-MAL-ED          NEPAL                          Normal weight       230    230
12-15 months   ki0047075b-MAL-ED          NEPAL                          Underweight           0    230
12-15 months   ki0047075b-MAL-ED          PERU                           Normal weight       219    223
12-15 months   ki0047075b-MAL-ED          PERU                           Underweight           4    223
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       217    224
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           7    224
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       213    226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          13    226
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight       240    332
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          92    332
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight       377    461
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          84    461
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight       441    537
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          96    537
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       610    666
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          56    666
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight       769    774
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           5    774
12-15 months   ki1119695-PROBIT           BELARUS                        Normal weight       267    280
12-15 months   ki1119695-PROBIT           BELARUS                        Underweight          13    280
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      1562   1651
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          89   1651
12-15 months   ki1148112-LCNI-5           MALAWI                         Normal weight       101    126
12-15 months   ki1148112-LCNI-5           MALAWI                         Underweight          25    126
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight       184    212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          28    212
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight       167    174
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Underweight           7    174
15-18 months   ki0047075b-MAL-ED          INDIA                          Normal weight       179    225
15-18 months   ki0047075b-MAL-ED          INDIA                          Underweight          46    225
15-18 months   ki0047075b-MAL-ED          NEPAL                          Normal weight       227    227
15-18 months   ki0047075b-MAL-ED          NEPAL                          Underweight           0    227
15-18 months   ki0047075b-MAL-ED          PERU                           Normal weight       209    214
15-18 months   ki0047075b-MAL-ED          PERU                           Underweight           5    214
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       214    221
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           7    221
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       208    220
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          12    220
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight       229    320
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          91    320
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight       366    449
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          83    449
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight       442    532
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          90    532
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       554    605
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          51    605
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight       651    653
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           2    653
15-18 months   ki1119695-PROBIT           BELARUS                        Normal weight        34     36
15-18 months   ki1119695-PROBIT           BELARUS                        Underweight           2     36
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight       997   1063
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          66   1063
15-18 months   ki1148112-LCNI-5           MALAWI                         Normal weight        92    119
15-18 months   ki1148112-LCNI-5           MALAWI                         Underweight          27    119
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight       181    209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          28    209
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight       160    166
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Underweight           6    166
18-21 months   ki0047075b-MAL-ED          INDIA                          Normal weight       180    225
18-21 months   ki0047075b-MAL-ED          INDIA                          Underweight          45    225
18-21 months   ki0047075b-MAL-ED          NEPAL                          Normal weight       227    227
18-21 months   ki0047075b-MAL-ED          NEPAL                          Underweight           0    227
18-21 months   ki0047075b-MAL-ED          PERU                           Normal weight       197    202
18-21 months   ki0047075b-MAL-ED          PERU                           Underweight           5    202
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       222    229
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           7    229
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       198    208
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          10    208
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight       345    422
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          77    422
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight       445    541
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          96    541
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       500    547
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          47    547
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        11     11
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0     11
18-21 months   ki1119695-PROBIT           BELARUS                        Normal weight        19     20
18-21 months   ki1119695-PROBIT           BELARUS                        Underweight           1     20
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight       539    575
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          36    575
18-21 months   ki1148112-LCNI-5           MALAWI                         Normal weight       377    452
18-21 months   ki1148112-LCNI-5           MALAWI                         Underweight          75    452
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight       178    207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          29    207
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight       158    164
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight           6    164
21-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight       180    225
21-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          45    225
21-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight       227    227
21-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight           0    227
21-24 months   ki0047075b-MAL-ED          PERU                           Normal weight       186    189
21-24 months   ki0047075b-MAL-ED          PERU                           Underweight           3    189
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       224    231
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           7    231
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       195    206
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          11    206
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight       335    411
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          76    411
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight       397    484
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          87    484
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       453    493
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          40    493
21-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        32     32
21-24 months   ki1119695-PROBIT           BELARUS                        Underweight           0     32
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight       247    266
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          19    266
21-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight       318    385
21-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          67    385


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/c8f5bcd6-f7a8-401a-a405-48ed12502659/cbede158-c425-4bcd-bbe3-057d25a91c8e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c8f5bcd6-f7a8-401a-a405-48ed12502659/cbede158-c425-4bcd-bbe3-057d25a91c8e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c8f5bcd6-f7a8-401a-a405-48ed12502659/cbede158-c425-4bcd-bbe3-057d25a91c8e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.8916793    0.8683969   0.9149617
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.7921257    0.7135323   0.8707192
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                1.0640087    1.0286815   1.0993359
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                1.0603302    0.9118659   1.2087944
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.7623432    0.7374340   0.7872525
0-3 months     ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.7562153    0.7089072   0.8035234
0-3 months     ki0047075b-MAL-ED          PERU                           Normal weight        NA                0.9702736    0.9446550   0.9958921
0-3 months     ki0047075b-MAL-ED          PERU                           Underweight          NA                0.9902522    0.8914115   1.0890929
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                0.9401089    0.9123481   0.9678697
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                0.9344306    0.8569476   1.0119135
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.8833058    0.8529959   0.9136157
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.9069243    0.7311524   1.0826962
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.8004222    0.7751179   0.8257265
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.7849051    0.7343872   0.8354231
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.8246646    0.8059773   0.8433518
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.7746886    0.7377483   0.8116289
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.9085108    0.8918266   0.9251951
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.8726525    0.8419137   0.9033912
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.8893708    0.8741862   0.9045554
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.8369018    0.7879366   0.8858669
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.9237461    0.9133595   0.9341328
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.8483197    0.7950352   0.9016043
0-3 months     ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.8248822    0.8080491   0.8417153
0-3 months     ki1119695-PROBIT           BELARUS                        Underweight          NA                0.8338230    0.8078378   0.8598081
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.9460435    0.9404917   0.9515953
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.9050676    0.8813527   0.9287826
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                0.8493213    0.8442697   0.8543729
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                0.8526919    0.8463230   0.8590608
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.4761455    0.4582330   0.4940580
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.4645312    0.4190966   0.5099658
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                0.5807135    0.5490205   0.6124066
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                0.4794248    0.3270987   0.6317509
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.4461648    0.4267429   0.4655867
3-6 months     ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.4378598    0.3970423   0.4786773
3-6 months     ki0047075b-MAL-ED          PERU                           Normal weight        NA                0.4993584    0.4799031   0.5188137
3-6 months     ki0047075b-MAL-ED          PERU                           Underweight          NA                0.4490866    0.4023321   0.4958410
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                0.4624719    0.4362275   0.4887162
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                0.4349165    0.3341720   0.5356609
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.4554215    0.4309743   0.4798687
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.4868260    0.3651540   0.6084981
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.4140536    0.4028903   0.4252169
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.4497403    0.4164498   0.4830308
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.4631422    0.4436962   0.4825882
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.4416617    0.4069062   0.4764172
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.4957855    0.4824008   0.5091702
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.4603016    0.4213443   0.4992589
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.5007717    0.4892219   0.5123216
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.4714245    0.4336978   0.5091512
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.4195947    0.4106147   0.4285747
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.4161362    0.3900320   0.4422404
3-6 months     ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.6689447    0.6535160   0.6843735
3-6 months     ki1119695-PROBIT           BELARUS                        Underweight          NA                0.6389440    0.6019806   0.6759074
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.4807622    0.4759554   0.4855691
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.4568989    0.4333949   0.4804029
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                0.4483001    0.4425514   0.4540487
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                0.4413845    0.4349395   0.4478294
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.2436914    0.2280662   0.2593167
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.2367536    0.1978919   0.2756153
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                0.3847042    0.3584245   0.4109839
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                0.2803888    0.2185353   0.3422424
6-9 months     ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.2252106    0.2090712   0.2413501
6-9 months     ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.2525007    0.2164747   0.2885267
6-9 months     ki0047075b-MAL-ED          PERU                           Normal weight        NA                0.2632597    0.2474363   0.2790832
6-9 months     ki0047075b-MAL-ED          PERU                           Underweight          NA                0.1663560    0.1280452   0.2046668
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                0.2576312    0.2358531   0.2794092
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                0.2959680    0.2139458   0.3779902
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.2385113    0.2138988   0.2631239
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.2356813    0.1213892   0.3499734
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.2554653    0.2464300   0.2645006
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.2380145    0.2053627   0.2706664
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.2416484    0.2262218   0.2570749
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.2114954    0.1824281   0.2405627
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.2596181    0.2484825   0.2707537
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.1994102    0.1558885   0.2429320
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.2708464    0.2599249   0.2817679
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.2352717    0.1969526   0.2735909
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.2551396    0.2460479   0.2642312
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.2559696    0.1986404   0.3132989
6-9 months     ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.4782615    0.4635778   0.4929453
6-9 months     ki1119695-PROBIT           BELARUS                        Underweight          NA                0.4809514    0.4413335   0.5205693
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.2593292    0.2544822   0.2641761
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.2415112    0.2176270   0.2653953
6-9 months     ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.2816019    0.2678644   0.2953394
6-9 months     ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.2950497    0.2642238   0.3258755
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.1738246    0.1593748   0.1882743
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.1674767    0.1260155   0.2089379
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                0.2883791    0.2556356   0.3211226
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                0.1658381    0.0706683   0.2610078
9-12 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.1805641    0.1646802   0.1964480
9-12 months    ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.1693093    0.1391314   0.1994873
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                0.2159234    0.1928737   0.2389731
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                0.1855570    0.1224251   0.2486888
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.1668827    0.1456904   0.1880749
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.1669969    0.1165395   0.2174544
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.2235318    0.1902318   0.2568319
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.2136249    0.1330321   0.2942177
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.1692875    0.1542912   0.1842838
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.1379609    0.1129108   0.1630109
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.1809508    0.1704139   0.1914877
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.1618771    0.1425619   0.1811924
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.1986503    0.1878364   0.2094642
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.1897778    0.1526315   0.2269240
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.2043697    0.1941061   0.2146333
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.3020680    0.2351066   0.3690294
9-12 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.3705567    0.3451323   0.3959810
9-12 months    ki1119695-PROBIT           BELARUS                        Underweight          NA                0.3425299    0.3019765   0.3830833
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.1801873    0.1753206   0.1850540
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.1804268    0.1583398   0.2025138
9-12 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.2026234    0.1847547   0.2204921
9-12 months    ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.1982419    0.1639449   0.2325389
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.1360950    0.1188640   0.1533260
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.1303129    0.0929784   0.1676475
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                0.2057854    0.1807829   0.2307878
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                0.3164168    0.1613245   0.4715091
12-15 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.1739626    0.1556052   0.1923200
12-15 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.1764364    0.1456000   0.2072728
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                0.1926854    0.1665768   0.2187939
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                0.1783736    0.0912913   0.2654559
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.1605817    0.1348628   0.1863007
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.1408022    0.0587787   0.2228256
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.1468300    0.1419159   0.1517442
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.1592538    0.1103818   0.2081257
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.1305451    0.1173210   0.1437692
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.1303318    0.1014818   0.1591818
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.1819909    0.1688811   0.1951007
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.1710354    0.1454167   0.1966541
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.1622121    0.1512339   0.1731904
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.1841916    0.1469956   0.2213876
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.1722972    0.1607016   0.1838927
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.2604256    0.2041532   0.3166981
12-15 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                0.2238074    0.0945152   0.3530995
12-15 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                0.2705828    0.1443492   0.3968164
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.1511876    0.1424737   0.1599015
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.1561923    0.1234446   0.1889401
12-15 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.1532314    0.1163524   0.1901103
12-15 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.1459327    0.0671496   0.2247157
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.1422454    0.1253516   0.1591393
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.1463547    0.1059116   0.1867978
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                0.2026950    0.1752448   0.2301453
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                0.2354381    0.1214239   0.3494522
15-18 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.1578747    0.1414525   0.1742968
15-18 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.1820312    0.1464745   0.2175878
15-18 months   ki0047075b-MAL-ED          PERU                           Normal weight        NA                0.1466188    0.1274150   0.1658226
15-18 months   ki0047075b-MAL-ED          PERU                           Underweight          NA                0.1282177    0.0381861   0.2182493
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                0.2209225    0.1925516   0.2492934
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                0.1604415    0.0613810   0.2595019
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.1448515    0.1209763   0.1687268
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.1072809    0.0319804   0.1825814
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.1560639    0.1431753   0.1689525
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.1359437    0.1142242   0.1576631
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.1548475    0.1389081   0.1707868
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.1447683    0.1094917   0.1800449
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.1555219    0.1423833   0.1686606
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.1615364    0.1352986   0.1877742
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.1622880    0.1513054   0.1732705
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.1493496    0.1122549   0.1864442
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.1313036    0.1196491   0.1429581
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.1403232    0.0979352   0.1827112
15-18 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.1790130    0.1414287   0.2165972
15-18 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.1684262    0.1123687   0.2244838
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.1430159    0.1243920   0.1616397
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.1407676    0.1025951   0.1789400
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                0.1613076    0.1363267   0.1862885
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                0.1502882    0.0674684   0.2331080
18-21 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.1772899    0.1601950   0.1943847
18-21 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.1506516    0.1217122   0.1795911
18-21 months   ki0047075b-MAL-ED          PERU                           Normal weight        NA                0.1616688    0.1423547   0.1809829
18-21 months   ki0047075b-MAL-ED          PERU                           Underweight          NA                0.1574859    0.0658867   0.2490851
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                0.1802125    0.1536911   0.2067339
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                0.1940222    0.1164707   0.2715737
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.1465828    0.1207731   0.1723925
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.1418196    0.0586703   0.2249689
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.1761584    0.1574740   0.1948427
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.1557755    0.1278814   0.1836696
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.1374401    0.1244452   0.1504351
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.1097022    0.0868792   0.1325252
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.1405602    0.1292927   0.1518277
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.1650086    0.1307318   0.1992853
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.1176115    0.0992760   0.1359471
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.1872463    0.1060408   0.2684519
18-21 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.1785771    0.1562329   0.2009213
18-21 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.1910662    0.1448168   0.2373156
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.1516192    0.1353080   0.1679303
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.1551622    0.1147654   0.1955590
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                0.1426966    0.1184314   0.1669617
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                0.1694702    0.1101623   0.2287781
21-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.1604868    0.1450208   0.1759527
21-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.1402343    0.1175753   0.1628933
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                0.1852540    0.1609157   0.2095923
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                0.2441976    0.0981060   0.3902892
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.1432633    0.1146593   0.1718674
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.1068461    0.0025325   0.2111597
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.1412339    0.1243385   0.1581293
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.1452310    0.1104942   0.1799677
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.1444540    0.1319126   0.1569954
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.1316947    0.1037710   0.1596185
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.1752646    0.1621820   0.1883472
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.1726205    0.1278258   0.2174152
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.1056655    0.0750455   0.1362856
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.0659516   -0.0557343   0.1876375
21-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.1834604    0.1534952   0.2134256
21-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.1588967    0.1003649   0.2174284


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8787293   0.8556572   0.9018013
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.0638384   1.0294526   1.0982242
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.7611021   0.7390455   0.7831587
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.9706290   0.9455271   0.9957310
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9399583   0.9128554   0.9670613
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8846013   0.8543673   0.9148354
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.7960212   0.7712578   0.8207846
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.8163500   0.7995330   0.8331670
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9018330   0.8870586   0.9166074
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9225634   0.9123408   0.9327860
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.8252235   0.8084214   0.8420256
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.9440530   0.9386428   0.9494631
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.8505919   0.8465707   0.8546130
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4746501   0.4579760   0.4913241
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.5763097   0.5451516   0.6074677
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4444966   0.4269381   0.4620550
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.4984134   0.4793907   0.5174361
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4617801   0.4360641   0.4874961
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4571297   0.4330666   0.4811928
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4244181   0.4104375   0.4383986
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4593975   0.4422221   0.4765729
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4894576   0.4764038   0.5025113
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4195373   0.4107575   0.4283171
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.6677741   0.6523346   0.6832135
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4796348   0.4749205   0.4843492
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4456970   0.4414085   0.4499854
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.3799385   0.3545172   0.4053598
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2306925   0.2158356   0.2455494
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.2612740   0.2457204   0.2768277
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2586445   0.2373164   0.2799725
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2383604   0.2142762   0.2624446
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2504063   0.2356209   0.2651917
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2362596   0.2225288   0.2499904
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2551515   0.2461721   0.2641310
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.4783645   0.4637374   0.4929916
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2584478   0.2536904   0.2632053
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2839155   0.2713587   0.2964722
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2826648   0.2509232   0.3144063
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1783231   0.1642419   0.1924043
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2149952   0.1925566   0.2374338
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1668888   0.1466505   0.1871271
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2207664   0.2134116   0.2281212
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1636213   0.1504841   0.1767585
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2057535   0.1955836   0.2159234
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.3694825   0.3438646   0.3951004
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1802000   0.1754448   0.1849552
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2018320   0.1859333   0.2177307
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2100172   0.1850590   0.2349754
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1744574   0.1585285   0.1903862
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1922381   0.1667974   0.2176788
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1594440   0.1347422   0.1841458
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1502728   0.1373265   0.1632191
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1305063   0.1184818   0.1425307
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1728665   0.1614628   0.1842702
12-15 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2259791   0.1023049   0.3496533
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1514574   0.1430262   0.1598886
12-15 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1517832   0.1183392   0.1852272
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2040123   0.1772529   0.2307717
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1628133   0.1478080   0.1778186
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2190068   0.1913206   0.2466931
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1428022   0.1198308   0.1657736
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1503422   0.1363770   0.1643074
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1529843   0.1384423   0.1675263
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1565394   0.1447539   0.1683249
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1318636   0.1206196   0.1431076
15-18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1766109   0.1448823   0.2083395
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1609093   0.1366439   0.1851747
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1719622   0.1570466   0.1868778
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1615652   0.1425950   0.1805355
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1806346   0.1548130   0.2064562
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1463538   0.1214615   0.1712461
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1724392   0.1563209   0.1885575
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1325181   0.1210527   0.1439835
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1219713   0.1039944   0.1399481
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1806494   0.1604901   0.2008088
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1436761   0.1201855   0.1671667
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1564363   0.1432171   0.1696555
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1870402   0.1629923   0.2110880
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1413187   0.1136523   0.1689851
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1419730   0.1267767   0.1571693
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1421605   0.1307059   0.1536151
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1028288   0.0730715   0.1325861
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1791857   0.1524049   0.2059664


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.0995536   -0.1815231   -0.0175841
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.0036785   -0.1562880    0.1489310
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.0061279   -0.0595931    0.0473373
0-3 months     ki0047075b-MAL-ED          PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Underweight          Normal weight      0.0199786   -0.0821281    0.1220854
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -0.0056783   -0.0879843    0.0766276
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.0236185   -0.1547476    0.2019845
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     -0.0155171   -0.0664660    0.0354318
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.0499760   -0.0913740   -0.0085779
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.0358584   -0.0708331   -0.0008836
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.0524691   -0.1037347   -0.0012035
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0754264   -0.1297139   -0.0211390
0-3 months     ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Underweight          Normal weight      0.0089408   -0.0127710    0.0306526
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.0409759   -0.0653321   -0.0166198
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight      0.0033706   -0.0046252    0.0113664
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.0116143   -0.0604524    0.0372238
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.1012888   -0.2568770    0.0542995
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.0083050   -0.0535077    0.0368976
3-6 months     ki0047075b-MAL-ED          PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Underweight          Normal weight     -0.0502718   -0.1009126    0.0003690
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -0.0275554   -0.1316621    0.0765514
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.0314045   -0.0926993    0.1555083
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight      0.0356867    0.0035743    0.0677991
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.0214805   -0.0613062    0.0183453
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.0354839   -0.0766764    0.0057085
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.0293472   -0.0688023    0.0101079
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0034585   -0.0310641    0.0241471
3-6 months     ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.0300007   -0.0650803    0.0050789
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.0238633   -0.0478538    0.0001272
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight     -0.0069156   -0.0156413    0.0018101
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.0069379   -0.0488232    0.0349474
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.1043154   -0.1715202   -0.0371106
6-9 months     ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight      0.0272900   -0.0121860    0.0667660
6-9 months     ki0047075b-MAL-ED          PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           Underweight          Normal weight     -0.0969037   -0.1383537   -0.0554538
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight      0.0383368   -0.0465273    0.1232009
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0028300   -0.1197423    0.1140822
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     -0.0174508   -0.0461018    0.0112003
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.0301529   -0.0630601    0.0027543
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.0602079   -0.1051316   -0.0152841
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.0355747   -0.0754199    0.0042704
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.0008301   -0.0572156    0.0588758
6-9 months     ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        Underweight          Normal weight      0.0026899   -0.0353591    0.0407388
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.0178180   -0.0421890    0.0065529
6-9 months     ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight      0.0134478   -0.0203006    0.0471962
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.0063479   -0.0502549    0.0375591
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.1225411   -0.2231860   -0.0218961
9-12 months    ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.0112547   -0.0453576    0.0228482
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -0.0303665   -0.0975745    0.0368416
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.0001142   -0.0546130    0.0548414
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     -0.0099069   -0.1227753    0.1029615
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.0313266   -0.0605224   -0.0021308
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.0190736   -0.0410760    0.0029288
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.0088725   -0.0475609    0.0298158
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.0976983    0.0299549    0.1654417
9-12 months    ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.0280267   -0.0582235    0.0021700
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight      0.0002395   -0.0223773    0.0228563
9-12 months    ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.0043815   -0.0430541    0.0342911
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.0057821   -0.0469012    0.0353369
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight      0.1106314   -0.0464633    0.2677261
12-15 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight      0.0024738   -0.0334132    0.0383608
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -0.0143118   -0.1052237    0.0766001
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0197796   -0.1057407    0.0661815
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight      0.0124237   -0.0388270    0.0636745
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.0002133   -0.0319497    0.0315231
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.0109555   -0.0397336    0.0178227
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight      0.0219794   -0.0168028    0.0607617
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.0881284    0.0306737    0.1455831
12-15 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight      0.0467755   -0.1313742    0.2249252
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight      0.0050047   -0.0288825    0.0388920
12-15 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.0072987   -0.0942862    0.0796888
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight      0.0041093   -0.0397205    0.0479390
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight      0.0327430   -0.0845291    0.1500152
15-18 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight      0.0241565   -0.0150093    0.0633223
15-18 months   ki0047075b-MAL-ED          PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           Underweight          Normal weight     -0.0184011   -0.1104580    0.0736558
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -0.0604811   -0.1635241    0.0425620
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0375706   -0.1165655    0.0414243
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     -0.0201202   -0.0335065   -0.0067339
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.0100791   -0.0487896    0.0286313
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight      0.0060145   -0.0233291    0.0353581
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.0129384   -0.0516247    0.0257479
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight      0.0090196   -0.0349414    0.0529806
15-18 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.0105867   -0.0780777    0.0569042
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.0022483   -0.0447216    0.0402250
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.0110194   -0.0975247    0.0754859
18-21 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.0266382   -0.0602496    0.0069732
18-21 months   ki0047075b-MAL-ED          PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           Underweight          Normal weight     -0.0041829   -0.0977962    0.0894304
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight      0.0138097   -0.0681514    0.0957708
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0047632   -0.0918261    0.0822997
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.0203828   -0.0539564    0.0131907
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.0277379   -0.0540011   -0.0014747
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight      0.0244483   -0.0116328    0.0605295
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight      0.0696348   -0.0136151    0.1528847
18-21 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight      0.0124891   -0.0388750    0.0638532
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight      0.0035430   -0.0400225    0.0471086
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight      0.0267736   -0.0373062    0.0908535
21-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.0202524   -0.0476864    0.0071815
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight      0.0589436   -0.0891615    0.2070487
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0364173   -0.1445816    0.0717470
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight      0.0039971   -0.0346306    0.0426247
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.0127593   -0.0433701    0.0178515
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.0026441   -0.0493101    0.0440220
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.0397139   -0.1651932    0.0857653
21-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.0245638   -0.0903200    0.0411924


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0129501   -0.0244077   -0.0014924
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0001703   -0.0072363    0.0068957
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0012411   -0.0120741    0.0095919
0-3 months     ki0047075b-MAL-ED          PERU                           Normal weight        NA                 0.0003555   -0.0022159    0.0029268
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0001506   -0.0023357    0.0020346
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0012955   -0.0085123    0.0111033
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0044011   -0.0179797    0.0091776
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0083146   -0.0153712   -0.0012579
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0066779   -0.0132806   -0.0000751
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0048489   -0.0097141    0.0000164
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0011827   -0.0026014    0.0002360
0-3 months     ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0003413   -0.0004798    0.0011624
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0019906   -0.0031913   -0.0007899
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                 0.0012706   -0.0017449    0.0042861
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0014954   -0.0078035    0.0048127
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0044039   -0.0117331    0.0029254
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0016683   -0.0107585    0.0074220
3-6 months     ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0009450   -0.0024544    0.0005645
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0006918   -0.0033621    0.0019786
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0017082   -0.0051026    0.0085190
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0103645   -0.0010254    0.0217544
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0037447   -0.0107227    0.0032333
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0063280   -0.0137541    0.0010981
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0027173   -0.0064245    0.0009898
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0000574   -0.0007479    0.0006331
3-6 months     ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0011707   -0.0025112    0.0001699
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0011274   -0.0022686    0.0000138
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.0026031   -0.0058821    0.0006758
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0008363   -0.0058936    0.0042211
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0047657   -0.0090929   -0.0004385
6-9 months     ki0047075b-MAL-ED          INDIA                          Normal weight        NA                 0.0054818   -0.0025738    0.0135375
6-9 months     ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0019857   -0.0039990    0.0000276
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                 0.0010133   -0.0013688    0.0033954
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0001509   -0.0063868    0.0060849
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0050590   -0.0134177    0.0032997
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0053888   -0.0113568    0.0005793
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0104528   -0.0184717   -0.0024338
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0033367   -0.0071531    0.0004796
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0000120   -0.0014392    0.0014631
6-9 months     ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0001030   -0.0013461    0.0015521
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0008813   -0.0020915    0.0003288
6-9 months     ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0023136   -0.0035078    0.0081350
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0007900   -0.0062608    0.0046809
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0057143   -0.0116628    0.0002341
9-12 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0022410   -0.0090567    0.0045748
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0009282   -0.0030918    0.0012353
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0000061   -0.0029257    0.0029379
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0027654   -0.0345691    0.0290382
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0056661   -0.0110559   -0.0002764
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0034192   -0.0074090    0.0005706
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0008054   -0.0043226    0.0027118
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0013838   -0.0004471    0.0032147
9-12 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0010741   -0.0021934    0.0000452
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0000127   -0.0011868    0.0012122
9-12 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0007914   -0.0077788    0.0061960
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0007364   -0.0059797    0.0045069
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.0042318   -0.0025219    0.0109855
12-15 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                 0.0004948   -0.0066838    0.0076733
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0004472   -0.0033070    0.0024125
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0011378   -0.0061189    0.0038434
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0034427   -0.0111708    0.0180562
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0000389   -0.0058216    0.0057439
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0019585   -0.0071155    0.0031984
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                 0.0018481   -0.0014456    0.0051419
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0005693   -0.0009509    0.0020895
12-15 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0021717   -0.0062181    0.0105615
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0002698   -0.0015578    0.0020974
12-15 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0014481   -0.0187151    0.0158188
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                 0.0005427   -0.0052491    0.0063346
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.0013172   -0.0034970    0.0061315
15-18 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                 0.0049387   -0.0031696    0.0130469
15-18 months   ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0004299   -0.0027614    0.0019016
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0019157   -0.0054670    0.0016356
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0020493   -0.0065038    0.0024052
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0057217   -0.0091447   -0.0022986
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0018632   -0.0090282    0.0053018
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0010175   -0.0039504    0.0059853
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0010907   -0.0043644    0.0021831
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0005600   -0.0021726    0.0032926
15-18 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0024020   -0.0177360    0.0129319
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0003012   -0.0059924    0.0053900
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0003983   -0.0035407    0.0027441
18-21 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0053276   -0.0121932    0.0015379
18-21 months   ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0001035   -0.0024456    0.0022385
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                 0.0004221   -0.0021022    0.0029464
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0002290   -0.0044170    0.0039590
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0037191   -0.0098911    0.0024528
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0049221   -0.0096674   -0.0001768
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                 0.0021007   -0.0010524    0.0052537
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0043597   -0.0010320    0.0097515
18-21 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0020723   -0.0064613    0.0106059
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                 0.0004964   -0.0056093    0.0066021
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.0009795   -0.0014886    0.0034476
21-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0040505   -0.0096389    0.0015379
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                 0.0017862   -0.0028880    0.0064603
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0019446   -0.0078281    0.0039389
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0007391   -0.0064053    0.0078835
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0022935   -0.0078132    0.0032262
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0002145   -0.0040014    0.0035723
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0028367   -0.0118837    0.0062103
21-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0042747   -0.0157559    0.0072064
