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

**Outcome Variable:** ever_stunted

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

agecat        studyid          country                        sex       ever_stunted   n_cell       n
------------  ---------------  -----------------------------  -------  -------------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          Female               0       13     373
0-24 months   CMC-V-BCS-2002   INDIA                          Female               1      174     373
0-24 months   CMC-V-BCS-2002   INDIA                          Male                 0       15     373
0-24 months   CMC-V-BCS-2002   INDIA                          Male                 1      171     373
0-24 months   CMIN             BANGLADESH                     Female               0       18     277
0-24 months   CMIN             BANGLADESH                     Female               1      102     277
0-24 months   CMIN             BANGLADESH                     Male                 0       23     277
0-24 months   CMIN             BANGLADESH                     Male                 1      134     277
0-24 months   COHORTS          GUATEMALA                      Female               0      158    1368
0-24 months   COHORTS          GUATEMALA                      Female               1      486    1368
0-24 months   COHORTS          GUATEMALA                      Male                 0      165    1368
0-24 months   COHORTS          GUATEMALA                      Male                 1      559    1368
0-24 months   COHORTS          INDIA                          Female               0     2321    7417
0-24 months   COHORTS          INDIA                          Female               1     1233    7417
0-24 months   COHORTS          INDIA                          Male                 0     2346    7417
0-24 months   COHORTS          INDIA                          Male                 1     1517    7417
0-24 months   COHORTS          PHILIPPINES                    Female               0      488    3058
0-24 months   COHORTS          PHILIPPINES                    Female               1      949    3058
0-24 months   COHORTS          PHILIPPINES                    Male                 0      471    3058
0-24 months   COHORTS          PHILIPPINES                    Male                 1     1150    3058
0-24 months   CONTENT          PERU                           Female               0       87     215
0-24 months   CONTENT          PERU                           Female               1       22     215
0-24 months   CONTENT          PERU                           Male                 0       75     215
0-24 months   CONTENT          PERU                           Male                 1       31     215
0-24 months   EE               PAKISTAN                       Female               0       21     379
0-24 months   EE               PAKISTAN                       Female               1      164     379
0-24 months   EE               PAKISTAN                       Male                 0       20     379
0-24 months   EE               PAKISTAN                       Male                 1      174     379
0-24 months   GMS-Nepal        NEPAL                          Female               0      113     698
0-24 months   GMS-Nepal        NEPAL                          Female               1      215     698
0-24 months   GMS-Nepal        NEPAL                          Male                 0      139     698
0-24 months   GMS-Nepal        NEPAL                          Male                 1      231     698
0-24 months   Guatemala BSC    GUATEMALA                      Female               0       81     315
0-24 months   Guatemala BSC    GUATEMALA                      Female               1       81     315
0-24 months   Guatemala BSC    GUATEMALA                      Male                 0       67     315
0-24 months   Guatemala BSC    GUATEMALA                      Male                 1       86     315
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female               0     1133    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female               1      492    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   Male                 0      949    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   Male                 1      691    3265
0-24 months   IRC              INDIA                          Female               0       72     410
0-24 months   IRC              INDIA                          Female               1      113     410
0-24 months   IRC              INDIA                          Male                 0       75     410
0-24 months   IRC              INDIA                          Male                 1      150     410
0-24 months   JiVitA-3         BANGLADESH                     Female               0     7095   27227
0-24 months   JiVitA-3         BANGLADESH                     Female               1     6281   27227
0-24 months   JiVitA-3         BANGLADESH                     Male                 0     6646   27227
0-24 months   JiVitA-3         BANGLADESH                     Male                 1     7205   27227
0-24 months   JiVitA-4         BANGLADESH                     Female               0     1203    5442
0-24 months   JiVitA-4         BANGLADESH                     Female               1     1521    5442
0-24 months   JiVitA-4         BANGLADESH                     Male                 0     1076    5442
0-24 months   JiVitA-4         BANGLADESH                     Male                 1     1642    5442
0-24 months   Keneba           GAMBIA                         Female               0      735    2915
0-24 months   Keneba           GAMBIA                         Female               1      672    2915
0-24 months   Keneba           GAMBIA                         Male                 0      686    2915
0-24 months   Keneba           GAMBIA                         Male                 1      822    2915
0-24 months   LCNI-5           MALAWI                         Female               0      183     840
0-24 months   LCNI-5           MALAWI                         Female               1      238     840
0-24 months   LCNI-5           MALAWI                         Male                 0      122     840
0-24 months   LCNI-5           MALAWI                         Male                 1      297     840
0-24 months   MAL-ED           BANGLADESH                     Female               0       60     265
0-24 months   MAL-ED           BANGLADESH                     Female               1       76     265
0-24 months   MAL-ED           BANGLADESH                     Male                 0       43     265
0-24 months   MAL-ED           BANGLADESH                     Male                 1       86     265
0-24 months   MAL-ED           BRAZIL                         Female               0       85     233
0-24 months   MAL-ED           BRAZIL                         Female               1       28     233
0-24 months   MAL-ED           BRAZIL                         Male                 0       85     233
0-24 months   MAL-ED           BRAZIL                         Male                 1       35     233
0-24 months   MAL-ED           INDIA                          Female               0       61     251
0-24 months   MAL-ED           INDIA                          Female               1       77     251
0-24 months   MAL-ED           INDIA                          Male                 0       38     251
0-24 months   MAL-ED           INDIA                          Male                 1       75     251
0-24 months   MAL-ED           NEPAL                          Female               0       73     240
0-24 months   MAL-ED           NEPAL                          Female               1       37     240
0-24 months   MAL-ED           NEPAL                          Male                 0       83     240
0-24 months   MAL-ED           NEPAL                          Male                 1       47     240
0-24 months   MAL-ED           PERU                           Female               0       67     303
0-24 months   MAL-ED           PERU                           Female               1       76     303
0-24 months   MAL-ED           PERU                           Male                 0       48     303
0-24 months   MAL-ED           PERU                           Male                 1      112     303
0-24 months   MAL-ED           SOUTH AFRICA                   Female               0       80     314
0-24 months   MAL-ED           SOUTH AFRICA                   Female               1       79     314
0-24 months   MAL-ED           SOUTH AFRICA                   Male                 0       58     314
0-24 months   MAL-ED           SOUTH AFRICA                   Male                 1       97     314
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               0       24     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               1      109     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 0       16     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 1      113     262
0-24 months   NIH-Birth        BANGLADESH                     Female               0      112     629
0-24 months   NIH-Birth        BANGLADESH                     Female               1      185     629
0-24 months   NIH-Birth        BANGLADESH                     Male                 0       99     629
0-24 months   NIH-Birth        BANGLADESH                     Male                 1      233     629
0-24 months   NIH-Crypto       BANGLADESH                     Female               0      209     758
0-24 months   NIH-Crypto       BANGLADESH                     Female               1      172     758
0-24 months   NIH-Crypto       BANGLADESH                     Male                 0      187     758
0-24 months   NIH-Crypto       BANGLADESH                     Male                 1      190     758
0-24 months   PROBIT           BELARUS                        Female               0     7393   16897
0-24 months   PROBIT           BELARUS                        Female               1      761   16897
0-24 months   PROBIT           BELARUS                        Male                 0     7351   16897
0-24 months   PROBIT           BELARUS                        Male                 1     1392   16897
0-24 months   PROVIDE          BANGLADESH                     Female               0      198     700
0-24 months   PROVIDE          BANGLADESH                     Female               1      134     700
0-24 months   PROVIDE          BANGLADESH                     Male                 0      197     700
0-24 months   PROVIDE          BANGLADESH                     Male                 1      171     700
0-24 months   ResPak           PAKISTAN                       Female               0       50     284
0-24 months   ResPak           PAKISTAN                       Female               1       86     284
0-24 months   ResPak           PAKISTAN                       Male                 0       47     284
0-24 months   ResPak           PAKISTAN                       Male                 1      101     284
0-24 months   SAS-CompFeed     INDIA                          Female               0      234    1533
0-24 months   SAS-CompFeed     INDIA                          Female               1      466    1533
0-24 months   SAS-CompFeed     INDIA                          Male                 0      239    1533
0-24 months   SAS-CompFeed     INDIA                          Male                 1      594    1533
0-24 months   SAS-FoodSuppl    INDIA                          Female               0       39     418
0-24 months   SAS-FoodSuppl    INDIA                          Female               1      184     418
0-24 months   SAS-FoodSuppl    INDIA                          Male                 0       33     418
0-24 months   SAS-FoodSuppl    INDIA                          Male                 1      162     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               0      835    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               1      349    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 0      732    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 1      480    2396
0-24 months   ZVITAMBO         ZIMBABWE                       Female               0     4227   14074
0-24 months   ZVITAMBO         ZIMBABWE                       Female               1     2608   14074
0-24 months   ZVITAMBO         ZIMBABWE                       Male                 0     3976   14074
0-24 months   ZVITAMBO         ZIMBABWE                       Male                 1     3263   14074
0-6 months    CMC-V-BCS-2002   INDIA                          Female               0      102     368
0-6 months    CMC-V-BCS-2002   INDIA                          Female               1       83     368
0-6 months    CMC-V-BCS-2002   INDIA                          Male                 0       78     368
0-6 months    CMC-V-BCS-2002   INDIA                          Male                 1      105     368
0-6 months    CMIN             BANGLADESH                     Female               0       58     277
0-6 months    CMIN             BANGLADESH                     Female               1       62     277
0-6 months    CMIN             BANGLADESH                     Male                 0       62     277
0-6 months    CMIN             BANGLADESH                     Male                 1       95     277
0-6 months    COHORTS          GUATEMALA                      Female               0      359    1092
0-6 months    COHORTS          GUATEMALA                      Female               1      162    1092
0-6 months    COHORTS          GUATEMALA                      Male                 0      377    1092
0-6 months    COHORTS          GUATEMALA                      Male                 1      194    1092
0-6 months    COHORTS          INDIA                          Female               0     2901    7176
0-6 months    COHORTS          INDIA                          Female               1      579    7176
0-6 months    COHORTS          INDIA                          Male                 0     2937    7176
0-6 months    COHORTS          INDIA                          Male                 1      759    7176
0-6 months    COHORTS          PHILIPPINES                    Female               0     1151    3058
0-6 months    COHORTS          PHILIPPINES                    Female               1      286    3058
0-6 months    COHORTS          PHILIPPINES                    Male                 0     1176    3058
0-6 months    COHORTS          PHILIPPINES                    Male                 1      445    3058
0-6 months    CONTENT          PERU                           Female               0       99     215
0-6 months    CONTENT          PERU                           Female               1       10     215
0-6 months    CONTENT          PERU                           Male                 0       89     215
0-6 months    CONTENT          PERU                           Male                 1       17     215
0-6 months    EE               PAKISTAN                       Female               0       51     379
0-6 months    EE               PAKISTAN                       Female               1      134     379
0-6 months    EE               PAKISTAN                       Male                 0       44     379
0-6 months    EE               PAKISTAN                       Male                 1      150     379
0-6 months    GMS-Nepal        NEPAL                          Female               0      230     698
0-6 months    GMS-Nepal        NEPAL                          Female               1       98     698
0-6 months    GMS-Nepal        NEPAL                          Male                 0      246     698
0-6 months    GMS-Nepal        NEPAL                          Male                 1      124     698
0-6 months    Guatemala BSC    GUATEMALA                      Female               0      109     295
0-6 months    Guatemala BSC    GUATEMALA                      Female               1       45     295
0-6 months    Guatemala BSC    GUATEMALA                      Male                 0       93     295
0-6 months    Guatemala BSC    GUATEMALA                      Male                 1       48     295
0-6 months    IRC              INDIA                          Female               0      111     410
0-6 months    IRC              INDIA                          Female               1       74     410
0-6 months    IRC              INDIA                          Male                 0      125     410
0-6 months    IRC              INDIA                          Male                 1      100     410
0-6 months    JiVitA-3         BANGLADESH                     Female               0     8084   27161
0-6 months    JiVitA-3         BANGLADESH                     Female               1     5268   27161
0-6 months    JiVitA-3         BANGLADESH                     Male                 0     7860   27161
0-6 months    JiVitA-3         BANGLADESH                     Male                 1     5949   27161
0-6 months    JiVitA-4         BANGLADESH                     Female               0     1730    5130
0-6 months    JiVitA-4         BANGLADESH                     Female               1      853    5130
0-6 months    JiVitA-4         BANGLADESH                     Male                 0     1616    5130
0-6 months    JiVitA-4         BANGLADESH                     Male                 1      931    5130
0-6 months    Keneba           GAMBIA                         Female               0      851    2465
0-6 months    Keneba           GAMBIA                         Female               1      334    2465
0-6 months    Keneba           GAMBIA                         Male                 0      844    2465
0-6 months    Keneba           GAMBIA                         Male                 1      436    2465
0-6 months    LCNI-5           MALAWI                         Female               0       97     272
0-6 months    LCNI-5           MALAWI                         Female               1       32     272
0-6 months    LCNI-5           MALAWI                         Male                 0       78     272
0-6 months    LCNI-5           MALAWI                         Male                 1       65     272
0-6 months    MAL-ED           BANGLADESH                     Female               0       98     265
0-6 months    MAL-ED           BANGLADESH                     Female               1       38     265
0-6 months    MAL-ED           BANGLADESH                     Male                 0       72     265
0-6 months    MAL-ED           BANGLADESH                     Male                 1       57     265
0-6 months    MAL-ED           BRAZIL                         Female               0       88     233
0-6 months    MAL-ED           BRAZIL                         Female               1       25     233
0-6 months    MAL-ED           BRAZIL                         Male                 0       93     233
0-6 months    MAL-ED           BRAZIL                         Male                 1       27     233
0-6 months    MAL-ED           INDIA                          Female               0      101     251
0-6 months    MAL-ED           INDIA                          Female               1       37     251
0-6 months    MAL-ED           INDIA                          Male                 0       63     251
0-6 months    MAL-ED           INDIA                          Male                 1       50     251
0-6 months    MAL-ED           NEPAL                          Female               0       94     240
0-6 months    MAL-ED           NEPAL                          Female               1       16     240
0-6 months    MAL-ED           NEPAL                          Male                 0      103     240
0-6 months    MAL-ED           NEPAL                          Male                 1       27     240
0-6 months    MAL-ED           PERU                           Female               0       92     303
0-6 months    MAL-ED           PERU                           Female               1       51     303
0-6 months    MAL-ED           PERU                           Male                 0       82     303
0-6 months    MAL-ED           PERU                           Male                 1       78     303
0-6 months    MAL-ED           SOUTH AFRICA                   Female               0      110     314
0-6 months    MAL-ED           SOUTH AFRICA                   Female               1       49     314
0-6 months    MAL-ED           SOUTH AFRICA                   Male                 0       88     314
0-6 months    MAL-ED           SOUTH AFRICA                   Male                 1       67     314
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               0       75     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               1       58     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 0       78     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 1       51     262
0-6 months    NIH-Birth        BANGLADESH                     Female               0      217     629
0-6 months    NIH-Birth        BANGLADESH                     Female               1       80     629
0-6 months    NIH-Birth        BANGLADESH                     Male                 0      192     629
0-6 months    NIH-Birth        BANGLADESH                     Male                 1      140     629
0-6 months    NIH-Crypto       BANGLADESH                     Female               0      275     758
0-6 months    NIH-Crypto       BANGLADESH                     Female               1      106     758
0-6 months    NIH-Crypto       BANGLADESH                     Male                 0      254     758
0-6 months    NIH-Crypto       BANGLADESH                     Male                 1      123     758
0-6 months    PROBIT           BELARUS                        Female               0     7799   16892
0-6 months    PROBIT           BELARUS                        Female               1      353   16892
0-6 months    PROBIT           BELARUS                        Male                 0     7934   16892
0-6 months    PROBIT           BELARUS                        Male                 1      806   16892
0-6 months    PROVIDE          BANGLADESH                     Female               0      264     700
0-6 months    PROVIDE          BANGLADESH                     Female               1       68     700
0-6 months    PROVIDE          BANGLADESH                     Male                 0      268     700
0-6 months    PROVIDE          BANGLADESH                     Male                 1      100     700
0-6 months    ResPak           PAKISTAN                       Female               0       56     282
0-6 months    ResPak           PAKISTAN                       Female               1       80     282
0-6 months    ResPak           PAKISTAN                       Male                 0       58     282
0-6 months    ResPak           PAKISTAN                       Male                 1       88     282
0-6 months    SAS-CompFeed     INDIA                          Female               0      419    1530
0-6 months    SAS-CompFeed     INDIA                          Female               1      281    1530
0-6 months    SAS-CompFeed     INDIA                          Male                 0      460    1530
0-6 months    SAS-CompFeed     INDIA                          Male                 1      370    1530
0-6 months    SAS-FoodSuppl    INDIA                          Female               0      141     416
0-6 months    SAS-FoodSuppl    INDIA                          Female               1       81     416
0-6 months    SAS-FoodSuppl    INDIA                          Male                 0      113     416
0-6 months    SAS-FoodSuppl    INDIA                          Male                 1       81     416
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               0     1001    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               1      183    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 0      928    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 1      284    2396
0-6 months    ZVITAMBO         ZIMBABWE                       Female               0     5206   14057
0-6 months    ZVITAMBO         ZIMBABWE                       Female               1     1623   14057
0-6 months    ZVITAMBO         ZIMBABWE                       Male                 0     5215   14057
0-6 months    ZVITAMBO         ZIMBABWE                       Male                 1     2013   14057


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/6d4dfc85-bcf9-4bd7-9ed9-82dac5321817/eda6103b-6d83-4c8a-9930-4cdfd0979f3b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6d4dfc85-bcf9-4bd7-9ed9-82dac5321817/eda6103b-6d83-4c8a-9930-4cdfd0979f3b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6d4dfc85-bcf9-4bd7-9ed9-82dac5321817/eda6103b-6d83-4c8a-9930-4cdfd0979f3b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6d4dfc85-bcf9-4bd7-9ed9-82dac5321817/eda6103b-6d83-4c8a-9930-4cdfd0979f3b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Female               NA                0.9304813   0.8939794   0.9669831
0-24 months   CMC-V-BCS-2002   INDIA                          Male                 NA                0.9193548   0.8801712   0.9585385
0-24 months   CMIN             BANGLADESH                     Female               NA                0.8500000   0.7859974   0.9140026
0-24 months   CMIN             BANGLADESH                     Male                 NA                0.8535032   0.7980916   0.9089147
0-24 months   COHORTS          GUATEMALA                      Female               NA                0.7546584   0.7214135   0.7879033
0-24 months   COHORTS          GUATEMALA                      Male                 NA                0.7720994   0.7415329   0.8026660
0-24 months   COHORTS          INDIA                          Female               NA                0.3469330   0.3312828   0.3625832
0-24 months   COHORTS          INDIA                          Male                 NA                0.3927000   0.3772990   0.4081009
0-24 months   COHORTS          PHILIPPINES                    Female               NA                0.6604036   0.6359143   0.6848930
0-24 months   COHORTS          PHILIPPINES                    Male                 NA                0.7094386   0.6873329   0.7315443
0-24 months   CONTENT          PERU                           Female               NA                0.2018349   0.1263097   0.2773600
0-24 months   CONTENT          PERU                           Male                 NA                0.2924528   0.2056542   0.3792515
0-24 months   EE               PAKISTAN                       Female               NA                0.8864865   0.8407149   0.9322581
0-24 months   EE               PAKISTAN                       Male                 NA                0.8969072   0.8540614   0.9397531
0-24 months   GMS-Nepal        NEPAL                          Female               NA                0.6554878   0.6040234   0.7069522
0-24 months   GMS-Nepal        NEPAL                          Male                 NA                0.6243243   0.5749421   0.6737065
0-24 months   Guatemala BSC    GUATEMALA                      Female               NA                0.5000000   0.4228828   0.5771172
0-24 months   Guatemala BSC    GUATEMALA                      Male                 NA                0.5620915   0.4833528   0.6408302
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female               NA                0.3027692   0.2666148   0.3389237
0-24 months   iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.4213415   0.3442350   0.4984479
0-24 months   IRC              INDIA                          Female               NA                0.6108108   0.5404669   0.6811547
0-24 months   IRC              INDIA                          Male                 NA                0.6666667   0.6049957   0.7283376
0-24 months   JiVitA-3         BANGLADESH                     Female               NA                0.4695724   0.4596472   0.4794975
0-24 months   JiVitA-3         BANGLADESH                     Male                 NA                0.5201790   0.5099437   0.5304144
0-24 months   JiVitA-4         BANGLADESH                     Female               NA                0.5583700   0.5369431   0.5797969
0-24 months   JiVitA-4         BANGLADESH                     Male                 NA                0.6041207   0.5818153   0.6264261
0-24 months   Keneba           GAMBIA                         Female               NA                0.4776119   0.4515078   0.5037161
0-24 months   Keneba           GAMBIA                         Male                 NA                0.5450928   0.5199555   0.5702301
0-24 months   LCNI-5           MALAWI                         Female               NA                0.5653207   0.5179404   0.6127009
0-24 months   LCNI-5           MALAWI                         Male                 NA                0.7088305   0.6653050   0.7523561
0-24 months   MAL-ED           BANGLADESH                     Female               NA                0.5588235   0.4752164   0.6424306
0-24 months   MAL-ED           BANGLADESH                     Male                 NA                0.6666667   0.5851647   0.7481686
0-24 months   MAL-ED           BRAZIL                         Female               NA                0.2477876   0.1680152   0.3275600
0-24 months   MAL-ED           BRAZIL                         Male                 NA                0.2916667   0.2101674   0.3731659
0-24 months   MAL-ED           INDIA                          Female               NA                0.5579710   0.4749465   0.6409956
0-24 months   MAL-ED           INDIA                          Male                 NA                0.6637168   0.5764358   0.7509978
0-24 months   MAL-ED           NEPAL                          Female               NA                0.3363636   0.2478871   0.4248402
0-24 months   MAL-ED           NEPAL                          Male                 NA                0.3615385   0.2787771   0.4442998
0-24 months   MAL-ED           PERU                           Female               NA                0.5314685   0.4495455   0.6133916
0-24 months   MAL-ED           PERU                           Male                 NA                0.7000000   0.6288761   0.7711239
0-24 months   MAL-ED           SOUTH AFRICA                   Female               NA                0.4968553   0.4190152   0.5746955
0-24 months   MAL-ED           SOUTH AFRICA                   Male                 NA                0.6258065   0.5495032   0.7021097
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               NA                0.8195489   0.7540672   0.8850306
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.8759690   0.8189797   0.9329583
0-24 months   NIH-Birth        BANGLADESH                     Female               NA                0.6228956   0.5677319   0.6780594
0-24 months   NIH-Birth        BANGLADESH                     Male                 NA                0.7018072   0.6525600   0.7510545
0-24 months   NIH-Crypto       BANGLADESH                     Female               NA                0.4514436   0.4014419   0.5014453
0-24 months   NIH-Crypto       BANGLADESH                     Male                 NA                0.5039788   0.4534754   0.5544821
0-24 months   PROBIT           BELARUS                        Female               NA                0.0933284   0.0781472   0.1085097
0-24 months   PROBIT           BELARUS                        Male                 NA                0.1592131   0.1398086   0.1786176
0-24 months   PROVIDE          BANGLADESH                     Female               NA                0.4036145   0.3508020   0.4564269
0-24 months   PROVIDE          BANGLADESH                     Male                 NA                0.4646739   0.4136800   0.5156678
0-24 months   ResPak           PAKISTAN                       Female               NA                0.6323529   0.5511746   0.7135312
0-24 months   ResPak           PAKISTAN                       Male                 NA                0.6824324   0.6072994   0.7575655
0-24 months   SAS-CompFeed     INDIA                          Female               NA                0.6657143   0.6220483   0.7093803
0-24 months   SAS-CompFeed     INDIA                          Male                 NA                0.7130852   0.6695064   0.7566641
0-24 months   SAS-FoodSuppl    INDIA                          Female               NA                0.8251121   0.7751947   0.8750295
0-24 months   SAS-FoodSuppl    INDIA                          Male                 NA                0.8307692   0.7780789   0.8834595
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.2947635   0.2687878   0.3207392
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.3960396   0.3684998   0.4235794
0-24 months   ZVITAMBO         ZIMBABWE                       Female               NA                0.3815655   0.3700488   0.3930821
0-24 months   ZVITAMBO         ZIMBABWE                       Male                 NA                0.4507529   0.4392904   0.4622153
0-6 months    CMC-V-BCS-2002   INDIA                          Female               NA                0.4486486   0.3768824   0.5204149
0-6 months    CMC-V-BCS-2002   INDIA                          Male                 NA                0.5737705   0.5020234   0.6455176
0-6 months    CMIN             BANGLADESH                     Female               NA                0.5166667   0.4270948   0.6062385
0-6 months    CMIN             BANGLADESH                     Male                 NA                0.6050955   0.5284933   0.6816978
0-6 months    COHORTS          GUATEMALA                      Female               NA                0.3109405   0.2711760   0.3507050
0-6 months    COHORTS          GUATEMALA                      Male                 NA                0.3397548   0.3008893   0.3786203
0-6 months    COHORTS          INDIA                          Female               NA                0.1663793   0.1540050   0.1787537
0-6 months    COHORTS          INDIA                          Male                 NA                0.2053571   0.1923329   0.2183814
0-6 months    COHORTS          PHILIPPINES                    Female               NA                0.1990257   0.1783789   0.2196726
0-6 months    COHORTS          PHILIPPINES                    Male                 NA                0.2745219   0.2527935   0.2962503
0-6 months    CONTENT          PERU                           Female               NA                0.0917431   0.0374258   0.1460604
0-6 months    CONTENT          PERU                           Male                 NA                0.1603774   0.0903575   0.2303972
0-6 months    EE               PAKISTAN                       Female               NA                0.7243243   0.6598478   0.7888009
0-6 months    EE               PAKISTAN                       Male                 NA                0.7731959   0.7141906   0.8322012
0-6 months    GMS-Nepal        NEPAL                          Female               NA                0.2987805   0.2492097   0.3483513
0-6 months    GMS-Nepal        NEPAL                          Male                 NA                0.3351351   0.2870030   0.3832673
0-6 months    Guatemala BSC    GUATEMALA                      Female               NA                0.2922078   0.2202589   0.3641566
0-6 months    Guatemala BSC    GUATEMALA                      Male                 NA                0.3404255   0.2620792   0.4187719
0-6 months    IRC              INDIA                          Female               NA                0.4000000   0.3293197   0.4706803
0-6 months    IRC              INDIA                          Male                 NA                0.4444444   0.3794375   0.5094514
0-6 months    JiVitA-3         BANGLADESH                     Female               NA                0.3945476   0.3851091   0.4039862
0-6 months    JiVitA-3         BANGLADESH                     Male                 NA                0.4308060   0.4208791   0.4407329
0-6 months    JiVitA-4         BANGLADESH                     Female               NA                0.3302362   0.3093513   0.3511210
0-6 months    JiVitA-4         BANGLADESH                     Male                 NA                0.3655281   0.3443429   0.3867132
0-6 months    Keneba           GAMBIA                         Female               NA                0.2818565   0.2562355   0.3074776
0-6 months    Keneba           GAMBIA                         Male                 NA                0.3406250   0.3146572   0.3665928
0-6 months    LCNI-5           MALAWI                         Female               NA                0.2480620   0.1733958   0.3227282
0-6 months    LCNI-5           MALAWI                         Male                 NA                0.4545455   0.3727841   0.5363068
0-6 months    MAL-ED           BANGLADESH                     Female               NA                0.2794118   0.2038564   0.3549672
0-6 months    MAL-ED           BANGLADESH                     Male                 NA                0.4418605   0.3560010   0.5277199
0-6 months    MAL-ED           BRAZIL                         Female               NA                0.2212389   0.1445424   0.2979355
0-6 months    MAL-ED           BRAZIL                         Male                 NA                0.2250000   0.1501256   0.2998744
0-6 months    MAL-ED           INDIA                          Female               NA                0.2681159   0.1940603   0.3421715
0-6 months    MAL-ED           INDIA                          Male                 NA                0.4424779   0.3507181   0.5342377
0-6 months    MAL-ED           NEPAL                          Female               NA                0.1454545   0.0794324   0.2114767
0-6 months    MAL-ED           NEPAL                          Male                 NA                0.2076923   0.1378143   0.2775703
0-6 months    MAL-ED           PERU                           Female               NA                0.3566434   0.2780038   0.4352829
0-6 months    MAL-ED           PERU                           Male                 NA                0.4875000   0.4099217   0.5650783
0-6 months    MAL-ED           SOUTH AFRICA                   Female               NA                0.3081761   0.2362909   0.3800613
0-6 months    MAL-ED           SOUTH AFRICA                   Male                 NA                0.4322581   0.3541453   0.5103708
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               NA                0.4360902   0.3516507   0.5205297
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.3953488   0.3108158   0.4798818
0-6 months    NIH-Birth        BANGLADESH                     Female               NA                0.2693603   0.2188670   0.3198536
0-6 months    NIH-Birth        BANGLADESH                     Male                 NA                0.4216867   0.3685248   0.4748487
0-6 months    NIH-Crypto       BANGLADESH                     Female               NA                0.2782152   0.2331889   0.3232416
0-6 months    NIH-Crypto       BANGLADESH                     Male                 NA                0.3262599   0.2789021   0.3736178
0-6 months    PROBIT           BELARUS                        Female               NA                0.0433023   0.0351088   0.0514957
0-6 months    PROBIT           BELARUS                        Male                 NA                0.0922197   0.0767521   0.1076872
0-6 months    PROVIDE          BANGLADESH                     Female               NA                0.2048193   0.1613775   0.2482611
0-6 months    PROVIDE          BANGLADESH                     Male                 NA                0.2717391   0.2262556   0.3172227
0-6 months    ResPak           PAKISTAN                       Female               NA                0.5882353   0.5053743   0.6710963
0-6 months    ResPak           PAKISTAN                       Male                 NA                0.6027397   0.5232254   0.6822541
0-6 months    SAS-CompFeed     INDIA                          Female               NA                0.4014286   0.3638208   0.4390364
0-6 months    SAS-CompFeed     INDIA                          Male                 NA                0.4457831   0.4109668   0.4805995
0-6 months    SAS-FoodSuppl    INDIA                          Female               NA                0.3648649   0.3014643   0.4282655
0-6 months    SAS-FoodSuppl    INDIA                          Male                 NA                0.4175258   0.3480474   0.4870042
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.1545608   0.1339662   0.1751554
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.2343234   0.2104718   0.2581751
0-6 months    ZVITAMBO         ZIMBABWE                       Female               NA                0.2376629   0.2275671   0.2477587
0-6 months    ZVITAMBO         ZIMBABWE                       Male                 NA                0.2785003   0.2681659   0.2888347


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.9249330   0.8981563   0.9517096
0-24 months   CMIN             BANGLADESH                     NA                   NA                0.8519856   0.8100906   0.8938805
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.7638889   0.7413757   0.7864021
0-24 months   COHORTS          INDIA                          NA                   NA                0.3707699   0.3597768   0.3817630
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6863963   0.6699497   0.7028430
0-24 months   CONTENT          PERU                           NA                   NA                0.2465116   0.1887688   0.3042545
0-24 months   EE               PAKISTAN                       NA                   NA                0.8918206   0.8605084   0.9231328
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.6389685   0.6033115   0.6746254
0-24 months   Guatemala BSC    GUATEMALA                      NA                   NA                0.5301587   0.4749558   0.5853616
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3623277   0.3130786   0.4115769
0-24 months   IRC              INDIA                          NA                   NA                0.6414634   0.5949863   0.6879405
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4953171   0.4874955   0.5031388
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.5812201   0.5652281   0.5972122
0-24 months   Keneba           GAMBIA                         NA                   NA                0.5125214   0.4943731   0.5306698
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.6369048   0.6043650   0.6694445
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.6113208   0.5525209   0.6701206
0-24 months   MAL-ED           BRAZIL                         NA                   NA                0.2703863   0.2132328   0.3275398
0-24 months   MAL-ED           INDIA                          NA                   NA                0.6055777   0.5449957   0.6661597
0-24 months   MAL-ED           NEPAL                          NA                   NA                0.3500000   0.2895300   0.4104700
0-24 months   MAL-ED           PERU                           NA                   NA                0.6204620   0.5657315   0.6751926
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.5605096   0.5055248   0.6154943
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8473282   0.8036934   0.8909630
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   PROBIT           BELARUS                        NA                   NA                0.1274191   0.1115552   0.1432829
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.4357143   0.3989556   0.4724730
0-24 months   ResPak           PAKISTAN                       NA                   NA                0.6584507   0.6031993   0.7137021
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.6914547   0.6510509   0.7318584
0-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.8277512   0.7915095   0.8639929
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3459933   0.3269422   0.3650444
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.4171522   0.4090055   0.4252989
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.5108696   0.4597270   0.5620121
0-6 months    CMIN             BANGLADESH                     NA                   NA                0.5667870   0.5083276   0.6252464
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.3260073   0.2981925   0.3538222
0-6 months    COHORTS          INDIA                          NA                   NA                0.1864548   0.1774430   0.1954667
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2390451   0.2239262   0.2541640
0-6 months    CONTENT          PERU                           NA                   NA                0.1255814   0.0811834   0.1699794
0-6 months    EE               PAKISTAN                       NA                   NA                0.7493404   0.7056502   0.7930306
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.3180516   0.2834770   0.3526261
0-6 months    Guatemala BSC    GUATEMALA                      NA                   NA                0.3152542   0.2621451   0.3683634
0-6 months    IRC              INDIA                          NA                   NA                0.4243902   0.3764905   0.4722900
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.4129818   0.4055453   0.4204184
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.3477583   0.3325749   0.3629416
0-6 months    Keneba           GAMBIA                         NA                   NA                0.3123732   0.2940736   0.3306728
0-6 months    LCNI-5           MALAWI                         NA                   NA                0.3566176   0.2995882   0.4136471
0-6 months    MAL-ED           BANGLADESH                     NA                   NA                0.3584906   0.3006428   0.4163383
0-6 months    MAL-ED           BRAZIL                         NA                   NA                0.2231760   0.1695976   0.2767543
0-6 months    MAL-ED           INDIA                          NA                   NA                0.3466135   0.2876225   0.4056046
0-6 months    MAL-ED           NEPAL                          NA                   NA                0.1791667   0.1305478   0.2277856
0-6 months    MAL-ED           PERU                           NA                   NA                0.4257426   0.3699763   0.4815088
0-6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.3694268   0.3159570   0.4228965
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4160305   0.3562327   0.4758284
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.3021108   0.2694011   0.3348205
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0686124   0.0577768   0.0794479
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.2400000   0.2083392   0.2716608
0-6 months    ResPak           PAKISTAN                       NA                   NA                0.5957447   0.5383657   0.6531237
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.4254902   0.3977202   0.4532601
0-6 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.3894231   0.3425088   0.4363374
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1949082   0.1790434   0.2107729
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.2586612   0.2514220   0.2659004


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   CMC-V-BCS-2002   INDIA                          Male                 Female            0.9880423   0.9324348   1.046966
0-24 months   CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   CMIN             BANGLADESH                     Male                 Female            1.0041214   0.9090925   1.109084
0-24 months   COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.000000
0-24 months   COHORTS          GUATEMALA                      Male                 Female            1.0231112   0.9642741   1.085538
0-24 months   COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   COHORTS          INDIA                          Male                 Female            1.1319187   1.0662413   1.201642
0-24 months   COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES                    Male                 Female            1.0742500   1.0234581   1.127563
0-24 months   CONTENT          PERU                           Female               Female            1.0000000   1.0000000   1.000000
0-24 months   CONTENT          PERU                           Male                 Female            1.4489708   0.8987478   2.336046
0-24 months   EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
0-24 months   EE               PAKISTAN                       Male                 Female            1.0117551   0.9430319   1.085487
0-24 months   GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal        NEPAL                          Male                 Female            0.9524576   0.8520094   1.064748
0-24 months   Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000   1.000000
0-24 months   Guatemala BSC    GUATEMALA                      Male                 Female            1.1241830   0.9127469   1.384598
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female               Female            1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   Male                 Female            1.3916258   1.1468171   1.688693
0-24 months   IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   IRC              INDIA                          Male                 Female            1.0914454   0.9415628   1.265187
0-24 months   JiVitA-3         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH                     Male                 Female            1.1077718   1.0795127   1.136771
0-24 months   JiVitA-4         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4         BANGLADESH                     Male                 Female            1.0819360   1.0279020   1.138810
0-24 months   Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.000000
0-24 months   Keneba           GAMBIA                         Male                 Female            1.1412881   1.0625229   1.225892
0-24 months   LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000   1.000000
0-24 months   LCNI-5           MALAWI                         Male                 Female            1.2538557   1.1301213   1.391137
0-24 months   MAL-ED           BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           BANGLADESH                     Male                 Female            1.1929825   0.9833869   1.447250
0-24 months   MAL-ED           BRAZIL                         Female               Female            1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           BRAZIL                         Male                 Female            1.1770833   0.7685492   1.802780
0-24 months   MAL-ED           INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           INDIA                          Male                 Female            1.1895184   0.9752799   1.450819
0-24 months   MAL-ED           NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           NEPAL                          Male                 Female            1.0748441   0.7584159   1.523293
0-24 months   MAL-ED           PERU                           Female               Female            1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           PERU                           Male                 Female            1.3171053   1.0950687   1.584162
0-24 months   MAL-ED           SOUTH AFRICA                   Female               Female            1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           SOUTH AFRICA                   Male                 Female            1.2595345   1.0327461   1.536125
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.0688429   0.9641966   1.184847
0-24 months   NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth        BANGLADESH                     Male                 Female            1.1266851   1.0063084   1.261462
0-24 months   NIH-Crypto       BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     Male                 Female            1.1163716   0.9614813   1.296214
0-24 months   PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        Male                 Female            1.7059441   1.5202507   1.914319
0-24 months   PROVIDE          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     Male                 Female            1.1512816   0.9705421   1.365679
0-24 months   ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ResPak           PAKISTAN                       Male                 Female            1.0791955   0.9112817   1.278049
0-24 months   SAS-CompFeed     INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA                          Male                 Female            1.0711581   1.0191095   1.125865
0-24 months   SAS-FoodSuppl    INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl    INDIA                          Male                 Female            1.0068562   0.9223623   1.099090
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.3435842   1.2009166   1.503201
0-24 months   ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       Male                 Female            1.1813251   1.1356097   1.228881
0-6 months    CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    CMC-V-BCS-2002   INDIA                          Male                 Female            1.2788860   1.0438889   1.566785
0-6 months    CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    CMIN             BANGLADESH                     Male                 Female            1.1711527   0.9448982   1.451583
0-6 months    COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.000000
0-6 months    COHORTS          GUATEMALA                      Male                 Female            1.0926683   0.9203892   1.297195
0-6 months    COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    COHORTS          INDIA                          Male                 Female            1.2342709   1.1193365   1.361007
0-6 months    COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES                    Male                 Female            1.3793286   1.2105932   1.571583
0-6 months    CONTENT          PERU                           Female               Female            1.0000000   1.0000000   1.000000
0-6 months    CONTENT          PERU                           Male                 Female            1.7481132   0.8377038   3.647948
0-6 months    EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
0-6 months    EE               PAKISTAN                       Male                 Female            1.0674719   0.9493696   1.200266
0-6 months    GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal        NEPAL                          Male                 Female            1.1216768   0.9006729   1.396910
0-6 months    Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000   1.000000
0-6 months    Guatemala BSC    GUATEMALA                      Male                 Female            1.1650118   0.8316835   1.631934
0-6 months    IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    IRC              INDIA                          Male                 Female            1.1111111   0.8833596   1.397582
0-6 months    JiVitA-3         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3         BANGLADESH                     Male                 Female            1.0918986   1.0594537   1.125337
0-6 months    JiVitA-4         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4         BANGLADESH                     Male                 Female            1.1068687   1.0175304   1.204051
0-6 months    Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.000000
0-6 months    Keneba           GAMBIA                         Male                 Female            1.2085049   1.0733089   1.360730
0-6 months    LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000   1.000000
0-6 months    LCNI-5           MALAWI                         Male                 Female            1.8323864   1.2904228   2.601969
0-6 months    MAL-ED           BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           BANGLADESH                     Male                 Female            1.5813953   1.1335146   2.206245
0-6 months    MAL-ED           BRAZIL                         Female               Female            1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           BRAZIL                         Male                 Female            1.0170000   0.6289632   1.644435
0-6 months    MAL-ED           INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           INDIA                          Male                 Female            1.6503229   1.1683339   2.331154
0-6 months    MAL-ED           NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           NEPAL                          Male                 Female            1.4278846   0.8115524   2.512290
0-6 months    MAL-ED           PERU                           Female               Female            1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           PERU                           Male                 Female            1.3669118   1.0414646   1.794058
0-6 months    MAL-ED           SOUTH AFRICA                   Female               Female            1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           SOUTH AFRICA                   Male                 Female            1.4026333   1.0442325   1.884044
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 Female            0.9065758   0.6794016   1.209711
0-6 months    NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth        BANGLADESH                     Male                 Female            1.5655120   1.2489548   1.962303
0-6 months    NIH-Crypto       BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto       BANGLADESH                     Male                 Female            1.1726891   0.9435572   1.457463
0-6 months    PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        Male                 Female            2.1296737   1.8171229   2.495984
0-6 months    PROVIDE          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    PROVIDE          BANGLADESH                     Male                 Female            1.3267263   1.0126054   1.738291
0-6 months    ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ResPak           PAKISTAN                       Male                 Female            1.0246575   0.8448185   1.242779
0-6 months    SAS-CompFeed     INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed     INDIA                          Male                 Female            1.1104918   0.9944836   1.240033
0-6 months    SAS-FoodSuppl    INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    SAS-FoodSuppl    INDIA                          Male                 Female            1.1443299   0.8996285   1.455591
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.5160598   1.2820210   1.792823
0-6 months    ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       Male                 Female            1.1718290   1.1075622   1.239825


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Female               NA                -0.0055483   -0.0322582   0.0211616
0-24 months   CMIN             BANGLADESH                     Female               NA                 0.0019856   -0.0459973   0.0499684
0-24 months   COHORTS          GUATEMALA                      Female               NA                 0.0092305   -0.0146751   0.0331361
0-24 months   COHORTS          INDIA                          Female               NA                 0.0238368    0.0123890   0.0352846
0-24 months   COHORTS          PHILIPPINES                    Female               NA                 0.0259927    0.0084833   0.0435021
0-24 months   CONTENT          PERU                           Female               NA                 0.0446768   -0.0123727   0.1017263
0-24 months   EE               PAKISTAN                       Female               NA                 0.0053341   -0.0267627   0.0374309
0-24 months   GMS-Nepal        NEPAL                          Female               NA                -0.0165193   -0.0543451   0.0213064
0-24 months   Guatemala BSC    GUATEMALA                      Female               NA                 0.0301587   -0.0234831   0.0838005
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0595585    0.0178371   0.1012799
0-24 months   IRC              INDIA                          Female               NA                 0.0306526   -0.0207563   0.0820615
0-24 months   JiVitA-3         BANGLADESH                     Female               NA                 0.0257448    0.0192361   0.0322534
0-24 months   JiVitA-4         BANGLADESH                     Female               NA                 0.0228501    0.0080013   0.0376989
0-24 months   Keneba           GAMBIA                         Female               NA                 0.0349095    0.0161219   0.0536971
0-24 months   LCNI-5           MALAWI                         Female               NA                 0.0715841    0.0391265   0.1040416
0-24 months   MAL-ED           BANGLADESH                     Female               NA                 0.0524972   -0.0047110   0.1097054
0-24 months   MAL-ED           BRAZIL                         Female               NA                 0.0225987   -0.0362036   0.0814009
0-24 months   MAL-ED           INDIA                          Female               NA                 0.0476067   -0.0070158   0.1022292
0-24 months   MAL-ED           NEPAL                          Female               NA                 0.0136364   -0.0520063   0.0792790
0-24 months   MAL-ED           PERU                           Female               NA                 0.0889935    0.0309248   0.1470623
0-24 months   MAL-ED           SOUTH AFRICA                   Female               NA                 0.0636542    0.0093759   0.1179325
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0277794   -0.0150987   0.0706575
0-24 months   NIH-Birth        BANGLADESH                     Female               NA                 0.0416513    0.0024984   0.0808042
0-24 months   NIH-Crypto       BANGLADESH                     Female               NA                 0.0261290   -0.0092673   0.0615253
0-24 months   PROBIT           BELARUS                        Female               NA                 0.0340906    0.0269258   0.0412554
0-24 months   PROVIDE          BANGLADESH                     Female               NA                 0.0320998   -0.0065608   0.0707604
0-24 months   ResPak           PAKISTAN                       Female               NA                 0.0260978   -0.0316185   0.0838140
0-24 months   SAS-CompFeed     INDIA                          Female               NA                 0.0257404    0.0068649   0.0446158
0-24 months   SAS-FoodSuppl    INDIA                          Female               NA                 0.0026391   -0.0312216   0.0364998
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0512298    0.0319729   0.0704868
0-24 months   ZVITAMBO         ZIMBABWE                       Female               NA                 0.0355867    0.0272097   0.0439638
0-6 months    CMC-V-BCS-2002   INDIA                          Female               NA                 0.0622209    0.0113528   0.1130891
0-6 months    CMIN             BANGLADESH                     Female               NA                 0.0501203   -0.0168810   0.1171217
0-6 months    COHORTS          GUATEMALA                      Female               NA                 0.0150668   -0.0140204   0.0441541
0-6 months    COHORTS          INDIA                          Female               NA                 0.0200755    0.0108115   0.0293396
0-6 months    COHORTS          PHILIPPINES                    Female               NA                 0.0400194    0.0240748   0.0559640
0-6 months    CONTENT          PERU                           Female               NA                 0.0338383   -0.0100937   0.0777702
0-6 months    EE               PAKISTAN                       Female               NA                 0.0250160   -0.0197897   0.0698218
0-6 months    GMS-Nepal        NEPAL                          Female               NA                 0.0192711   -0.0173794   0.0559215
0-6 months    Guatemala BSC    GUATEMALA                      Female               NA                 0.0230464   -0.0278698   0.0739627
0-6 months    IRC              INDIA                          Female               NA                 0.0243902   -0.0283523   0.0771327
0-6 months    JiVitA-3         BANGLADESH                     Female               NA                 0.0184342    0.0121013   0.0247671
0-6 months    JiVitA-4         BANGLADESH                     Female               NA                 0.0175221    0.0029952   0.0320491
0-6 months    Keneba           GAMBIA                         Female               NA                 0.0305167    0.0115385   0.0494949
0-6 months    LCNI-5           MALAWI                         Female               NA                 0.1085556    0.0490635   0.1680478
0-6 months    MAL-ED           BANGLADESH                     Female               NA                 0.0790788    0.0225494   0.1356082
0-6 months    MAL-ED           BRAZIL                         Female               NA                 0.0019370   -0.0532659   0.0571399
0-6 months    MAL-ED           INDIA                          Female               NA                 0.0784976    0.0243339   0.1326613
0-6 months    MAL-ED           NEPAL                          Female               NA                 0.0337121   -0.0185090   0.0859332
0-6 months    MAL-ED           PERU                           Female               NA                 0.0690992    0.0103043   0.1278941
0-6 months    MAL-ED           SOUTH AFRICA                   Female               NA                 0.0612507    0.0084001   0.1141012
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0200597   -0.0789403   0.0388209
0-6 months    NIH-Birth        BANGLADESH                     Female               NA                 0.0804013    0.0412472   0.1195553
0-6 months    NIH-Crypto       BANGLADESH                     Female               NA                 0.0238956   -0.0086502   0.0564413
0-6 months    PROBIT           BELARUS                        Female               NA                 0.0253101    0.0189683   0.0316519
0-6 months    PROVIDE          BANGLADESH                     Female               NA                 0.0351807    0.0020226   0.0683389
0-6 months    ResPak           PAKISTAN                       Female               NA                 0.0075094   -0.0519534   0.0669722
0-6 months    SAS-CompFeed     INDIA                          Female               NA                 0.0240616   -0.0017474   0.0498707
0-6 months    SAS-FoodSuppl    INDIA                          Female               NA                 0.0245582   -0.0193781   0.0684945
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0403474    0.0243272   0.0563676
0-6 months    ZVITAMBO         ZIMBABWE                       Female               NA                 0.0209983    0.0135619   0.0284346


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Female               NA                -0.0059986   -0.0353075   0.0224806
0-24 months   CMIN             BANGLADESH                     Female               NA                 0.0023305   -0.0556096   0.0570904
0-24 months   COHORTS          GUATEMALA                      Female               NA                 0.0120836   -0.0197232   0.0428983
0-24 months   COHORTS          INDIA                          Female               NA                 0.0642901    0.0328930   0.0946678
0-24 months   COHORTS          PHILIPPINES                    Female               NA                 0.0378684    0.0119649   0.0630928
0-24 months   CONTENT          PERU                           Female               NA                 0.1812359   -0.0838055   0.3814623
0-24 months   EE               PAKISTAN                       Female               NA                 0.0059811   -0.0306783   0.0413366
0-24 months   GMS-Nepal        NEPAL                          Female               NA                -0.0258531   -0.0868416   0.0317130
0-24 months   Guatemala BSC    GUATEMALA                      Female               NA                 0.0568862   -0.0501390   0.1530039
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.1643774    0.0571456   0.2594136
0-24 months   IRC              INDIA                          Female               NA                 0.0477854   -0.0360227   0.1248140
0-24 months   JiVitA-3         BANGLADESH                     Female               NA                 0.0519764    0.0387596   0.0650114
0-24 months   JiVitA-4         BANGLADESH                     Female               NA                 0.0393140    0.0134402   0.0645092
0-24 months   Keneba           GAMBIA                         Female               NA                 0.0681132    0.0306465   0.1041319
0-24 months   LCNI-5           MALAWI                         Female               NA                 0.1123937    0.0592212   0.1625609
0-24 months   MAL-ED           BANGLADESH                     Female               NA                 0.0858751   -0.0134190   0.1754404
0-24 months   MAL-ED           BRAZIL                         Female               NA                 0.0835792   -0.1615766   0.2769937
0-24 months   MAL-ED           INDIA                          Female               NA                 0.0786137   -0.0168376   0.1651048
0-24 months   MAL-ED           NEPAL                          Female               NA                 0.0389610   -0.1681461   0.2093490
0-24 months   MAL-ED           PERU                           Female               NA                 0.1434310    0.0428320   0.2334570
0-24 months   MAL-ED           SOUTH AFRICA                   Female               NA                 0.1135649    0.0103420   0.2060215
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0327847   -0.0194546   0.0823471
0-24 months   NIH-Birth        BANGLADESH                     Female               NA                 0.0626762    0.0015717   0.1200411
0-24 months   NIH-Crypto       BANGLADESH                     Female               NA                 0.0547121   -0.0224764   0.1260735
0-24 months   PROBIT           BELARUS                        Female               NA                 0.2675474    0.2099294   0.3209635
0-24 months   PROVIDE          BANGLADESH                     Female               NA                 0.0736717   -0.0195491   0.1583691
0-24 months   ResPak           PAKISTAN                       Female               NA                 0.0396351   -0.0523309   0.1235640
0-24 months   SAS-CompFeed     INDIA                          Female               NA                 0.0372264    0.0095688   0.0641117
0-24 months   SAS-FoodSuppl    INDIA                          Female               NA                 0.0031883   -0.0385717   0.0432691
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.1480659    0.0906135   0.2018886
0-24 months   ZVITAMBO         ZIMBABWE                       Female               NA                 0.0853087    0.0649833   0.1051924
0-6 months    CMC-V-BCS-2002   INDIA                          Female               NA                 0.1217941    0.0156623   0.2164828
0-6 months    CMIN             BANGLADESH                     Female               NA                 0.0884289   -0.0383448   0.1997245
0-6 months    COHORTS          GUATEMALA                      Female               NA                 0.0462162   -0.0473054   0.1313866
0-6 months    COHORTS          INDIA                          Female               NA                 0.1076697    0.0567457   0.1558445
0-6 months    COHORTS          PHILIPPINES                    Female               NA                 0.1674135    0.0984030   0.2311417
0-6 months    CONTENT          PERU                           Female               NA                 0.2694529   -0.1625965   0.5409422
0-6 months    EE               PAKISTAN                       Female               NA                 0.0333841   -0.0284585   0.0915080
0-6 months    GMS-Nepal        NEPAL                          Female               NA                 0.0605911   -0.0619827   0.1690174
0-6 months    Guatemala BSC    GUATEMALA                      Female               NA                 0.0731043   -0.1032475   0.2212667
0-6 months    IRC              INDIA                          Female               NA                 0.0574713   -0.0754480   0.1739625
0-6 months    JiVitA-3         BANGLADESH                     Female               NA                 0.0446369    0.0292119   0.0598167
0-6 months    JiVitA-4         BANGLADESH                     Female               NA                 0.0503859    0.0076480   0.0912833
0-6 months    Keneba           GAMBIA                         Female               NA                 0.0976930    0.0348979   0.1564023
0-6 months    LCNI-5           MALAWI                         Female               NA                 0.3044034    0.1179498   0.4514432
0-6 months    MAL-ED           BANGLADESH                     Female               NA                 0.2205882    0.0464521   0.3629238
0-6 months    MAL-ED           BRAZIL                         Female               NA                 0.0086794   -0.2722615   0.2275829
0-6 months    MAL-ED           INDIA                          Female               NA                 0.2264701    0.0543474   0.3672639
0-6 months    MAL-ED           NEPAL                          Female               NA                 0.1881607   -0.1583457   0.4310135
0-6 months    MAL-ED           PERU                           Female               NA                 0.1623028    0.0117010   0.2899552
0-6 months    MAL-ED           SOUTH AFRICA                   Female               NA                 0.1657992    0.0097926   0.2972270
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0482169   -0.1998418   0.0842471
0-6 months    NIH-Birth        BANGLADESH                     Female               NA                 0.2298745    0.1099176   0.3336647
0-6 months    NIH-Crypto       BANGLADESH                     Female               NA                 0.0790955   -0.0351089   0.1806996
0-6 months    PROBIT           BELARUS                        Female               NA                 0.3688855    0.2952891   0.4347958
0-6 months    PROVIDE          BANGLADESH                     Female               NA                 0.1465863   -0.0026496   0.2736098
0-6 months    ResPak           PAKISTAN                       Female               NA                 0.0126050   -0.0924423   0.1075512
0-6 months    SAS-CompFeed     INDIA                          Female               NA                 0.0565504   -0.0061560   0.1153487
0-6 months    SAS-FoodSuppl    INDIA                          Female               NA                 0.0630631   -0.0568914   0.1694030
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.2070071    0.1215899   0.2841182
0-6 months    ZVITAMBO         ZIMBABWE                       Female               NA                 0.0811806    0.0520099   0.1094536
