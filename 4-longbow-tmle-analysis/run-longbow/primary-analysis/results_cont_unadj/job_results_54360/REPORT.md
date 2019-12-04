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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight       211    243
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight          32    243
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight       160    168
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Underweight           8    168
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal weight       146    183
0-3 months     ki0047075b-MAL-ED          INDIA                          Underweight          37    183
0-3 months     ki0047075b-MAL-ED          NEPAL                          Normal weight       156    156
0-3 months     ki0047075b-MAL-ED          NEPAL                          Underweight           0    156
0-3 months     ki0047075b-MAL-ED          PERU                           Normal weight       259    264
0-3 months     ki0047075b-MAL-ED          PERU                           Underweight           5    264
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       201    205
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           4    205
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       216    228
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          12    228
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight       245    342
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight          97    342
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight       472    566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight          94    566
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight       520    639
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight         119    639
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       655    721
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          66    721
0-3 months     ki1119695-PROBIT           BELARUS                        Normal weight      6042   6282
0-3 months     ki1119695-PROBIT           BELARUS                        Underweight         240   6282
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      6663   7002
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         339   7002
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal weight      6085   9783
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Underweight        3698   9783
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight       201    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight          30    231
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
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight       217    306
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight          89    306
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight       432    523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight          91    523
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight       492    597
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight         105    597
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       631    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          64    695
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1597   1624
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          27   1624
3-6 months     ki1119695-PROBIT           BELARUS                        Normal weight      5413   5633
3-6 months     ki1119695-PROBIT           BELARUS                        Underweight         220   5633
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      5360   5625
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         265   5625
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal weight      3878   6223
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Underweight        2345   6223
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
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight       219    308
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight          89    308
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight       409    498
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight          89    498
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight       469    565
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight          96    565
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       623    688
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          65    688
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1429   1450
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          21   1450
6-9 months     ki1119695-PROBIT           BELARUS                        Normal weight      5120   5324
6-9 months     ki1119695-PROBIT           BELARUS                        Underweight         204   5324
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      5094   5355
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         261   5355
6-9 months     ki1148112-LCNI-5           MALAWI                         Normal weight       465    561
6-9 months     ki1148112-LCNI-5           MALAWI                         Underweight          96    561
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
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight       236    327
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          91    327
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight       395    482
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          87    482
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight       466    566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight         100    566
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       614    674
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          60    674
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1043   1058
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          15   1058
9-12 months    ki1119695-PROBIT           BELARUS                        Normal weight      5142   5347
9-12 months    ki1119695-PROBIT           BELARUS                        Underweight         205   5347
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      5060   5319
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         259   5319
9-12 months    ki1148112-LCNI-5           MALAWI                         Normal weight       317    385
9-12 months    ki1148112-LCNI-5           MALAWI                         Underweight          68    385
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
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight       438    532
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          94    532
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       606    660
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          54    660
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight       769    774
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           5    774
12-15 months   ki1119695-PROBIT           BELARUS                        Normal weight       267    281
12-15 months   ki1119695-PROBIT           BELARUS                        Underweight          14    281
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      2148   2261
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         113   2261
12-15 months   ki1148112-LCNI-5           MALAWI                         Normal weight       103    127
12-15 months   ki1148112-LCNI-5           MALAWI                         Underweight          24    127
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight       184    212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          28    212
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight       167    174
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Underweight           7    174
15-18 months   ki0047075b-MAL-ED          INDIA                          Normal weight       179    225
15-18 months   ki0047075b-MAL-ED          INDIA                          Underweight          46    225
15-18 months   ki0047075b-MAL-ED          NEPAL                          Normal weight       227    227
15-18 months   ki0047075b-MAL-ED          NEPAL                          Underweight           0    227
15-18 months   ki0047075b-MAL-ED          PERU                           Normal weight       208    213
15-18 months   ki0047075b-MAL-ED          PERU                           Underweight           5    213
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       214    221
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           7    221
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       205    217
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          12    217
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight       229    320
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          91    320
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight       366    449
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          83    449
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight       439    527
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          88    527
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       553    604
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          51    604
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight       651    653
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           2    653
15-18 months   ki1119695-PROBIT           BELARUS                        Normal weight        34     36
15-18 months   ki1119695-PROBIT           BELARUS                        Underweight           2     36
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      1718   1805
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          87   1805
15-18 months   ki1148112-LCNI-5           MALAWI                         Normal weight        92    120
15-18 months   ki1148112-LCNI-5           MALAWI                         Underweight          28    120
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
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       194    204
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          10    204
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight       345    422
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          77    422
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight       444    540
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          96    540
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       500    546
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          46    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         9      9
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0      9
18-21 months   ki1119695-PROBIT           BELARUS                        Normal weight        21     22
18-21 months   ki1119695-PROBIT           BELARUS                        Underweight           1     22
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      1336   1398
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          62   1398
18-21 months   ki1148112-LCNI-5           MALAWI                         Normal weight       393    474
18-21 months   ki1148112-LCNI-5           MALAWI                         Underweight          81    474
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
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       193    204
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          11    204
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight       335    411
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          76    411
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight       386    470
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          84    470
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       450    490
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          40    490
21-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        31     31
21-24 months   ki1119695-PROBIT           BELARUS                        Underweight           0     31
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight       973   1018
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          45   1018
21-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight       336    408
21-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          72    408


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
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
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
![](/tmp/dd337a51-e288-4e9c-88c6-615dec161cd3/5eaacc13-2194-4690-84c6-0aba9eff7864/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/dd337a51-e288-4e9c-88c6-615dec161cd3/5eaacc13-2194-4690-84c6-0aba9eff7864/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/dd337a51-e288-4e9c-88c6-615dec161cd3/5eaacc13-2194-4690-84c6-0aba9eff7864/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                3.3629280   3.2919436   3.4339124
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                3.1821595   3.0206457   3.3436733
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                3.7881584   3.6741194   3.9021975
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                4.0095601   3.6167345   4.4023857
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal weight        NA                3.3422000   3.2282028   3.4561972
0-3 months     ki0047075b-MAL-ED          INDIA                          Underweight          NA                3.3719994   3.1931264   3.5508723
0-3 months     ki0047075b-MAL-ED          PERU                           Normal weight        NA                3.0540528   2.9864457   3.1216598
0-3 months     ki0047075b-MAL-ED          PERU                           Underweight          NA                3.0041463   2.6026167   3.4056760
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                3.2603016   3.1817992   3.3388040
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                3.3400547   2.9612405   3.7188690
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                3.3834756   3.2158575   3.5510936
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                3.4257445   3.3506927   3.5007962
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                3.1133150   3.0532742   3.1733559
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                3.0934239   2.9815429   3.2053050
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                3.2572208   3.2156133   3.2988283
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                3.2678973   3.1886137   3.3471810
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                3.1297681   3.0917826   3.1677537
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                3.1240520   2.9977302   3.2503739
0-3 months     ki1119695-PROBIT           BELARUS                        Normal weight        NA                2.7439339   2.5750149   2.9128529
0-3 months     ki1119695-PROBIT           BELARUS                        Underweight          NA                2.7767833   2.5839842   2.9695823
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                3.3189729   3.2965455   3.3414003
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                3.3089515   3.2122894   3.4056137
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                3.6358915   3.6188472   3.6529357
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                3.6695436   3.6472379   3.6918492
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                1.9320295   1.8796315   1.9844274
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                1.8982362   1.7362430   2.0602294
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                2.1601630   2.0785238   2.2418021
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                1.8073439   1.5400611   2.0746267
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal weight        NA                1.8825983   1.8110850   1.9541117
3-6 months     ki0047075b-MAL-ED          INDIA                          Underweight          NA                1.9149479   1.7764005   2.0534953
3-6 months     ki0047075b-MAL-ED          PERU                           Normal weight        NA                2.0148971   1.9472526   2.0825416
3-6 months     ki0047075b-MAL-ED          PERU                           Underweight          NA                2.0346164   1.7072893   2.3619434
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                1.9632930   1.8824559   2.0441301
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                1.8828421   1.1631696   2.6025145
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                1.8392337   1.7703213   1.9081461
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                1.6711338   1.3354701   2.0067976
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                1.9102003   1.8264944   1.9939062
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                1.9805468   1.8850024   2.0760912
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                1.8412509   1.7877770   1.8947248
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                1.7920579   1.6841912   1.8999247
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                1.9691455   1.9322531   2.0060380
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                1.9496068   1.8639557   2.0352578
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                2.0107402   1.9719492   2.0495312
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                1.9570629   1.8571227   2.0570030
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                1.7989751   1.7619784   1.8359718
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                1.7520157   1.6142682   1.8897633
3-6 months     ki1119695-PROBIT           BELARUS                        Normal weight        NA                2.0961891   2.0299874   2.1623909
3-6 months     ki1119695-PROBIT           BELARUS                        Underweight          NA                2.1085514   1.9383087   2.2787940
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                1.9803365   1.9594030   2.0012699
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                1.9952464   1.9026725   2.0878202
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                1.9304943   1.9121358   1.9488527
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                1.9230168   1.9000475   1.9459862
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                1.2540022   1.2132862   1.2947181
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                1.2045806   1.0629768   1.3461844
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                1.4880544   1.4046240   1.5714848
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                1.2773477   1.0850766   1.4696187
6-9 months     ki0047075b-MAL-ED          INDIA                          Normal weight        NA                1.2420357   1.1830861   1.3009854
6-9 months     ki0047075b-MAL-ED          INDIA                          Underweight          NA                1.2532410   1.1443649   1.3621171
6-9 months     ki0047075b-MAL-ED          PERU                           Normal weight        NA                1.3205744   1.2652000   1.3759487
6-9 months     ki0047075b-MAL-ED          PERU                           Underweight          NA                1.3444835   1.0421782   1.6467888
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                1.3633328   1.2995086   1.4271569
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                1.4060760   1.0998417   1.7123103
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                1.1869210   1.1056641   1.2681780
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                1.2588185   1.0419057   1.4757314
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                1.2328770   1.1615419   1.3042122
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                1.1780487   1.0592503   1.2968471
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                1.2437995   1.2002725   1.2873264
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                1.3098017   1.2036815   1.4159219
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                1.2913824   1.2638339   1.3189308
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                1.2386262   1.1765525   1.3006999
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                1.3325477   1.3015569   1.3635384
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                1.2872650   1.1936475   1.3808825
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                1.3245396   1.2869643   1.3621150
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                1.1762722   1.0451738   1.3073706
6-9 months     ki1119695-PROBIT           BELARUS                        Normal weight        NA                1.5884012   1.5443979   1.6324045
6-9 months     ki1119695-PROBIT           BELARUS                        Underweight          NA                1.6630677   1.5452091   1.7809263
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                1.3464656   1.3261371   1.3667942
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                1.3254047   1.2348366   1.4159729
6-9 months     ki1148112-LCNI-5           MALAWI                         Normal weight        NA                1.4658835   1.4252098   1.5065572
6-9 months     ki1148112-LCNI-5           MALAWI                         Underweight          NA                1.4376190   1.3536534   1.5215846
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.9947734   0.9529321   1.0366147
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.9535594   0.8551195   1.0519993
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                1.2925560   1.2169191   1.3681929
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                1.3386280   0.9608759   1.7163801
9-12 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.9884405   0.9449918   1.0318892
9-12 months    ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.9458565   0.8666073   1.0251056
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                1.0153985   0.9489016   1.0818954
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                1.2071820   0.9845156   1.4298483
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.8106250   0.7256206   0.8956293
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.8569683   0.6616434   1.0522932
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.9523918   0.9012958   1.0034878
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                1.1249570   1.0001299   1.2497841
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                1.1059832   1.0669008   1.1450656
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                1.0095702   0.9316566   1.0874838
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                1.0685208   1.0388419   1.0981998
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.9635513   0.9018163   1.0252864
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                1.1228528   1.0951506   1.1505549
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                1.1298366   1.0488117   1.2108615
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                1.0854913   1.0508230   1.1201597
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                1.4543629   1.3302386   1.5784872
9-12 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                1.3679129   1.3145895   1.4212363
9-12 months    ki1119695-PROBIT           BELARUS                        Underweight          NA                1.2936525   1.1512689   1.4360361
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                1.0885473   1.0695920   1.1075026
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.9628060   0.8645721   1.0610400
9-12 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                1.1204622   1.0675074   1.1734171
9-12 months    ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.9966390   0.9014585   1.0918195
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.9269287   0.8843403   0.9695170
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.8262034   0.7079636   0.9444431
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                1.1536023   1.0938422   1.2133624
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                0.8442815   0.5295569   1.1590061
12-15 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.9135892   0.8684616   0.9587168
12-15 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.8995688   0.8215377   0.9775999
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                0.9297383   0.8702566   0.9892199
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                0.7848882   0.5528513   1.0169250
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.8609855   0.7946769   0.9272942
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.7805000   0.5186131   1.0423868
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.9059897   0.8515237   0.9604557
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                0.7279487   0.6401393   0.8157581
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.7434462   0.6924262   0.7944661
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.6376141   0.5558444   0.7193839
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.9755004   0.9463881   1.0046127
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.8863601   0.8293395   0.9433807
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.9728547   0.9470838   0.9986257
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.9518906   0.8717052   1.0320761
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.9301173   0.8921388   0.9680959
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                1.1263550   0.9824637   1.2702463
12-15 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                1.2129428   0.7092661   1.7166195
12-15 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                1.2973035   0.8264104   1.7681966
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.9142012   0.8854588   0.9429437
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                1.0505352   0.9183590   1.1827115
12-15 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.9527937   0.8399487   1.0656387
12-15 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.9848517   0.8345321   1.1351713
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.8308436   0.7908901   0.8707971
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.7799559   0.6853616   0.8745503
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                0.9965889   0.9368116   1.0563662
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                1.2388206   0.9626781   1.5149630
15-18 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.8337230   0.7926033   0.8748427
15-18 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.8868463   0.8090605   0.9646321
15-18 months   ki0047075b-MAL-ED          PERU                           Normal weight        NA                0.8543113   0.8120271   0.8965956
15-18 months   ki0047075b-MAL-ED          PERU                           Underweight          NA                0.8167986   0.4411603   1.1924369
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                0.8903093   0.8351545   0.9454641
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                0.8279688   0.7243852   0.9315524
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.6873018   0.6242269   0.7503767
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.6772858   0.4379031   0.9166684
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                0.9454155   0.8289138   1.0619172
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                1.0360884   0.9426760   1.1295008
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.7849838   0.7398418   0.8301258
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.7189219   0.6321529   0.8056909
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.8526305   0.8268830   0.8783781
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.8682180   0.8028502   0.9335857
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.9197814   0.8957848   0.9437779
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.8953302   0.8169861   0.9736742
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.8000400   0.7674926   0.8325875
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.7846778   0.6506911   0.9186645
15-18 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.8340994   0.7535452   0.9146535
15-18 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.7940585   0.6451654   0.9429515
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.8131487   0.7760126   0.8502849
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.8149105   0.7242715   0.9055496
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                0.9149450   0.8416833   0.9882066
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                1.0126239   0.8010884   1.2241594
18-21 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.8851271   0.8466399   0.9236142
18-21 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.8572070   0.7702635   0.9441504
18-21 months   ki0047075b-MAL-ED          PERU                           Normal weight        NA                0.8431560   0.7979820   0.8883301
18-21 months   ki0047075b-MAL-ED          PERU                           Underweight          NA                0.7739861   0.4872341   1.0607381
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                0.7859891   0.7291211   0.8428571
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                0.7304462   0.3755370   1.0853554
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.7443100   0.6749867   0.8136333
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.7319448   0.4348814   1.0290081
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.7230331   0.6831033   0.7629629
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.7565395   0.6728619   0.8402171
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.8501999   0.8239785   0.8764213
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.7912278   0.7326044   0.8498513
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.7955497   0.7706978   0.8204016
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.8219692   0.7609195   0.8830189
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.6909093   0.6537022   0.7281165
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.5106695   0.2890001   0.7323390
18-21 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.8163982   0.7633096   0.8694868
18-21 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.8207378   0.7320468   0.9094288
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                0.7711999   0.7332200   0.8091799
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                0.7584824   0.6597331   0.8572317
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                0.8026255   0.7612249   0.8440261
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                0.6580975   0.1465177   1.1696773
21-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                0.8321332   0.7968974   0.8673690
21-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                0.7947853   0.7317363   0.8578343
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                0.8568039   0.8044166   0.9091912
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                0.4863792   0.2805199   0.6922386
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.7185731   0.6512451   0.7859011
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.7252438   0.5367103   0.9137773
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                0.7227549   0.6847736   0.7607363
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                0.6928106   0.5990336   0.7865876
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                0.7567587   0.7288638   0.7846536
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                0.7977973   0.7372199   0.8583746
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                0.8039160   0.7781888   0.8296433
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                0.7478025   0.6686406   0.8269644
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.7029068   0.6617268   0.7440869
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                0.6847353   0.4453612   0.9241094
21-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                0.7542378   0.7046569   0.8038187
21-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                0.7350173   0.6141728   0.8558618


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.3391231   3.2734666   3.4047796
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                3.7987014   3.6882619   3.9091408
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.3482250   3.2503342   3.4461159
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.0531076   2.9864257   3.1197894
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2644991   3.1874675   3.3415308
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.3954641   3.2578729   3.5330553
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                3.1100116   3.0566021   3.1634210
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.2592091   3.2222694   3.2961487
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.7451889   2.5767847   2.9135931
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3184877   3.2966390   3.3403364
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.6486121   3.6332602   3.6639640
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1448230   2.0652644   2.2243816
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8890965   1.8255097   1.9526834
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0152678   1.9488079   2.0817277
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9612733   1.8804053   2.0421413
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9306606   1.8836200   1.9777011
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9657091   1.9317726   1.9996455
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7981943   1.7619574   1.8344313
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0966720   2.0301843   2.1631597
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9810389   1.9606203   2.0014575
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9276766   1.9127186   1.9426345
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.4784282   1.3980899   1.5587666
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.2442866   1.1923459   1.2962273
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                1.3210643   1.2665463   1.3755823
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.3644626   1.3017940   1.4271311
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1907556   1.1129385   1.2685726
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.2170338   1.1655258   1.2685417
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.2555950   1.2150667   1.2961234
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3223923   1.2855987   1.3591859
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                1.5912622   1.5471309   1.6353935
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.3454391   1.3256036   1.3652746
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                1.4610468   1.4243885   1.4977051
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.2947044   1.2204615   1.3689473
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9799614   0.9416888   1.0182340
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.0212609   0.9562969   1.0862249
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8131077   0.7319679   0.8942474
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.0004145   0.9826733   1.0181558
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.0885809   1.0534446   1.1237171
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0907211   1.0566756   1.1247665
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.3650658   1.3102318   1.4198999
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.0824246   1.0637544   1.1010947
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.0985921   1.0516237   1.1455606
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.1417703   1.0824196   1.2011210
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9107851   0.8714474   0.9501228
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9252117   0.8670403   0.9833831
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8563558   0.7920248   0.9206869
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.8566530   0.8289049   0.8844012
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7241623   0.6797013   0.7686233
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9313850   0.8941651   0.9686050
12-15 months   ki1119695-PROBIT           BELARUS                        NA                   NA                1.2171458   0.7330126   1.7012790
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.9210149   0.8928946   0.9491352
12-15 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.9588519   0.8629996   1.0547041
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.0063339   0.9474669   1.0652008
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8445838   0.8081021   0.8810654
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8883347   0.8348067   0.9418626
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6867479   0.6257076   0.7477883
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.9712006   0.8887572   1.0536441
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7727719   0.7325606   0.8129832
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8552334   0.8311623   0.8793044
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7992996   0.7676545   0.8309446
15-18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8247565   0.7538318   0.8956812
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9184755   0.8473947   0.9895564
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8795431   0.8441522   0.9149339
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.7842913   0.7280906   0.8404919
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7437038   0.6761886   0.8112190
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7291468   0.6930874   0.7652062
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8397160   0.8156938   0.8637381
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6829159   0.6459736   0.7198582
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8171398   0.7705868   0.8636928
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.7973379   0.7530825   0.8415933
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8246636   0.7937212   0.8556061
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8455789   0.7937438   0.8974141
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7189328   0.6544287   0.7834368
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7172178   0.6817161   0.7527194
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7640933   0.7387145   0.7894720
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7021036   0.6613457   0.7428615
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.7508459   0.7047755   0.7969163


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.1807685   -0.3571927   -0.0043443
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight      0.2214017   -0.1876421    0.6304455
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight      0.0297993   -0.1823113    0.2419099
0-3 months     ki0047075b-MAL-ED          PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Underweight          Normal weight     -0.0499064   -0.4570879    0.3572751
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.0797531   -0.3071097    0.4666160
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight      0.0422689   -0.0772694    0.1618072
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.0198911   -0.1468646    0.1070824
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight      0.0106765   -0.0788617    0.1002147
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.0057161   -0.1376256    0.1261934
0-3 months     ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Underweight          Normal weight      0.0328494   -0.0884120    0.1541107
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.0100214   -0.1092512    0.0892085
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight      0.0336521    0.0098979    0.0574063
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.0337932   -0.2040499    0.1364635
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.3528190   -0.6322918   -0.0733462
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight      0.0323495   -0.1235656    0.1882647
3-6 months     ki0047075b-MAL-ED          PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Underweight          Normal weight      0.0197193   -0.3145243    0.3539628
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -0.0804509   -0.8046491    0.6437473
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.1680998   -0.5107645    0.1745648
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight      0.0703465   -0.0914550    0.2321480
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.0491929   -0.1695868    0.0712009
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.0195388   -0.1127973    0.0737197
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.0536773   -0.1608817    0.0535270
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0469593   -0.1895887    0.0956701
3-6 months     ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Underweight          Normal weight      0.0123622   -0.1444246    0.1691490
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight      0.0149099   -0.0800013    0.1098211
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight     -0.0074774   -0.0355473    0.0205924
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.0494216   -0.1967628    0.0979196
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.2107068   -0.4202987   -0.0011148
6-9 months     ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight      0.0112053   -0.1126053    0.1350159
6-9 months     ki0047075b-MAL-ED          PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           Underweight          Normal weight      0.0239091   -0.2834258    0.3312441
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight      0.0427432   -0.2700713    0.3555578
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.0718975   -0.1597356    0.3035306
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     -0.0548283   -0.2167843    0.1071276
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight      0.0660022   -0.0486978    0.1807023
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.0527561   -0.1206683    0.0151560
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.0452827   -0.1438964    0.0533310
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.1482674   -0.2846444   -0.0118904
6-9 months     ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        Underweight          Normal weight      0.0746665   -0.0354433    0.1847763
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.0210609   -0.1138824    0.0717606
6-9 months     ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.0282645   -0.1215628    0.0650338
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.0412140   -0.1481771    0.0657491
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight      0.0460720   -0.3391780    0.4313221
9-12 months    ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.0425841   -0.1329622    0.0477941
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight      0.1917834   -0.0406001    0.4241670
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.0463433   -0.1666767    0.2593634
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight      0.1725652    0.0021221    0.3430084
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.0964130   -0.1835793   -0.0092467
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.1049695   -0.1734681   -0.0364709
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight      0.0069838   -0.0786459    0.0926135
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.3688716    0.2399967    0.4977465
9-12 months    ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.0742604   -0.1914253    0.0429045
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.1257413   -0.2257873   -0.0256952
9-12 months    ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.1238232   -0.2327431   -0.0149033
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.1007253   -0.2264011    0.0249505
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.3093208   -0.6296687    0.0110272
12-15 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.0140204   -0.1041611    0.0761203
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -0.1448501   -0.3843896    0.0946894
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0804856   -0.3506366    0.1896655
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     -0.1780410   -0.3132766   -0.0428054
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.1058321   -0.2022132   -0.0094509
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.0891403   -0.1531628   -0.0251178
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.0209641   -0.1051891    0.0632609
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.1962376    0.0474187    0.3450566
12-15 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight      0.0843607   -0.5258614    0.6945827
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight      0.1363340    0.0010687    0.2715992
12-15 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight      0.0320580   -0.1559047    0.2200208
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.0508876   -0.1535734    0.0517981
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight      0.2422317   -0.0403068    0.5247701
15-18 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight      0.0531233   -0.0348622    0.1411088
15-18 months   ki0047075b-MAL-ED          PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           Underweight          Normal weight     -0.0375127   -0.4155234    0.3404980
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -0.0623405   -0.1796930    0.0550120
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0100161   -0.2575691    0.2375370
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight      0.0906729   -0.0760044    0.2573502
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.0660619   -0.1638712    0.0317474
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight      0.0155874   -0.0546684    0.0858433
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.0244512   -0.1063879    0.0574856
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.0153622   -0.1532454    0.1225209
15-18 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.0400409   -0.2093279    0.1292462
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight      0.0017618   -0.0961899    0.0997135
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight      0.0976790   -0.1261839    0.3215418
18-21 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.0279201   -0.1230013    0.0671611
18-21 months   ki0047075b-MAL-ED          PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           Underweight          Normal weight     -0.0691699   -0.3594584    0.2211186
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -0.0555429   -0.4149793    0.3038934
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0123652   -0.3174100    0.2926796
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight      0.0335064   -0.0592100    0.1262228
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.0589721   -0.1231925    0.0052484
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight      0.0264195   -0.0394947    0.0923337
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.1802398   -0.4050101    0.0445305
18-21 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight      0.0043396   -0.0990262    0.1077054
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.0127176   -0.1185188    0.0930836
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.1445280   -0.6577803    0.3687243
21-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.0373479   -0.1095749    0.0348791
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -0.3704247   -0.5828453   -0.1580041
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.0066707   -0.1935240    0.2068655
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.0299443   -0.1311209    0.0712323
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight      0.0410385   -0.0256528    0.1077299
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.0561136   -0.1393512    0.0271241
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.0181715   -0.2610619    0.2247189
21-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.0192204   -0.1498407    0.1113998


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0238049   -0.0482809    0.0006711
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.0105429   -0.0102065    0.0312924
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal weight        NA                 0.0060250   -0.0368960    0.0489460
0-3 months     ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0009452   -0.0111579    0.0092675
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0041975   -0.0162950    0.0246901
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0119885   -0.0229788    0.0469559
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0033035   -0.0243998    0.0177928
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0019883   -0.0146894    0.0186659
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0005232   -0.0125988    0.0115523
0-3 months     ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0012550   -0.0032970    0.0058070
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0004852   -0.0052896    0.0043193
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                 0.0127206    0.0037317    0.0217094
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0043887   -0.0265487    0.0177712
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0153400   -0.0309664    0.0002865
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal weight        NA                 0.0064982   -0.0248662    0.0378625
3-6 months     ki0047075b-MAL-ED          PERU                           Normal weight        NA                 0.0003707   -0.0079916    0.0087330
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0020197   -0.0202706    0.0162312
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0091435   -0.0284012    0.0101142
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0204603   -0.0266677    0.0675882
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0085594   -0.0295685    0.0124497
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0034365   -0.0198496    0.0129766
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0049429   -0.0148823    0.0049964
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0007807   -0.0043584    0.0027970
3-6 months     ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0004828   -0.0056300    0.0065956
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0007024   -0.0037697    0.0051746
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.0028177   -0.0133850    0.0077496
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0059571   -0.0238421    0.0119279
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0096262   -0.0210114    0.0017590
6-9 months     ki0047075b-MAL-ED          INDIA                          Normal weight        NA                 0.0022508   -0.0226262    0.0271279
6-9 months     ki0047075b-MAL-ED          PERU                           Normal weight        NA                 0.0004899   -0.0072052    0.0081851
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                 0.0011298   -0.0071866    0.0094462
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0038345   -0.0086991    0.0163681
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0158432   -0.0632096    0.0315231
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0117956   -0.0088232    0.0324144
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0089639   -0.0206182    0.0026905
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0042782   -0.0136474    0.0050910
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0021473   -0.0056766    0.0013820
6-9 months     ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0028610   -0.0014196    0.0071416
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0010265   -0.0055522    0.0034992
6-9 months     ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0048367   -0.0208265    0.0111531
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0051289   -0.0185585    0.0083008
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.0021484   -0.0158691    0.0201659
9-12 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0084791   -0.0266114    0.0096532
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                 0.0058624   -0.0024336    0.0141583
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0024827   -0.0090110    0.0139764
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0480227    0.0036593    0.0923862
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0174023   -0.0334809   -0.0013238
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0185459   -0.0310902   -0.0060015
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                 0.0006217   -0.0070026    0.0082460
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0052297    0.0010714    0.0093881
9-12 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0028471   -0.0074923    0.0017981
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0061228   -0.0110483   -0.0011972
9-12 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0218701   -0.0416791   -0.0020610
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0128282   -0.0294630    0.0038066
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0118319   -0.0268135    0.0031496
12-15 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0028041   -0.0208472    0.0152390
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0045266   -0.0127105    0.0036573
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0046297   -0.0203611    0.0111017
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0493367   -0.0792856   -0.0193878
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0192839   -0.0372382   -0.0013296
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0157504   -0.0274264   -0.0040743
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0017152   -0.0086203    0.0051898
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0012677   -0.0026144    0.0051497
12-15 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0042030   -0.0268564    0.0352624
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0068137   -0.0000566    0.0136840
12-15 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0060582   -0.0295298    0.0416463
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0067210   -0.0204811    0.0070391
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.0097450   -0.0036530    0.0231429
15-18 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                 0.0108608   -0.0073449    0.0290664
15-18 months   ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0008806   -0.0103617    0.0086006
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0019746   -0.0059618    0.0020126
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0005539   -0.0142469    0.0131391
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0257851   -0.0193844    0.0709546
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0122119   -0.0304477    0.0060239
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0026028   -0.0091392    0.0143449
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0020646   -0.0090043    0.0048752
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0007405   -0.0073881    0.0059072
15-18 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0093429   -0.0489602    0.0302745
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                 0.0002360   -0.0128869    0.0133590
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.0035306   -0.0050257    0.0120868
18-21 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0055840   -0.0246564    0.0134884
18-21 months   ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0017121   -0.0091199    0.0056956
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0016978   -0.0127548    0.0093592
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0006061   -0.0155638    0.0143516
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0061137   -0.0108488    0.0230763
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0104839   -0.0220585    0.0010906
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                 0.0022258   -0.0033615    0.0078131
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0079935   -0.0181499    0.0021630
18-21 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0007416   -0.0169228    0.0184060
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0017817   -0.0166163    0.0130530
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0052876   -0.0245216    0.0139464
21-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0074696   -0.0220469    0.0071077
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0112250   -0.0216546   -0.0007953
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0003597   -0.0104371    0.0111565
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0055371   -0.0242800    0.0132057
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0073345   -0.0046694    0.0193385
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0045807   -0.0115107    0.0023493
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0008033   -0.0115425    0.0099360
21-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0033918   -0.0264535    0.0196698
