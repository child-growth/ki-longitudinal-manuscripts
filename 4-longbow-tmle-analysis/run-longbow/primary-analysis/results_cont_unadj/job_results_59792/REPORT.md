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

**Intervention Variable:** mbmi

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        mbmi             n_cell       n
-------------  ---------------  -----------------------------  --------------  -------  ------
0-3 months     JiVitA-3         BANGLADESH                     Normal weight     12183   19796
0-3 months     JiVitA-3         BANGLADESH                     Underweight        7613   19796
0-3 months     MAL-ED           BANGLADESH                     Normal weight       211     243
0-3 months     MAL-ED           BANGLADESH                     Underweight          32     243
0-3 months     MAL-ED           BRAZIL                         Normal weight       160     168
0-3 months     MAL-ED           BRAZIL                         Underweight           8     168
0-3 months     MAL-ED           INDIA                          Normal weight       146     183
0-3 months     MAL-ED           INDIA                          Underweight          37     183
0-3 months     MAL-ED           NEPAL                          Normal weight       156     156
0-3 months     MAL-ED           NEPAL                          Underweight           0     156
0-3 months     MAL-ED           PERU                           Normal weight       259     264
0-3 months     MAL-ED           PERU                           Underweight           5     264
0-3 months     MAL-ED           SOUTH AFRICA                   Normal weight       201     205
0-3 months     MAL-ED           SOUTH AFRICA                   Underweight           4     205
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight       216     228
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          12     228
0-3 months     NIH-Birth        BANGLADESH                     Normal weight       472     566
0-3 months     NIH-Birth        BANGLADESH                     Underweight          94     566
0-3 months     NIH-Crypto       BANGLADESH                     Normal weight       655     721
0-3 months     NIH-Crypto       BANGLADESH                     Underweight          66     721
0-3 months     PROBIT           BELARUS                        Normal weight     12111   12596
0-3 months     PROBIT           BELARUS                        Underweight         485   12596
0-3 months     PROVIDE          BANGLADESH                     Normal weight       520     639
0-3 months     PROVIDE          BANGLADESH                     Underweight         119     639
0-3 months     SAS-CompFeed     INDIA                          Normal weight       858    1164
0-3 months     SAS-CompFeed     INDIA                          Underweight         306    1164
0-3 months     ZVITAMBO         ZIMBABWE                       Normal weight      6663    7002
0-3 months     ZVITAMBO         ZIMBABWE                       Underweight         339    7002
3-6 months     JiVitA-3         BANGLADESH                     Normal weight      7716   12547
3-6 months     JiVitA-3         BANGLADESH                     Underweight        4831   12547
3-6 months     MAL-ED           BANGLADESH                     Normal weight       201     231
3-6 months     MAL-ED           BANGLADESH                     Underweight          30     231
3-6 months     MAL-ED           BRAZIL                         Normal weight       198     207
3-6 months     MAL-ED           BRAZIL                         Underweight           9     207
3-6 months     MAL-ED           INDIA                          Normal weight       183     229
3-6 months     MAL-ED           INDIA                          Underweight          46     229
3-6 months     MAL-ED           NEPAL                          Normal weight       233     233
3-6 months     MAL-ED           NEPAL                          Underweight           0     233
3-6 months     MAL-ED           PERU                           Normal weight       261     266
3-6 months     MAL-ED           PERU                           Underweight           5     266
3-6 months     MAL-ED           SOUTH AFRICA                   Normal weight       233     239
3-6 months     MAL-ED           SOUTH AFRICA                   Underweight           6     239
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight       226     239
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          13     239
3-6 months     NIH-Birth        BANGLADESH                     Normal weight       432     523
3-6 months     NIH-Birth        BANGLADESH                     Underweight          91     523
3-6 months     NIH-Crypto       BANGLADESH                     Normal weight       631     695
3-6 months     NIH-Crypto       BANGLADESH                     Underweight          64     695
3-6 months     PROBIT           BELARUS                        Normal weight     10624   11057
3-6 months     PROBIT           BELARUS                        Underweight         433   11057
3-6 months     PROVIDE          BANGLADESH                     Normal weight       492     597
3-6 months     PROVIDE          BANGLADESH                     Underweight         105     597
3-6 months     SAS-CompFeed     INDIA                          Normal weight       761    1037
3-6 months     SAS-CompFeed     INDIA                          Underweight         276    1037
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1597    1624
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          27    1624
3-6 months     ZVITAMBO         ZIMBABWE                       Normal weight      5360    5625
3-6 months     ZVITAMBO         ZIMBABWE                       Underweight         265    5625
6-9 months     LCNI-5           MALAWI                         Normal weight       465     561
6-9 months     LCNI-5           MALAWI                         Underweight          96     561
6-9 months     MAL-ED           BANGLADESH                     Normal weight       197     224
6-9 months     MAL-ED           BANGLADESH                     Underweight          27     224
6-9 months     MAL-ED           BRAZIL                         Normal weight       188     197
6-9 months     MAL-ED           BRAZIL                         Underweight           9     197
6-9 months     MAL-ED           INDIA                          Normal weight       183     229
6-9 months     MAL-ED           INDIA                          Underweight          46     229
6-9 months     MAL-ED           NEPAL                          Normal weight       230     230
6-9 months     MAL-ED           NEPAL                          Underweight           0     230
6-9 months     MAL-ED           PERU                           Normal weight       239     244
6-9 months     MAL-ED           PERU                           Underweight           5     244
6-9 months     MAL-ED           SOUTH AFRICA                   Normal weight       221     227
6-9 months     MAL-ED           SOUTH AFRICA                   Underweight           6     227
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight       213     225
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          12     225
6-9 months     NIH-Birth        BANGLADESH                     Normal weight       409     498
6-9 months     NIH-Birth        BANGLADESH                     Underweight          89     498
6-9 months     NIH-Crypto       BANGLADESH                     Normal weight       623     688
6-9 months     NIH-Crypto       BANGLADESH                     Underweight          65     688
6-9 months     PROBIT           BELARUS                        Normal weight     10027   10424
6-9 months     PROBIT           BELARUS                        Underweight         397   10424
6-9 months     PROVIDE          BANGLADESH                     Normal weight       469     565
6-9 months     PROVIDE          BANGLADESH                     Underweight          96     565
6-9 months     SAS-CompFeed     INDIA                          Normal weight       773    1056
6-9 months     SAS-CompFeed     INDIA                          Underweight         283    1056
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1429    1450
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          21    1450
6-9 months     ZVITAMBO         ZIMBABWE                       Normal weight      5094    5355
6-9 months     ZVITAMBO         ZIMBABWE                       Underweight         261    5355
9-12 months    iLiNS-Zinc       BURKINA FASO                   Normal weight       960    1105
9-12 months    iLiNS-Zinc       BURKINA FASO                   Underweight         145    1105
9-12 months    LCNI-5           MALAWI                         Normal weight       317     385
9-12 months    LCNI-5           MALAWI                         Underweight          68     385
9-12 months    MAL-ED           BANGLADESH                     Normal weight       197     225
9-12 months    MAL-ED           BANGLADESH                     Underweight          28     225
9-12 months    MAL-ED           BRAZIL                         Normal weight       184     193
9-12 months    MAL-ED           BRAZIL                         Underweight           9     193
9-12 months    MAL-ED           INDIA                          Normal weight       181     226
9-12 months    MAL-ED           INDIA                          Underweight          45     226
9-12 months    MAL-ED           NEPAL                          Normal weight       229     229
9-12 months    MAL-ED           NEPAL                          Underweight           0     229
9-12 months    MAL-ED           PERU                           Normal weight       230     234
9-12 months    MAL-ED           PERU                           Underweight           4     234
9-12 months    MAL-ED           SOUTH AFRICA                   Normal weight       222     229
9-12 months    MAL-ED           SOUTH AFRICA                   Underweight           7     229
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight       212     224
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          12     224
9-12 months    NIH-Birth        BANGLADESH                     Normal weight       395     482
9-12 months    NIH-Birth        BANGLADESH                     Underweight          87     482
9-12 months    NIH-Crypto       BANGLADESH                     Normal weight       614     674
9-12 months    NIH-Crypto       BANGLADESH                     Underweight          60     674
9-12 months    PROBIT           BELARUS                        Normal weight     10259   10660
9-12 months    PROBIT           BELARUS                        Underweight         401   10660
9-12 months    PROVIDE          BANGLADESH                     Normal weight       466     566
9-12 months    PROVIDE          BANGLADESH                     Underweight         100     566
9-12 months    SAS-CompFeed     INDIA                          Normal weight       772    1055
9-12 months    SAS-CompFeed     INDIA                          Underweight         283    1055
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1043    1058
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          15    1058
9-12 months    ZVITAMBO         ZIMBABWE                       Normal weight      5060    5319
9-12 months    ZVITAMBO         ZIMBABWE                       Underweight         259    5319
12-15 months   iLiNS-Zinc       BURKINA FASO                   Normal weight       832     962
12-15 months   iLiNS-Zinc       BURKINA FASO                   Underweight         130     962
12-15 months   LCNI-5           MALAWI                         Normal weight       103     127
12-15 months   LCNI-5           MALAWI                         Underweight          24     127
12-15 months   MAL-ED           BANGLADESH                     Normal weight       185     212
12-15 months   MAL-ED           BANGLADESH                     Underweight          27     212
12-15 months   MAL-ED           BRAZIL                         Normal weight       176     183
12-15 months   MAL-ED           BRAZIL                         Underweight           7     183
12-15 months   MAL-ED           INDIA                          Normal weight       180     225
12-15 months   MAL-ED           INDIA                          Underweight          45     225
12-15 months   MAL-ED           NEPAL                          Normal weight       230     230
12-15 months   MAL-ED           NEPAL                          Underweight           0     230
12-15 months   MAL-ED           PERU                           Normal weight       219     223
12-15 months   MAL-ED           PERU                           Underweight           4     223
12-15 months   MAL-ED           SOUTH AFRICA                   Normal weight       217     224
12-15 months   MAL-ED           SOUTH AFRICA                   Underweight           7     224
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight       213     226
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          13     226
12-15 months   NIH-Birth        BANGLADESH                     Normal weight       377     461
12-15 months   NIH-Birth        BANGLADESH                     Underweight          84     461
12-15 months   NIH-Crypto       BANGLADESH                     Normal weight       606     660
12-15 months   NIH-Crypto       BANGLADESH                     Underweight          54     660
12-15 months   PROBIT           BELARUS                        Normal weight       952     992
12-15 months   PROBIT           BELARUS                        Underweight          40     992
12-15 months   PROVIDE          BANGLADESH                     Normal weight       438     532
12-15 months   PROVIDE          BANGLADESH                     Underweight          94     532
12-15 months   SAS-CompFeed     INDIA                          Normal weight       787    1072
12-15 months   SAS-CompFeed     INDIA                          Underweight         285    1072
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight       769     774
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           5     774
12-15 months   ZVITAMBO         ZIMBABWE                       Normal weight      2148    2261
12-15 months   ZVITAMBO         ZIMBABWE                       Underweight         113    2261
15-18 months   iLiNS-Zinc       BURKINA FASO                   Normal weight       872    1008
15-18 months   iLiNS-Zinc       BURKINA FASO                   Underweight         136    1008
15-18 months   LCNI-5           MALAWI                         Normal weight        92     120
15-18 months   LCNI-5           MALAWI                         Underweight          28     120
15-18 months   MAL-ED           BANGLADESH                     Normal weight       184     212
15-18 months   MAL-ED           BANGLADESH                     Underweight          28     212
15-18 months   MAL-ED           BRAZIL                         Normal weight       167     174
15-18 months   MAL-ED           BRAZIL                         Underweight           7     174
15-18 months   MAL-ED           INDIA                          Normal weight       179     225
15-18 months   MAL-ED           INDIA                          Underweight          46     225
15-18 months   MAL-ED           NEPAL                          Normal weight       227     227
15-18 months   MAL-ED           NEPAL                          Underweight           0     227
15-18 months   MAL-ED           PERU                           Normal weight       208     213
15-18 months   MAL-ED           PERU                           Underweight           5     213
15-18 months   MAL-ED           SOUTH AFRICA                   Normal weight       214     221
15-18 months   MAL-ED           SOUTH AFRICA                   Underweight           7     221
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight       205     217
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          12     217
15-18 months   NIH-Birth        BANGLADESH                     Normal weight       366     449
15-18 months   NIH-Birth        BANGLADESH                     Underweight          83     449
15-18 months   NIH-Crypto       BANGLADESH                     Normal weight       553     604
15-18 months   NIH-Crypto       BANGLADESH                     Underweight          51     604
15-18 months   PROBIT           BELARUS                        Normal weight       262     274
15-18 months   PROBIT           BELARUS                        Underweight          12     274
15-18 months   PROVIDE          BANGLADESH                     Normal weight       439     527
15-18 months   PROVIDE          BANGLADESH                     Underweight          88     527
15-18 months   SAS-CompFeed     INDIA                          Normal weight       789    1076
15-18 months   SAS-CompFeed     INDIA                          Underweight         287    1076
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight       651     653
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           2     653
15-18 months   ZVITAMBO         ZIMBABWE                       Normal weight      1718    1805
15-18 months   ZVITAMBO         ZIMBABWE                       Underweight          87    1805
18-21 months   LCNI-5           MALAWI                         Normal weight       393     474
18-21 months   LCNI-5           MALAWI                         Underweight          81     474
18-21 months   MAL-ED           BANGLADESH                     Normal weight       181     209
18-21 months   MAL-ED           BANGLADESH                     Underweight          28     209
18-21 months   MAL-ED           BRAZIL                         Normal weight       160     166
18-21 months   MAL-ED           BRAZIL                         Underweight           6     166
18-21 months   MAL-ED           INDIA                          Normal weight       180     225
18-21 months   MAL-ED           INDIA                          Underweight          45     225
18-21 months   MAL-ED           NEPAL                          Normal weight       227     227
18-21 months   MAL-ED           NEPAL                          Underweight           0     227
18-21 months   MAL-ED           PERU                           Normal weight       197     202
18-21 months   MAL-ED           PERU                           Underweight           5     202
18-21 months   MAL-ED           SOUTH AFRICA                   Normal weight       222     229
18-21 months   MAL-ED           SOUTH AFRICA                   Underweight           7     229
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight       194     204
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          10     204
18-21 months   NIH-Birth        BANGLADESH                     Normal weight       345     422
18-21 months   NIH-Birth        BANGLADESH                     Underweight          77     422
18-21 months   NIH-Crypto       BANGLADESH                     Normal weight       500     546
18-21 months   NIH-Crypto       BANGLADESH                     Underweight          46     546
18-21 months   PROBIT           BELARUS                        Normal weight       210     215
18-21 months   PROBIT           BELARUS                        Underweight           5     215
18-21 months   PROVIDE          BANGLADESH                     Normal weight       444     540
18-21 months   PROVIDE          BANGLADESH                     Underweight          96     540
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         9       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       9
18-21 months   ZVITAMBO         ZIMBABWE                       Normal weight      1336    1398
18-21 months   ZVITAMBO         ZIMBABWE                       Underweight          62    1398
21-24 months   LCNI-5           MALAWI                         Normal weight       336     408
21-24 months   LCNI-5           MALAWI                         Underweight          72     408
21-24 months   MAL-ED           BANGLADESH                     Normal weight       178     207
21-24 months   MAL-ED           BANGLADESH                     Underweight          29     207
21-24 months   MAL-ED           BRAZIL                         Normal weight       158     164
21-24 months   MAL-ED           BRAZIL                         Underweight           6     164
21-24 months   MAL-ED           INDIA                          Normal weight       180     225
21-24 months   MAL-ED           INDIA                          Underweight          45     225
21-24 months   MAL-ED           NEPAL                          Normal weight       227     227
21-24 months   MAL-ED           NEPAL                          Underweight           0     227
21-24 months   MAL-ED           PERU                           Normal weight       186     189
21-24 months   MAL-ED           PERU                           Underweight           3     189
21-24 months   MAL-ED           SOUTH AFRICA                   Normal weight       224     231
21-24 months   MAL-ED           SOUTH AFRICA                   Underweight           7     231
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight       193     204
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          11     204
21-24 months   NIH-Birth        BANGLADESH                     Normal weight       335     411
21-24 months   NIH-Birth        BANGLADESH                     Underweight          76     411
21-24 months   NIH-Crypto       BANGLADESH                     Normal weight       450     490
21-24 months   NIH-Crypto       BANGLADESH                     Underweight          40     490
21-24 months   PROBIT           BELARUS                        Normal weight       200     206
21-24 months   PROBIT           BELARUS                        Underweight           6     206
21-24 months   PROVIDE          BANGLADESH                     Normal weight       386     470
21-24 months   PROVIDE          BANGLADESH                     Underweight          84     470
21-24 months   ZVITAMBO         ZIMBABWE                       Normal weight       973    1018
21-24 months   ZVITAMBO         ZIMBABWE                       Underweight          45    1018


