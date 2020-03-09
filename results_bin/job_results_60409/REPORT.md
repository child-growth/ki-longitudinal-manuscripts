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

**Outcome Variable:** ever_wasted

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

agecat        studyid          country                        sex       ever_wasted   n_cell       n
------------  ---------------  -----------------------------  -------  ------------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          Female              0       70     373
0-24 months   CMC-V-BCS-2002   INDIA                          Female              1      117     373
0-24 months   CMC-V-BCS-2002   INDIA                          Male                0       75     373
0-24 months   CMC-V-BCS-2002   INDIA                          Male                1      111     373
0-24 months   CMIN             BANGLADESH                     Female              0       64     272
0-24 months   CMIN             BANGLADESH                     Female              1       55     272
0-24 months   CMIN             BANGLADESH                     Male                0       84     272
0-24 months   CMIN             BANGLADESH                     Male                1       69     272
0-24 months   COHORTS          GUATEMALA                      Female              0      506    1349
0-24 months   COHORTS          GUATEMALA                      Female              1      129    1349
0-24 months   COHORTS          GUATEMALA                      Male                0      500    1349
0-24 months   COHORTS          GUATEMALA                      Male                1      214    1349
0-24 months   COHORTS          INDIA                          Female              0     2389    7405
0-24 months   COHORTS          INDIA                          Female              1     1162    7405
0-24 months   COHORTS          INDIA                          Male                0     2571    7405
0-24 months   COHORTS          INDIA                          Male                1     1283    7405
0-24 months   COHORTS          PHILIPPINES                    Female              0      883    3045
0-24 months   COHORTS          PHILIPPINES                    Female              1      548    3045
0-24 months   COHORTS          PHILIPPINES                    Male                0      933    3045
0-24 months   COHORTS          PHILIPPINES                    Male                1      681    3045
0-24 months   CONTENT          PERU                           Female              0      107     215
0-24 months   CONTENT          PERU                           Female              1        2     215
0-24 months   CONTENT          PERU                           Male                0      103     215
0-24 months   CONTENT          PERU                           Male                1        3     215
0-24 months   EE               PAKISTAN                       Female              0       78     380
0-24 months   EE               PAKISTAN                       Female              1      107     380
0-24 months   EE               PAKISTAN                       Male                0       76     380
0-24 months   EE               PAKISTAN                       Male                1      119     380
0-24 months   GMS-Nepal        NEPAL                          Female              0      126     686
0-24 months   GMS-Nepal        NEPAL                          Female              1      196     686
0-24 months   GMS-Nepal        NEPAL                          Male                0      155     686
0-24 months   GMS-Nepal        NEPAL                          Male                1      209     686
0-24 months   Guatemala BSC    GUATEMALA                      Female              0      151     315
0-24 months   Guatemala BSC    GUATEMALA                      Female              1       11     315
0-24 months   Guatemala BSC    GUATEMALA                      Male                0      133     315
0-24 months   Guatemala BSC    GUATEMALA                      Male                1       20     315
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female              0     1295    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female              1      330    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   Male                0     1214    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   Male                1      427    3266
0-24 months   IRC              INDIA                          Female              0       62     410
0-24 months   IRC              INDIA                          Female              1      123     410
0-24 months   IRC              INDIA                          Male                0       79     410
0-24 months   IRC              INDIA                          Male                1      146     410
0-24 months   JiVitA-3         BANGLADESH                     Female              0     9864   26956
0-24 months   JiVitA-3         BANGLADESH                     Female              1     3370   26956
0-24 months   JiVitA-3         BANGLADESH                     Male                0    10137   26956
0-24 months   JiVitA-3         BANGLADESH                     Male                1     3585   26956
0-24 months   JiVitA-4         BANGLADESH                     Female              0     1947    5443
0-24 months   JiVitA-4         BANGLADESH                     Female              1      778    5443
0-24 months   JiVitA-4         BANGLADESH                     Male                0     1807    5443
0-24 months   JiVitA-4         BANGLADESH                     Male                1      911    5443
0-24 months   Keneba           GAMBIA                         Female              0      836    2920
0-24 months   Keneba           GAMBIA                         Female              1      575    2920
0-24 months   Keneba           GAMBIA                         Male                0      806    2920
0-24 months   Keneba           GAMBIA                         Male                1      703    2920
0-24 months   LCNI-5           MALAWI                         Female              0      400     840
0-24 months   LCNI-5           MALAWI                         Female              1       21     840
0-24 months   LCNI-5           MALAWI                         Male                0      373     840
0-24 months   LCNI-5           MALAWI                         Male                1       46     840
0-24 months   MAL-ED           BANGLADESH                     Female              0       88     263
0-24 months   MAL-ED           BANGLADESH                     Female              1       46     263
0-24 months   MAL-ED           BANGLADESH                     Male                0       88     263
0-24 months   MAL-ED           BANGLADESH                     Male                1       41     263
0-24 months   MAL-ED           BRAZIL                         Female              0      105     233
0-24 months   MAL-ED           BRAZIL                         Female              1        8     233
0-24 months   MAL-ED           BRAZIL                         Male                0      108     233
0-24 months   MAL-ED           BRAZIL                         Male                1       12     233
0-24 months   MAL-ED           INDIA                          Female              0       72     251
0-24 months   MAL-ED           INDIA                          Female              1       66     251
0-24 months   MAL-ED           INDIA                          Male                0       59     251
0-24 months   MAL-ED           INDIA                          Male                1       54     251
0-24 months   MAL-ED           NEPAL                          Female              0       75     240
0-24 months   MAL-ED           NEPAL                          Female              1       35     240
0-24 months   MAL-ED           NEPAL                          Male                0       91     240
0-24 months   MAL-ED           NEPAL                          Male                1       39     240
0-24 months   MAL-ED           PERU                           Female              0      133     302
0-24 months   MAL-ED           PERU                           Female              1        9     302
0-24 months   MAL-ED           PERU                           Male                0      142     302
0-24 months   MAL-ED           PERU                           Male                1       18     302
0-24 months   MAL-ED           SOUTH AFRICA                   Female              0      130     312
0-24 months   MAL-ED           SOUTH AFRICA                   Female              1       28     312
0-24 months   MAL-ED           SOUTH AFRICA                   Male                0      118     312
0-24 months   MAL-ED           SOUTH AFRICA                   Male                1       36     312
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female              0      112     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female              1       20     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                0      113     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                1       16     261
0-24 months   NIH-Birth        BANGLADESH                     Female              0      160     624
0-24 months   NIH-Birth        BANGLADESH                     Female              1      136     624
0-24 months   NIH-Birth        BANGLADESH                     Male                0      166     624
0-24 months   NIH-Birth        BANGLADESH                     Male                1      162     624
0-24 months   NIH-Crypto       BANGLADESH                     Female              0      265     758
0-24 months   NIH-Crypto       BANGLADESH                     Female              1      116     758
0-24 months   NIH-Crypto       BANGLADESH                     Male                0      243     758
0-24 months   NIH-Crypto       BANGLADESH                     Male                1      134     758
0-24 months   PROBIT           BELARUS                        Female              0     6169   16898
0-24 months   PROBIT           BELARUS                        Female              1     1985   16898
0-24 months   PROBIT           BELARUS                        Male                0     6413   16898
0-24 months   PROBIT           BELARUS                        Male                1     2331   16898
0-24 months   PROVIDE          BANGLADESH                     Female              0      217     700
0-24 months   PROVIDE          BANGLADESH                     Female              1      115     700
0-24 months   PROVIDE          BANGLADESH                     Male                0      237     700
0-24 months   PROVIDE          BANGLADESH                     Male                1      131     700
0-24 months   ResPak           PAKISTAN                       Female              0       61     284
0-24 months   ResPak           PAKISTAN                       Female              1       75     284
0-24 months   ResPak           PAKISTAN                       Male                0       67     284
0-24 months   ResPak           PAKISTAN                       Male                1       81     284
0-24 months   SAS-CompFeed     INDIA                          Female              0      400    1513
0-24 months   SAS-CompFeed     INDIA                          Female              1      286    1513
0-24 months   SAS-CompFeed     INDIA                          Male                0      485    1513
0-24 months   SAS-CompFeed     INDIA                          Male                1      342    1513
0-24 months   SAS-FoodSuppl    INDIA                          Female              0      122     418
0-24 months   SAS-FoodSuppl    INDIA                          Female              1      101     418
0-24 months   SAS-FoodSuppl    INDIA                          Male                0       99     418
0-24 months   SAS-FoodSuppl    INDIA                          Male                1       96     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              0      944    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              1      240    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                0      886    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                1      326    2396
0-24 months   ZVITAMBO         ZIMBABWE                       Female              0     5135   13946
0-24 months   ZVITAMBO         ZIMBABWE                       Female              1     1640   13946
0-24 months   ZVITAMBO         ZIMBABWE                       Male                0     5510   13946
0-24 months   ZVITAMBO         ZIMBABWE                       Male                1     1661   13946
0-6 months    CMC-V-BCS-2002   INDIA                          Female              0       84     368
0-6 months    CMC-V-BCS-2002   INDIA                          Female              1      101     368
0-6 months    CMC-V-BCS-2002   INDIA                          Male                0       94     368
0-6 months    CMC-V-BCS-2002   INDIA                          Male                1       89     368
0-6 months    CMIN             BANGLADESH                     Female              0       93     272
0-6 months    CMIN             BANGLADESH                     Female              1       26     272
0-6 months    CMIN             BANGLADESH                     Male                0      129     272
0-6 months    CMIN             BANGLADESH                     Male                1       24     272
0-6 months    COHORTS          GUATEMALA                      Female              0      427    1064
0-6 months    COHORTS          GUATEMALA                      Female              1       80    1064
0-6 months    COHORTS          GUATEMALA                      Male                0      423    1064
0-6 months    COHORTS          GUATEMALA                      Male                1      134    1064
0-6 months    COHORTS          INDIA                          Female              0     2565    7128
0-6 months    COHORTS          INDIA                          Female              1      891    7128
0-6 months    COHORTS          INDIA                          Male                0     2767    7128
0-6 months    COHORTS          INDIA                          Male                1      905    7128
0-6 months    COHORTS          PHILIPPINES                    Female              0     1120    3044
0-6 months    COHORTS          PHILIPPINES                    Female              1      311    3044
0-6 months    COHORTS          PHILIPPINES                    Male                0     1207    3044
0-6 months    COHORTS          PHILIPPINES                    Male                1      406    3044
0-6 months    CONTENT          PERU                           Female              0      108     215
0-6 months    CONTENT          PERU                           Female              1        1     215
0-6 months    CONTENT          PERU                           Male                0      103     215
0-6 months    CONTENT          PERU                           Male                1        3     215
0-6 months    EE               PAKISTAN                       Female              0      126     380
0-6 months    EE               PAKISTAN                       Female              1       59     380
0-6 months    EE               PAKISTAN                       Male                0      130     380
0-6 months    EE               PAKISTAN                       Male                1       65     380
0-6 months    GMS-Nepal        NEPAL                          Female              0      201     686
0-6 months    GMS-Nepal        NEPAL                          Female              1      121     686
0-6 months    GMS-Nepal        NEPAL                          Male                0      227     686
0-6 months    GMS-Nepal        NEPAL                          Male                1      137     686
0-6 months    Guatemala BSC    GUATEMALA                      Female              0      151     295
0-6 months    Guatemala BSC    GUATEMALA                      Female              1        3     295
0-6 months    Guatemala BSC    GUATEMALA                      Male                0      134     295
0-6 months    Guatemala BSC    GUATEMALA                      Male                1        7     295
0-6 months    IRC              INDIA                          Female              0       86     410
0-6 months    IRC              INDIA                          Female              1       99     410
0-6 months    IRC              INDIA                          Male                0      101     410
0-6 months    IRC              INDIA                          Male                1      124     410
0-6 months    JiVitA-3         BANGLADESH                     Female              0    10833   26859
0-6 months    JiVitA-3         BANGLADESH                     Female              1     2357   26859
0-6 months    JiVitA-3         BANGLADESH                     Male                0    11294   26859
0-6 months    JiVitA-3         BANGLADESH                     Male                1     2375   26859
0-6 months    JiVitA-4         BANGLADESH                     Female              0     2317    5096
0-6 months    JiVitA-4         BANGLADESH                     Female              1      247    5096
0-6 months    JiVitA-4         BANGLADESH                     Male                0     2226    5096
0-6 months    JiVitA-4         BANGLADESH                     Male                1      306    5096
0-6 months    Keneba           GAMBIA                         Female              0      878    2466
0-6 months    Keneba           GAMBIA                         Female              1      309    2466
0-6 months    Keneba           GAMBIA                         Male                0      914    2466
0-6 months    Keneba           GAMBIA                         Male                1      365    2466
0-6 months    LCNI-5           MALAWI                         Female              0      127     272
0-6 months    LCNI-5           MALAWI                         Female              1        2     272
0-6 months    LCNI-5           MALAWI                         Male                0      141     272
0-6 months    LCNI-5           MALAWI                         Male                1        2     272
0-6 months    MAL-ED           BANGLADESH                     Female              0      100     263
0-6 months    MAL-ED           BANGLADESH                     Female              1       34     263
0-6 months    MAL-ED           BANGLADESH                     Male                0      103     263
0-6 months    MAL-ED           BANGLADESH                     Male                1       26     263
0-6 months    MAL-ED           BRAZIL                         Female              0      108     233
0-6 months    MAL-ED           BRAZIL                         Female              1        5     233
0-6 months    MAL-ED           BRAZIL                         Male                0      110     233
0-6 months    MAL-ED           BRAZIL                         Male                1       10     233
0-6 months    MAL-ED           INDIA                          Female              0       94     251
0-6 months    MAL-ED           INDIA                          Female              1       44     251
0-6 months    MAL-ED           INDIA                          Male                0       75     251
0-6 months    MAL-ED           INDIA                          Male                1       38     251
0-6 months    MAL-ED           NEPAL                          Female              0       89     240
0-6 months    MAL-ED           NEPAL                          Female              1       21     240
0-6 months    MAL-ED           NEPAL                          Male                0      103     240
0-6 months    MAL-ED           NEPAL                          Male                1       27     240
0-6 months    MAL-ED           PERU                           Female              0      138     302
0-6 months    MAL-ED           PERU                           Female              1        4     302
0-6 months    MAL-ED           PERU                           Male                0      153     302
0-6 months    MAL-ED           PERU                           Male                1        7     302
0-6 months    MAL-ED           SOUTH AFRICA                   Female              0      141     312
0-6 months    MAL-ED           SOUTH AFRICA                   Female              1       17     312
0-6 months    MAL-ED           SOUTH AFRICA                   Male                0      136     312
0-6 months    MAL-ED           SOUTH AFRICA                   Male                1       18     312
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female              0      122     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female              1       10     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                0      126     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                1        3     261
0-6 months    NIH-Birth        BANGLADESH                     Female              0      191     622
0-6 months    NIH-Birth        BANGLADESH                     Female              1      104     622
0-6 months    NIH-Birth        BANGLADESH                     Male                0      209     622
0-6 months    NIH-Birth        BANGLADESH                     Male                1      118     622
0-6 months    NIH-Crypto       BANGLADESH                     Female              0      287     758
0-6 months    NIH-Crypto       BANGLADESH                     Female              1       94     758
0-6 months    NIH-Crypto       BANGLADESH                     Male                0      276     758
0-6 months    NIH-Crypto       BANGLADESH                     Male                1      101     758
0-6 months    PROBIT           BELARUS                        Female              0     6198   16895
0-6 months    PROBIT           BELARUS                        Female              1     1954   16895
0-6 months    PROBIT           BELARUS                        Male                0     6473   16895
0-6 months    PROBIT           BELARUS                        Male                1     2270   16895
0-6 months    PROVIDE          BANGLADESH                     Female              0      246     700
0-6 months    PROVIDE          BANGLADESH                     Female              1       86     700
0-6 months    PROVIDE          BANGLADESH                     Male                0      273     700
0-6 months    PROVIDE          BANGLADESH                     Male                1       95     700
0-6 months    ResPak           PAKISTAN                       Female              0       82     282
0-6 months    ResPak           PAKISTAN                       Female              1       54     282
0-6 months    ResPak           PAKISTAN                       Male                0       91     282
0-6 months    ResPak           PAKISTAN                       Male                1       55     282
0-6 months    SAS-CompFeed     INDIA                          Female              0      518    1505
0-6 months    SAS-CompFeed     INDIA                          Female              1      166    1505
0-6 months    SAS-CompFeed     INDIA                          Male                0      656    1505
0-6 months    SAS-CompFeed     INDIA                          Male                1      165    1505
0-6 months    SAS-FoodSuppl    INDIA                          Female              0      179     418
0-6 months    SAS-FoodSuppl    INDIA                          Female              1       44     418
0-6 months    SAS-FoodSuppl    INDIA                          Male                0      161     418
0-6 months    SAS-FoodSuppl    INDIA                          Male                1       34     418
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              0     1044    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              1      140    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                0     1019    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                1      193    2396
0-6 months    ZVITAMBO         ZIMBABWE                       Female              0     5427   13853
0-6 months    ZVITAMBO         ZIMBABWE                       Female              1     1291   13853
0-6 months    ZVITAMBO         ZIMBABWE                       Male                0     5917   13853
0-6 months    ZVITAMBO         ZIMBABWE                       Male                1     1218   13853
6-24 months   CMC-V-BCS-2002   INDIA                          Female              0      142     373
6-24 months   CMC-V-BCS-2002   INDIA                          Female              1       45     373
6-24 months   CMC-V-BCS-2002   INDIA                          Male                0      132     373
6-24 months   CMC-V-BCS-2002   INDIA                          Male                1       54     373
6-24 months   CMIN             BANGLADESH                     Female              0       65     252
6-24 months   CMIN             BANGLADESH                     Female              1       43     252
6-24 months   CMIN             BANGLADESH                     Male                0       90     252
6-24 months   CMIN             BANGLADESH                     Male                1       54     252
6-24 months   COHORTS          GUATEMALA                      Female              0      527    1220
6-24 months   COHORTS          GUATEMALA                      Female              1       56    1220
6-24 months   COHORTS          GUATEMALA                      Male                0      539    1220
6-24 months   COHORTS          GUATEMALA                      Male                1       98    1220
6-24 months   COHORTS          INDIA                          Female              0     2958    6941
6-24 months   COHORTS          INDIA                          Female              1      365    6941
6-24 months   COHORTS          INDIA                          Male                0     3132    6941
6-24 months   COHORTS          INDIA                          Male                1      486    6941
6-24 months   COHORTS          PHILIPPINES                    Female              0      997    2809
6-24 months   COHORTS          PHILIPPINES                    Female              1      332    2809
6-24 months   COHORTS          PHILIPPINES                    Male                0     1063    2809
6-24 months   COHORTS          PHILIPPINES                    Male                1      417    2809
6-24 months   CONTENT          PERU                           Female              0      108     215
6-24 months   CONTENT          PERU                           Female              1        1     215
6-24 months   CONTENT          PERU                           Male                0      105     215
6-24 months   CONTENT          PERU                           Male                1        1     215
6-24 months   EE               PAKISTAN                       Female              0      107     374
6-24 months   EE               PAKISTAN                       Female              1       75     374
6-24 months   EE               PAKISTAN                       Male                0      106     374
6-24 months   EE               PAKISTAN                       Male                1       86     374
6-24 months   GMS-Nepal        NEPAL                          Female              0      144     590
6-24 months   GMS-Nepal        NEPAL                          Female              1      141     590
6-24 months   GMS-Nepal        NEPAL                          Male                0      167     590
6-24 months   GMS-Nepal        NEPAL                          Male                1      138     590
6-24 months   Guatemala BSC    GUATEMALA                      Female              0      134     277
6-24 months   Guatemala BSC    GUATEMALA                      Female              1        8     277
6-24 months   Guatemala BSC    GUATEMALA                      Male                0      120     277
6-24 months   Guatemala BSC    GUATEMALA                      Male                1       15     277
6-24 months   iLiNS-Zinc       BURKINA FASO                   Female              0     1295    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   Female              1      330    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   Male                0     1214    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   Male                1      427    3266
6-24 months   IRC              INDIA                          Female              0      127     410
6-24 months   IRC              INDIA                          Female              1       58     410
6-24 months   IRC              INDIA                          Male                0      156     410
6-24 months   IRC              INDIA                          Male                1       69     410
6-24 months   JiVitA-3         BANGLADESH                     Female              0     7172   17298
6-24 months   JiVitA-3         BANGLADESH                     Female              1     1295   17298
6-24 months   JiVitA-3         BANGLADESH                     Male                0     7289   17298
6-24 months   JiVitA-3         BANGLADESH                     Male                1     1542   17298
6-24 months   JiVitA-4         BANGLADESH                     Female              0     2098    5430
6-24 months   JiVitA-4         BANGLADESH                     Female              1      621    5430
6-24 months   JiVitA-4         BANGLADESH                     Male                0     1989    5430
6-24 months   JiVitA-4         BANGLADESH                     Male                1      722    5430
6-24 months   Keneba           GAMBIA                         Female              0      946    2738
6-24 months   Keneba           GAMBIA                         Female              1      379    2738
6-24 months   Keneba           GAMBIA                         Male                0      925    2738
6-24 months   Keneba           GAMBIA                         Male                1      488    2738
6-24 months   LCNI-5           MALAWI                         Female              0      398     826
6-24 months   LCNI-5           MALAWI                         Female              1       19     826
6-24 months   LCNI-5           MALAWI                         Male                0      364     826
6-24 months   LCNI-5           MALAWI                         Male                1       45     826
6-24 months   MAL-ED           BANGLADESH                     Female              0       99     240
6-24 months   MAL-ED           BANGLADESH                     Female              1       23     240
6-24 months   MAL-ED           BANGLADESH                     Male                0       98     240
6-24 months   MAL-ED           BANGLADESH                     Male                1       20     240
6-24 months   MAL-ED           BRAZIL                         Female              0       98     207
6-24 months   MAL-ED           BRAZIL                         Female              1        3     207
6-24 months   MAL-ED           BRAZIL                         Male                0      103     207
6-24 months   MAL-ED           BRAZIL                         Male                1        3     207
6-24 months   MAL-ED           INDIA                          Female              0       96     235
6-24 months   MAL-ED           INDIA                          Female              1       33     235
6-24 months   MAL-ED           INDIA                          Male                0       75     235
6-24 months   MAL-ED           INDIA                          Male                1       31     235
6-24 months   MAL-ED           NEPAL                          Female              0       91     235
6-24 months   MAL-ED           NEPAL                          Female              1       18     235
6-24 months   MAL-ED           NEPAL                          Male                0      108     235
6-24 months   MAL-ED           NEPAL                          Male                1       18     235
6-24 months   MAL-ED           PERU                           Female              0      119     270
6-24 months   MAL-ED           PERU                           Female              1        5     270
6-24 months   MAL-ED           PERU                           Male                0      133     270
6-24 months   MAL-ED           PERU                           Male                1       13     270
6-24 months   MAL-ED           SOUTH AFRICA                   Female              0      115     259
6-24 months   MAL-ED           SOUTH AFRICA                   Female              1       14     259
6-24 months   MAL-ED           SOUTH AFRICA                   Male                0      107     259
6-24 months   MAL-ED           SOUTH AFRICA                   Male                1       23     259
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female              0      110     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female              1       14     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                0      107     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                1       14     245
6-24 months   NIH-Birth        BANGLADESH                     Female              0      181     542
6-24 months   NIH-Birth        BANGLADESH                     Female              1       65     542
6-24 months   NIH-Birth        BANGLADESH                     Male                0      202     542
6-24 months   NIH-Birth        BANGLADESH                     Male                1       94     542
6-24 months   NIH-Crypto       BANGLADESH                     Female              0      331     730
6-24 months   NIH-Crypto       BANGLADESH                     Female              1       38     730
6-24 months   NIH-Crypto       BANGLADESH                     Male                0      303     730
6-24 months   NIH-Crypto       BANGLADESH                     Male                1       58     730
6-24 months   PROBIT           BELARUS                        Female              0     7952   16598
6-24 months   PROBIT           BELARUS                        Female              1       48   16598
6-24 months   PROBIT           BELARUS                        Male                0     8507   16598
6-24 months   PROBIT           BELARUS                        Male                1       91   16598
6-24 months   PROVIDE          BANGLADESH                     Female              0      249     615
6-24 months   PROVIDE          BANGLADESH                     Female              1       45     615
6-24 months   PROVIDE          BANGLADESH                     Male                0      267     615
6-24 months   PROVIDE          BANGLADESH                     Male                1       54     615
6-24 months   ResPak           PAKISTAN                       Female              0       67     236
6-24 months   ResPak           PAKISTAN                       Female              1       43     236
6-24 months   ResPak           PAKISTAN                       Male                0       83     236
6-24 months   ResPak           PAKISTAN                       Male                1       43     236
6-24 months   SAS-CompFeed     INDIA                          Female              0      439    1389
6-24 months   SAS-CompFeed     INDIA                          Female              1      185    1389
6-24 months   SAS-CompFeed     INDIA                          Male                0      525    1389
6-24 months   SAS-CompFeed     INDIA                          Male                1      240    1389
6-24 months   SAS-FoodSuppl    INDIA                          Female              0      139     402
6-24 months   SAS-FoodSuppl    INDIA                          Female              1       73     402
6-24 months   SAS-FoodSuppl    INDIA                          Male                0      120     402
6-24 months   SAS-FoodSuppl    INDIA                          Male                1       70     402
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              0      862    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              1      135    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                0      832    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                1      189    2018
6-24 months   ZVITAMBO         ZIMBABWE                       Female              0     4914   10815
6-24 months   ZVITAMBO         ZIMBABWE                       Female              1      454   10815
6-24 months   ZVITAMBO         ZIMBABWE                       Male                0     4864   10815
6-24 months   ZVITAMBO         ZIMBABWE                       Male                1      583   10815


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
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL

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
![](/tmp/2928caf1-e5c0-409e-b0b5-7ad7c0df4a97/c89c3e20-0e39-4203-8289-84804ac2392d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2928caf1-e5c0-409e-b0b5-7ad7c0df4a97/c89c3e20-0e39-4203-8289-84804ac2392d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2928caf1-e5c0-409e-b0b5-7ad7c0df4a97/c89c3e20-0e39-4203-8289-84804ac2392d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2928caf1-e5c0-409e-b0b5-7ad7c0df4a97/c89c3e20-0e39-4203-8289-84804ac2392d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Female               NA                0.6256684   0.5562123   0.6951246
0-24 months   CMC-V-BCS-2002   INDIA                          Male                 NA                0.5967742   0.5261825   0.6673659
0-24 months   CMIN             BANGLADESH                     Female               NA                0.4621849   0.3724422   0.5519275
0-24 months   CMIN             BANGLADESH                     Male                 NA                0.4509804   0.3719899   0.5299709
0-24 months   COHORTS          GUATEMALA                      Female               NA                0.2031496   0.1718443   0.2344550
0-24 months   COHORTS          GUATEMALA                      Male                 NA                0.2997199   0.2661033   0.3333365
0-24 months   COHORTS          INDIA                          Female               NA                0.3272318   0.3117983   0.3426652
0-24 months   COHORTS          INDIA                          Male                 NA                0.3329009   0.3180219   0.3477799
0-24 months   COHORTS          PHILIPPINES                    Female               NA                0.3829490   0.3577588   0.4081391
0-24 months   COHORTS          PHILIPPINES                    Male                 NA                0.4219331   0.3978352   0.4460309
0-24 months   EE               PAKISTAN                       Female               NA                0.5783784   0.5071256   0.6496312
0-24 months   EE               PAKISTAN                       Male                 NA                0.6102564   0.5417157   0.6787971
0-24 months   GMS-Nepal        NEPAL                          Female               NA                0.6086957   0.5553506   0.6620407
0-24 months   GMS-Nepal        NEPAL                          Male                 NA                0.5741758   0.5233421   0.6250095
0-24 months   Guatemala BSC    GUATEMALA                      Female               NA                0.0679012   0.0290995   0.1067029
0-24 months   Guatemala BSC    GUATEMALA                      Male                 NA                0.1307190   0.0772204   0.1842175
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female               NA                0.2030769   0.1735252   0.2326286
0-24 months   iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.2602072   0.2146739   0.3057404
0-24 months   IRC              INDIA                          Female               NA                0.6648649   0.5967614   0.7329683
0-24 months   IRC              INDIA                          Male                 NA                0.6488889   0.5864443   0.7113334
0-24 months   JiVitA-3         BANGLADESH                     Female               NA                0.2546471   0.2467420   0.2625523
0-24 months   JiVitA-3         BANGLADESH                     Male                 NA                0.2612593   0.2521937   0.2703249
0-24 months   JiVitA-4         BANGLADESH                     Female               NA                0.2855046   0.2663454   0.3046638
0-24 months   JiVitA-4         BANGLADESH                     Male                 NA                0.3351729   0.3136603   0.3566855
0-24 months   Keneba           GAMBIA                         Female               NA                0.4075124   0.3818694   0.4331554
0-24 months   Keneba           GAMBIA                         Male                 NA                0.4658714   0.4406985   0.4910444
0-24 months   LCNI-5           MALAWI                         Female               NA                0.0498812   0.0290736   0.0706889
0-24 months   LCNI-5           MALAWI                         Male                 NA                0.1097852   0.0798337   0.1397367
0-24 months   MAL-ED           BANGLADESH                     Female               NA                0.3432836   0.2627386   0.4238285
0-24 months   MAL-ED           BANGLADESH                     Male                 NA                0.3178295   0.2373242   0.3983347
0-24 months   MAL-ED           BRAZIL                         Female               NA                0.0707965   0.0234046   0.1181884
0-24 months   MAL-ED           BRAZIL                         Male                 NA                0.1000000   0.0462086   0.1537914
0-24 months   MAL-ED           INDIA                          Female               NA                0.4782609   0.3947516   0.5617701
0-24 months   MAL-ED           INDIA                          Male                 NA                0.4778761   0.3855934   0.5701588
0-24 months   MAL-ED           NEPAL                          Female               NA                0.3181818   0.2309589   0.4054047
0-24 months   MAL-ED           NEPAL                          Male                 NA                0.3000000   0.2210608   0.3789392
0-24 months   MAL-ED           PERU                           Female               NA                0.0633803   0.0232398   0.1035208
0-24 months   MAL-ED           PERU                           Male                 NA                0.1125000   0.0634579   0.1615421
0-24 months   MAL-ED           SOUTH AFRICA                   Female               NA                0.1772152   0.1175789   0.2368514
0-24 months   MAL-ED           SOUTH AFRICA                   Male                 NA                0.2337662   0.1668153   0.3007171
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               NA                0.1515152   0.0902315   0.2127988
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1240310   0.0670413   0.1810207
0-24 months   NIH-Birth        BANGLADESH                     Female               NA                0.4594595   0.4026412   0.5162778
0-24 months   NIH-Birth        BANGLADESH                     Male                 NA                0.4939024   0.4397526   0.5480523
0-24 months   NIH-Crypto       BANGLADESH                     Female               NA                0.3044619   0.2582239   0.3507000
0-24 months   NIH-Crypto       BANGLADESH                     Male                 NA                0.3554377   0.3070897   0.4037856
0-24 months   PROBIT           BELARUS                        Female               NA                0.2434388   0.1842710   0.3026066
0-24 months   PROBIT           BELARUS                        Male                 NA                0.2665828   0.2078438   0.3253218
0-24 months   PROVIDE          BANGLADESH                     Female               NA                0.3463855   0.2951666   0.3976044
0-24 months   PROVIDE          BANGLADESH                     Male                 NA                0.3559783   0.3070233   0.4049332
0-24 months   ResPak           PAKISTAN                       Female               NA                0.5514706   0.4677367   0.6352045
0-24 months   ResPak           PAKISTAN                       Male                 NA                0.5472973   0.4669629   0.6276317
0-24 months   SAS-CompFeed     INDIA                          Female               NA                0.4169096   0.3514103   0.4824089
0-24 months   SAS-CompFeed     INDIA                          Male                 NA                0.4135429   0.3538555   0.4732304
0-24 months   SAS-FoodSuppl    INDIA                          Female               NA                0.4529148   0.3875037   0.5183259
0-24 months   SAS-FoodSuppl    INDIA                          Male                 NA                0.4923077   0.4220539   0.5625614
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.2027027   0.1797992   0.2256063
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.2689769   0.2440074   0.2939464
0-24 months   ZVITAMBO         ZIMBABWE                       Female               NA                0.2420664   0.2318666   0.2522662
0-24 months   ZVITAMBO         ZIMBABWE                       Male                 NA                0.2316274   0.2218628   0.2413920
0-6 months    CMC-V-BCS-2002   INDIA                          Female               NA                0.5459459   0.4741034   0.6177885
0-6 months    CMC-V-BCS-2002   INDIA                          Male                 NA                0.4863388   0.4138249   0.5588527
0-6 months    CMIN             BANGLADESH                     Female               NA                0.2184874   0.1441075   0.2928673
0-6 months    CMIN             BANGLADESH                     Male                 NA                0.1568627   0.0991315   0.2145940
0-6 months    COHORTS          GUATEMALA                      Female               NA                0.1577909   0.1260442   0.1895377
0-6 months    COHORTS          GUATEMALA                      Male                 NA                0.2405745   0.2050611   0.2760879
0-6 months    COHORTS          INDIA                          Female               NA                0.2578125   0.2432277   0.2723973
0-6 months    COHORTS          INDIA                          Male                 NA                0.2464597   0.2325200   0.2603994
0-6 months    COHORTS          PHILIPPINES                    Female               NA                0.2173305   0.1959583   0.2387027
0-6 months    COHORTS          PHILIPPINES                    Male                 NA                0.2517049   0.2305220   0.2728878
0-6 months    EE               PAKISTAN                       Female               NA                0.3189189   0.2516718   0.3861661
0-6 months    EE               PAKISTAN                       Male                 NA                0.3333333   0.2670817   0.3995850
0-6 months    GMS-Nepal        NEPAL                          Female               NA                0.3757764   0.3228379   0.4287149
0-6 months    GMS-Nepal        NEPAL                          Male                 NA                0.3763736   0.3265671   0.4261801
0-6 months    IRC              INDIA                          Female               NA                0.5351351   0.4631757   0.6070945
0-6 months    IRC              INDIA                          Male                 NA                0.5511111   0.4860418   0.6161804
0-6 months    JiVitA-3         BANGLADESH                     Female               NA                0.1786960   0.1714447   0.1859472
0-6 months    JiVitA-3         BANGLADESH                     Male                 NA                0.1737508   0.1660413   0.1814603
0-6 months    JiVitA-4         BANGLADESH                     Female               NA                0.0963339   0.0830053   0.1096624
0-6 months    JiVitA-4         BANGLADESH                     Male                 NA                0.1208531   0.1060881   0.1356181
0-6 months    Keneba           GAMBIA                         Female               NA                0.2603201   0.2353520   0.2852883
0-6 months    Keneba           GAMBIA                         Male                 NA                0.2853792   0.2606249   0.3101335
0-6 months    MAL-ED           BANGLADESH                     Female               NA                0.2537313   0.1799141   0.3275485
0-6 months    MAL-ED           BANGLADESH                     Male                 NA                0.2015504   0.1321925   0.2709083
0-6 months    MAL-ED           BRAZIL                         Female               NA                0.0442478   0.0062497   0.0822458
0-6 months    MAL-ED           BRAZIL                         Male                 NA                0.0833333   0.0337762   0.1328905
0-6 months    MAL-ED           INDIA                          Female               NA                0.3188406   0.2409318   0.3967494
0-6 months    MAL-ED           INDIA                          Male                 NA                0.3362832   0.2490022   0.4235642
0-6 months    MAL-ED           NEPAL                          Female               NA                0.1909091   0.1173104   0.2645078
0-6 months    MAL-ED           NEPAL                          Male                 NA                0.2076923   0.1378143   0.2775703
0-6 months    MAL-ED           SOUTH AFRICA                   Female               NA                0.1075949   0.0592007   0.1559892
0-6 months    MAL-ED           SOUTH AFRICA                   Male                 NA                0.1168831   0.0660590   0.1677072
0-6 months    NIH-Birth        BANGLADESH                     Female               NA                0.3525424   0.2979794   0.4071053
0-6 months    NIH-Birth        BANGLADESH                     Male                 NA                0.3608563   0.3087620   0.4129505
0-6 months    NIH-Crypto       BANGLADESH                     Female               NA                0.2467192   0.2034028   0.2900355
0-6 months    NIH-Crypto       BANGLADESH                     Male                 NA                0.2679045   0.2231705   0.3126385
0-6 months    PROBIT           BELARUS                        Female               NA                0.2396958   0.1803678   0.2990238
0-6 months    PROBIT           BELARUS                        Male                 NA                0.2596363   0.2007801   0.3184924
0-6 months    PROVIDE          BANGLADESH                     Female               NA                0.2590361   0.2118768   0.3061955
0-6 months    PROVIDE          BANGLADESH                     Male                 NA                0.2581522   0.2134087   0.3028957
0-6 months    ResPak           PAKISTAN                       Female               NA                0.3970588   0.3146801   0.4794375
0-6 months    ResPak           PAKISTAN                       Male                 NA                0.3767123   0.2979729   0.4554518
0-6 months    SAS-CompFeed     INDIA                          Female               NA                0.2426901   0.1918941   0.2934861
0-6 months    SAS-CompFeed     INDIA                          Male                 NA                0.2009744   0.1536074   0.2483414
0-6 months    SAS-FoodSuppl    INDIA                          Female               NA                0.1973094   0.1450140   0.2496049
0-6 months    SAS-FoodSuppl    INDIA                          Male                 NA                0.1743590   0.1210416   0.2276763
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.1182432   0.0998472   0.1366393
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1592409   0.1386370   0.1798449
0-6 months    ZVITAMBO         ZIMBABWE                       Female               NA                0.1921703   0.1827482   0.2015924
0-6 months    ZVITAMBO         ZIMBABWE                       Male                 NA                0.1707078   0.1619771   0.1794384
6-24 months   CMC-V-BCS-2002   INDIA                          Female               NA                0.2406417   0.1792911   0.3019923
6-24 months   CMC-V-BCS-2002   INDIA                          Male                 NA                0.2903226   0.2250027   0.3556425
6-24 months   CMIN             BANGLADESH                     Female               NA                0.3981481   0.3056428   0.4906535
6-24 months   CMIN             BANGLADESH                     Male                 NA                0.3750000   0.2957707   0.4542293
6-24 months   COHORTS          GUATEMALA                      Female               NA                0.0960549   0.0721260   0.1199838
6-24 months   COHORTS          GUATEMALA                      Male                 NA                0.1538462   0.1258161   0.1818762
6-24 months   COHORTS          INDIA                          Female               NA                0.1098405   0.0992082   0.1204729
6-24 months   COHORTS          INDIA                          Male                 NA                0.1343284   0.1232160   0.1454407
6-24 months   COHORTS          PHILIPPINES                    Female               NA                0.2498119   0.2265334   0.2730904
6-24 months   COHORTS          PHILIPPINES                    Male                 NA                0.2817568   0.2588340   0.3046795
6-24 months   EE               PAKISTAN                       Female               NA                0.4120879   0.3404827   0.4836932
6-24 months   EE               PAKISTAN                       Male                 NA                0.4479167   0.3774831   0.5183503
6-24 months   GMS-Nepal        NEPAL                          Female               NA                0.4947368   0.4366417   0.5528320
6-24 months   GMS-Nepal        NEPAL                          Male                 NA                0.4524590   0.3965522   0.5083658
6-24 months   Guatemala BSC    GUATEMALA                      Female               NA                0.0563380   0.0183455   0.0943306
6-24 months   Guatemala BSC    GUATEMALA                      Male                 NA                0.1111111   0.0580020   0.1642202
6-24 months   iLiNS-Zinc       BURKINA FASO                   Female               NA                0.2030769   0.1735252   0.2326286
6-24 months   iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.2602072   0.2146739   0.3057404
6-24 months   IRC              INDIA                          Female               NA                0.3135135   0.2465811   0.3804459
6-24 months   IRC              INDIA                          Male                 NA                0.3066667   0.2463425   0.3669908
6-24 months   JiVitA-3         BANGLADESH                     Female               NA                0.1529467   0.1448164   0.1610771
6-24 months   JiVitA-3         BANGLADESH                     Male                 NA                0.1746122   0.1657346   0.1834897
6-24 months   JiVitA-4         BANGLADESH                     Female               NA                0.2283928   0.2110941   0.2456915
6-24 months   JiVitA-4         BANGLADESH                     Male                 NA                0.2663224   0.2459813   0.2866634
6-24 months   Keneba           GAMBIA                         Female               NA                0.2860377   0.2617006   0.3103748
6-24 months   Keneba           GAMBIA                         Male                 NA                0.3453645   0.3205677   0.3701612
6-24 months   LCNI-5           MALAWI                         Female               NA                0.0455635   0.0255361   0.0655910
6-24 months   LCNI-5           MALAWI                         Male                 NA                0.1100244   0.0796797   0.1403692
6-24 months   MAL-ED           BANGLADESH                     Female               NA                0.1885246   0.1189747   0.2580745
6-24 months   MAL-ED           BANGLADESH                     Male                 NA                0.1694915   0.1016556   0.2373275
6-24 months   MAL-ED           INDIA                          Female               NA                0.2558140   0.1803600   0.3312679
6-24 months   MAL-ED           INDIA                          Male                 NA                0.2924528   0.2056714   0.3792343
6-24 months   MAL-ED           NEPAL                          Female               NA                0.1651376   0.0952836   0.2349916
6-24 months   MAL-ED           NEPAL                          Male                 NA                0.1428571   0.0816268   0.2040874
6-24 months   MAL-ED           PERU                           Female               NA                0.0403226   0.0056345   0.0750106
6-24 months   MAL-ED           PERU                           Male                 NA                0.0890411   0.0427580   0.1353242
6-24 months   MAL-ED           SOUTH AFRICA                   Female               NA                0.1085271   0.0547477   0.1623066
6-24 months   MAL-ED           SOUTH AFRICA                   Male                 NA                0.1769231   0.1111983   0.2426478
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               NA                0.1129032   0.0570865   0.1687199
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1157025   0.0585922   0.1728127
6-24 months   NIH-Birth        BANGLADESH                     Female               NA                0.2642276   0.2090780   0.3193772
6-24 months   NIH-Birth        BANGLADESH                     Male                 NA                0.3175676   0.2644851   0.3706500
6-24 months   NIH-Crypto       BANGLADESH                     Female               NA                0.1029810   0.0719489   0.1340132
6-24 months   NIH-Crypto       BANGLADESH                     Male                 NA                0.1606648   0.1227577   0.1985719
6-24 months   PROBIT           BELARUS                        Female               NA                0.0060000   0.0034135   0.0085865
6-24 months   PROBIT           BELARUS                        Male                 NA                0.0105839   0.0048638   0.0163039
6-24 months   PROVIDE          BANGLADESH                     Female               NA                0.1530612   0.1118717   0.1942507
6-24 months   PROVIDE          BANGLADESH                     Male                 NA                0.1682243   0.1272703   0.2091783
6-24 months   ResPak           PAKISTAN                       Female               NA                0.3909091   0.2995288   0.4822894
6-24 months   ResPak           PAKISTAN                       Male                 NA                0.3412698   0.2583062   0.4242334
6-24 months   SAS-CompFeed     INDIA                          Female               NA                0.2964744   0.2342539   0.3586948
6-24 months   SAS-CompFeed     INDIA                          Male                 NA                0.3137255   0.2696597   0.3577913
6-24 months   SAS-FoodSuppl    INDIA                          Female               NA                0.3443396   0.2802992   0.4083800
6-24 months   SAS-FoodSuppl    INDIA                          Male                 NA                0.3684211   0.2997461   0.4370960
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.1354062   0.1141624   0.1566501
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1851126   0.1612834   0.2089418
6-24 months   ZVITAMBO         ZIMBABWE                       Female               NA                0.0845753   0.0771315   0.0920191
6-24 months   ZVITAMBO         ZIMBABWE                       Male                 NA                0.1070314   0.0988210   0.1152418


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6112601   0.5617242   0.6607959
0-24 months   CMIN             BANGLADESH                     NA                   NA                0.4558824   0.3965849   0.5151798
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.2542624   0.2310170   0.2775078
0-24 months   COHORTS          INDIA                          NA                   NA                0.3301823   0.3194703   0.3408943
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.4036125   0.3861835   0.4210415
0-24 months   EE               PAKISTAN                       NA                   NA                0.5947368   0.5453104   0.6441633
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.5903790   0.5535526   0.6272054
0-24 months   Guatemala BSC    GUATEMALA                      NA                   NA                0.0984127   0.0654659   0.1313595
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2317820   0.2038933   0.2596707
0-24 months   IRC              INDIA                          NA                   NA                0.6560976   0.6100625   0.7021326
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2580131   0.2515484   0.2644777
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.3103068   0.2959008   0.3247129
0-24 months   Keneba           GAMBIA                         NA                   NA                0.4376712   0.4196742   0.4556682
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.0797619   0.0614297   0.0980941
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.3307985   0.2738270   0.3877700
0-24 months   MAL-ED           BRAZIL                         NA                   NA                0.0858369   0.0497913   0.1218826
0-24 months   MAL-ED           INDIA                          NA                   NA                0.4780876   0.4161677   0.5400076
0-24 months   MAL-ED           NEPAL                          NA                   NA                0.3083333   0.2497859   0.3668808
0-24 months   MAL-ED           PERU                           NA                   NA                0.0894040   0.0571706   0.1216374
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2051282   0.1602507   0.2500058
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1379310   0.0960166   0.1798455
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.3298153   0.2963239   0.3633067
0-24 months   PROBIT           BELARUS                        NA                   NA                0.2554148   0.1971257   0.3137039
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   ResPak           PAKISTAN                       NA                   NA                0.5492958   0.4913257   0.6072658
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.4150694   0.3581204   0.4720184
0-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.4712919   0.4233811   0.5192026
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2362270   0.2192156   0.2532385
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.2366987   0.2296439   0.2437535
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.5163043   0.4651769   0.5674318
0-6 months    CMIN             BANGLADESH                     NA                   NA                0.1838235   0.1377071   0.2299400
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.2011278   0.1770312   0.2252244
0-6 months    COHORTS          INDIA                          NA                   NA                0.2519641   0.2418849   0.2620433
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2355453   0.2204685   0.2506222
0-6 months    EE               PAKISTAN                       NA                   NA                0.3263158   0.2791121   0.3735195
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.3760933   0.3398180   0.4123685
0-6 months    IRC              INDIA                          NA                   NA                0.5439024   0.4956326   0.5921723
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.1761793   0.1705546   0.1818041
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.1085165   0.0986819   0.1183510
0-6 months    Keneba           GAMBIA                         NA                   NA                0.2733171   0.2557239   0.2909103
0-6 months    MAL-ED           BANGLADESH                     NA                   NA                0.2281369   0.1773250   0.2789488
0-6 months    MAL-ED           BRAZIL                         NA                   NA                0.0643777   0.0327970   0.0959584
0-6 months    MAL-ED           INDIA                          NA                   NA                0.3266932   0.2685560   0.3848305
0-6 months    MAL-ED           NEPAL                          NA                   NA                0.2000000   0.1492882   0.2507118
0-6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.1121795   0.0771053   0.1472536
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.2572559   0.2261171   0.2883948
0-6 months    PROBIT           BELARUS                        NA                   NA                0.2500148   0.1915461   0.3084835
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ResPak           PAKISTAN                       NA                   NA                0.3865248   0.3295895   0.4434602
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.2199336   0.1753445   0.2645227
0-6 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.1866029   0.1492099   0.2239959
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1389816   0.1251275   0.1528358
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1811160   0.1747027   0.1875293
6-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months   CMIN             BANGLADESH                     NA                   NA                0.3849206   0.3247254   0.4451159
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1262295   0.1075861   0.1448729
6-24 months   COHORTS          INDIA                          NA                   NA                0.1226048   0.1148883   0.1303213
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months   EE               PAKISTAN                       NA                   NA                0.4304813   0.3802326   0.4807300
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.4728814   0.4325613   0.5132014
6-24 months   Guatemala BSC    GUATEMALA                      NA                   NA                0.0830325   0.0504792   0.1155858
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2317820   0.2038933   0.2596707
6-24 months   IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.1640074   0.1578946   0.1701202
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.2473297   0.2337864   0.2608729
6-24 months   Keneba           GAMBIA                         NA                   NA                0.3166545   0.2992274   0.3340815
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.0774818   0.0592383   0.0957254
6-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1791667   0.1305478   0.2277856
6-24 months   MAL-ED           INDIA                          NA                   NA                0.2723404   0.2153029   0.3293779
6-24 months   MAL-ED           NEPAL                          NA                   NA                0.1531915   0.1070438   0.1993392
6-24 months   MAL-ED           PERU                           NA                   NA                0.0666667   0.0368579   0.0964755
6-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1428571   0.1001583   0.1855560
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1142857   0.0743652   0.1542062
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.2933579   0.2549918   0.3317241
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   PROBIT           BELARUS                        NA                   NA                0.0083745   0.0044130   0.0123360
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   ResPak           PAKISTAN                       NA                   NA                0.3644068   0.3028753   0.4259382
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3059755   0.2638053   0.3481458
6-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.3557214   0.3088651   0.4025777
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1605550   0.1445335   0.1765765
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0958853   0.0903360   0.1014347


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   CMC-V-BCS-2002   INDIA                          Male                 Female            0.9538186   0.8109872   1.1218054
0-24 months   CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   CMIN             BANGLADESH                     Male                 Female            0.9757576   0.7512340   1.2673852
0-24 months   COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      Male                 Female            1.4753653   1.2193404   1.7851479
0-24 months   COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          Male                 Female            1.0173245   0.9533233   1.0856224
0-24 months   COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    Male                 Female            1.1017997   1.0098796   1.2020865
0-24 months   EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   EE               PAKISTAN                       Male                 Female            1.0551162   0.8931002   1.2465233
0-24 months   GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          Male                 Female            0.9432889   0.8328044   1.0684308
0-24 months   Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   Guatemala BSC    GUATEMALA                      Male                 Female            1.9251337   0.9532409   3.8879362
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   Male                 Female            1.2813233   1.0353343   1.5857577
0-24 months   IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          Male                 Female            0.9759711   0.8480055   1.1232469
0-24 months   JiVitA-3         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     Male                 Female            1.0259660   0.9828610   1.0709615
0-24 months   JiVitA-4         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4         BANGLADESH                     Male                 Female            1.1739669   1.0696664   1.2884374
0-24 months   Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         Male                 Female            1.1432080   1.0522141   1.2420709
0-24 months   LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   LCNI-5           MALAWI                         Male                 Female            2.2009319   1.3370206   3.6230565
0-24 months   MAL-ED           BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BANGLADESH                     Male                 Female            0.9258510   0.6555299   1.3076447
0-24 months   MAL-ED           BRAZIL                         Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BRAZIL                         Male                 Female            1.4125000   0.5984605   3.3338142
0-24 months   MAL-ED           INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA                          Male                 Female            0.9991955   0.7701645   1.2963356
0-24 months   MAL-ED           NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           NEPAL                          Male                 Female            0.9428571   0.6447968   1.3786973
0-24 months   MAL-ED           PERU                           Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           PERU                           Male                 Female            1.7750000   0.8227893   3.8292004
0-24 months   MAL-ED           SOUTH AFRICA                   Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           SOUTH AFRICA                   Male                 Female            1.3191095   0.8479469   2.0520741
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 Female            0.8186047   0.4438374   1.5098179
0-24 months   NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     Male                 Female            1.0749641   0.9112130   1.2681425
0-24 months   NIH-Crypto       BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     Male                 Female            1.1674289   0.9521102   1.4314416
0-24 months   PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        Male                 Female            1.0950711   1.0226779   1.1725889
0-24 months   PROVIDE          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     Male                 Female            1.0276938   0.8397796   1.2576567
0-24 months   ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ResPak           PAKISTAN                       Male                 Female            0.9924324   0.8034955   1.2257967
0-24 months   SAS-CompFeed     INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          Male                 Female            0.9919246   0.8767694   1.1222044
0-24 months   SAS-FoodSuppl    INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   SAS-FoodSuppl    INDIA                          Male                 Female            1.0869764   0.8872468   1.3316675
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.3269527   1.1464272   1.5359052
0-24 months   ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       Male                 Female            0.9568753   0.9015081   1.0156430
0-6 months    CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    CMC-V-BCS-2002   INDIA                          Male                 Female            0.8908186   0.7301676   1.0868159
0-6 months    CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    CMIN             BANGLADESH                     Male                 Female            0.7179487   0.4348736   1.1852878
0-6 months    COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      Male                 Female            1.5246409   1.1879364   1.9567798
0-6 months    COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          Male                 Female            0.9559649   0.8824705   1.0355800
0-6 months    COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    Male                 Female            1.1581663   1.0175563   1.3182063
0-6 months    EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    EE               PAKISTAN                       Male                 Female            1.0451977   0.7822650   1.3965067
0-6 months    GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          Male                 Female            1.0015893   0.8255584   1.2151547
0-6 months    IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          Male                 Female            1.0298541   0.8611118   1.2316630
0-6 months    JiVitA-3         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     Male                 Female            0.9723264   0.9192244   1.0284961
0-6 months    JiVitA-4         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4         BANGLADESH                     Male                 Female            1.2545235   1.0406522   1.5123488
0-6 months    Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    Keneba           GAMBIA                         Male                 Female            1.0962625   0.9632786   1.2476053
0-6 months    MAL-ED           BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           BANGLADESH                     Male                 Female            0.7943456   0.5061833   1.2465544
0-6 months    MAL-ED           BRAZIL                         Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           BRAZIL                         Male                 Female            1.8833333   0.6626420   5.3527309
0-6 months    MAL-ED           INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           INDIA                          Male                 Female            1.0547064   0.7384453   1.5064155
0-6 months    MAL-ED           NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           NEPAL                          Male                 Female            1.0879121   0.6521864   1.8147461
0-6 months    MAL-ED           SOUTH AFRICA                   Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           SOUTH AFRICA                   Male                 Female            1.0863254   0.5811175   2.0307477
0-6 months    NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth        BANGLADESH                     Male                 Female            1.0235827   0.8283347   1.2648528
0-6 months    NIH-Crypto       BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto       BANGLADESH                     Male                 Female            1.0858683   0.8522174   1.3835788
0-6 months    PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        Male                 Female            1.0831909   1.0125266   1.1587868
0-6 months    PROVIDE          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     Male                 Female            0.9965875   0.7750828   1.2813942
0-6 months    ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ResPak           PAKISTAN                       Male                 Female            0.9487570   0.7067295   1.2736695
0-6 months    SAS-CompFeed     INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          Male                 Female            0.8281115   0.6823139   1.0050632
0-6 months    SAS-FoodSuppl    INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    SAS-FoodSuppl    INDIA                          Male                 Female            0.8836830   0.5895922   1.3244674
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.3467232   1.1000143   1.6487635
0-6 months    ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       Male                 Female            0.8883151   0.8275564   0.9535348
6-24 months   CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   CMC-V-BCS-2002   INDIA                          Male                 Female            1.2064516   0.8586934   1.6950469
6-24 months   CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   CMIN             BANGLADESH                     Male                 Female            0.9418605   0.6880208   1.2893521
6-24 months   COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          GUATEMALA                      Male                 Female            1.6016484   1.1763308   2.1807449
6-24 months   COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          INDIA                          Male                 Female            1.2229401   1.0767274   1.3890075
6-24 months   COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    Male                 Female            1.1278757   0.9966397   1.2763927
6-24 months   EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   EE               PAKISTAN                       Male                 Female            1.0869444   0.8598654   1.3739921
6-24 months   GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          Male                 Female            0.9145448   0.7712146   1.0845130
6-24 months   Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   Guatemala BSC    GUATEMALA                      Male                 Female            1.9722222   0.8629302   4.5075028
6-24 months   iLiNS-Zinc       BURKINA FASO                   Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   Male                 Female            1.2813233   1.0353343   1.5857577
6-24 months   IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA                          Male                 Female            0.9781609   0.7317039   1.3076312
6-24 months   JiVitA-3         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     Male                 Female            1.1416534   1.0616214   1.2277188
6-24 months   JiVitA-4         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4         BANGLADESH                     Male                 Female            1.1660718   1.0487223   1.2965524
6-24 months   Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   Keneba           GAMBIA                         Male                 Female            1.2074088   1.0802008   1.3495971
6-24 months   LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   LCNI-5           MALAWI                         Male                 Female            2.4147471   1.4371800   4.0572535
6-24 months   MAL-ED           BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           BANGLADESH                     Male                 Female            0.8990420   0.5216562   1.5494429
6-24 months   MAL-ED           INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           INDIA                          Male                 Female            1.1432247   0.7523610   1.7371484
6-24 months   MAL-ED           NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           NEPAL                          Male                 Female            0.8650794   0.4737236   1.5797445
6-24 months   MAL-ED           PERU                           Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           PERU                           Male                 Female            2.2082192   0.8082206   6.0332934
6-24 months   MAL-ED           SOUTH AFRICA                   Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           SOUTH AFRICA                   Male                 Female            1.6302198   0.8775606   3.0284137
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.0247934   0.5096093   2.0607974
6-24 months   NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth        BANGLADESH                     Male                 Female            1.2018711   0.9198697   1.5703248
6-24 months   NIH-Crypto       BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   NIH-Crypto       BANGLADESH                     Male                 Female            1.5601400   1.0640249   2.2875749
6-24 months   PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   PROBIT           BELARUS                        Male                 Female            1.7639761   1.2124945   2.5662894
6-24 months   PROVIDE          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     Male                 Female            1.0990654   0.7645838   1.5798723
6-24 months   ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ResPak           PAKISTAN                       Male                 Female            0.8730159   0.6230917   1.2231855
6-24 months   SAS-CompFeed     INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          Male                 Female            1.0581876   0.8543714   1.3106256
6-24 months   SAS-FoodSuppl    INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   SAS-FoodSuppl    INDIA                          Male                 Female            1.0699351   0.8222447   1.3922389
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.3670911   1.1159917   1.6746882
6-24 months   ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       Male                 Female            1.2655166   1.1260647   1.4222381


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          Female               NA                -0.0144084   -0.0638135    0.0349967
0-24 months   CMIN             BANGLADESH                     Female               NA                -0.0063025   -0.0735551    0.0609501
0-24 months   COHORTS          GUATEMALA                      Female               NA                 0.0511128    0.0266641    0.0755616
0-24 months   COHORTS          INDIA                          Female               NA                 0.0029505   -0.0082071    0.0141082
0-24 months   COHORTS          PHILIPPINES                    Female               NA                 0.0206635    0.0021728    0.0391542
0-24 months   EE               PAKISTAN                       Female               NA                 0.0163585   -0.0344015    0.0671185
0-24 months   GMS-Nepal        NEPAL                          Female               NA                -0.0183166   -0.0574371    0.0208038
0-24 months   Guatemala BSC    GUATEMALA                      Female               NA                 0.0305115   -0.0017759    0.0627988
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0287051    0.0040767    0.0533335
0-24 months   IRC              INDIA                          Female               NA                -0.0087673   -0.0594794    0.0419448
0-24 months   JiVitA-3         BANGLADESH                     Female               NA                 0.0033659   -0.0022808    0.0090127
0-24 months   JiVitA-4         BANGLADESH                     Female               NA                 0.0248022    0.0104347    0.0391697
0-24 months   Keneba           GAMBIA                         Female               NA                 0.0301588    0.0115588    0.0487589
0-24 months   LCNI-5           MALAWI                         Female               NA                 0.0298807    0.0115766    0.0481847
0-24 months   MAL-ED           BANGLADESH                     Female               NA                -0.0124851   -0.0683637    0.0433935
0-24 months   MAL-ED           BRAZIL                         Female               NA                 0.0150404   -0.0219293    0.0520102
0-24 months   MAL-ED           INDIA                          Female               NA                -0.0001732   -0.0562043    0.0558578
0-24 months   MAL-ED           NEPAL                          Female               NA                -0.0098485   -0.0735806    0.0538837
0-24 months   MAL-ED           PERU                           Female               NA                 0.0260237   -0.0076665    0.0597139
0-24 months   MAL-ED           SOUTH AFRICA                   Female               NA                 0.0279130   -0.0164536    0.0722797
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0135841   -0.0549804    0.0278121
0-24 months   NIH-Birth        BANGLADESH                     Female               NA                 0.0181046   -0.0231745    0.0593838
0-24 months   NIH-Crypto       BANGLADESH                     Female               NA                 0.0253534   -0.0079691    0.0586759
0-24 months   PROBIT           BELARUS                        Female               NA                 0.0119760    0.0034813    0.0204708
0-24 months   PROVIDE          BANGLADESH                     Female               NA                 0.0050430   -0.0322064    0.0422925
0-24 months   ResPak           PAKISTAN                       Female               NA                -0.0021748   -0.0626462    0.0582965
0-24 months   SAS-CompFeed     INDIA                          Female               NA                -0.0018402   -0.0298699    0.0261894
0-24 months   SAS-FoodSuppl    INDIA                          Female               NA                 0.0183771   -0.0264430    0.0631971
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0335243    0.0163336    0.0507151
0-24 months   ZVITAMBO         ZIMBABWE                       Female               NA                -0.0053677   -0.0126289    0.0018934
0-6 months    CMC-V-BCS-2002   INDIA                          Female               NA                -0.0296416   -0.0804940    0.0212108
0-6 months    CMIN             BANGLADESH                     Female               NA                -0.0346639   -0.0877513    0.0184236
0-6 months    COHORTS          GUATEMALA                      Female               NA                 0.0433369    0.0182768    0.0683970
0-6 months    COHORTS          INDIA                          Female               NA                -0.0058484   -0.0162424    0.0045456
0-6 months    COHORTS          PHILIPPINES                    Female               NA                 0.0182148    0.0022579    0.0341717
0-6 months    EE               PAKISTAN                       Female               NA                 0.0073969   -0.0410509    0.0558447
0-6 months    GMS-Nepal        NEPAL                          Female               NA                 0.0003169   -0.0382509    0.0388847
0-6 months    IRC              INDIA                          Female               NA                 0.0087673   -0.0444789    0.0620136
0-6 months    JiVitA-3         BANGLADESH                     Female               NA                -0.0025167   -0.0075467    0.0025133
0-6 months    JiVitA-4         BANGLADESH                     Female               NA                 0.0121826    0.0021791    0.0221862
0-6 months    Keneba           GAMBIA                         Female               NA                 0.0129970   -0.0052453    0.0312392
0-6 months    MAL-ED           BANGLADESH                     Female               NA                -0.0255945   -0.0753765    0.0241876
0-6 months    MAL-ED           BRAZIL                         Female               NA                 0.0201299   -0.0121303    0.0523901
0-6 months    MAL-ED           INDIA                          Female               NA                 0.0078526   -0.0448292    0.0605345
0-6 months    MAL-ED           NEPAL                          Female               NA                 0.0090909   -0.0458917    0.0640735
0-6 months    MAL-ED           SOUTH AFRICA                   Female               NA                 0.0045846   -0.0300589    0.0392280
0-6 months    NIH-Birth        BANGLADESH                     Female               NA                 0.0043708   -0.0352902    0.0440318
0-6 months    NIH-Crypto       BANGLADESH                     Female               NA                 0.0105368   -0.0204427    0.0415162
0-6 months    PROBIT           BELARUS                        Female               NA                 0.0103190    0.0020333    0.0186048
0-6 months    PROVIDE          BANGLADESH                     Female               NA                -0.0004647   -0.0346402    0.0337107
0-6 months    ResPak           PAKISTAN                       Female               NA                -0.0105340   -0.0695449    0.0484769
0-6 months    SAS-CompFeed     INDIA                          Female               NA                -0.0227565   -0.0462543    0.0007413
0-6 months    SAS-FoodSuppl    INDIA                          Female               NA                -0.0107065   -0.0455640    0.0241509
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0207384    0.0067422    0.0347346
0-6 months    ZVITAMBO         ZIMBABWE                       Female               NA                -0.0110543   -0.0176726   -0.0044359
6-24 months   CMC-V-BCS-2002   INDIA                          Female               NA                 0.0247738   -0.0199841    0.0695317
6-24 months   CMIN             BANGLADESH                     Female               NA                -0.0132275   -0.0828403    0.0563852
6-24 months   COHORTS          GUATEMALA                      Female               NA                 0.0301746    0.0108635    0.0494858
6-24 months   COHORTS          INDIA                          Female               NA                 0.0127643    0.0047425    0.0207861
6-24 months   COHORTS          PHILIPPINES                    Female               NA                 0.0168310   -0.0003923    0.0340544
6-24 months   EE               PAKISTAN                       Female               NA                 0.0183934   -0.0332014    0.0699882
6-24 months   GMS-Nepal        NEPAL                          Female               NA                -0.0218555   -0.0635701    0.0198592
6-24 months   Guatemala BSC    GUATEMALA                      Female               NA                 0.0266945   -0.0052936    0.0586826
6-24 months   iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0287051    0.0040767    0.0533335
6-24 months   IRC              INDIA                          Female               NA                -0.0037574   -0.0532065    0.0456917
6-24 months   JiVitA-3         BANGLADESH                     Female               NA                 0.0110607    0.0049832    0.0171382
6-24 months   JiVitA-4         BANGLADESH                     Female               NA                 0.0189369    0.0058112    0.0320626
6-24 months   Keneba           GAMBIA                         Female               NA                 0.0306168    0.0126518    0.0485817
6-24 months   LCNI-5           MALAWI                         Female               NA                 0.0319183    0.0137816    0.0500550
6-24 months   MAL-ED           BANGLADESH                     Female               NA                -0.0093579   -0.0571405    0.0384247
6-24 months   MAL-ED           INDIA                          Female               NA                 0.0165265   -0.0353971    0.0684500
6-24 months   MAL-ED           NEPAL                          Female               NA                -0.0119461   -0.0617718    0.0378796
6-24 months   MAL-ED           PERU                           Female               NA                 0.0263441   -0.0050662    0.0577544
6-24 months   MAL-ED           SOUTH AFRICA                   Female               NA                 0.0343300   -0.0084994    0.0771594
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0013825   -0.0380573    0.0408223
6-24 months   NIH-Birth        BANGLADESH                     Female               NA                 0.0291303   -0.0127331    0.0709936
6-24 months   NIH-Crypto       BANGLADESH                     Female               NA                 0.0285258    0.0042094    0.0528423
6-24 months   PROBIT           BELARUS                        Female               NA                 0.0023745    0.0001877    0.0045613
6-24 months   PROVIDE          BANGLADESH                     Female               NA                 0.0079144   -0.0224088    0.0382376
6-24 months   ResPak           PAKISTAN                       Female               NA                -0.0265023   -0.0924738    0.0394692
6-24 months   SAS-CompFeed     INDIA                          Female               NA                 0.0095012   -0.0258746    0.0448769
6-24 months   SAS-FoodSuppl    INDIA                          Female               NA                 0.0113818   -0.0330149    0.0557785
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0251488    0.0089606    0.0413369
6-24 months   ZVITAMBO         ZIMBABWE                       Female               NA                 0.0113101    0.0057244    0.0168958


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          Female               NA                -0.0235716   -0.1077276    0.0541909
0-24 months   CMIN             BANGLADESH                     Female               NA                -0.0138249   -0.1726286    0.1234727
0-24 months   COHORTS          GUATEMALA                      Female               NA                 0.2010239    0.0997479    0.2909065
0-24 months   COHORTS          INDIA                          Female               NA                 0.0089361   -0.0254390    0.0421588
0-24 months   COHORTS          PHILIPPINES                    Female               NA                 0.0511964    0.0042435    0.0959353
0-24 months   EE               PAKISTAN                       Female               NA                 0.0275054   -0.0617625    0.1092680
0-24 months   GMS-Nepal        NEPAL                          Female               NA                -0.0310252   -0.0995236    0.0332059
0-24 months   Guatemala BSC    GUATEMALA                      Female               NA                 0.3100358   -0.0873332    0.5621852
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.1238451    0.0160540    0.2198277
0-24 months   IRC              INDIA                          Female               NA                -0.0133628   -0.0936981    0.0610716
0-24 months   JiVitA-3         BANGLADESH                     Female               NA                 0.0130456   -0.0090357    0.0346437
0-24 months   JiVitA-4         BANGLADESH                     Female               NA                 0.0799281    0.0327288    0.1248242
0-24 months   Keneba           GAMBIA                         Female               NA                 0.0689075    0.0253806    0.1104905
0-24 months   LCNI-5           MALAWI                         Female               NA                 0.3746233    0.1186042    0.5562765
0-24 months   MAL-ED           BANGLADESH                     Female               NA                -0.0377423   -0.2211919    0.1181492
0-24 months   MAL-ED           BRAZIL                         Female               NA                 0.1752212   -0.3813728    0.5075478
0-24 months   MAL-ED           INDIA                          Female               NA                -0.0003623   -0.1247020    0.1102312
0-24 months   MAL-ED           NEPAL                          Female               NA                -0.0319410   -0.2607864    0.1553666
0-24 months   MAL-ED           PERU                           Female               NA                 0.2910798   -0.1847045    0.5757863
0-24 months   MAL-ED           SOUTH AFRICA                   Female               NA                 0.1360759   -0.1082327    0.3265271
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0984848   -0.4423371    0.1633932
0-24 months   NIH-Birth        BANGLADESH                     Female               NA                 0.0379104   -0.0525748    0.1206170
0-24 months   NIH-Crypto       BANGLADESH                     Female               NA                 0.0768714   -0.0298680    0.1725479
0-24 months   PROBIT           BELARUS                        Female               NA                 0.0468886    0.0109727    0.0815002
0-24 months   PROVIDE          BANGLADESH                     Female               NA                 0.0143501   -0.0975541    0.1148448
0-24 months   ResPak           PAKISTAN                       Female               NA                -0.0039593   -0.1203121    0.1003094
0-24 months   SAS-CompFeed     INDIA                          Female               NA                -0.0044335   -0.0742351    0.0608325
0-24 months   SAS-FoodSuppl    INDIA                          Female               NA                 0.0389930   -0.0610371    0.1295926
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.1419158    0.0663361    0.2113773
0-24 months   ZVITAMBO         ZIMBABWE                       Female               NA                -0.0226775   -0.0538162    0.0075411
0-6 months    CMC-V-BCS-2002   INDIA                          Female               NA                -0.0574111   -0.1608632    0.0368218
0-6 months    CMIN             BANGLADESH                     Female               NA                -0.1885714   -0.5131746    0.0663985
0-6 months    COHORTS          GUATEMALA                      Female               NA                 0.2154694    0.0823388    0.3292860
0-6 months    COHORTS          INDIA                          Female               NA                -0.0232113   -0.0653028    0.0172171
0-6 months    COHORTS          PHILIPPINES                    Female               NA                 0.0773303    0.0071211    0.1425749
0-6 months    EE               PAKISTAN                       Female               NA                 0.0226678   -0.1376696    0.1604081
0-6 months    GMS-Nepal        NEPAL                          Female               NA                 0.0008426   -0.1071532    0.0983041
0-6 months    IRC              INDIA                          Female               NA                 0.0161193   -0.0868290    0.1093159
0-6 months    JiVitA-3         BANGLADESH                     Female               NA                -0.0142847   -0.0432807    0.0139054
0-6 months    JiVitA-4         BANGLADESH                     Female               NA                 0.1122653    0.0156005    0.1994378
0-6 months    Keneba           GAMBIA                         Female               NA                 0.0475527   -0.0215640    0.1119932
0-6 months    MAL-ED           BANGLADESH                     Female               NA                -0.1121891   -0.3526816    0.0855465
0-6 months    MAL-ED           BRAZIL                         Female               NA                 0.3126844   -0.3805857    0.6578244
0-6 months    MAL-ED           INDIA                          Female               NA                 0.0240368   -0.1513051    0.1726743
0-6 months    MAL-ED           NEPAL                          Female               NA                 0.0454545   -0.2729687    0.2842267
0-6 months    MAL-ED           SOUTH AFRICA                   Female               NA                 0.0408680   -0.3231895    0.3047601
0-6 months    NIH-Birth        BANGLADESH                     Female               NA                 0.0122461   -0.1053687    0.1173464
0-6 months    NIH-Crypto       BANGLADESH                     Female               NA                 0.0409583   -0.0873126    0.1540971
0-6 months    PROBIT           BELARUS                        Female               NA                 0.0412736    0.0058051    0.0754768
0-6 months    PROVIDE          BANGLADESH                     Female               NA                -0.0017972   -0.1430826    0.1220252
0-6 months    ResPak           PAKISTAN                       Female               NA                -0.0272531   -0.1918699    0.1146274
0-6 months    SAS-CompFeed     INDIA                          Female               NA                -0.1034699   -0.2174700   -0.0001445
0-6 months    SAS-FoodSuppl    INDIA                          Female               NA                -0.0573761   -0.2614757    0.1137013
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.1492168    0.0432093    0.2434792
0-6 months    ZVITAMBO         ZIMBABWE                       Female               NA                -0.0610343   -0.0981778   -0.0251470
6-24 months   CMC-V-BCS-2002   INDIA                          Female               NA                 0.0933398   -0.0916882    0.2470078
6-24 months   CMIN             BANGLADESH                     Female               NA                -0.0343643   -0.2320150    0.1315776
6-24 months   COHORTS          GUATEMALA                      Female               NA                 0.2390457    0.0735173    0.3750002
6-24 months   COHORTS          INDIA                          Female               NA                 0.1041093    0.0364982    0.1669761
6-24 months   COHORTS          PHILIPPINES                    Female               NA                 0.0631220   -0.0037103    0.1255043
6-24 months   EE               PAKISTAN                       Female               NA                 0.0427275   -0.0850052    0.1554227
6-24 months   GMS-Nepal        NEPAL                          Female               NA                -0.0462177   -0.1383412    0.0384504
6-24 months   Guatemala BSC    GUATEMALA                      Female               NA                 0.3214942   -0.1648763    0.6047905
6-24 months   iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.1238451    0.0160540    0.2198277
6-24 months   IRC              INDIA                          Female               NA                -0.0121302   -0.1850465    0.1355549
6-24 months   JiVitA-3         BANGLADESH                     Female               NA                 0.0674400    0.0298382    0.1035845
6-24 months   JiVitA-4         BANGLADESH                     Female               NA                 0.0765653    0.0224732    0.1276641
6-24 months   Keneba           GAMBIA                         Female               NA                 0.0966882    0.0381785    0.1516387
6-24 months   LCNI-5           MALAWI                         Female               NA                 0.4119454    0.1520838    0.5921671
6-24 months   MAL-ED           BANGLADESH                     Female               NA                -0.0522303   -0.3555049    0.1831911
6-24 months   MAL-ED           INDIA                          Female               NA                 0.0606831   -0.1505472    0.2331334
6-24 months   MAL-ED           NEPAL                          Female               NA                -0.0779817   -0.4569313    0.2024027
6-24 months   MAL-ED           PERU                           Female               NA                 0.3951613   -0.2515969    0.7077095
6-24 months   MAL-ED           SOUTH AFRICA                   Female               NA                 0.2403101   -0.1176708    0.4836326
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0120968   -0.4009266    0.3033519
6-24 months   NIH-Birth        BANGLADESH                     Female               NA                 0.0992995   -0.0551561    0.2311456
6-24 months   NIH-Crypto       BANGLADESH                     Female               NA                 0.2169151    0.0126612    0.3789143
6-24 months   PROBIT           BELARUS                        Female               NA                 0.2835396    0.0859771    0.4383997
6-24 months   PROVIDE          BANGLADESH                     Female               NA                 0.0491651   -0.1589990    0.2199416
6-24 months   ResPak           PAKISTAN                       Female               NA                -0.0727273   -0.2700521    0.0939397
6-24 months   SAS-CompFeed     INDIA                          Female               NA                 0.0310520   -0.0931873    0.1411717
6-24 months   SAS-FoodSuppl    INDIA                          Female               NA                 0.0319963   -0.1012200    0.1490972
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.1566366    0.0504642    0.2509373
6-24 months   ZVITAMBO         ZIMBABWE                       Female               NA                 0.1179542    0.0580818    0.1740210
