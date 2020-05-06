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

**Outcome Variable:** sstunted

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

agecat      studyid          country                        sex       sstunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -------  ---------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          Female           0       45      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          Female           1        1      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          Male             0       43      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          Male             1        3      92  sstunted         
Birth       CMIN             BANGLADESH                     Female           0        9      26  sstunted         
Birth       CMIN             BANGLADESH                     Female           1        2      26  sstunted         
Birth       CMIN             BANGLADESH                     Male             0       11      26  sstunted         
Birth       CMIN             BANGLADESH                     Male             1        4      26  sstunted         
Birth       COHORTS          GUATEMALA                      Female           0      400     852  sstunted         
Birth       COHORTS          GUATEMALA                      Female           1        4     852  sstunted         
Birth       COHORTS          GUATEMALA                      Male             0      441     852  sstunted         
Birth       COHORTS          GUATEMALA                      Male             1        7     852  sstunted         
Birth       COHORTS          INDIA                          Female           0     3101    6640  sstunted         
Birth       COHORTS          INDIA                          Female           1       94    6640  sstunted         
Birth       COHORTS          INDIA                          Male             0     3333    6640  sstunted         
Birth       COHORTS          INDIA                          Male             1      112    6640  sstunted         
Birth       COHORTS          PHILIPPINES                    Female           0     1415    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    Female           1       18    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    Male             0     1589    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    Male             1       28    3050  sstunted         
Birth       CONTENT          PERU                           Female           0        0       2  sstunted         
Birth       CONTENT          PERU                           Female           1        0       2  sstunted         
Birth       CONTENT          PERU                           Male             0        2       2  sstunted         
Birth       CONTENT          PERU                           Male             1        0       2  sstunted         
Birth       EE               PAKISTAN                       Female           0       99     240  sstunted         
Birth       EE               PAKISTAN                       Female           1       23     240  sstunted         
Birth       EE               PAKISTAN                       Male             0       93     240  sstunted         
Birth       EE               PAKISTAN                       Male             1       25     240  sstunted         
Birth       GMS-Nepal        NEPAL                          Female           0      313     696  sstunted         
Birth       GMS-Nepal        NEPAL                          Female           1       15     696  sstunted         
Birth       GMS-Nepal        NEPAL                          Male             0      352     696  sstunted         
Birth       GMS-Nepal        NEPAL                          Male             1       16     696  sstunted         
Birth       IRC              INDIA                          Female           0      166     388  sstunted         
Birth       IRC              INDIA                          Female           1        7     388  sstunted         
Birth       IRC              INDIA                          Male             0      206     388  sstunted         
Birth       IRC              INDIA                          Male             1        9     388  sstunted         
Birth       JiVitA-3         BANGLADESH                     Female           0     9856   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     Female           1     1187   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     Male             0    10151   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     Male             1     1261   22455  sstunted         
Birth       JiVitA-4         BANGLADESH                     Female           0     1292    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     Female           1       97    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     Male             0     1298    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     Male             1      136    2823  sstunted         
Birth       Keneba           GAMBIA                         Female           0      724    1543  sstunted         
Birth       Keneba           GAMBIA                         Female           1       16    1543  sstunted         
Birth       Keneba           GAMBIA                         Male             0      790    1543  sstunted         
Birth       Keneba           GAMBIA                         Male             1       13    1543  sstunted         
Birth       MAL-ED           BANGLADESH                     Female           0      113     231  sstunted         
Birth       MAL-ED           BANGLADESH                     Female           1        5     231  sstunted         
Birth       MAL-ED           BANGLADESH                     Male             0      109     231  sstunted         
Birth       MAL-ED           BANGLADESH                     Male             1        4     231  sstunted         
Birth       MAL-ED           BRAZIL                         Female           0       32      65  sstunted         
Birth       MAL-ED           BRAZIL                         Female           1        2      65  sstunted         
Birth       MAL-ED           BRAZIL                         Male             0       30      65  sstunted         
Birth       MAL-ED           BRAZIL                         Male             1        1      65  sstunted         
Birth       MAL-ED           INDIA                          Female           0       22      47  sstunted         
Birth       MAL-ED           INDIA                          Female           1        1      47  sstunted         
Birth       MAL-ED           INDIA                          Male             0       23      47  sstunted         
Birth       MAL-ED           INDIA                          Male             1        1      47  sstunted         
Birth       MAL-ED           NEPAL                          Female           0       16      27  sstunted         
Birth       MAL-ED           NEPAL                          Female           1        1      27  sstunted         
Birth       MAL-ED           NEPAL                          Male             0       10      27  sstunted         
Birth       MAL-ED           NEPAL                          Male             1        0      27  sstunted         
Birth       MAL-ED           PERU                           Female           0      114     233  sstunted         
Birth       MAL-ED           PERU                           Female           1        2     233  sstunted         
Birth       MAL-ED           PERU                           Male             0      115     233  sstunted         
Birth       MAL-ED           PERU                           Male             1        2     233  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   Female           0       56     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   Female           1        2     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   Male             0       65     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   Male             1        0     123  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female           0       63     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female           1        7     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male             0       52     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male             1        3     125  sstunted         
Birth       NIH-Birth        BANGLADESH                     Female           0      277     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     Female           1        9     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     Male             0      312     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     Male             1       10     608  sstunted         
Birth       NIH-Crypto       BANGLADESH                     Female           0      364     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     Female           1        4     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     Male             0      358     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     Male             1        6     732  sstunted         
Birth       PROBIT           BELARUS                        Female           0     6710   13893  sstunted         
Birth       PROBIT           BELARUS                        Female           1        1   13893  sstunted         
Birth       PROBIT           BELARUS                        Male             0     7178   13893  sstunted         
Birth       PROBIT           BELARUS                        Male             1        4   13893  sstunted         
Birth       PROVIDE          BANGLADESH                     Female           0      255     539  sstunted         
Birth       PROVIDE          BANGLADESH                     Female           1        1     539  sstunted         
Birth       PROVIDE          BANGLADESH                     Male             0      280     539  sstunted         
Birth       PROVIDE          BANGLADESH                     Male             1        3     539  sstunted         
Birth       ResPak           PAKISTAN                       Female           0       19      42  sstunted         
Birth       ResPak           PAKISTAN                       Female           1        1      42  sstunted         
Birth       ResPak           PAKISTAN                       Male             0       21      42  sstunted         
Birth       ResPak           PAKISTAN                       Male             1        1      42  sstunted         
Birth       SAS-CompFeed     INDIA                          Female           0      543    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          Female           1       42    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          Male             0      618    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          Male             1       49    1252  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       Female           0     6536   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       Female           1      217   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       Male             0     6897   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       Male             1      225   13875  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          Female           0      172     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          Female           1       14     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          Male             0      155     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          Male             1       28     369  sstunted         
6 months    CMIN             BANGLADESH                     Female           0       96     243  sstunted         
6 months    CMIN             BANGLADESH                     Female           1       10     243  sstunted         
6 months    CMIN             BANGLADESH                     Male             0      119     243  sstunted         
6 months    CMIN             BANGLADESH                     Male             1       18     243  sstunted         
6 months    COHORTS          GUATEMALA                      Female           0      411     961  sstunted         
6 months    COHORTS          GUATEMALA                      Female           1       45     961  sstunted         
6 months    COHORTS          GUATEMALA                      Male             0      426     961  sstunted         
6 months    COHORTS          GUATEMALA                      Male             1       79     961  sstunted         
6 months    COHORTS          INDIA                          Female           0     3171    6860  sstunted         
6 months    COHORTS          INDIA                          Female           1      116    6860  sstunted         
6 months    COHORTS          INDIA                          Male             0     3378    6860  sstunted         
6 months    COHORTS          INDIA                          Male             1      195    6860  sstunted         
6 months    COHORTS          PHILIPPINES                    Female           0     1233    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    Female           1       43    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    Male             0     1343    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    Male             1       89    2708  sstunted         
6 months    CONTENT          PERU                           Female           0      109     215  sstunted         
6 months    CONTENT          PERU                           Female           1        0     215  sstunted         
6 months    CONTENT          PERU                           Male             0      105     215  sstunted         
6 months    CONTENT          PERU                           Male             1        1     215  sstunted         
6 months    EE               PAKISTAN                       Female           0      147     373  sstunted         
6 months    EE               PAKISTAN                       Female           1       35     373  sstunted         
6 months    EE               PAKISTAN                       Male             0      145     373  sstunted         
6 months    EE               PAKISTAN                       Male             1       46     373  sstunted         
6 months    GMS-Nepal        NEPAL                          Female           0      269     564  sstunted         
6 months    GMS-Nepal        NEPAL                          Female           1        4     564  sstunted         
6 months    GMS-Nepal        NEPAL                          Male             0      274     564  sstunted         
6 months    GMS-Nepal        NEPAL                          Male             1       17     564  sstunted         
6 months    Guatemala BSC    GUATEMALA                      Female           0      146     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      Female           1        7     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      Male             0      126     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      Male             1       20     299  sstunted         
6 months    IRC              INDIA                          Female           0      171     407  sstunted         
6 months    IRC              INDIA                          Female           1       12     407  sstunted         
6 months    IRC              INDIA                          Male             0      207     407  sstunted         
6 months    IRC              INDIA                          Male             1       17     407  sstunted         
6 months    JiVitA-3         BANGLADESH                     Female           0     7901   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     Female           1      348   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     Male             0     7890   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     Male             1      672   16811  sstunted         
6 months    JiVitA-4         BANGLADESH                     Female           0     2311    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     Female           1       96    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     Male             0     2249    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     Male             1      175    4831  sstunted         
6 months    Keneba           GAMBIA                         Female           0      986    2089  sstunted         
6 months    Keneba           GAMBIA                         Female           1       25    2089  sstunted         
6 months    Keneba           GAMBIA                         Male             0     1033    2089  sstunted         
6 months    Keneba           GAMBIA                         Male             1       45    2089  sstunted         
6 months    LCNI-5           MALAWI                         Female           0      404     839  sstunted         
6 months    LCNI-5           MALAWI                         Female           1       16     839  sstunted         
6 months    LCNI-5           MALAWI                         Male             0      364     839  sstunted         
6 months    LCNI-5           MALAWI                         Male             1       55     839  sstunted         
6 months    MAL-ED           BANGLADESH                     Female           0      120     241  sstunted         
6 months    MAL-ED           BANGLADESH                     Female           1        3     241  sstunted         
6 months    MAL-ED           BANGLADESH                     Male             0      113     241  sstunted         
6 months    MAL-ED           BANGLADESH                     Male             1        5     241  sstunted         
6 months    MAL-ED           BRAZIL                         Female           0      103     209  sstunted         
6 months    MAL-ED           BRAZIL                         Female           1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         Male             0      106     209  sstunted         
6 months    MAL-ED           BRAZIL                         Male             1        0     209  sstunted         
6 months    MAL-ED           INDIA                          Female           0      127     236  sstunted         
6 months    MAL-ED           INDIA                          Female           1        3     236  sstunted         
6 months    MAL-ED           INDIA                          Male             0      100     236  sstunted         
6 months    MAL-ED           INDIA                          Male             1        6     236  sstunted         
6 months    MAL-ED           NEPAL                          Female           0      110     236  sstunted         
6 months    MAL-ED           NEPAL                          Female           1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          Male             0      125     236  sstunted         
6 months    MAL-ED           NEPAL                          Male             1        1     236  sstunted         
6 months    MAL-ED           PERU                           Female           0      124     273  sstunted         
6 months    MAL-ED           PERU                           Female           1        2     273  sstunted         
6 months    MAL-ED           PERU                           Male             0      139     273  sstunted         
6 months    MAL-ED           PERU                           Male             1        8     273  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   Female           0      123     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   Female           1        3     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   Male             0      125     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   Male             1        3     254  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female           0      123     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female           1        3     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male             0      110     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male             1       11     247  sstunted         
6 months    NIH-Birth        BANGLADESH                     Female           0      231     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     Female           1       14     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     Male             0      271     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     Male             1       21     537  sstunted         
6 months    NIH-Crypto       BANGLADESH                     Female           0      354     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     Female           1        8     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     Male             0      338     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     Male             1       15     715  sstunted         
6 months    PROBIT           BELARUS                        Female           0     7580   15760  sstunted         
6 months    PROBIT           BELARUS                        Female           1       39   15760  sstunted         
6 months    PROBIT           BELARUS                        Male             0     8003   15760  sstunted         
6 months    PROBIT           BELARUS                        Male             1      138   15760  sstunted         
6 months    PROVIDE          BANGLADESH                     Female           0      286     604  sstunted         
6 months    PROVIDE          BANGLADESH                     Female           1        2     604  sstunted         
6 months    PROVIDE          BANGLADESH                     Male             0      304     604  sstunted         
6 months    PROVIDE          BANGLADESH                     Male             1       12     604  sstunted         
6 months    ResPak           PAKISTAN                       Female           0       97     239  sstunted         
6 months    ResPak           PAKISTAN                       Female           1       18     239  sstunted         
6 months    ResPak           PAKISTAN                       Male             0       95     239  sstunted         
6 months    ResPak           PAKISTAN                       Male             1       29     239  sstunted         
6 months    SAS-CompFeed     INDIA                          Female           0      557    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          Female           1       52    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          Male             0      651    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          Male             1       76    1336  sstunted         
6 months    SAS-FoodSuppl    INDIA                          Female           0      173     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          Female           1       28     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          Male             0      153     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          Male             1       26     380  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female           0      996    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female           1        7    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male             0     1014    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male             1       12    2029  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       Female           0     4078    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       Female           1      123    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       Male             0     4240    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       Male             1      228    8669  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          Female           0      136     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          Female           1       50     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          Male             0      110     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          Male             1       75     371  sstunted         
24 months   CMIN             BANGLADESH                     Female           0       76     242  sstunted         
24 months   CMIN             BANGLADESH                     Female           1       28     242  sstunted         
24 months   CMIN             BANGLADESH                     Male             0       98     242  sstunted         
24 months   CMIN             BANGLADESH                     Male             1       40     242  sstunted         
24 months   COHORTS          GUATEMALA                      Female           0      268    1070  sstunted         
24 months   COHORTS          GUATEMALA                      Female           1      244    1070  sstunted         
24 months   COHORTS          GUATEMALA                      Male             0      278    1070  sstunted         
24 months   COHORTS          GUATEMALA                      Male             1      280    1070  sstunted         
24 months   COHORTS          INDIA                          Female           0     1983    5337  sstunted         
24 months   COHORTS          INDIA                          Female           1      560    5337  sstunted         
24 months   COHORTS          INDIA                          Male             0     2135    5337  sstunted         
24 months   COHORTS          INDIA                          Male             1      659    5337  sstunted         
24 months   COHORTS          PHILIPPINES                    Female           0      832    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    Female           1      326    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    Male             0      906    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    Male             1      381    2445  sstunted         
24 months   CONTENT          PERU                           Female           0       80     164  sstunted         
24 months   CONTENT          PERU                           Female           1        1     164  sstunted         
24 months   CONTENT          PERU                           Male             0       83     164  sstunted         
24 months   CONTENT          PERU                           Male             1        0     164  sstunted         
24 months   EE               PAKISTAN                       Female           0       56     167  sstunted         
24 months   EE               PAKISTAN                       Female           1       23     167  sstunted         
24 months   EE               PAKISTAN                       Male             0       52     167  sstunted         
24 months   EE               PAKISTAN                       Male             1       36     167  sstunted         
24 months   GMS-Nepal        NEPAL                          Female           0      205     488  sstunted         
24 months   GMS-Nepal        NEPAL                          Female           1       23     488  sstunted         
24 months   GMS-Nepal        NEPAL                          Male             0      230     488  sstunted         
24 months   GMS-Nepal        NEPAL                          Male             1       30     488  sstunted         
24 months   IRC              INDIA                          Female           0      171     409  sstunted         
24 months   IRC              INDIA                          Female           1       14     409  sstunted         
24 months   IRC              INDIA                          Male             0      197     409  sstunted         
24 months   IRC              INDIA                          Male             1       27     409  sstunted         
24 months   JiVitA-3         BANGLADESH                     Female           0     3561    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     Female           1      607    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     Male             0     3724    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     Male             1      740    8632  sstunted         
24 months   JiVitA-4         BANGLADESH                     Female           0     2173    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     Female           1      203    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     Male             0     2126    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     Male             1      250    4752  sstunted         
24 months   Keneba           GAMBIA                         Female           0      762    1725  sstunted         
24 months   Keneba           GAMBIA                         Female           1       60    1725  sstunted         
24 months   Keneba           GAMBIA                         Male             0      823    1725  sstunted         
24 months   Keneba           GAMBIA                         Male             1       80    1725  sstunted         
24 months   LCNI-5           MALAWI                         Female           0      269     579  sstunted         
24 months   LCNI-5           MALAWI                         Female           1       25     579  sstunted         
24 months   LCNI-5           MALAWI                         Male             0      240     579  sstunted         
24 months   LCNI-5           MALAWI                         Male             1       45     579  sstunted         
24 months   MAL-ED           BANGLADESH                     Female           0       91     212  sstunted         
24 months   MAL-ED           BANGLADESH                     Female           1       13     212  sstunted         
24 months   MAL-ED           BANGLADESH                     Male             0       93     212  sstunted         
24 months   MAL-ED           BANGLADESH                     Male             1       15     212  sstunted         
24 months   MAL-ED           BRAZIL                         Female           0       79     169  sstunted         
24 months   MAL-ED           BRAZIL                         Female           1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         Male             0       89     169  sstunted         
24 months   MAL-ED           BRAZIL                         Male             1        1     169  sstunted         
24 months   MAL-ED           INDIA                          Female           0      110     227  sstunted         
24 months   MAL-ED           INDIA                          Female           1       12     227  sstunted         
24 months   MAL-ED           INDIA                          Male             0       87     227  sstunted         
24 months   MAL-ED           INDIA                          Male             1       18     227  sstunted         
24 months   MAL-ED           NEPAL                          Female           0      106     228  sstunted         
24 months   MAL-ED           NEPAL                          Female           1        0     228  sstunted         
24 months   MAL-ED           NEPAL                          Male             0      115     228  sstunted         
24 months   MAL-ED           NEPAL                          Male             1        7     228  sstunted         
24 months   MAL-ED           PERU                           Female           0       87     201  sstunted         
24 months   MAL-ED           PERU                           Female           1        4     201  sstunted         
24 months   MAL-ED           PERU                           Male             0       99     201  sstunted         
24 months   MAL-ED           PERU                           Male             1       11     201  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   Female           0      107     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   Female           1       11     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   Male             0      104     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   Male             1       16     238  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female           0       76     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female           1       30     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male             0       68     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male             1       40     214  sstunted         
24 months   NIH-Birth        BANGLADESH                     Female           0      151     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     Female           1       44     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     Male             0      183     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     Male             1       51     429  sstunted         
24 months   NIH-Crypto       BANGLADESH                     Female           0      241     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     Female           1       19     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     Male             0      237     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     Male             1       17     514  sstunted         
24 months   PROBIT           BELARUS                        Female           0     1928    4035  sstunted         
24 months   PROBIT           BELARUS                        Female           1       27    4035  sstunted         
24 months   PROBIT           BELARUS                        Male             0     2042    4035  sstunted         
24 months   PROBIT           BELARUS                        Male             1       38    4035  sstunted         
24 months   PROVIDE          BANGLADESH                     Female           0      258     578  sstunted         
24 months   PROVIDE          BANGLADESH                     Female           1       21     578  sstunted         
24 months   PROVIDE          BANGLADESH                     Male             0      268     578  sstunted         
24 months   PROVIDE          BANGLADESH                     Male             1       31     578  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female           0        3       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female           1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male             0        2       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male             1        1       6  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       Female           0      745    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       Female           1       63    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       Male             0      717    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       Male             1      115    1640  sstunted         


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