The following strata were considered:

* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 9-12 months, studyid: LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/77048af4-1353-463c-8a70-0d85b8d20fac/84a3379f-6fbe-42b5-8ba3-ce4f1eb28e4c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/77048af4-1353-463c-8a70-0d85b8d20fac/84a3379f-6fbe-42b5-8ba3-ce4f1eb28e4c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/77048af4-1353-463c-8a70-0d85b8d20fac/84a3379f-6fbe-42b5-8ba3-ce4f1eb28e4c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     JiVitA-3         BANGLADESH                     Normal weight        NA                 0.0690822    0.0633644    0.0748000
0-3 months     JiVitA-3         BANGLADESH                     Underweight          NA                 0.0821593    0.0749521    0.0893666
0-3 months     MAL-ED           BANGLADESH                     Normal weight        NA                -0.1130642   -0.1497351   -0.0763932
0-3 months     MAL-ED           BANGLADESH                     Underweight          NA                -0.1827636   -0.2644102   -0.1011170
0-3 months     MAL-ED           BRAZIL                         Normal weight        NA                 0.1280019    0.0691473    0.1868565
0-3 months     MAL-ED           BRAZIL                         Underweight          NA                 0.2554604    0.0360032    0.4749175
0-3 months     MAL-ED           INDIA                          Normal weight        NA                -0.0672733   -0.1249567   -0.0095899
0-3 months     MAL-ED           INDIA                          Underweight          NA                -0.0265434   -0.1243298    0.0712431
0-3 months     MAL-ED           PERU                           Normal weight        NA                -0.2614391   -0.2959614   -0.2269168
0-3 months     MAL-ED           PERU                           Underweight          NA                -0.2838446   -0.5193801   -0.0483091
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.1403969   -0.1802757   -0.1005182
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.0870005   -0.2814901    0.1074892
0-3 months     NIH-Birth        BANGLADESH                     Normal weight        NA                -0.2332933   -0.2630051   -0.2035814
0-3 months     NIH-Birth        BANGLADESH                     Underweight          NA                -0.2254248   -0.2837313   -0.1671184
0-3 months     NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.2305999   -0.2488444   -0.2123555
0-3 months     NIH-Crypto       BANGLADESH                     Underweight          NA                -0.2378188   -0.2960960   -0.1795415
0-3 months     PROBIT           BELARUS                        Normal weight        NA                -0.4332978   -0.4920599   -0.3745357
0-3 months     PROBIT           BELARUS                        Underweight          NA                -0.3898844   -0.4643414   -0.3154274
0-3 months     PROVIDE          BANGLADESH                     Normal weight        NA                -0.1901955   -0.2095159   -0.1708750
0-3 months     PROVIDE          BANGLADESH                     Underweight          NA                -0.1758625   -0.2154341   -0.1362908
0-3 months     SAS-CompFeed     INDIA                          Normal weight        NA                -0.1419582   -0.1759397   -0.1079766
0-3 months     SAS-CompFeed     INDIA                          Underweight          NA                -0.1003902   -0.1275958   -0.0731845
0-3 months     ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.1497647   -0.1609216   -0.1386079
0-3 months     ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.1433530   -0.1924730   -0.0942330
3-6 months     JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0017076   -0.0078197    0.0044045
3-6 months     JiVitA-3         BANGLADESH                     Underweight          NA                -0.0066149   -0.0139428    0.0007130
3-6 months     MAL-ED           BANGLADESH                     Normal weight        NA                -0.0218257   -0.0465568    0.0029053
3-6 months     MAL-ED           BANGLADESH                     Underweight          NA                -0.0265614   -0.1009890    0.0478663
3-6 months     MAL-ED           BRAZIL                         Normal weight        NA                 0.0654668    0.0277635    0.1031702
3-6 months     MAL-ED           BRAZIL                         Underweight          NA                -0.0847461   -0.2034780    0.0339859
3-6 months     MAL-ED           INDIA                          Normal weight        NA                -0.0405994   -0.0739246   -0.0072742
3-6 months     MAL-ED           INDIA                          Underweight          NA                -0.0256463   -0.0882624    0.0369698
3-6 months     MAL-ED           PERU                           Normal weight        NA                 0.0253147   -0.0066337    0.0572631
3-6 months     MAL-ED           PERU                           Underweight          NA                 0.0422924   -0.1095914    0.1941762
3-6 months     MAL-ED           SOUTH AFRICA                   Normal weight        NA                -0.0087175   -0.0467350    0.0293001
3-6 months     MAL-ED           SOUTH AFRICA                   Underweight          NA                -0.0275228   -0.3769538    0.3219081
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0666844   -0.0994596   -0.0339093
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.1376564   -0.2923715    0.0170586
3-6 months     NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0487013   -0.0733657   -0.0240370
3-6 months     NIH-Birth        BANGLADESH                     Underweight          NA                -0.0613416   -0.1106430   -0.0120402
3-6 months     NIH-Crypto       BANGLADESH                     Normal weight        NA                 0.0286473    0.0106879    0.0466068
3-6 months     NIH-Crypto       BANGLADESH                     Underweight          NA                 0.0083046   -0.0359935    0.0526027
3-6 months     PROBIT           BELARUS                        Normal weight        NA                 0.0489403    0.0298600    0.0680206
3-6 months     PROBIT           BELARUS                        Underweight          NA                 0.0567143    0.0114500    0.1019787
3-6 months     PROVIDE          BANGLADESH                     Normal weight        NA                -0.0264802   -0.0437573   -0.0092031
3-6 months     PROVIDE          BANGLADESH                     Underweight          NA                -0.0304543   -0.0709552    0.0100465
3-6 months     SAS-CompFeed     INDIA                          Normal weight        NA                -0.0054893   -0.0218884    0.0109098
3-6 months     SAS-CompFeed     INDIA                          Underweight          NA                -0.0218176   -0.0640868    0.0204517
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0831576   -0.1003240   -0.0659912
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.1040058   -0.1700416   -0.0379700
3-6 months     ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0007402   -0.0090584    0.0105387
3-6 months     ZVITAMBO         ZIMBABWE                       Underweight          NA                 0.0137115   -0.0295328    0.0569558
6-9 months     LCNI-5           MALAWI                         Normal weight        NA                 0.0307449    0.0130219    0.0484680
6-9 months     LCNI-5           MALAWI                         Underweight          NA                 0.0200989   -0.0167127    0.0569105
6-9 months     MAL-ED           BANGLADESH                     Normal weight        NA                -0.0682751   -0.0860204   -0.0505299
6-9 months     MAL-ED           BANGLADESH                     Underweight          NA                -0.0827773   -0.1436870   -0.0218677
6-9 months     MAL-ED           BRAZIL                         Normal weight        NA                 0.0106536   -0.0255433    0.0468506
6-9 months     MAL-ED           BRAZIL                         Underweight          NA                -0.0731320   -0.1542615    0.0079974
6-9 months     MAL-ED           INDIA                          Normal weight        NA                -0.0721986   -0.0980934   -0.0463039
6-9 months     MAL-ED           INDIA                          Underweight          NA                -0.0677591   -0.1168106   -0.0187076
6-9 months     MAL-ED           PERU                           Normal weight        NA                -0.0335226   -0.0580970   -0.0089483
6-9 months     MAL-ED           PERU                           Underweight          NA                -0.0128861   -0.1464051    0.1206328
6-9 months     MAL-ED           SOUTH AFRICA                   Normal weight        NA                -0.0240804   -0.0521422    0.0039814
6-9 months     MAL-ED           SOUTH AFRICA                   Underweight          NA                 0.0123672   -0.1174254    0.1421599
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0953969   -0.1303143   -0.0604796
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.0581392   -0.1540441    0.0377658
6-9 months     NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0657412   -0.0848665   -0.0466159
6-9 months     NIH-Birth        BANGLADESH                     Underweight          NA                -0.0311253   -0.0782254    0.0159748
6-9 months     NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0304390   -0.0438495   -0.0170285
6-9 months     NIH-Crypto       BANGLADESH                     Underweight          NA                -0.0402274   -0.0813537    0.0008989
6-9 months     PROBIT           BELARUS                        Normal weight        NA                 0.0515512    0.0370690    0.0660334
6-9 months     PROBIT           BELARUS                        Underweight          NA                 0.0677547    0.0344678    0.1010415
6-9 months     PROVIDE          BANGLADESH                     Normal weight        NA                -0.0579643   -0.0698846   -0.0460439
6-9 months     PROVIDE          BANGLADESH                     Underweight          NA                -0.0783404   -0.1041644   -0.0525164
6-9 months     SAS-CompFeed     INDIA                          Normal weight        NA                -0.0814708   -0.1014879   -0.0614537
6-9 months     SAS-CompFeed     INDIA                          Underweight          NA                -0.0846573   -0.1291121   -0.0402026
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0518471   -0.0683634   -0.0353308
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.1181649   -0.1769386   -0.0593912
6-9 months     ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0319729   -0.0409160   -0.0230297
6-9 months     ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.0386088   -0.0777457    0.0005281
9-12 months    iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                -0.0466222   -0.0606123   -0.0326321
9-12 months    iLiNS-Zinc       BURKINA FASO                   Underweight          NA                -0.0665854   -0.0997142   -0.0334565
9-12 months    LCNI-5           MALAWI                         Normal weight        NA                -0.0357585   -0.0577865   -0.0137306
9-12 months    LCNI-5           MALAWI                         Underweight          NA                -0.0831956   -0.1217294   -0.0446618
9-12 months    MAL-ED           BANGLADESH                     Normal weight        NA                -0.0861675   -0.1036509   -0.0686841
9-12 months    MAL-ED           BANGLADESH                     Underweight          NA                -0.0945074   -0.1360748   -0.0529401
9-12 months    MAL-ED           BRAZIL                         Normal weight        NA                 0.0056301   -0.0258972    0.0371574
9-12 months    MAL-ED           BRAZIL                         Underweight          NA                 0.0328995   -0.1177210    0.1835200
9-12 months    MAL-ED           INDIA                          Normal weight        NA                -0.0885716   -0.1065051   -0.0706382
9-12 months    MAL-ED           INDIA                          Underweight          NA                -0.1055428   -0.1387123   -0.0723733
9-12 months    MAL-ED           SOUTH AFRICA                   Normal weight        NA                -0.0843874   -0.1118228   -0.0569521
9-12 months    MAL-ED           SOUTH AFRICA                   Underweight          NA                 0.0112711   -0.0887633    0.1113055
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.1559849   -0.1913774   -0.1205924
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.1369675   -0.2158318   -0.0581033
9-12 months    NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0366616   -0.0526180   -0.0207052
9-12 months    NIH-Birth        BANGLADESH                     Underweight          NA                -0.0688681   -0.1023711   -0.0353650
9-12 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0352756   -0.0468446   -0.0237066
9-12 months    NIH-Crypto       BANGLADESH                     Underweight          NA                -0.0243106   -0.0571762    0.0085551
9-12 months    PROBIT           BELARUS                        Normal weight        NA                 0.0396289    0.0186339    0.0606240
9-12 months    PROBIT           BELARUS                        Underweight          NA                 0.0151369   -0.0257483    0.0560221
9-12 months    PROVIDE          BANGLADESH                     Normal weight        NA                -0.0566111   -0.0686999   -0.0445223
9-12 months    PROVIDE          BANGLADESH                     Underweight          NA                -0.0930384   -0.1183477   -0.0677291
9-12 months    SAS-CompFeed     INDIA                          Normal weight        NA                -0.0823996   -0.1105966   -0.0542026
9-12 months    SAS-CompFeed     INDIA                          Underweight          NA                -0.0698850   -0.1028672   -0.0369027
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0663890   -0.0809129   -0.0518651
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 0.1003353    0.0470986    0.1535721
9-12 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0563371   -0.0642455   -0.0484286
9-12 months    ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.1053171   -0.1462416   -0.0643926
12-15 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                -0.0438739   -0.0601471   -0.0276006
12-15 months   iLiNS-Zinc       BURKINA FASO                   Underweight          NA                -0.0366366   -0.0994491    0.0261758
12-15 months   LCNI-5           MALAWI                         Normal weight        NA                -0.0421032   -0.0854622    0.0012557
12-15 months   LCNI-5           MALAWI                         Underweight          NA                -0.0299765   -0.0872227    0.0272696
12-15 months   MAL-ED           BANGLADESH                     Normal weight        NA                -0.0518484   -0.0682307   -0.0354662
12-15 months   MAL-ED           BANGLADESH                     Underweight          NA                -0.0821870   -0.1287527   -0.0356214
12-15 months   MAL-ED           BRAZIL                         Normal weight        NA                 0.0012152   -0.0216597    0.0240901
12-15 months   MAL-ED           BRAZIL                         Underweight          NA                -0.1086094   -0.2307747    0.0135559
12-15 months   MAL-ED           INDIA                          Normal weight        NA                -0.0558901   -0.0735166   -0.0382635
12-15 months   MAL-ED           INDIA                          Underweight          NA                -0.0586554   -0.0882579   -0.0290529
12-15 months   MAL-ED           SOUTH AFRICA                   Normal weight        NA                -0.0551816   -0.0788115   -0.0315516
12-15 months   MAL-ED           SOUTH AFRICA                   Underweight          NA                -0.1036277   -0.1894164   -0.0178391
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0676675   -0.0935359   -0.0417991
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.0970267   -0.1963714    0.0023181
12-15 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.1204683   -0.1398889   -0.1010478
12-15 months   NIH-Birth        BANGLADESH                     Underweight          NA                -0.1506006   -0.1822228   -0.1189783
12-15 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0383441   -0.0483107   -0.0283776
12-15 months   NIH-Crypto       BANGLADESH                     Underweight          NA                -0.0381874   -0.0686332   -0.0077416
12-15 months   PROBIT           BELARUS                        Normal weight        NA                 0.0049725   -0.1259075    0.1358524
12-15 months   PROBIT           BELARUS                        Underweight          NA                 0.0794533   -0.0871441    0.2460507
12-15 months   PROVIDE          BANGLADESH                     Normal weight        NA                -0.0364693   -0.0477593   -0.0251792
12-15 months   PROVIDE          BANGLADESH                     Underweight          NA                -0.0616061   -0.0834048   -0.0398074
12-15 months   SAS-CompFeed     INDIA                          Normal weight        NA                -0.0765590   -0.1002345   -0.0528836
12-15 months   SAS-CompFeed     INDIA                          Underweight          NA                -0.0992892   -0.1286048   -0.0699736
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0652743   -0.0801773   -0.0503713
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 0.0187086   -0.0415001    0.0789172
12-15 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0652101   -0.0765128   -0.0539074
12-15 months   ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.0070280   -0.0579703    0.0439143
15-18 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                -0.0143132   -0.0256748   -0.0029515
15-18 months   iLiNS-Zinc       BURKINA FASO                   Underweight          NA                -0.0389506   -0.0755946   -0.0023065
15-18 months   LCNI-5           MALAWI                         Normal weight        NA                -0.0417551   -0.0708890   -0.0126212
15-18 months   LCNI-5           MALAWI                         Underweight          NA                -0.0582686   -0.1119180   -0.0046191
15-18 months   MAL-ED           BANGLADESH                     Normal weight        NA                -0.0447714   -0.0592988   -0.0302440
15-18 months   MAL-ED           BANGLADESH                     Underweight          NA                -0.0525160   -0.0884447   -0.0165872
15-18 months   MAL-ED           BRAZIL                         Normal weight        NA                -0.0225887   -0.0439104   -0.0012670
15-18 months   MAL-ED           BRAZIL                         Underweight          NA                 0.0737988   -0.0144444    0.1620420
15-18 months   MAL-ED           INDIA                          Normal weight        NA                -0.0422257   -0.0566881   -0.0277633
15-18 months   MAL-ED           INDIA                          Underweight          NA                -0.0215644   -0.0495192    0.0063904
15-18 months   MAL-ED           PERU                           Normal weight        NA                -0.0361193   -0.0516539   -0.0205848
15-18 months   MAL-ED           PERU                           Underweight          NA                -0.0334437   -0.1635426    0.0966552
15-18 months   MAL-ED           SOUTH AFRICA                   Normal weight        NA                -0.0276677   -0.0475581   -0.0077773
15-18 months   MAL-ED           SOUTH AFRICA                   Underweight          NA                -0.0357594   -0.0769803    0.0054615
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0858299   -0.1089506   -0.0627092
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.0822911   -0.1673216    0.0027395
15-18 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0551751   -0.0716176   -0.0387326
15-18 months   NIH-Birth        BANGLADESH                     Underweight          NA                -0.0687833   -0.1011757   -0.0363908
15-18 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0171192   -0.0258271   -0.0084113
15-18 months   NIH-Crypto       BANGLADESH                     Underweight          NA                -0.0146101   -0.0439279    0.0147078
15-18 months   PROBIT           BELARUS                        Normal weight        NA                -0.0138663   -0.1756041    0.1478715
15-18 months   PROBIT           BELARUS                        Underweight          NA                 0.0070651   -0.1185814    0.1327116
15-18 months   PROVIDE          BANGLADESH                     Normal weight        NA                -0.0405155   -0.0499241   -0.0311069
15-18 months   PROVIDE          BANGLADESH                     Underweight          NA                -0.0253098   -0.0482457   -0.0023739
15-18 months   SAS-CompFeed     INDIA                          Normal weight        NA                -0.0150119   -0.0339979    0.0039741
15-18 months   SAS-CompFeed     INDIA                          Underweight          NA                -0.0053649   -0.0350147    0.0242848
15-18 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0627861   -0.0746998   -0.0508725
15-18 months   ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.0621443   -0.1110362   -0.0132524
18-21 months   LCNI-5           MALAWI                         Normal weight        NA                -0.0167326   -0.0352792    0.0018141
18-21 months   LCNI-5           MALAWI                         Underweight          NA                -0.0106754   -0.0413732    0.0200223
18-21 months   MAL-ED           BANGLADESH                     Normal weight        NA                -0.0169106   -0.0295894   -0.0042317
18-21 months   MAL-ED           BANGLADESH                     Underweight          NA                -0.0065447   -0.0348373    0.0217479
18-21 months   MAL-ED           BRAZIL                         Normal weight        NA                -0.0210128   -0.0464256    0.0043999
18-21 months   MAL-ED           BRAZIL                         Underweight          NA                 0.0206500   -0.0469460    0.0882461
18-21 months   MAL-ED           INDIA                          Normal weight        NA                 0.0080109   -0.0045760    0.0205978
18-21 months   MAL-ED           INDIA                          Underweight          NA                -0.0020467   -0.0294054    0.0253120
18-21 months   MAL-ED           PERU                           Normal weight        NA                -0.0079540   -0.0234231    0.0075152
18-21 months   MAL-ED           PERU                           Underweight          NA                -0.0144228   -0.1025346    0.0736890
18-21 months   MAL-ED           SOUTH AFRICA                   Normal weight        NA                -0.0312020   -0.0508270   -0.0115771
18-21 months   MAL-ED           SOUTH AFRICA                   Underweight          NA                -0.0373198   -0.1549309    0.0802912
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0282198   -0.0517152   -0.0047245
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.0278818   -0.1312697    0.0755061
18-21 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0426937   -0.0563910   -0.0289963
18-21 months   NIH-Birth        BANGLADESH                     Underweight          NA                -0.0191018   -0.0483005    0.0100968
18-21 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0293394   -0.0378730   -0.0208058
18-21 months   NIH-Crypto       BANGLADESH                     Underweight          NA                -0.0130698   -0.0346950    0.0085553
18-21 months   PROBIT           BELARUS                        Normal weight        NA                -0.0345044   -0.2383961    0.1693872
18-21 months   PROBIT           BELARUS                        Underweight          NA                -0.0254798   -0.2444661    0.1935064
18-21 months   PROVIDE          BANGLADESH                     Normal weight        NA                -0.0086099   -0.0174975    0.0002777
18-21 months   PROVIDE          BANGLADESH                     Underweight          NA                -0.0210293   -0.0414573   -0.0006014
18-21 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0655831   -0.0784782   -0.0526881
18-21 months   ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.1258513   -0.2008234   -0.0508792
21-24 months   LCNI-5           MALAWI                         Normal weight        NA                 0.0266732    0.0099113    0.0434351
21-24 months   LCNI-5           MALAWI                         Underweight          NA                 0.0232754   -0.0164691    0.0630199
21-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                 0.0252339    0.0120491    0.0384186
21-24 months   MAL-ED           BANGLADESH                     Underweight          NA                 0.0279772   -0.0033966    0.0593510
21-24 months   MAL-ED           BRAZIL                         Normal weight        NA                 0.0174037    0.0018406    0.0329667
21-24 months   MAL-ED           BRAZIL                         Underweight          NA                -0.0004476   -0.1594068    0.1585116
21-24 months   MAL-ED           INDIA                          Normal weight        NA                 0.0330704    0.0205287    0.0456121
21-24 months   MAL-ED           INDIA                          Underweight          NA                 0.0152730   -0.0065105    0.0370564
21-24 months   MAL-ED           SOUTH AFRICA                   Normal weight        NA                 0.0487442    0.0316576    0.0658307
21-24 months   MAL-ED           SOUTH AFRICA                   Underweight          NA                -0.0464430   -0.1142969    0.0214108
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0095243   -0.0132254    0.0322740
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.0031718   -0.0564943    0.0501507
21-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0409524    0.0282534    0.0536515
21-24 months   NIH-Birth        BANGLADESH                     Underweight          NA                 0.0395413    0.0094464    0.0696362
21-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                 0.0599810    0.0513501    0.0686119
21-24 months   NIH-Crypto       BANGLADESH                     Underweight          NA                 0.0450493    0.0182505    0.0718481
21-24 months   PROBIT           BELARUS                        Normal weight        NA                 0.0499618   -0.1000387    0.1999623
21-24 months   PROBIT           BELARUS                        Underweight          NA                -0.0097847   -0.3200830    0.3005135
21-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                 0.0425588    0.0330846    0.0520329
21-24 months   PROVIDE          BANGLADESH                     Underweight          NA                 0.0654223    0.0450419    0.0858026
21-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0204691    0.0069437    0.0339945
21-24 months   ZVITAMBO         ZIMBABWE                       Underweight          NA                 0.0237012   -0.0571525    0.1045549


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                 0.0741113    0.0691815    0.0790412
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                -0.1222427   -0.1559818   -0.0885037
0-3 months     MAL-ED           BRAZIL                         NA                   NA                 0.1340714    0.0769051    0.1912377
0-3 months     MAL-ED           INDIA                          NA                   NA                -0.0590383   -0.1091825   -0.0088941
0-3 months     MAL-ED           PERU                           NA                   NA                -0.2618635   -0.2960359   -0.2276911
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1375866   -0.1767594   -0.0984138
0-3 months     NIH-Birth        BANGLADESH                     NA                   NA                -0.2319865   -0.2585900   -0.2053830
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     PROBIT           BELARUS                        NA                   NA                -0.4316262   -0.4904268   -0.3728256
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                -0.1875263   -0.2048955   -0.1701570
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                -0.1310305   -0.1594783   -0.1025827
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1494543   -0.1603341   -0.1385745
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                -0.0035971   -0.0084580    0.0012639
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     MAL-ED           BRAZIL                         NA                   NA                 0.0589358    0.0222648    0.0956069
3-6 months     MAL-ED           INDIA                          NA                   NA                -0.0375957   -0.0670579   -0.0081335
3-6 months     MAL-ED           PERU                           NA                   NA                 0.0256338   -0.0057477    0.0570153
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0091896   -0.0472785    0.0288994
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     NIH-Birth        BANGLADESH                     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     PROBIT           BELARUS                        NA                   NA                 0.0492447    0.0302161    0.0682734
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0271792   -0.0431005   -0.0112579
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                -0.0098351   -0.0281172    0.0084471
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0835042   -0.1003231   -0.0666853
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0013513   -0.0082056    0.0109081
6-9 months     LCNI-5           MALAWI                         NA                   NA                 0.0289231    0.0129358    0.0449105
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     MAL-ED           BRAZIL                         NA                   NA                 0.0068258   -0.0280019    0.0416536
6-9 months     MAL-ED           INDIA                          NA                   NA                -0.0713068   -0.0942272   -0.0483864
6-9 months     MAL-ED           PERU                           NA                   NA                -0.0330997   -0.0572939   -0.0089056
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0231170   -0.0506622    0.0044281
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0934098   -0.1268763   -0.0599434
6-9 months     NIH-Birth        BANGLADESH                     NA                   NA                -0.0595548   -0.0774135   -0.0416961
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     PROBIT           BELARUS                        NA                   NA                 0.0521684    0.0376309    0.0667059
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                -0.0823248   -0.0908399   -0.0738096
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0528076   -0.0689830   -0.0366322
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0322963   -0.0410149   -0.0235777
9-12 months    iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0492418   -0.0639013   -0.0345823
9-12 months    LCNI-5           MALAWI                         NA                   NA                -0.0441370   -0.0635936   -0.0246805
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    MAL-ED           BRAZIL                         NA                   NA                 0.0069017   -0.0239759    0.0377793
9-12 months    MAL-ED           INDIA                          NA                   NA                -0.0919508   -0.1077840   -0.0761177
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0814634   -0.1083205   -0.0546062
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1549661   -0.1887326   -0.1211995
9-12 months    NIH-Birth        BANGLADESH                     NA                   NA                -0.0424748   -0.0569242   -0.0280255
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    PROBIT           BELARUS                        NA                   NA                 0.0387076    0.0176518    0.0597634
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                -0.0790426   -0.0933302   -0.0647549
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0640252   -0.0782980   -0.0497525
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0587221   -0.0665100   -0.0509341
12-15 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0428959   -0.0591047   -0.0266870
12-15 months   LCNI-5           MALAWI                         NA                   NA                -0.0398116   -0.0766125   -0.0030107
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   MAL-ED           BRAZIL                         NA                   NA                -0.0029858   -0.0256837    0.0197122
12-15 months   MAL-ED           INDIA                          NA                   NA                -0.0564431   -0.0717375   -0.0411487
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0566955   -0.0797700   -0.0336210
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693563   -0.0944134   -0.0442993
12-15 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.1259588   -0.1428870   -0.1090306
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   PROBIT           BELARUS                        NA                   NA                 0.0079757   -0.1175937    0.1335451
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                -0.0826021   -0.0977850   -0.0674191
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0647318   -0.0793477   -0.0501159
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0623023   -0.0733502   -0.0512544
15-18 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0176373   -0.0308203   -0.0044542
15-18 months   LCNI-5           MALAWI                         NA                   NA                -0.0456083   -0.0712437   -0.0199728
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   MAL-ED           BRAZIL                         NA                   NA                -0.0187111   -0.0396715    0.0022494
15-18 months   MAL-ED           INDIA                          NA                   NA                -0.0380016   -0.0508948   -0.0251084
15-18 months   MAL-ED           PERU                           NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0279240   -0.0472295   -0.0086185
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856342   -0.1079770   -0.0632914
15-18 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.0576906   -0.0723785   -0.0430027
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   PROBIT           BELARUS                        NA                   NA                -0.0129496   -0.1671849    0.1412858
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0379764   -0.0467131   -0.0292397
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                -0.0124388   -0.0250108    0.0001332
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0627552   -0.0743369   -0.0511735
18-21 months   LCNI-5           MALAWI                         NA                   NA                -0.0156975   -0.0319463    0.0005513
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   MAL-ED           BRAZIL                         NA                   NA                -0.0195070   -0.0441513    0.0051374
18-21 months   MAL-ED           INDIA                          NA                   NA                 0.0059994   -0.0054729    0.0174717
18-21 months   MAL-ED           PERU                           NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0313891   -0.0507513   -0.0120268
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282032   -0.0511144   -0.0052921
18-21 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.0383890   -0.0508204   -0.0259576
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   PROBIT           BELARUS                        NA                   NA                -0.0342946   -0.2335748    0.1649857
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0108178   -0.0189879   -0.0026477
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0682560   -0.0810364   -0.0554755
21-24 months   LCNI-5           MALAWI                         NA                   NA                 0.0260736    0.0105895    0.0415576
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0167506    0.0006604    0.0328408
21-24 months   MAL-ED           INDIA                          NA                   NA                 0.0295109    0.0185329    0.0404890
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.0458597    0.0290311    0.0626883
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0088397   -0.0128780    0.0305575
21-24 months   NIH-Birth        BANGLADESH                     NA                   NA                 0.0406915    0.0289394    0.0524435
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   PROBIT           BELARUS                        NA                   NA                 0.0482216   -0.0988166    0.1952599
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                 0.0466450    0.0380173    0.0552728
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0206119    0.0071994    0.0340245


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     JiVitA-3         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     Underweight          Normal weight      0.0130771    0.0049117    0.0212425
0-3 months     MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.0696994   -0.1592032    0.0198044
0-3 months     MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         Underweight          Normal weight      0.1274584   -0.0997536    0.3546705
0-3 months     MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          Underweight          Normal weight      0.0407299   -0.0728023    0.1542621
0-3 months     MAL-ED           PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           Underweight          Normal weight     -0.0224054   -0.2604574    0.2156466
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.0533964   -0.1451396    0.2519324
0-3 months     NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth        BANGLADESH                     Underweight          Normal weight      0.0078684   -0.0575719    0.0733088
0-3 months     NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.0072188   -0.0682852    0.0538475
0-3 months     PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        Underweight          Normal weight      0.0434134   -0.0049706    0.0917973
0-3 months     PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     Underweight          Normal weight      0.0143330   -0.0297033    0.0583693
0-3 months     SAS-CompFeed     INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          Underweight          Normal weight      0.0415680    0.0070746    0.0760614
0-3 months     ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       Underweight          Normal weight      0.0064117   -0.0439594    0.0567829
3-6 months     JiVitA-3         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     Underweight          Normal weight     -0.0049073   -0.0141032    0.0042885
3-6 months     MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.0047356   -0.0831646    0.0736933
3-6 months     MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         Underweight          Normal weight     -0.1502129   -0.2747875   -0.0256383
3-6 months     MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          Underweight          Normal weight      0.0149531   -0.0559789    0.0858851
3-6 months     MAL-ED           PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           Underweight          Normal weight      0.0169777   -0.1382299    0.1721853
3-6 months     MAL-ED           SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   Underweight          Normal weight     -0.0188054   -0.3702983    0.3326876
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0709720   -0.2291205    0.0871765
3-6 months     NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.0126402   -0.0677670    0.0424865
3-6 months     NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.0203427   -0.0681430    0.0274575
3-6 months     PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        Underweight          Normal weight      0.0077740   -0.0347623    0.0503104
3-6 months     PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.0039741   -0.0480061    0.0400579
3-6 months     SAS-CompFeed     INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          Underweight          Normal weight     -0.0163283   -0.0580821    0.0254254
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0208482   -0.0890787    0.0473824
3-6 months     ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       Underweight          Normal weight      0.0129713   -0.0313691    0.0573118
6-9 months     LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         Underweight          Normal weight     -0.0106460   -0.0515019    0.0302098
6-9 months     MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.0145022   -0.0779442    0.0489397
6-9 months     MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         Underweight          Normal weight     -0.0837857   -0.1726238    0.0050525
6-9 months     MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          Underweight          Normal weight      0.0044396   -0.0510274    0.0599065
6-9 months     MAL-ED           PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           Underweight          Normal weight      0.0206365   -0.1151251    0.1563981
6-9 months     MAL-ED           SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   Underweight          Normal weight      0.0364476   -0.0963439    0.1692391
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.0372578   -0.0648058    0.1393214
6-9 months     NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth        BANGLADESH                     Underweight          Normal weight      0.0346159   -0.0162191    0.0854509
6-9 months     NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.0097884   -0.0530460    0.0334691
6-9 months     PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        Underweight          Normal weight      0.0162034   -0.0136285    0.0460354
6-9 months     PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.0203761   -0.0488186    0.0080664
6-9 months     SAS-CompFeed     INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          Underweight          Normal weight     -0.0031865   -0.0650065    0.0586334
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0663178   -0.1273680   -0.0052675
6-9 months     ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.0066359   -0.0467817    0.0335098
9-12 months    iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     -0.0199632   -0.0481416    0.0082153
9-12 months    LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         Underweight          Normal weight     -0.0474371   -0.0918227   -0.0030515
9-12 months    MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.0083399   -0.0534344    0.0367546
9-12 months    MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         Underweight          Normal weight      0.0272694   -0.1266153    0.1811541
9-12 months    MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          Underweight          Normal weight     -0.0169712   -0.0546783    0.0207359
9-12 months    MAL-ED           SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   Underweight          Normal weight      0.0956585   -0.0080698    0.1993869
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.0190173   -0.0674245    0.1054592
9-12 months    NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.0322064   -0.0693152    0.0049023
9-12 months    NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     Underweight          Normal weight      0.0109650   -0.0238774    0.0458074
9-12 months    PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        Underweight          Normal weight     -0.0244920   -0.0591602    0.0101761
9-12 months    PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.0364273   -0.0644755   -0.0083791
9-12 months    SAS-CompFeed     INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          Underweight          Normal weight      0.0125146   -0.0458058    0.0708351
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.1667244    0.1115420    0.2219067
9-12 months    ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.0489800   -0.0906617   -0.0072984
12-15 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight      0.0072372   -0.0582048    0.0726793
12-15 months   LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5           MALAWI                         Underweight          Normal weight      0.0121267   -0.0596864    0.0839397
12-15 months   MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.0303386   -0.0797019    0.0190247
12-15 months   MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         Underweight          Normal weight     -0.1098246   -0.2341130    0.0144639
12-15 months   MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          Underweight          Normal weight     -0.0027653   -0.0372182    0.0316876
12-15 months   MAL-ED           SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   Underweight          Normal weight     -0.0484462   -0.1374297    0.0405373
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0293591   -0.1320165    0.0732983
12-15 months   NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.0301322   -0.0672418    0.0069774
12-15 months   NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     Underweight          Normal weight      0.0001567   -0.0318789    0.0321923
12-15 months   PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        Underweight          Normal weight      0.0744808   -0.1428380    0.2917997
12-15 months   PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.0251369   -0.0496857   -0.0005880
12-15 months   SAS-CompFeed     INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          Underweight          Normal weight     -0.0227302   -0.0685526    0.0230922
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.0839828    0.0219572    0.1460085
12-15 months   ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       Underweight          Normal weight      0.0581821    0.0060010    0.1103632
15-18 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     -0.0246374   -0.0586738    0.0093990
15-18 months   LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5           MALAWI                         Underweight          Normal weight     -0.0165134   -0.0775630    0.0445361
15-18 months   MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.0077445   -0.0464991    0.0310101
15-18 months   MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         Underweight          Normal weight      0.0963875    0.0056049    0.1871701
15-18 months   MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          Underweight          Normal weight      0.0206613   -0.0108130    0.0521356
15-18 months   MAL-ED           PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           Underweight          Normal weight      0.0026756   -0.1283475    0.1336987
15-18 months   MAL-ED           SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   Underweight          Normal weight     -0.0080917   -0.0538606    0.0376772
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.0035388   -0.0845791    0.0916567
15-18 months   NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.0136082   -0.0499349    0.0227185
15-18 months   NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     Underweight          Normal weight      0.0025092   -0.0280746    0.0330929
15-18 months   PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   PROBIT           BELARUS                        Underweight          Normal weight      0.0209314   -0.1939366    0.2357993
15-18 months   PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     Underweight          Normal weight      0.0152057   -0.0095850    0.0399963
15-18 months   SAS-CompFeed     INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          Underweight          Normal weight      0.0096470   -0.0320970    0.0513909
15-18 months   ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       Underweight          Normal weight      0.0006418   -0.0496806    0.0509643
18-21 months   LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         Underweight          Normal weight      0.0060572   -0.0298083    0.0419226
18-21 months   MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     Underweight          Normal weight      0.0103659   -0.0206377    0.0413695
18-21 months   MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         Underweight          Normal weight      0.0416629   -0.0305523    0.1138781
18-21 months   MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          Underweight          Normal weight     -0.0100576   -0.0401728    0.0200577
18-21 months   MAL-ED           PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           Underweight          Normal weight     -0.0064688   -0.0959282    0.0829906
18-21 months   MAL-ED           SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   Underweight          Normal weight     -0.0061178   -0.1253549    0.1131193
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.0003380   -0.1056860    0.1063620
18-21 months   NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth        BANGLADESH                     Underweight          Normal weight      0.0235919   -0.0086600    0.0558437
18-21 months   NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     Underweight          Normal weight      0.0162696   -0.0069784    0.0395176
18-21 months   PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   PROBIT           BELARUS                        Underweight          Normal weight      0.0090246   -0.2777268    0.2957760
18-21 months   PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.0124194   -0.0346970    0.0098582
18-21 months   ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.0602681   -0.1363411    0.0158048
21-24 months   LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         Underweight          Normal weight     -0.0033978   -0.0465323    0.0397367
21-24 months   MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     Underweight          Normal weight      0.0027434   -0.0312883    0.0367750
21-24 months   MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         Underweight          Normal weight     -0.0178513   -0.1775706    0.1418680
21-24 months   MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          Underweight          Normal weight     -0.0177974   -0.0429333    0.0073384
21-24 months   MAL-ED           SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   Underweight          Normal weight     -0.0951872   -0.1651593   -0.0252151
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0126961   -0.0706688    0.0452766
21-24 months   NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.0014111   -0.0340756    0.0312534
21-24 months   NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.0149317   -0.0430861    0.0132226
21-24 months   PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   PROBIT           BELARUS                        Underweight          Normal weight     -0.0597465   -0.3935649    0.2740718
21-24 months   PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     Underweight          Normal weight      0.0228635    0.0003887    0.0453384
21-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       Underweight          Normal weight      0.0032321   -0.0787450    0.0852093


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     JiVitA-3         BANGLADESH                     Normal weight        NA                 0.0050291    0.0018849    0.0081733
0-3 months     MAL-ED           BANGLADESH                     Normal weight        NA                -0.0091785   -0.0213333    0.0029763
0-3 months     MAL-ED           BRAZIL                         Normal weight        NA                 0.0060694   -0.0055069    0.0176458
0-3 months     MAL-ED           INDIA                          Normal weight        NA                 0.0082350   -0.0148423    0.0313123
0-3 months     MAL-ED           PERU                           Normal weight        NA                -0.0004243   -0.0063871    0.0055384
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0028103   -0.0077534    0.0133741
0-3 months     NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0013068   -0.0095641    0.0121776
0-3 months     NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0006608   -0.0062529    0.0049312
0-3 months     PROBIT           BELARUS                        Normal weight        NA                 0.0016716   -0.0001959    0.0035391
0-3 months     PROVIDE          BANGLADESH                     Normal weight        NA                 0.0026692   -0.0055430    0.0108814
0-3 months     SAS-CompFeed     INDIA                          Normal weight        NA                 0.0109277    0.0009189    0.0209365
0-3 months     ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0003104   -0.0021285    0.0027493
3-6 months     JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0018895   -0.0054263    0.0016474
3-6 months     MAL-ED           BANGLADESH                     Normal weight        NA                -0.0006150   -0.0108027    0.0095726
3-6 months     MAL-ED           BRAZIL                         Normal weight        NA                -0.0065310   -0.0133746    0.0003126
3-6 months     MAL-ED           INDIA                          Normal weight        NA                 0.0030037   -0.0112659    0.0172732
3-6 months     MAL-ED           PERU                           Normal weight        NA                 0.0003191   -0.0035710    0.0042092
3-6 months     MAL-ED           SOUTH AFRICA                   Normal weight        NA                -0.0004721   -0.0093041    0.0083599
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0038604   -0.0127023    0.0049815
3-6 months     NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0021994   -0.0118000    0.0074013
3-6 months     NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0018733   -0.0062967    0.0025502
3-6 months     PROBIT           BELARUS                        Normal weight        NA                 0.0003044   -0.0013636    0.0019725
3-6 months     PROVIDE          BANGLADESH                     Normal weight        NA                -0.0006990   -0.0084442    0.0070463
3-6 months     SAS-CompFeed     INDIA                          Normal weight        NA                -0.0043458   -0.0154194    0.0067278
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0003466   -0.0020573    0.0013641
3-6 months     ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0006111   -0.0014791    0.0027013
6-9 months     LCNI-5           MALAWI                         Normal weight        NA                -0.0018218   -0.0088210    0.0051775
6-9 months     MAL-ED           BANGLADESH                     Normal weight        NA                -0.0017480   -0.0094201    0.0059241
6-9 months     MAL-ED           BRAZIL                         Normal weight        NA                -0.0038278   -0.0085681    0.0009126
6-9 months     MAL-ED           INDIA                          Normal weight        NA                 0.0008918   -0.0102524    0.0120360
6-9 months     MAL-ED           PERU                           Normal weight        NA                 0.0004229   -0.0029910    0.0038368
6-9 months     MAL-ED           SOUTH AFRICA                   Normal weight        NA                 0.0009634   -0.0026284    0.0045551
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0019871   -0.0035656    0.0075398
6-9 months     NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0061864   -0.0029731    0.0153458
6-9 months     NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0009248   -0.0050172    0.0031677
6-9 months     PROBIT           BELARUS                        Normal weight        NA                 0.0006171   -0.0005433    0.0017776
6-9 months     PROVIDE          BANGLADESH                     Normal weight        NA                -0.0034621   -0.0083359    0.0014117
6-9 months     SAS-CompFeed     INDIA                          Normal weight        NA                -0.0008540   -0.0174397    0.0157317
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0009605   -0.0025403    0.0006194
6-9 months     ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0003234   -0.0022805    0.0016336
9-12 months    iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                -0.0026196   -0.0063054    0.0010662
9-12 months    LCNI-5           MALAWI                         Normal weight        NA                -0.0083785   -0.0164241   -0.0003329
9-12 months    MAL-ED           BANGLADESH                     Normal weight        NA                -0.0010379   -0.0066612    0.0045855
9-12 months    MAL-ED           BRAZIL                         Normal weight        NA                 0.0012716   -0.0059503    0.0084935
9-12 months    MAL-ED           INDIA                          Normal weight        NA                -0.0033792   -0.0109393    0.0041809
9-12 months    MAL-ED           SOUTH AFRICA                   Normal weight        NA                 0.0029241   -0.0008998    0.0067480
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0010188   -0.0036460    0.0056836
9-12 months    NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0058132   -0.0126021    0.0009757
9-12 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                 0.0009761   -0.0021345    0.0040868
9-12 months    PROBIT           BELARUS                        Normal weight        NA                -0.0009213   -0.0022933    0.0004506
9-12 months    PROVIDE          BANGLADESH                     Normal weight        NA                -0.0064359   -0.0115221   -0.0013497
9-12 months    SAS-CompFeed     INDIA                          Normal weight        NA                 0.0033570   -0.0123663    0.0190803
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0023638    0.0005430    0.0041845
9-12 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0023850   -0.0044343   -0.0003357
12-15 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0009780   -0.0080261    0.0099821
12-15 months   LCNI-5           MALAWI                         Normal weight        NA                 0.0022917   -0.0113046    0.0158879
12-15 months   MAL-ED           BANGLADESH                     Normal weight        NA                -0.0038639   -0.0102971    0.0025694
12-15 months   MAL-ED           BRAZIL                         Normal weight        NA                -0.0042009   -0.0098550    0.0014531
12-15 months   MAL-ED           INDIA                          Normal weight        NA                -0.0005531   -0.0074452    0.0063390
12-15 months   MAL-ED           SOUTH AFRICA                   Normal weight        NA                -0.0015139   -0.0045067    0.0014788
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0016888   -0.0076610    0.0042834
12-15 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0054905   -0.0123353    0.0013544
12-15 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                 0.0000128   -0.0026083    0.0026339
12-15 months   PROBIT           BELARUS                        Normal weight        NA                 0.0030033   -0.0052626    0.0112691
12-15 months   PROVIDE          BANGLADESH                     Normal weight        NA                -0.0044415   -0.0088550   -0.0000279
12-15 months   SAS-CompFeed     INDIA                          Normal weight        NA                -0.0060430   -0.0180624    0.0059764
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0005425   -0.0010790    0.0021641
12-15 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0029078    0.0002481    0.0055676
15-18 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                -0.0033241   -0.0087242    0.0020760
15-18 months   LCNI-5           MALAWI                         Normal weight        NA                -0.0038531   -0.0181532    0.0104469
15-18 months   MAL-ED           BANGLADESH                     Normal weight        NA                -0.0010229   -0.0061536    0.0041079
15-18 months   MAL-ED           BRAZIL                         Normal weight        NA                 0.0038777   -0.0007379    0.0084933
15-18 months   MAL-ED           INDIA                          Normal weight        NA                 0.0042241   -0.0023025    0.0107507
15-18 months   MAL-ED           PERU                           Normal weight        NA                 0.0000628   -0.0032132    0.0033388
15-18 months   MAL-ED           SOUTH AFRICA                   Normal weight        NA                -0.0002563   -0.0017180    0.0012054
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0001957   -0.0046784    0.0050698
15-18 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0025155   -0.0092485    0.0042174
15-18 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                 0.0002119   -0.0023711    0.0027949
15-18 months   PROBIT           BELARUS                        Normal weight        NA                 0.0009167   -0.0081995    0.0100330
15-18 months   PROVIDE          BANGLADESH                     Normal weight        NA                 0.0025391   -0.0016288    0.0067070
15-18 months   SAS-CompFeed     INDIA                          Normal weight        NA                 0.0025731   -0.0086631    0.0138094
15-18 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0000309   -0.0023946    0.0024565
18-21 months   LCNI-5           MALAWI                         Normal weight        NA                 0.0010351   -0.0050973    0.0071674
18-21 months   MAL-ED           BANGLADESH                     Normal weight        NA                 0.0013887   -0.0027925    0.0055699
18-21 months   MAL-ED           BRAZIL                         Normal weight        NA                 0.0015059   -0.0013613    0.0043731
18-21 months   MAL-ED           INDIA                          Normal weight        NA                -0.0020115   -0.0080576    0.0040345
18-21 months   MAL-ED           PERU                           Normal weight        NA                -0.0001601   -0.0024009    0.0020807
18-21 months   MAL-ED           SOUTH AFRICA                   Normal weight        NA                -0.0001870   -0.0038344    0.0034604
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0000166   -0.0051807    0.0052138
18-21 months   NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0043047   -0.0016442    0.0102535
18-21 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                 0.0013707   -0.0006243    0.0033657
18-21 months   PROBIT           BELARUS                        Normal weight        NA                 0.0002099   -0.0068517    0.0072715
18-21 months   PROVIDE          BANGLADESH                     Normal weight        NA                -0.0022079   -0.0061886    0.0017728
18-21 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0026728   -0.0061088    0.0007631
21-24 months   LCNI-5           MALAWI                         Normal weight        NA                -0.0005996   -0.0082126    0.0070134
21-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                 0.0003843   -0.0043852    0.0051538
21-24 months   MAL-ED           BRAZIL                         Normal weight        NA                -0.0006531   -0.0065191    0.0052129
21-24 months   MAL-ED           INDIA                          Normal weight        NA                -0.0035595   -0.0086724    0.0015534
21-24 months   MAL-ED           SOUTH AFRICA                   Normal weight        NA                -0.0028845   -0.0058749    0.0001060
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0006846   -0.0038354    0.0024662
21-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0002609   -0.0063013    0.0057794
21-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0012189   -0.0035456    0.0011078
21-24 months   PROBIT           BELARUS                        Normal weight        NA                -0.0017402   -0.0118368    0.0083564
21-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                 0.0040862   -0.0000080    0.0081805
21-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0001429   -0.0034811    0.0037668
