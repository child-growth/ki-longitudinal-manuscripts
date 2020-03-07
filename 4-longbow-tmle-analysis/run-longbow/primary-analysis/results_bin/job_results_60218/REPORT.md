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

**Outcome Variable:** ever_sstunted

## Predictor Variables

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        sex       ever_sstunted   n_cell       n
------------  ---------------  -----------------------------  -------  --------------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          Female                0       80     373
0-24 months   CMC-V-BCS-2002   INDIA                          Female                1      107     373
0-24 months   CMC-V-BCS-2002   INDIA                          Male                  0       56     373
0-24 months   CMC-V-BCS-2002   INDIA                          Male                  1      130     373
0-24 months   CMIN             BANGLADESH                     Female                0       60     277
0-24 months   CMIN             BANGLADESH                     Female                1       60     277
0-24 months   CMIN             BANGLADESH                     Male                  0       79     277
0-24 months   CMIN             BANGLADESH                     Male                  1       78     277
0-24 months   COHORTS          GUATEMALA                      Female                0      365    1368
0-24 months   COHORTS          GUATEMALA                      Female                1      279    1368
0-24 months   COHORTS          GUATEMALA                      Male                  0      368    1368
0-24 months   COHORTS          GUATEMALA                      Male                  1      356    1368
0-24 months   COHORTS          INDIA                          Female                0     3163    7417
0-24 months   COHORTS          INDIA                          Female                1      391    7417
0-24 months   COHORTS          INDIA                          Male                  0     3308    7417
0-24 months   COHORTS          INDIA                          Male                  1      555    7417
0-24 months   COHORTS          PHILIPPINES                    Female                0      972    3058
0-24 months   COHORTS          PHILIPPINES                    Female                1      465    3058
0-24 months   COHORTS          PHILIPPINES                    Male                  0      997    3058
0-24 months   COHORTS          PHILIPPINES                    Male                  1      624    3058
0-24 months   CONTENT          PERU                           Female                0      107     215
0-24 months   CONTENT          PERU                           Female                1        2     215
0-24 months   CONTENT          PERU                           Male                  0       98     215
0-24 months   CONTENT          PERU                           Male                  1        8     215
0-24 months   EE               PAKISTAN                       Female                0       76     379
0-24 months   EE               PAKISTAN                       Female                1      109     379
0-24 months   EE               PAKISTAN                       Male                  0       75     379
0-24 months   EE               PAKISTAN                       Male                  1      119     379
0-24 months   GMS-Nepal        NEPAL                          Female                0      253     698
0-24 months   GMS-Nepal        NEPAL                          Female                1       75     698
0-24 months   GMS-Nepal        NEPAL                          Male                  0      276     698
0-24 months   GMS-Nepal        NEPAL                          Male                  1       94     698
0-24 months   Guatemala BSC    GUATEMALA                      Female                0      146     315
0-24 months   Guatemala BSC    GUATEMALA                      Female                1       16     315
0-24 months   Guatemala BSC    GUATEMALA                      Male                  0      113     315
0-24 months   Guatemala BSC    GUATEMALA                      Male                  1       40     315
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female                0     1490    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female                1      135    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   Male                  0     1418    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   Male                  1      222    3265
0-24 months   IRC              INDIA                          Female                0      142     410
0-24 months   IRC              INDIA                          Female                1       43     410
0-24 months   IRC              INDIA                          Male                  0      166     410
0-24 months   IRC              INDIA                          Male                  1       59     410
0-24 months   JiVitA-3         BANGLADESH                     Female                0    11175   27227
0-24 months   JiVitA-3         BANGLADESH                     Female                1     2201   27227
0-24 months   JiVitA-3         BANGLADESH                     Male                  0    11030   27227
0-24 months   JiVitA-3         BANGLADESH                     Male                  1     2821   27227
0-24 months   JiVitA-4         BANGLADESH                     Female                0     2245    5442
0-24 months   JiVitA-4         BANGLADESH                     Female                1      479    5442
0-24 months   JiVitA-4         BANGLADESH                     Male                  0     2091    5442
0-24 months   JiVitA-4         BANGLADESH                     Male                  1      627    5442
0-24 months   Keneba           GAMBIA                         Female                0     1155    2915
0-24 months   Keneba           GAMBIA                         Female                1      252    2915
0-24 months   Keneba           GAMBIA                         Male                  0     1141    2915
0-24 months   Keneba           GAMBIA                         Male                  1      367    2915
0-24 months   LCNI-5           MALAWI                         Female                0      356     840
0-24 months   LCNI-5           MALAWI                         Female                1       65     840
0-24 months   LCNI-5           MALAWI                         Male                  0      307     840
0-24 months   LCNI-5           MALAWI                         Male                  1      112     840
0-24 months   MAL-ED           BANGLADESH                     Female                0      111     265
0-24 months   MAL-ED           BANGLADESH                     Female                1       25     265
0-24 months   MAL-ED           BANGLADESH                     Male                  0       96     265
0-24 months   MAL-ED           BANGLADESH                     Male                  1       33     265
0-24 months   MAL-ED           BRAZIL                         Female                0      104     233
0-24 months   MAL-ED           BRAZIL                         Female                1        9     233
0-24 months   MAL-ED           BRAZIL                         Male                  0      107     233
0-24 months   MAL-ED           BRAZIL                         Male                  1       13     233
0-24 months   MAL-ED           INDIA                          Female                0      112     251
0-24 months   MAL-ED           INDIA                          Female                1       26     251
0-24 months   MAL-ED           INDIA                          Male                  0       80     251
0-24 months   MAL-ED           INDIA                          Male                  1       33     251
0-24 months   MAL-ED           NEPAL                          Female                0      102     240
0-24 months   MAL-ED           NEPAL                          Female                1        8     240
0-24 months   MAL-ED           NEPAL                          Male                  0      117     240
0-24 months   MAL-ED           NEPAL                          Male                  1       13     240
0-24 months   MAL-ED           PERU                           Female                0      118     303
0-24 months   MAL-ED           PERU                           Female                1       25     303
0-24 months   MAL-ED           PERU                           Male                  0      121     303
0-24 months   MAL-ED           PERU                           Male                  1       39     303
0-24 months   MAL-ED           SOUTH AFRICA                   Female                0      126     314
0-24 months   MAL-ED           SOUTH AFRICA                   Female                1       33     314
0-24 months   MAL-ED           SOUTH AFRICA                   Male                  0      115     314
0-24 months   MAL-ED           SOUTH AFRICA                   Male                  1       40     314
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female                0       70     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female                1       63     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                  0       55     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                  1       74     262
0-24 months   NIH-Birth        BANGLADESH                     Female                0      217     629
0-24 months   NIH-Birth        BANGLADESH                     Female                1       80     629
0-24 months   NIH-Birth        BANGLADESH                     Male                  0      216     629
0-24 months   NIH-Birth        BANGLADESH                     Male                  1      116     629
0-24 months   NIH-Crypto       BANGLADESH                     Female                0      336     758
0-24 months   NIH-Crypto       BANGLADESH                     Female                1       45     758
0-24 months   NIH-Crypto       BANGLADESH                     Male                  0      323     758
0-24 months   NIH-Crypto       BANGLADESH                     Male                  1       54     758
0-24 months   PROBIT           BELARUS                        Female                0     8022   16897
0-24 months   PROBIT           BELARUS                        Female                1      132   16897
0-24 months   PROBIT           BELARUS                        Male                  0     8408   16897
0-24 months   PROBIT           BELARUS                        Male                  1      335   16897
0-24 months   PROVIDE          BANGLADESH                     Female                0      291     700
0-24 months   PROVIDE          BANGLADESH                     Female                1       41     700
0-24 months   PROVIDE          BANGLADESH                     Male                  0      314     700
0-24 months   PROVIDE          BANGLADESH                     Male                  1       54     700
0-24 months   ResPak           PAKISTAN                       Female                0       86     284
0-24 months   ResPak           PAKISTAN                       Female                1       50     284
0-24 months   ResPak           PAKISTAN                       Male                  0       79     284
0-24 months   ResPak           PAKISTAN                       Male                  1       69     284
0-24 months   SAS-CompFeed     INDIA                          Female                0      483    1533
0-24 months   SAS-CompFeed     INDIA                          Female                1      217    1533
0-24 months   SAS-CompFeed     INDIA                          Male                  0      543    1533
0-24 months   SAS-CompFeed     INDIA                          Male                  1      290    1533
0-24 months   SAS-FoodSuppl    INDIA                          Female                0      125     418
0-24 months   SAS-FoodSuppl    INDIA                          Female                1       98     418
0-24 months   SAS-FoodSuppl    INDIA                          Male                  0       92     418
0-24 months   SAS-FoodSuppl    INDIA                          Male                  1      103     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female                0     1101    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female                1       83    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                  0     1056    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                  1      156    2396
0-24 months   ZVITAMBO         ZIMBABWE                       Female                0     5887   14074
0-24 months   ZVITAMBO         ZIMBABWE                       Female                1      948   14074
0-24 months   ZVITAMBO         ZIMBABWE                       Male                  0     5821   14074
0-24 months   ZVITAMBO         ZIMBABWE                       Male                  1     1418   14074
0-6 months    CMC-V-BCS-2002   INDIA                          Female                0      147     368
0-6 months    CMC-V-BCS-2002   INDIA                          Female                1       38     368
0-6 months    CMC-V-BCS-2002   INDIA                          Male                  0      130     368
0-6 months    CMC-V-BCS-2002   INDIA                          Male                  1       53     368
0-6 months    CMIN             BANGLADESH                     Female                0       97     277
0-6 months    CMIN             BANGLADESH                     Female                1       23     277
0-6 months    CMIN             BANGLADESH                     Male                  0      110     277
0-6 months    CMIN             BANGLADESH                     Male                  1       47     277
0-6 months    COHORTS          GUATEMALA                      Female                0      476    1092
0-6 months    COHORTS          GUATEMALA                      Female                1       45    1092
0-6 months    COHORTS          GUATEMALA                      Male                  0      506    1092
0-6 months    COHORTS          GUATEMALA                      Male                  1       65    1092
0-6 months    COHORTS          INDIA                          Female                0     3329    7176
0-6 months    COHORTS          INDIA                          Female                1      151    7176
0-6 months    COHORTS          INDIA                          Male                  0     3494    7176
0-6 months    COHORTS          INDIA                          Male                  1      202    7176
0-6 months    COHORTS          PHILIPPINES                    Female                0     1374    3058
0-6 months    COHORTS          PHILIPPINES                    Female                1       63    3058
0-6 months    COHORTS          PHILIPPINES                    Male                  0     1493    3058
0-6 months    COHORTS          PHILIPPINES                    Male                  1      128    3058
0-6 months    CONTENT          PERU                           Female                0      107     215
0-6 months    CONTENT          PERU                           Female                1        2     215
0-6 months    CONTENT          PERU                           Male                  0      100     215
0-6 months    CONTENT          PERU                           Male                  1        6     215
0-6 months    EE               PAKISTAN                       Female                0      111     379
0-6 months    EE               PAKISTAN                       Female                1       74     379
0-6 months    EE               PAKISTAN                       Male                  0      107     379
0-6 months    EE               PAKISTAN                       Male                  1       87     379
0-6 months    GMS-Nepal        NEPAL                          Female                0      305     698
0-6 months    GMS-Nepal        NEPAL                          Female                1       23     698
0-6 months    GMS-Nepal        NEPAL                          Male                  0      333     698
0-6 months    GMS-Nepal        NEPAL                          Male                  1       37     698
0-6 months    Guatemala BSC    GUATEMALA                      Female                0      146     295
0-6 months    Guatemala BSC    GUATEMALA                      Female                1        8     295
0-6 months    Guatemala BSC    GUATEMALA                      Male                  0      122     295
0-6 months    Guatemala BSC    GUATEMALA                      Male                  1       19     295
0-6 months    IRC              INDIA                          Female                0      159     410
0-6 months    IRC              INDIA                          Female                1       26     410
0-6 months    IRC              INDIA                          Male                  0      189     410
0-6 months    IRC              INDIA                          Male                  1       36     410
0-6 months    JiVitA-3         BANGLADESH                     Female                0    11526   27161
0-6 months    JiVitA-3         BANGLADESH                     Female                1     1826   27161
0-6 months    JiVitA-3         BANGLADESH                     Male                  0    11632   27161
0-6 months    JiVitA-3         BANGLADESH                     Male                  1     2177   27161
0-6 months    JiVitA-4         BANGLADESH                     Female                0     2358    5130
0-6 months    JiVitA-4         BANGLADESH                     Female                1      225    5130
0-6 months    JiVitA-4         BANGLADESH                     Male                  0     2252    5130
0-6 months    JiVitA-4         BANGLADESH                     Male                  1      295    5130
0-6 months    Keneba           GAMBIA                         Female                0     1069    2465
0-6 months    Keneba           GAMBIA                         Female                1      116    2465
0-6 months    Keneba           GAMBIA                         Male                  0     1109    2465
0-6 months    Keneba           GAMBIA                         Male                  1      171    2465
0-6 months    LCNI-5           MALAWI                         Female                0      125     272
0-6 months    LCNI-5           MALAWI                         Female                1        4     272
0-6 months    LCNI-5           MALAWI                         Male                  0      127     272
0-6 months    LCNI-5           MALAWI                         Male                  1       16     272
0-6 months    MAL-ED           BANGLADESH                     Female                0      125     265
0-6 months    MAL-ED           BANGLADESH                     Female                1       11     265
0-6 months    MAL-ED           BANGLADESH                     Male                  0      119     265
0-6 months    MAL-ED           BANGLADESH                     Male                  1       10     265
0-6 months    MAL-ED           BRAZIL                         Female                0      104     233
0-6 months    MAL-ED           BRAZIL                         Female                1        9     233
0-6 months    MAL-ED           BRAZIL                         Male                  0      112     233
0-6 months    MAL-ED           BRAZIL                         Male                  1        8     233
0-6 months    MAL-ED           INDIA                          Female                0      131     251
0-6 months    MAL-ED           INDIA                          Female                1        7     251
0-6 months    MAL-ED           INDIA                          Male                  0       99     251
0-6 months    MAL-ED           INDIA                          Male                  1       14     251
0-6 months    MAL-ED           NEPAL                          Female                0      109     240
0-6 months    MAL-ED           NEPAL                          Female                1        1     240
0-6 months    MAL-ED           NEPAL                          Male                  0      121     240
0-6 months    MAL-ED           NEPAL                          Male                  1        9     240
0-6 months    MAL-ED           PERU                           Female                0      128     303
0-6 months    MAL-ED           PERU                           Female                1       15     303
0-6 months    MAL-ED           PERU                           Male                  0      137     303
0-6 months    MAL-ED           PERU                           Male                  1       23     303
0-6 months    MAL-ED           SOUTH AFRICA                   Female                0      143     314
0-6 months    MAL-ED           SOUTH AFRICA                   Female                1       16     314
0-6 months    MAL-ED           SOUTH AFRICA                   Male                  0      142     314
0-6 months    MAL-ED           SOUTH AFRICA                   Male                  1       13     314
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female                0      113     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female                1       20     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                  0      111     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                  1       18     262
0-6 months    NIH-Birth        BANGLADESH                     Female                0      271     629
0-6 months    NIH-Birth        BANGLADESH                     Female                1       26     629
0-6 months    NIH-Birth        BANGLADESH                     Male                  0      299     629
0-6 months    NIH-Birth        BANGLADESH                     Male                  1       33     629
0-6 months    NIH-Crypto       BANGLADESH                     Female                0      362     758
0-6 months    NIH-Crypto       BANGLADESH                     Female                1       19     758
0-6 months    NIH-Crypto       BANGLADESH                     Male                  0      349     758
0-6 months    NIH-Crypto       BANGLADESH                     Male                  1       28     758
0-6 months    PROBIT           BELARUS                        Female                0     8107   16892
0-6 months    PROBIT           BELARUS                        Female                1       45   16892
0-6 months    PROBIT           BELARUS                        Male                  0     8600   16892
0-6 months    PROBIT           BELARUS                        Male                  1      140   16892
0-6 months    PROVIDE          BANGLADESH                     Female                0      323     700
0-6 months    PROVIDE          BANGLADESH                     Female                1        9     700
0-6 months    PROVIDE          BANGLADESH                     Male                  0      346     700
0-6 months    PROVIDE          BANGLADESH                     Male                  1       22     700
0-6 months    ResPak           PAKISTAN                       Female                0       90     282
0-6 months    ResPak           PAKISTAN                       Female                1       46     282
0-6 months    ResPak           PAKISTAN                       Male                  0       89     282
0-6 months    ResPak           PAKISTAN                       Male                  1       57     282
0-6 months    SAS-CompFeed     INDIA                          Female                0      610    1530
0-6 months    SAS-CompFeed     INDIA                          Female                1       90    1530
0-6 months    SAS-CompFeed     INDIA                          Male                  0      691    1530
0-6 months    SAS-CompFeed     INDIA                          Male                  1      139    1530
0-6 months    SAS-FoodSuppl    INDIA                          Female                0      197     416
0-6 months    SAS-FoodSuppl    INDIA                          Female                1       25     416
0-6 months    SAS-FoodSuppl    INDIA                          Male                  0      169     416
0-6 months    SAS-FoodSuppl    INDIA                          Male                  1       25     416
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female                0     1143    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female                1       41    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                  0     1148    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                  1       64    2396
0-6 months    ZVITAMBO         ZIMBABWE                       Female                0     6284   14057
0-6 months    ZVITAMBO         ZIMBABWE                       Female                1      545   14057
0-6 months    ZVITAMBO         ZIMBABWE                       Male                  0     6491   14057
0-6 months    ZVITAMBO         ZIMBABWE                       Male                  1      737   14057


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/cff30b1c-3777-4dca-b180-f7588728a54c/e1cb8d72-9f71-4f41-81c9-eb3f19cc11c6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cff30b1c-3777-4dca-b180-f7588728a54c/e1cb8d72-9f71-4f41-81c9-eb3f19cc11c6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cff30b1c-3777-4dca-b180-f7588728a54c/e1cb8d72-9f71-4f41-81c9-eb3f19cc11c6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cff30b1c-3777-4dca-b180-f7588728a54c/e1cb8d72-9f71-4f41-81c9-eb3f19cc11c6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Female               NA                0.5721925   0.5011848   0.6432002
0-24 months   CMC-V-BCS-2002   INDIA                          Male                 NA                0.6989247   0.6329121   0.7649374
0-24 months   CMIN             BANGLADESH                     Female               NA                0.5000000   0.4103784   0.5896216
0-24 months   CMIN             BANGLADESH                     Male                 NA                0.4968153   0.4184642   0.5751663
0-24 months   COHORTS          GUATEMALA                      Female               NA                0.4332298   0.3949450   0.4715146
0-24 months   COHORTS          GUATEMALA                      Male                 NA                0.4917127   0.4552836   0.5281418
0-24 months   COHORTS          INDIA                          Female               NA                0.1100169   0.0997287   0.1203051
0-24 months   COHORTS          INDIA                          Male                 NA                0.1436707   0.1326091   0.1547324
0-24 months   COHORTS          PHILIPPINES                    Female               NA                0.3235908   0.2993976   0.3477840
0-24 months   COHORTS          PHILIPPINES                    Male                 NA                0.3849476   0.3612565   0.4086386
0-24 months   EE               PAKISTAN                       Female               NA                0.5891892   0.5182013   0.6601771
0-24 months   EE               PAKISTAN                       Male                 NA                0.6134021   0.5447864   0.6820177
0-24 months   GMS-Nepal        NEPAL                          Female               NA                0.2286585   0.1831765   0.2741405
0-24 months   GMS-Nepal        NEPAL                          Male                 NA                0.2540541   0.2096651   0.2984430
0-24 months   Guatemala BSC    GUATEMALA                      Female               NA                0.0987654   0.0527501   0.1447808
0-24 months   Guatemala BSC    GUATEMALA                      Male                 NA                0.2614379   0.1916997   0.3311761
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female               NA                0.0830769   0.0629294   0.1032244
0-24 months   iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.1353659   0.1044940   0.1662377
0-24 months   IRC              INDIA                          Female               NA                0.2324324   0.1714929   0.2933720
0-24 months   IRC              INDIA                          Male                 NA                0.2622222   0.2046803   0.3197642
0-24 months   JiVitA-3         BANGLADESH                     Female               NA                0.1645484   0.1575719   0.1715250
0-24 months   JiVitA-3         BANGLADESH                     Male                 NA                0.2036676   0.1960936   0.2112416
0-24 months   JiVitA-4         BANGLADESH                     Female               NA                0.1758443   0.1598608   0.1918279
0-24 months   JiVitA-4         BANGLADESH                     Male                 NA                0.2306843   0.2132830   0.2480856
0-24 months   Keneba           GAMBIA                         Female               NA                0.1791045   0.1590656   0.1991433
0-24 months   Keneba           GAMBIA                         Male                 NA                0.2433687   0.2217068   0.2650306
0-24 months   LCNI-5           MALAWI                         Female               NA                0.1543943   0.1198588   0.1889298
0-24 months   LCNI-5           MALAWI                         Male                 NA                0.2673031   0.2249033   0.3097029
0-24 months   MAL-ED           BANGLADESH                     Female               NA                0.1838235   0.1186018   0.2490452
0-24 months   MAL-ED           BANGLADESH                     Male                 NA                0.2558140   0.1803782   0.3312497
0-24 months   MAL-ED           BRAZIL                         Female               NA                0.0796460   0.0296193   0.1296728
0-24 months   MAL-ED           BRAZIL                         Male                 NA                0.1083333   0.0526053   0.1640614
0-24 months   MAL-ED           INDIA                          Female               NA                0.1884058   0.1230338   0.2537778
0-24 months   MAL-ED           INDIA                          Male                 NA                0.2920354   0.2080315   0.3760393
0-24 months   MAL-ED           NEPAL                          Female               NA                0.0727273   0.0240965   0.1213580
0-24 months   MAL-ED           NEPAL                          Male                 NA                0.1000000   0.0483222   0.1516778
0-24 months   MAL-ED           PERU                           Female               NA                0.1748252   0.1124699   0.2371804
0-24 months   MAL-ED           PERU                           Male                 NA                0.2437500   0.1771137   0.3103863
0-24 months   MAL-ED           SOUTH AFRICA                   Female               NA                0.2075472   0.1444097   0.2706847
0-24 months   MAL-ED           SOUTH AFRICA                   Male                 NA                0.2580645   0.1890688   0.3270602
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               NA                0.4736842   0.3886644   0.5587041
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.5736434   0.4881385   0.6591483
0-24 months   NIH-Birth        BANGLADESH                     Female               NA                0.2693603   0.2188670   0.3198536
0-24 months   NIH-Birth        BANGLADESH                     Male                 NA                0.3493976   0.2980710   0.4007242
0-24 months   NIH-Crypto       BANGLADESH                     Female               NA                0.1181102   0.0856820   0.1505385
0-24 months   NIH-Crypto       BANGLADESH                     Male                 NA                0.1432361   0.1078509   0.1786212
0-24 months   PROBIT           BELARUS                        Female               NA                0.0161884   0.0108845   0.0214923
0-24 months   PROBIT           BELARUS                        Male                 NA                0.0383164   0.0277821   0.0488507
0-24 months   PROVIDE          BANGLADESH                     Female               NA                0.1234940   0.0880788   0.1589092
0-24 months   PROVIDE          BANGLADESH                     Male                 NA                0.1467391   0.1105608   0.1829175
0-24 months   ResPak           PAKISTAN                       Female               NA                0.3676471   0.2864688   0.4488254
0-24 months   ResPak           PAKISTAN                       Male                 NA                0.4662162   0.3857044   0.5467280
0-24 months   SAS-CompFeed     INDIA                          Female               NA                0.3100000   0.2770153   0.3429847
0-24 months   SAS-CompFeed     INDIA                          Male                 NA                0.3481393   0.3004483   0.3958302
0-24 months   SAS-FoodSuppl    INDIA                          Female               NA                0.4394619   0.3742422   0.5046816
0-24 months   SAS-FoodSuppl    INDIA                          Male                 NA                0.5282051   0.4580549   0.5983553
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0701014   0.0555553   0.0846474
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1287129   0.1098556   0.1475702
0-24 months   ZVITAMBO         ZIMBABWE                       Female               NA                0.1386979   0.1305037   0.1468921
0-24 months   ZVITAMBO         ZIMBABWE                       Male                 NA                0.1958834   0.1867405   0.2050263
0-6 months    CMC-V-BCS-2002   INDIA                          Female               NA                0.2054054   0.1471103   0.2637005
0-6 months    CMC-V-BCS-2002   INDIA                          Male                 NA                0.2896175   0.2238105   0.3554245
0-6 months    CMIN             BANGLADESH                     Female               NA                0.1916667   0.1211143   0.2622190
0-6 months    CMIN             BANGLADESH                     Male                 NA                0.2993631   0.2275953   0.3711308
0-6 months    COHORTS          GUATEMALA                      Female               NA                0.0863724   0.0622400   0.1105047
0-6 months    COHORTS          GUATEMALA                      Male                 NA                0.1138354   0.0877724   0.1398984
0-6 months    COHORTS          INDIA                          Female               NA                0.0433908   0.0366213   0.0501603
0-6 months    COHORTS          INDIA                          Male                 NA                0.0546537   0.0473251   0.0619822
0-6 months    COHORTS          PHILIPPINES                    Female               NA                0.0438413   0.0332537   0.0544289
0-6 months    COHORTS          PHILIPPINES                    Male                 NA                0.0789636   0.0658332   0.0920940
0-6 months    EE               PAKISTAN                       Female               NA                0.4000000   0.3293127   0.4706873
0-6 months    EE               PAKISTAN                       Male                 NA                0.4484536   0.3783774   0.5185298
0-6 months    GMS-Nepal        NEPAL                          Female               NA                0.0701220   0.0424677   0.0977762
0-6 months    GMS-Nepal        NEPAL                          Male                 NA                0.1000000   0.0694100   0.1305900
0-6 months    Guatemala BSC    GUATEMALA                      Female               NA                0.0519481   0.0168385   0.0870576
0-6 months    Guatemala BSC    GUATEMALA                      Male                 NA                0.1347518   0.0782953   0.1912082
0-6 months    IRC              INDIA                          Female               NA                0.1405405   0.0903980   0.1906830
0-6 months    IRC              INDIA                          Male                 NA                0.1600000   0.1120392   0.2079608
0-6 months    JiVitA-3         BANGLADESH                     Female               NA                0.1367585   0.1303308   0.1431863
0-6 months    JiVitA-3         BANGLADESH                     Male                 NA                0.1576508   0.1507717   0.1645299
0-6 months    JiVitA-4         BANGLADESH                     Female               NA                0.0871080   0.0752858   0.0989303
0-6 months    JiVitA-4         BANGLADESH                     Male                 NA                0.1158225   0.1020882   0.1295568
0-6 months    Keneba           GAMBIA                         Female               NA                0.0978903   0.0809673   0.1148133
0-6 months    Keneba           GAMBIA                         Male                 NA                0.1335937   0.1149521   0.1522354
0-6 months    MAL-ED           BANGLADESH                     Female               NA                0.0808824   0.0349718   0.1267929
0-6 months    MAL-ED           BANGLADESH                     Male                 NA                0.0775194   0.0312858   0.1237530
0-6 months    MAL-ED           BRAZIL                         Female               NA                0.0796460   0.0296193   0.1296728
0-6 months    MAL-ED           BRAZIL                         Male                 NA                0.0666667   0.0219402   0.1113931
0-6 months    MAL-ED           INDIA                          Female               NA                0.0507246   0.0140403   0.0874090
0-6 months    MAL-ED           INDIA                          Male                 NA                0.1238938   0.0630272   0.1847604
0-6 months    MAL-ED           PERU                           Female               NA                0.1048951   0.0545899   0.1552003
0-6 months    MAL-ED           PERU                           Male                 NA                0.1437500   0.0892985   0.1982015
0-6 months    MAL-ED           SOUTH AFRICA                   Female               NA                0.1006289   0.0537937   0.1474642
0-6 months    MAL-ED           SOUTH AFRICA                   Male                 NA                0.0838710   0.0401632   0.1275788
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               NA                0.1503759   0.0895127   0.2112392
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1395349   0.0796259   0.1994438
0-6 months    NIH-Birth        BANGLADESH                     Female               NA                0.0875421   0.0553736   0.1197105
0-6 months    NIH-Birth        BANGLADESH                     Male                 NA                0.0993976   0.0671885   0.1316067
0-6 months    NIH-Crypto       BANGLADESH                     Female               NA                0.0498688   0.0279973   0.0717403
0-6 months    NIH-Crypto       BANGLADESH                     Male                 NA                0.0742706   0.0477847   0.1007564
0-6 months    PROBIT           BELARUS                        Female               NA                0.0055201   0.0030254   0.0080148
0-6 months    PROBIT           BELARUS                        Male                 NA                0.0160183   0.0107532   0.0212834
0-6 months    PROVIDE          BANGLADESH                     Female               NA                0.0271084   0.0096271   0.0445897
0-6 months    PROVIDE          BANGLADESH                     Male                 NA                0.0597826   0.0355424   0.0840228
0-6 months    ResPak           PAKISTAN                       Female               NA                0.3382353   0.2585806   0.4178900
0-6 months    ResPak           PAKISTAN                       Male                 NA                0.3904110   0.3111384   0.4696835
0-6 months    SAS-CompFeed     INDIA                          Female               NA                0.1285714   0.1106534   0.1464894
0-6 months    SAS-CompFeed     INDIA                          Male                 NA                0.1674699   0.1347190   0.2002208
0-6 months    SAS-FoodSuppl    INDIA                          Female               NA                0.1126126   0.0709790   0.1542463
0-6 months    SAS-FoodSuppl    INDIA                          Male                 NA                0.1288660   0.0816617   0.1760703
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0346284   0.0242118   0.0450450
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0528053   0.0402118   0.0653988
0-6 months    ZVITAMBO         ZIMBABWE                       Female               NA                0.0798067   0.0733792   0.0862342
0-6 months    ZVITAMBO         ZIMBABWE                       Male                 NA                0.1019646   0.0949883   0.1089409


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6353887   0.5864772   0.6843003
0-24 months   CMIN             BANGLADESH                     NA                   NA                0.4981949   0.4392073   0.5571825
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.4641813   0.4377440   0.4906186
0-24 months   COHORTS          INDIA                          NA                   NA                0.1275448   0.1199527   0.1351370
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.3561151   0.3391405   0.3730897
0-24 months   EE               PAKISTAN                       NA                   NA                0.6015831   0.5522295   0.6509367
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.2421203   0.2103189   0.2739218
0-24 months   Guatemala BSC    GUATEMALA                      NA                   NA                0.1777778   0.1354898   0.2200657
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1093415   0.0900773   0.1286057
0-24 months   IRC              INDIA                          NA                   NA                0.2487805   0.2068840   0.2906770
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.1844493   0.1788538   0.1900447
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.2032341   0.1914368   0.2150314
0-24 months   Keneba           GAMBIA                         NA                   NA                0.2123499   0.1975010   0.2271989
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.2107143   0.1831192   0.2383093
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.2188679   0.1689910   0.2687448
0-24 months   MAL-ED           BRAZIL                         NA                   NA                0.0944206   0.0567935   0.1320477
0-24 months   MAL-ED           INDIA                          NA                   NA                0.2350598   0.1824967   0.2876229
0-24 months   MAL-ED           NEPAL                          NA                   NA                0.0875000   0.0516764   0.1233236
0-24 months   MAL-ED           PERU                           NA                   NA                0.2112211   0.1651858   0.2572564
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2324841   0.1856873   0.2792809
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5229008   0.4623051   0.5834965
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.3116057   0.2753823   0.3478292
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1306069   0.1066024   0.1546113
0-24 months   PROBIT           BELARUS                        NA                   NA                0.0276380   0.0201988   0.0350773
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1357143   0.1103250   0.1611036
0-24 months   ResPak           PAKISTAN                       NA                   NA                0.4190141   0.3615294   0.4764987
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3307241   0.3024794   0.3589688
0-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.4808612   0.4329065   0.5288160
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0997496   0.0877482   0.1117510
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1681114   0.1619329   0.1742900
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.2472826   0.2031431   0.2914222
0-6 months    CMIN             BANGLADESH                     NA                   NA                0.2527076   0.2014394   0.3039758
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.1007326   0.0828733   0.1185919
0-6 months    COHORTS          INDIA                          NA                   NA                0.0491918   0.0441876   0.0541959
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0624591   0.0538810   0.0710373
0-6 months    EE               PAKISTAN                       NA                   NA                0.4248021   0.3749706   0.4746336
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.0859599   0.0651504   0.1067694
0-6 months    Guatemala BSC    GUATEMALA                      NA                   NA                0.0915254   0.0585643   0.1244865
0-6 months    IRC              INDIA                          NA                   NA                0.1512195   0.1164988   0.1859402
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.1473804   0.1423344   0.1524264
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.1013645   0.0924445   0.1102845
0-6 months    Keneba           GAMBIA                         NA                   NA                0.1164300   0.1037657   0.1290943
0-6 months    MAL-ED           BANGLADESH                     NA                   NA                0.0792453   0.0466613   0.1118293
0-6 months    MAL-ED           BRAZIL                         NA                   NA                0.0729614   0.0394957   0.1064270
0-6 months    MAL-ED           INDIA                          NA                   NA                0.0836653   0.0493429   0.1179878
0-6 months    MAL-ED           PERU                           NA                   NA                0.1254125   0.0880603   0.1627648
0-6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.0923567   0.0602816   0.1244318
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1450382   0.1023171   0.1877593
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.0937997   0.0709973   0.1166021
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.0620053   0.0448256   0.0791849
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0109519   0.0074064   0.0144975
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0442857   0.0290345   0.0595370
0-6 months    ResPak           PAKISTAN                       NA                   NA                0.3652482   0.3089505   0.4215460
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.1496732   0.1307571   0.1685893
0-6 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.1201923   0.0889059   0.1514788
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0438230   0.0356249   0.0520212
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0912001   0.0864407   0.0959595


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   CMC-V-BCS-2002   INDIA                          Male                 Female            1.2214853   1.0451039   1.427634
0-24 months   CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   CMIN             BANGLADESH                     Male                 Female            0.9936306   0.7825985   1.261569
0-24 months   COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.000000
0-24 months   COHORTS          GUATEMALA                      Male                 Female            1.1349928   1.0113730   1.273723
0-24 months   COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   COHORTS          INDIA                          Male                 Female            1.3058971   1.1569166   1.474062
0-24 months   COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES                    Male                 Female            1.1896121   1.0798157   1.310573
0-24 months   EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
0-24 months   EE               PAKISTAN                       Male                 Female            1.0410952   0.8832628   1.227131
0-24 months   GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal        NEPAL                          Male                 Female            1.1110631   0.8526276   1.447831
0-24 months   Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000   1.000000
0-24 months   Guatemala BSC    GUATEMALA                      Male                 Female            2.6470588   1.5474149   4.528146
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female               Female            1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   Male                 Female            1.6294038   1.2020731   2.208648
0-24 months   IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   IRC              INDIA                          Male                 Female            1.1281654   0.8014734   1.588022
0-24 months   JiVitA-3         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH                     Male                 Female            1.2377364   1.1756467   1.303105
0-24 months   JiVitA-4         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4         BANGLADESH                     Male                 Female            1.3118666   1.1655650   1.476532
0-24 months   Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.000000
0-24 months   Keneba           GAMBIA                         Male                 Female            1.3588086   1.1777881   1.567651
0-24 months   LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000   1.000000
0-24 months   LCNI-5           MALAWI                         Male                 Female            1.7313016   1.3160788   2.277527
0-24 months   MAL-ED           BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           BANGLADESH                     Male                 Female            1.3916279   0.8773260   2.207422
0-24 months   MAL-ED           BRAZIL                         Female               Female            1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           BRAZIL                         Male                 Female            1.3601852   0.6039536   3.063321
0-24 months   MAL-ED           INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           INDIA                          Male                 Female            1.5500340   0.9876502   2.432648
0-24 months   MAL-ED           NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           NEPAL                          Male                 Female            1.3750000   0.5905862   3.201269
0-24 months   MAL-ED           PERU                           Female               Female            1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           PERU                           Male                 Female            1.3942500   0.8895555   2.185286
0-24 months   MAL-ED           SOUTH AFRICA                   Female               Female            1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           SOUTH AFRICA                   Male                 Female            1.2434018   0.8293222   1.864231
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.2110250   0.9590216   1.529248
0-24 months   NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth        BANGLADESH                     Male                 Female            1.2971386   1.0222458   1.645953
0-24 months   NIH-Crypto       BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     Male                 Female            1.2127321   0.8382291   1.754555
0-24 months   PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        Male                 Female            2.3669065   1.8692542   2.997049
0-24 months   PROVIDE          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     Male                 Female            1.1882291   0.8140567   1.734386
0-24 months   ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ResPak           PAKISTAN                       Male                 Female            1.2681081   0.9581122   1.678403
0-24 months   SAS-CompFeed     INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA                          Male                 Female            1.1230299   0.9326578   1.352260
0-24 months   SAS-FoodSuppl    INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl    INDIA                          Male                 Female            1.2019362   0.9848930   1.466810
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.8360969   1.4242332   2.367064
0-24 months   ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       Male                 Female            1.4123029   1.3098716   1.522744
0-6 months    CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    CMC-V-BCS-2002   INDIA                          Male                 Female            1.4099799   0.9802159   2.028169
0-6 months    CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    CMIN             BANGLADESH                     Male                 Female            1.5618942   1.0066381   2.423427
0-6 months    COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.000000
0-6 months    COHORTS          GUATEMALA                      Male                 Female            1.3179607   0.9183839   1.891388
0-6 months    COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    COHORTS          INDIA                          Male                 Female            1.2595682   1.0253673   1.547262
0-6 months    COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES                    Male                 Female            1.8011222   1.3433951   2.414808
0-6 months    EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
0-6 months    EE               PAKISTAN                       Male                 Female            1.1211340   0.8855416   1.419404
0-6 months    GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal        NEPAL                          Male                 Female            1.4260870   0.8657398   2.349117
0-6 months    Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000   1.000000
0-6 months    Guatemala BSC    GUATEMALA                      Male                 Female            2.5939716   1.1711724   5.745259
0-6 months    IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    IRC              INDIA                          Male                 Female            1.1384615   0.7143995   1.814244
0-6 months    JiVitA-3         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3         BANGLADESH                     Male                 Female            1.1527676   1.0862387   1.223371
0-6 months    JiVitA-4         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4         BANGLADESH                     Male                 Female            1.3296427   1.1071292   1.596878
0-6 months    Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.000000
0-6 months    Keneba           GAMBIA                         Male                 Female            1.3647293   1.0928509   1.704245
0-6 months    MAL-ED           BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           BANGLADESH                     Male                 Female            0.9584214   0.4207080   2.183395
0-6 months    MAL-ED           BRAZIL                         Female               Female            1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           BRAZIL                         Male                 Female            0.8370370   0.3338966   2.098347
0-6 months    MAL-ED           INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           INDIA                          Male                 Female            2.4424779   1.0188993   5.855042
0-6 months    MAL-ED           PERU                           Female               Female            1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           PERU                           Male                 Female            1.3704167   0.7437777   2.525004
0-6 months    MAL-ED           SOUTH AFRICA                   Female               Female            1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           SOUTH AFRICA                   Male                 Female            0.8334677   0.4144211   1.676238
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 Female            0.9279070   0.5143405   1.674010
0-6 months    NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth        BANGLADESH                     Male                 Female            1.1354263   0.6956397   1.853248
0-6 months    NIH-Crypto       BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto       BANGLADESH                     Male                 Female            1.4893201   0.8462445   2.621080
0-6 months    PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        Male                 Female            2.9018052   1.9791759   4.254535
0-6 months    PROVIDE          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    PROVIDE          BANGLADESH                     Male                 Female            2.2053140   1.0295501   4.723821
0-6 months    ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ResPak           PAKISTAN                       Male                 Female            1.1542585   0.8457841   1.575240
0-6 months    SAS-CompFeed     INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed     INDIA                          Male                 Female            1.3025435   1.0140362   1.673135
0-6 months    SAS-FoodSuppl    INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    SAS-FoodSuppl    INDIA                          Male                 Female            1.1443299   0.6800252   1.925650
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.5249135   1.0387904   2.238528
0-6 months    ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       Male                 Female            1.2776443   1.1495159   1.420054


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Female               NA                 0.0631962    0.0144231   0.1119694
0-24 months   CMIN             BANGLADESH                     Female               NA                -0.0018051   -0.0692766   0.0656665
0-24 months   COHORTS          GUATEMALA                      Female               NA                 0.0309515    0.0029400   0.0589630
0-24 months   COHORTS          INDIA                          Female               NA                 0.0175279    0.0096507   0.0254052
0-24 months   COHORTS          PHILIPPINES                    Female               NA                 0.0325243    0.0145422   0.0505064
0-24 months   EE               PAKISTAN                       Female               NA                 0.0123939   -0.0381575   0.0629453
0-24 months   GMS-Nepal        NEPAL                          Female               NA                 0.0134618   -0.0202399   0.0471635
0-24 months   Guatemala BSC    GUATEMALA                      Female               NA                 0.0790123    0.0374459   0.1205788
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0262646    0.0098180   0.0427111
0-24 months   IRC              INDIA                          Female               NA                 0.0163481   -0.0296696   0.0623657
0-24 months   JiVitA-3         BANGLADESH                     Female               NA                 0.0199008    0.0151147   0.0246870
0-24 months   JiVitA-4         BANGLADESH                     Female               NA                 0.0273898    0.0155817   0.0391978
0-24 months   Keneba           GAMBIA                         Female               NA                 0.0332454    0.0179352   0.0485557
0-24 months   LCNI-5           MALAWI                         Female               NA                 0.0563200    0.0287764   0.0838635
0-24 months   MAL-ED           BANGLADESH                     Female               NA                 0.0350444   -0.0136930   0.0837818
0-24 months   MAL-ED           BRAZIL                         Female               NA                 0.0147746   -0.0238387   0.0533879
0-24 months   MAL-ED           INDIA                          Female               NA                 0.0466540   -0.0016910   0.0949989
0-24 months   MAL-ED           NEPAL                          Female               NA                 0.0147727   -0.0237034   0.0532488
0-24 months   MAL-ED           PERU                           Female               NA                 0.0363959   -0.0119507   0.0847426
0-24 months   MAL-ED           SOUTH AFRICA                   Female               NA                 0.0249369   -0.0213141   0.0711880
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0492166   -0.0104616   0.1088947
0-24 months   NIH-Birth        BANGLADESH                     Female               NA                 0.0422455    0.0041140   0.0803769
0-24 months   NIH-Crypto       BANGLADESH                     Female               NA                 0.0124966   -0.0113919   0.0363852
0-24 months   PROBIT           BELARUS                        Female               NA                 0.0114497    0.0074589   0.0154404
0-24 months   PROVIDE          BANGLADESH                     Female               NA                 0.0122203   -0.0144090   0.0388496
0-24 months   ResPak           PAKISTAN                       Female               NA                 0.0513670   -0.0084906   0.1112246
0-24 months   SAS-CompFeed     INDIA                          Female               NA                 0.0207241   -0.0136409   0.0550890
0-24 months   SAS-FoodSuppl    INDIA                          Female               NA                 0.0413994   -0.0034864   0.0862851
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0296482    0.0175442   0.0417522
0-24 months   ZVITAMBO         ZIMBABWE                       Female               NA                 0.0294135    0.0230809   0.0357461
0-6 months    CMC-V-BCS-2002   INDIA                          Female               NA                 0.0418772   -0.0020526   0.0858070
0-6 months    CMIN             BANGLADESH                     Female               NA                 0.0610409    0.0036536   0.1184283
0-6 months    COHORTS          GUATEMALA                      Female               NA                 0.0143602   -0.0042306   0.0329511
0-6 months    COHORTS          INDIA                          Female               NA                 0.0058009    0.0006608   0.0109411
0-6 months    COHORTS          PHILIPPINES                    Female               NA                 0.0186178    0.0096551   0.0275805
0-6 months    EE               PAKISTAN                       Female               NA                 0.0248021   -0.0262061   0.0758103
0-6 months    GMS-Nepal        NEPAL                          Female               NA                 0.0158379   -0.0060494   0.0377252
0-6 months    Guatemala BSC    GUATEMALA                      Female               NA                 0.0395774    0.0074509   0.0717039
0-6 months    IRC              INDIA                          Female               NA                 0.0106790   -0.0274107   0.0487686
0-6 months    JiVitA-3         BANGLADESH                     Female               NA                 0.0106219    0.0061813   0.0150625
0-6 months    JiVitA-4         BANGLADESH                     Female               NA                 0.0142565    0.0050926   0.0234205
0-6 months    Keneba           GAMBIA                         Female               NA                 0.0185397    0.0054469   0.0316325
0-6 months    MAL-ED           BANGLADESH                     Female               NA                -0.0016371   -0.0333552   0.0300811
0-6 months    MAL-ED           BRAZIL                         Female               NA                -0.0066846   -0.0412554   0.0278861
0-6 months    MAL-ED           INDIA                          Female               NA                 0.0329407    0.0006299   0.0652515
0-6 months    MAL-ED           PERU                           Female               NA                 0.0205174   -0.0186893   0.0597242
0-6 months    MAL-ED           SOUTH AFRICA                   Female               NA                -0.0082722   -0.0399087   0.0233642
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0053378   -0.0473917   0.0367162
0-6 months    NIH-Birth        BANGLADESH                     Female               NA                 0.0062576   -0.0177743   0.0302895
0-6 months    NIH-Crypto       BANGLADESH                     Female               NA                 0.0121365   -0.0049695   0.0292425
0-6 months    PROBIT           BELARUS                        Female               NA                 0.0054318    0.0031488   0.0077148
0-6 months    PROVIDE          BANGLADESH                     Female               NA                 0.0171773    0.0014192   0.0329354
0-6 months    ResPak           PAKISTAN                       Female               NA                 0.0270129   -0.0312488   0.0852747
0-6 months    SAS-CompFeed     INDIA                          Female               NA                 0.0211018   -0.0004627   0.0426662
0-6 months    SAS-FoodSuppl    INDIA                          Female               NA                 0.0075797   -0.0217831   0.0369425
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0091947    0.0009195   0.0174698
0-6 months    ZVITAMBO         ZIMBABWE                       Female               NA                 0.0113934    0.0065124   0.0162744


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Female               NA                 0.0994607    0.0184481   0.1737870
0-24 months   CMIN             BANGLADESH                     Female               NA                -0.0036232   -0.1486190   0.1230691
0-24 months   COHORTS          GUATEMALA                      Female               NA                 0.0666797    0.0042614   0.1251853
0-24 months   COHORTS          INDIA                          Female               NA                 0.1374258    0.0738370   0.1966486
0-24 months   COHORTS          PHILIPPINES                    Female               NA                 0.0913308    0.0394053   0.1404495
0-24 months   EE               PAKISTAN                       Female               NA                 0.0206022   -0.0671749   0.1011594
0-24 months   GMS-Nepal        NEPAL                          Female               NA                 0.0555997   -0.0942874   0.1849563
0-24 months   Guatemala BSC    GUATEMALA                      Female               NA                 0.4444444    0.1820801   0.6226501
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.2402069    0.0861335   0.3683042
0-24 months   IRC              INDIA                          Female               NA                 0.0657128   -0.1386877   0.2334223
0-24 months   JiVitA-3         BANGLADESH                     Female               NA                 0.1078932    0.0817004   0.1333388
0-24 months   JiVitA-4         BANGLADESH                     Female               NA                 0.1347695    0.0748052   0.1908473
0-24 months   Keneba           GAMBIA                         Female               NA                 0.1565597    0.0817841   0.2252459
0-24 months   LCNI-5           MALAWI                         Female               NA                 0.2672813    0.1276227   0.3845820
0-24 months   MAL-ED           BANGLADESH                     Female               NA                 0.1601166   -0.0928059   0.3545019
0-24 months   MAL-ED           BRAZIL                         Female               NA                 0.1564763   -0.3633938   0.4781168
0-24 months   MAL-ED           INDIA                          Female               NA                 0.1984770   -0.0328363   0.3779856
0-24 months   MAL-ED           NEPAL                          Female               NA                 0.1688312   -0.4029836   0.5075911
0-24 months   MAL-ED           PERU                           Female               NA                 0.1723121   -0.0890912   0.3709734
0-24 months   MAL-ED           SOUTH AFRICA                   Female               NA                 0.1072629   -0.1149164   0.2851665
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0941222   -0.0280895   0.2018062
0-24 months   NIH-Birth        BANGLADESH                     Female               NA                 0.1355734    0.0043719   0.2494855
0-24 months   NIH-Crypto       BANGLADESH                     Female               NA                 0.0956812   -0.1062779   0.2607712
0-24 months   PROBIT           BELARUS                        Female               NA                 0.4142721    0.3058921   0.5057292
0-24 months   PROVIDE          BANGLADESH                     Female               NA                 0.0900444   -0.1282918   0.2661302
0-24 months   ResPak           PAKISTAN                       Female               NA                 0.1225902   -0.0328593   0.2546439
0-24 months   SAS-CompFeed     INDIA                          Female               NA                 0.0626627   -0.0446081   0.1589179
0-24 months   SAS-FoodSuppl    INDIA                          Female               NA                 0.0860942   -0.0124865   0.1750765
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.2972266    0.1701477   0.4048454
0-24 months   ZVITAMBO         ZIMBABWE                       Female               NA                 0.1749645    0.1368070   0.2114353
0-6 months    CMC-V-BCS-2002   INDIA                          Female               NA                 0.1693496   -0.0272770   0.3283407
0-6 months    CMIN             BANGLADESH                     Female               NA                 0.2415476   -0.0197142   0.4358713
0-6 months    COHORTS          GUATEMALA                      Female               NA                 0.1425580   -0.0616268   0.3074716
0-6 months    COHORTS          INDIA                          Female               NA                 0.1179252    0.0076991   0.2159072
0-6 months    COHORTS          PHILIPPINES                    Female               NA                 0.2980796    0.1454557   0.4234444
0-6 months    EE               PAKISTAN                       Female               NA                 0.0583851   -0.0697689   0.1711868
0-6 months    GMS-Nepal        NEPAL                          Female               NA                 0.1842480   -0.1100510   0.4005218
0-6 months    Guatemala BSC    GUATEMALA                      Female               NA                 0.4324194    0.0044090   0.6764257
0-6 months    IRC              INDIA                          Female               NA                 0.0706190   -0.2182434   0.2909881
0-6 months    JiVitA-3         BANGLADESH                     Female               NA                 0.0720713    0.0415623   0.1016091
0-6 months    JiVitA-4         BANGLADESH                     Female               NA                 0.1406459    0.0463771   0.2255960
0-6 months    Keneba           GAMBIA                         Female               NA                 0.1592349    0.0401075   0.2635780
0-6 months    MAL-ED           BANGLADESH                     Female               NA                -0.0206583   -0.5106301   0.3103915
0-6 months    MAL-ED           BRAZIL                         Female               NA                -0.0916189   -0.6825342   0.2917636
0-6 months    MAL-ED           INDIA                          Female               NA                 0.3937198   -0.0886486   0.6623560
0-6 months    MAL-ED           PERU                           Female               NA                 0.1635996   -0.2112544   0.4224453
0-6 months    MAL-ED           SOUTH AFRICA                   Female               NA                -0.0895684   -0.4905703   0.2035536
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0368025   -0.3711828   0.2160349
0-6 months    NIH-Birth        BANGLADESH                     Female               NA                 0.0667123   -0.2275646   0.2904439
0-6 months    NIH-Crypto       BANGLADESH                     Female               NA                 0.1957335   -0.1266196   0.4258536
0-6 months    PROBIT           BELARUS                        Female               NA                 0.4959685    0.3260762   0.6230319
0-6 months    PROVIDE          BANGLADESH                     Female               NA                 0.3878741   -0.0517628   0.6437427
0-6 months    ResPak           PAKISTAN                       Female               NA                 0.0739577   -0.1001490   0.2205108
0-6 months    SAS-CompFeed     INDIA                          Female               NA                 0.1409857   -0.0038641   0.2649347
0-6 months    SAS-FoodSuppl    INDIA                          Female               NA                 0.0630631   -0.2155102   0.2777923
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.2098134    0.0013534   0.3747589
0-6 months    ZVITAMBO         ZIMBABWE                       Female               NA                 0.1249276    0.0700863   0.1765346
