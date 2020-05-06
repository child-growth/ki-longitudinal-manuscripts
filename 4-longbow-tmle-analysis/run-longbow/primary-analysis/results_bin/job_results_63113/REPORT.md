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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* W_nrooms
* impsan
* delta_W_mage
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        meducyrs    stunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ---------  --------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          High              0       43      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          High              1        8      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          Low               0       14      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          Low               1        2      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          Medium            0       18      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          Medium            1        7      92  stunted          
Birth       COHORTS          GUATEMALA                      High              0      168     842  stunted          
Birth       COHORTS          GUATEMALA                      High              1       10     842  stunted          
Birth       COHORTS          GUATEMALA                      Low               0      361     842  stunted          
Birth       COHORTS          GUATEMALA                      Low               1       30     842  stunted          
Birth       COHORTS          GUATEMALA                      Medium            0      264     842  stunted          
Birth       COHORTS          GUATEMALA                      Medium            1        9     842  stunted          
Birth       COHORTS          INDIA                          High              0      626    5216  stunted          
Birth       COHORTS          INDIA                          High              1       52    5216  stunted          
Birth       COHORTS          INDIA                          Low               0     1505    5216  stunted          
Birth       COHORTS          INDIA                          Low               1      251    5216  stunted          
Birth       COHORTS          INDIA                          Medium            0     2468    5216  stunted          
Birth       COHORTS          INDIA                          Medium            1      314    5216  stunted          
Birth       COHORTS          PHILIPPINES                    High              0     1114    3050  stunted          
Birth       COHORTS          PHILIPPINES                    High              1       55    3050  stunted          
Birth       COHORTS          PHILIPPINES                    Low               0      830    3050  stunted          
Birth       COHORTS          PHILIPPINES                    Low               1       70    3050  stunted          
Birth       COHORTS          PHILIPPINES                    Medium            0      919    3050  stunted          
Birth       COHORTS          PHILIPPINES                    Medium            1       62    3050  stunted          
Birth       EE               PAKISTAN                       High              0        4     239  stunted          
Birth       EE               PAKISTAN                       High              1        3     239  stunted          
Birth       EE               PAKISTAN                       Low               0      122     239  stunted          
Birth       EE               PAKISTAN                       Low               1       93     239  stunted          
Birth       EE               PAKISTAN                       Medium            0       14     239  stunted          
Birth       EE               PAKISTAN                       Medium            1        3     239  stunted          
Birth       GMS-Nepal        NEPAL                          High              0       74     693  stunted          
Birth       GMS-Nepal        NEPAL                          High              1       11     693  stunted          
Birth       GMS-Nepal        NEPAL                          Low               0      396     693  stunted          
Birth       GMS-Nepal        NEPAL                          Low               1       89     693  stunted          
Birth       GMS-Nepal        NEPAL                          Medium            0      101     693  stunted          
Birth       GMS-Nepal        NEPAL                          Medium            1       22     693  stunted          
Birth       IRC              INDIA                          High              0      102     388  stunted          
Birth       IRC              INDIA                          High              1       11     388  stunted          
Birth       IRC              INDIA                          Low               0      126     388  stunted          
Birth       IRC              INDIA                          Low               1       16     388  stunted          
Birth       IRC              INDIA                          Medium            0      115     388  stunted          
Birth       IRC              INDIA                          Medium            1       18     388  stunted          
Birth       JiVitA-3         BANGLADESH                     High              0     4851   22427  stunted          
Birth       JiVitA-3         BANGLADESH                     High              1     1832   22427  stunted          
Birth       JiVitA-3         BANGLADESH                     Low               0     5700   22427  stunted          
Birth       JiVitA-3         BANGLADESH                     Low               1     3095   22427  stunted          
Birth       JiVitA-3         BANGLADESH                     Medium            0     4496   22427  stunted          
Birth       JiVitA-3         BANGLADESH                     Medium            1     2453   22427  stunted          
Birth       JiVitA-4         BANGLADESH                     High              0      674    2817  stunted          
Birth       JiVitA-4         BANGLADESH                     High              1      259    2817  stunted          
Birth       JiVitA-4         BANGLADESH                     Low               0      670    2817  stunted          
Birth       JiVitA-4         BANGLADESH                     Low               1      320    2817  stunted          
Birth       JiVitA-4         BANGLADESH                     Medium            0      618    2817  stunted          
Birth       JiVitA-4         BANGLADESH                     Medium            1      276    2817  stunted          
Birth       MAL-ED           BANGLADESH                     High              0       59     187  stunted          
Birth       MAL-ED           BANGLADESH                     High              1        8     187  stunted          
Birth       MAL-ED           BANGLADESH                     Low               0       47     187  stunted          
Birth       MAL-ED           BANGLADESH                     Low               1       18     187  stunted          
Birth       MAL-ED           BANGLADESH                     Medium            0       47     187  stunted          
Birth       MAL-ED           BANGLADESH                     Medium            1        8     187  stunted          
Birth       MAL-ED           BRAZIL                         High              0       18      65  stunted          
Birth       MAL-ED           BRAZIL                         High              1        0      65  stunted          
Birth       MAL-ED           BRAZIL                         Low               0       14      65  stunted          
Birth       MAL-ED           BRAZIL                         Low               1        3      65  stunted          
Birth       MAL-ED           BRAZIL                         Medium            0       24      65  stunted          
Birth       MAL-ED           BRAZIL                         Medium            1        6      65  stunted          
Birth       MAL-ED           INDIA                          High              0        7      40  stunted          
Birth       MAL-ED           INDIA                          High              1        1      40  stunted          
Birth       MAL-ED           INDIA                          Low               0       17      40  stunted          
Birth       MAL-ED           INDIA                          Low               1        1      40  stunted          
Birth       MAL-ED           INDIA                          Medium            0        8      40  stunted          
Birth       MAL-ED           INDIA                          Medium            1        6      40  stunted          
Birth       MAL-ED           NEPAL                          High              0        5      25  stunted          
Birth       MAL-ED           NEPAL                          High              1        0      25  stunted          
Birth       MAL-ED           NEPAL                          Low               0       12      25  stunted          
Birth       MAL-ED           NEPAL                          Low               1        0      25  stunted          
Birth       MAL-ED           NEPAL                          Medium            0        6      25  stunted          
Birth       MAL-ED           NEPAL                          Medium            1        2      25  stunted          
Birth       MAL-ED           PERU                           High              0       60     233  stunted          
Birth       MAL-ED           PERU                           High              1        8     233  stunted          
Birth       MAL-ED           PERU                           Low               0       72     233  stunted          
Birth       MAL-ED           PERU                           Low               1       12     233  stunted          
Birth       MAL-ED           PERU                           Medium            0       75     233  stunted          
Birth       MAL-ED           PERU                           Medium            1        6     233  stunted          
Birth       MAL-ED           SOUTH AFRICA                   High              0       34     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   High              1        1     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   Low               0       56     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   Low               1        6     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   Medium            0       23     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   Medium            1        3     123  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              0        7     105  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              1        0     105  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               0       29     105  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               1        5     105  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            0       49     105  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            1       15     105  stunted          
Birth       NIH-Birth        BANGLADESH                     High              0      144     608  stunted          
Birth       NIH-Birth        BANGLADESH                     High              1       26     608  stunted          
Birth       NIH-Birth        BANGLADESH                     Low               0      188     608  stunted          
Birth       NIH-Birth        BANGLADESH                     Low               1       36     608  stunted          
Birth       NIH-Birth        BANGLADESH                     Medium            0      179     608  stunted          
Birth       NIH-Birth        BANGLADESH                     Medium            1       35     608  stunted          
Birth       NIH-Crypto       BANGLADESH                     High              0      222     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     High              1       25     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     Low               0      199     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     Low               1       33     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     Medium            0      210     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     Medium            1       43     732  stunted          
Birth       PROBIT           BELARUS                        High              0     2246   13893  stunted          
Birth       PROBIT           BELARUS                        High              1        3   13893  stunted          
Birth       PROBIT           BELARUS                        Low               0     4952   13893  stunted          
Birth       PROBIT           BELARUS                        Low               1       13   13893  stunted          
Birth       PROBIT           BELARUS                        Medium            0     6661   13893  stunted          
Birth       PROBIT           BELARUS                        Medium            1       18   13893  stunted          
Birth       PROVIDE          BANGLADESH                     High              0      157     539  stunted          
Birth       PROVIDE          BANGLADESH                     High              1       14     539  stunted          
Birth       PROVIDE          BANGLADESH                     Low               0      150     539  stunted          
Birth       PROVIDE          BANGLADESH                     Low               1       15     539  stunted          
Birth       PROVIDE          BANGLADESH                     Medium            0      184     539  stunted          
Birth       PROVIDE          BANGLADESH                     Medium            1       19     539  stunted          
Birth       SAS-CompFeed     INDIA                          High              0      197    1252  stunted          
Birth       SAS-CompFeed     INDIA                          High              1       51    1252  stunted          
Birth       SAS-CompFeed     INDIA                          Low               0      398    1252  stunted          
Birth       SAS-CompFeed     INDIA                          Low               1      189    1252  stunted          
Birth       SAS-CompFeed     INDIA                          Medium            0      308    1252  stunted          
Birth       SAS-CompFeed     INDIA                          Medium            1      109    1252  stunted          
Birth       ZVITAMBO         ZIMBABWE                       High              0     6781   13855  stunted          
Birth       ZVITAMBO         ZIMBABWE                       High              1      734   13855  stunted          
Birth       ZVITAMBO         ZIMBABWE                       Low               0     2591   13855  stunted          
Birth       ZVITAMBO         ZIMBABWE                       Low               1      321   13855  stunted          
Birth       ZVITAMBO         ZIMBABWE                       Medium            0     3049   13855  stunted          
Birth       ZVITAMBO         ZIMBABWE                       Medium            1      379   13855  stunted          
6 months    CMC-V-BCS-2002   INDIA                          High              0      112     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          High              1       45     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          Low               0       69     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          Low               1       36     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          Medium            0       77     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          Medium            1       30     369  stunted          
6 months    COHORTS          GUATEMALA                      High              0      114     952  stunted          
6 months    COHORTS          GUATEMALA                      High              1       71     952  stunted          
6 months    COHORTS          GUATEMALA                      Low               0      252     952  stunted          
6 months    COHORTS          GUATEMALA                      Low               1      197     952  stunted          
6 months    COHORTS          GUATEMALA                      Medium            0      198     952  stunted          
6 months    COHORTS          GUATEMALA                      Medium            1      120     952  stunted          
6 months    COHORTS          INDIA                          High              0      680    5413  stunted          
6 months    COHORTS          INDIA                          High              1       56    5413  stunted          
6 months    COHORTS          INDIA                          Low               0     1264    5413  stunted          
6 months    COHORTS          INDIA                          Low               1      513    5413  stunted          
6 months    COHORTS          INDIA                          Medium            0     2432    5413  stunted          
6 months    COHORTS          INDIA                          Medium            1      468    5413  stunted          
6 months    COHORTS          PHILIPPINES                    High              0      852    2708  stunted          
6 months    COHORTS          PHILIPPINES                    High              1      162    2708  stunted          
6 months    COHORTS          PHILIPPINES                    Low               0      610    2708  stunted          
6 months    COHORTS          PHILIPPINES                    Low               1      216    2708  stunted          
6 months    COHORTS          PHILIPPINES                    Medium            0      674    2708  stunted          
6 months    COHORTS          PHILIPPINES                    Medium            1      194    2708  stunted          
6 months    EE               PAKISTAN                       High              0       11     370  stunted          
6 months    EE               PAKISTAN                       High              1        4     370  stunted          
6 months    EE               PAKISTAN                       Low               0      160     370  stunted          
6 months    EE               PAKISTAN                       Low               1      162     370  stunted          
6 months    EE               PAKISTAN                       Medium            0       19     370  stunted          
6 months    EE               PAKISTAN                       Medium            1       14     370  stunted          
6 months    GMS-Nepal        NEPAL                          High              0       58     561  stunted          
6 months    GMS-Nepal        NEPAL                          High              1       10     561  stunted          
6 months    GMS-Nepal        NEPAL                          Low               0      303     561  stunted          
6 months    GMS-Nepal        NEPAL                          Low               1       96     561  stunted          
6 months    GMS-Nepal        NEPAL                          Medium            0       78     561  stunted          
6 months    GMS-Nepal        NEPAL                          Medium            1       16     561  stunted          
6 months    Guatemala BSC    GUATEMALA                      High              0       81     277  stunted          
6 months    Guatemala BSC    GUATEMALA                      High              1       36     277  stunted          
6 months    Guatemala BSC    GUATEMALA                      Low               0       47     277  stunted          
6 months    Guatemala BSC    GUATEMALA                      Low               1       26     277  stunted          
6 months    Guatemala BSC    GUATEMALA                      Medium            0       63     277  stunted          
6 months    Guatemala BSC    GUATEMALA                      Medium            1       24     277  stunted          
6 months    IRC              INDIA                          High              0       98     407  stunted          
6 months    IRC              INDIA                          High              1       25     407  stunted          
6 months    IRC              INDIA                          Low               0      108     407  stunted          
6 months    IRC              INDIA                          Low               1       38     407  stunted          
6 months    IRC              INDIA                          Medium            0      101     407  stunted          
6 months    IRC              INDIA                          Medium            1       37     407  stunted          
6 months    JiVitA-3         BANGLADESH                     High              0     4783   16794  stunted          
6 months    JiVitA-3         BANGLADESH                     High              1     1139   16794  stunted          
6 months    JiVitA-3         BANGLADESH                     Low               0     3988   16794  stunted          
6 months    JiVitA-3         BANGLADESH                     Low               1     1634   16794  stunted          
6 months    JiVitA-3         BANGLADESH                     Medium            0     3800   16794  stunted          
6 months    JiVitA-3         BANGLADESH                     Medium            1     1450   16794  stunted          
6 months    JiVitA-4         BANGLADESH                     High              0     1378    4818  stunted          
6 months    JiVitA-4         BANGLADESH                     High              1      340    4818  stunted          
6 months    JiVitA-4         BANGLADESH                     Low               0     1103    4818  stunted          
6 months    JiVitA-4         BANGLADESH                     Low               1      478    4818  stunted          
6 months    JiVitA-4         BANGLADESH                     Medium            0     1120    4818  stunted          
6 months    JiVitA-4         BANGLADESH                     Medium            1      399    4818  stunted          
6 months    LCNI-5           MALAWI                         High              0      207     813  stunted          
6 months    LCNI-5           MALAWI                         High              1       91     813  stunted          
6 months    LCNI-5           MALAWI                         Low               0      149     813  stunted          
6 months    LCNI-5           MALAWI                         Low               1      112     813  stunted          
6 months    LCNI-5           MALAWI                         Medium            0      162     813  stunted          
6 months    LCNI-5           MALAWI                         Medium            1       92     813  stunted          
6 months    MAL-ED           BANGLADESH                     High              0       65     196  stunted          
6 months    MAL-ED           BANGLADESH                     High              1        8     196  stunted          
6 months    MAL-ED           BANGLADESH                     Low               0       50     196  stunted          
6 months    MAL-ED           BANGLADESH                     Low               1       14     196  stunted          
6 months    MAL-ED           BANGLADESH                     Medium            0       46     196  stunted          
6 months    MAL-ED           BANGLADESH                     Medium            1       13     196  stunted          
6 months    MAL-ED           BRAZIL                         High              0       70     208  stunted          
6 months    MAL-ED           BRAZIL                         High              1        1     208  stunted          
6 months    MAL-ED           BRAZIL                         Low               0       54     208  stunted          
6 months    MAL-ED           BRAZIL                         Low               1        2     208  stunted          
6 months    MAL-ED           BRAZIL                         Medium            0       78     208  stunted          
6 months    MAL-ED           BRAZIL                         Medium            1        3     208  stunted          
6 months    MAL-ED           INDIA                          High              0       50     208  stunted          
6 months    MAL-ED           INDIA                          High              1        9     208  stunted          
6 months    MAL-ED           INDIA                          Low               0       58     208  stunted          
6 months    MAL-ED           INDIA                          Low               1       14     208  stunted          
6 months    MAL-ED           INDIA                          Medium            0       65     208  stunted          
6 months    MAL-ED           INDIA                          Medium            1       12     208  stunted          
6 months    MAL-ED           NEPAL                          High              0       51     221  stunted          
6 months    MAL-ED           NEPAL                          High              1        2     221  stunted          
6 months    MAL-ED           NEPAL                          Low               0       87     221  stunted          
6 months    MAL-ED           NEPAL                          Low               1        6     221  stunted          
6 months    MAL-ED           NEPAL                          Medium            0       73     221  stunted          
6 months    MAL-ED           NEPAL                          Medium            1        2     221  stunted          
6 months    MAL-ED           PERU                           High              0       60     272  stunted          
6 months    MAL-ED           PERU                           High              1       21     272  stunted          
6 months    MAL-ED           PERU                           Low               0       75     272  stunted          
6 months    MAL-ED           PERU                           Low               1       19     272  stunted          
6 months    MAL-ED           PERU                           Medium            0       77     272  stunted          
6 months    MAL-ED           PERU                           Medium            1       20     272  stunted          
6 months    MAL-ED           SOUTH AFRICA                   High              0       58     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   High              1       12     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   Low               0      100     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   Low               1       27     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   Medium            0       46     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   Medium            1       11     254  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              0        7     203  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              1        2     203  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               0       47     203  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               1       15     203  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            0      107     203  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            1       25     203  stunted          
6 months    NIH-Birth        BANGLADESH                     High              0      128     537  stunted          
6 months    NIH-Birth        BANGLADESH                     High              1       27     537  stunted          
6 months    NIH-Birth        BANGLADESH                     Low               0      130     537  stunted          
6 months    NIH-Birth        BANGLADESH                     Low               1       65     537  stunted          
6 months    NIH-Birth        BANGLADESH                     Medium            0      135     537  stunted          
6 months    NIH-Birth        BANGLADESH                     Medium            1       52     537  stunted          
6 months    NIH-Crypto       BANGLADESH                     High              0      203     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     High              1       37     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     Low               0      173     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     Low               1       56     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     Medium            0      189     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     Medium            1       57     715  stunted          
6 months    PROBIT           BELARUS                        High              0     2596   15760  stunted          
6 months    PROBIT           BELARUS                        High              1       61   15760  stunted          
6 months    PROBIT           BELARUS                        Low               0     5338   15760  stunted          
6 months    PROBIT           BELARUS                        Low               1      305   15760  stunted          
6 months    PROBIT           BELARUS                        Medium            0     7206   15760  stunted          
6 months    PROBIT           BELARUS                        Medium            1      254   15760  stunted          
6 months    PROVIDE          BANGLADESH                     High              0      185     604  stunted          
6 months    PROVIDE          BANGLADESH                     High              1       24     604  stunted          
6 months    PROVIDE          BANGLADESH                     Low               0      154     604  stunted          
6 months    PROVIDE          BANGLADESH                     Low               1       33     604  stunted          
6 months    PROVIDE          BANGLADESH                     Medium            0      169     604  stunted          
6 months    PROVIDE          BANGLADESH                     Medium            1       39     604  stunted          
6 months    SAS-CompFeed     INDIA                          High              0      250    1336  stunted          
6 months    SAS-CompFeed     INDIA                          High              1       40    1336  stunted          
6 months    SAS-CompFeed     INDIA                          Low               0      381    1336  stunted          
6 months    SAS-CompFeed     INDIA                          Low               1      216    1336  stunted          
6 months    SAS-CompFeed     INDIA                          Medium            0      325    1336  stunted          
6 months    SAS-CompFeed     INDIA                          Medium            1      124    1336  stunted          
6 months    SAS-FoodSuppl    INDIA                          High              0       23     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          High              1       12     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          Low               0      171     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          Low               1      133     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          Medium            0       23     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          Medium            1       18     380  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      465    2021  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1       47    2021  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0       69    2021  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        5    2021  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0     1292    2021  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1      143    2021  stunted          
6 months    ZVITAMBO         ZIMBABWE                       High              0     4012    8655  stunted          
6 months    ZVITAMBO         ZIMBABWE                       High              1      690    8655  stunted          
6 months    ZVITAMBO         ZIMBABWE                       Low               0     1466    8655  stunted          
6 months    ZVITAMBO         ZIMBABWE                       Low               1      329    8655  stunted          
6 months    ZVITAMBO         ZIMBABWE                       Medium            0     1765    8655  stunted          
6 months    ZVITAMBO         ZIMBABWE                       Medium            1      393    8655  stunted          
24 months   CMC-V-BCS-2002   INDIA                          High              0       55     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          High              1      103     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          Low               0       18     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          Low               1       87     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          Medium            0       32     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          Medium            1       76     371  stunted          
24 months   COHORTS          GUATEMALA                      High              0       40    1057  stunted          
24 months   COHORTS          GUATEMALA                      High              1      169    1057  stunted          
24 months   COHORTS          GUATEMALA                      Low               0       76    1057  stunted          
24 months   COHORTS          GUATEMALA                      Low               1      430    1057  stunted          
24 months   COHORTS          GUATEMALA                      Medium            0       84    1057  stunted          
24 months   COHORTS          GUATEMALA                      Medium            1      258    1057  stunted          
24 months   COHORTS          INDIA                          High              0      466    4198  stunted          
24 months   COHORTS          INDIA                          High              1      142    4198  stunted          
24 months   COHORTS          INDIA                          Low               0      304    4198  stunted          
24 months   COHORTS          INDIA                          Low               1      968    4198  stunted          
24 months   COHORTS          INDIA                          Medium            0     1106    4198  stunted          
24 months   COHORTS          INDIA                          Medium            1     1212    4198  stunted          
24 months   COHORTS          PHILIPPINES                    High              0      480    2445  stunted          
24 months   COHORTS          PHILIPPINES                    High              1      434    2445  stunted          
24 months   COHORTS          PHILIPPINES                    Low               0      195    2445  stunted          
24 months   COHORTS          PHILIPPINES                    Low               1      549    2445  stunted          
24 months   COHORTS          PHILIPPINES                    Medium            0      247    2445  stunted          
24 months   COHORTS          PHILIPPINES                    Medium            1      540    2445  stunted          
24 months   EE               PAKISTAN                       High              0        4     165  stunted          
24 months   EE               PAKISTAN                       High              1        2     165  stunted          
24 months   EE               PAKISTAN                       Low               0       36     165  stunted          
24 months   EE               PAKISTAN                       Low               1      106     165  stunted          
24 months   EE               PAKISTAN                       Medium            0        9     165  stunted          
24 months   EE               PAKISTAN                       Medium            1        8     165  stunted          
24 months   GMS-Nepal        NEPAL                          High              0       40     485  stunted          
24 months   GMS-Nepal        NEPAL                          High              1       15     485  stunted          
24 months   GMS-Nepal        NEPAL                          Low               0      182     485  stunted          
24 months   GMS-Nepal        NEPAL                          Low               1      162     485  stunted          
24 months   GMS-Nepal        NEPAL                          Medium            0       44     485  stunted          
24 months   GMS-Nepal        NEPAL                          Medium            1       42     485  stunted          
24 months   IRC              INDIA                          High              0       80     409  stunted          
24 months   IRC              INDIA                          High              1       44     409  stunted          
24 months   IRC              INDIA                          Low               0       79     409  stunted          
24 months   IRC              INDIA                          Low               1       67     409  stunted          
24 months   IRC              INDIA                          Medium            0       78     409  stunted          
24 months   IRC              INDIA                          Medium            1       61     409  stunted          
24 months   JiVitA-3         BANGLADESH                     High              0     1789    8621  stunted          
24 months   JiVitA-3         BANGLADESH                     High              1     1138    8621  stunted          
24 months   JiVitA-3         BANGLADESH                     Low               0     1292    8621  stunted          
24 months   JiVitA-3         BANGLADESH                     Low               1     1712    8621  stunted          
24 months   JiVitA-3         BANGLADESH                     Medium            0     1306    8621  stunted          
24 months   JiVitA-3         BANGLADESH                     Medium            1     1384    8621  stunted          
24 months   JiVitA-4         BANGLADESH                     High              0     1148    4741  stunted          
24 months   JiVitA-4         BANGLADESH                     High              1      548    4741  stunted          
24 months   JiVitA-4         BANGLADESH                     Low               0      834    4741  stunted          
24 months   JiVitA-4         BANGLADESH                     Low               1      702    4741  stunted          
24 months   JiVitA-4         BANGLADESH                     Medium            0      856    4741  stunted          
24 months   JiVitA-4         BANGLADESH                     Medium            1      653    4741  stunted          
24 months   LCNI-5           MALAWI                         High              0      132     572  stunted          
24 months   LCNI-5           MALAWI                         High              1       88     572  stunted          
24 months   LCNI-5           MALAWI                         Low               0       94     572  stunted          
24 months   LCNI-5           MALAWI                         Low               1       83     572  stunted          
24 months   LCNI-5           MALAWI                         Medium            0       94     572  stunted          
24 months   LCNI-5           MALAWI                         Medium            1       81     572  stunted          
24 months   MAL-ED           BANGLADESH                     High              0       34     171  stunted          
24 months   MAL-ED           BANGLADESH                     High              1       30     171  stunted          
24 months   MAL-ED           BANGLADESH                     Low               0       31     171  stunted          
24 months   MAL-ED           BANGLADESH                     Low               1       28     171  stunted          
24 months   MAL-ED           BANGLADESH                     Medium            0       27     171  stunted          
24 months   MAL-ED           BANGLADESH                     Medium            1       21     171  stunted          
24 months   MAL-ED           BRAZIL                         High              0       61     168  stunted          
24 months   MAL-ED           BRAZIL                         High              1        1     168  stunted          
24 months   MAL-ED           BRAZIL                         Low               0       39     168  stunted          
24 months   MAL-ED           BRAZIL                         Low               1        3     168  stunted          
24 months   MAL-ED           BRAZIL                         Medium            0       61     168  stunted          
24 months   MAL-ED           BRAZIL                         Medium            1        3     168  stunted          
24 months   MAL-ED           INDIA                          High              0       33     199  stunted          
24 months   MAL-ED           INDIA                          High              1       22     199  stunted          
24 months   MAL-ED           INDIA                          Low               0       39     199  stunted          
24 months   MAL-ED           INDIA                          Low               1       30     199  stunted          
24 months   MAL-ED           INDIA                          Medium            0       44     199  stunted          
24 months   MAL-ED           INDIA                          Medium            1       31     199  stunted          
24 months   MAL-ED           NEPAL                          High              0       38     213  stunted          
24 months   MAL-ED           NEPAL                          High              1       10     213  stunted          
24 months   MAL-ED           NEPAL                          Low               0       69     213  stunted          
24 months   MAL-ED           NEPAL                          Low               1       22     213  stunted          
24 months   MAL-ED           NEPAL                          Medium            0       61     213  stunted          
24 months   MAL-ED           NEPAL                          Medium            1       13     213  stunted          
24 months   MAL-ED           PERU                           High              0       42     200  stunted          
24 months   MAL-ED           PERU                           High              1       17     200  stunted          
24 months   MAL-ED           PERU                           Low               0       43     200  stunted          
24 months   MAL-ED           PERU                           Low               1       31     200  stunted          
24 months   MAL-ED           PERU                           Medium            0       41     200  stunted          
24 months   MAL-ED           PERU                           Medium            1       26     200  stunted          
24 months   MAL-ED           SOUTH AFRICA                   High              0       50     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   High              1       17     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   Low               0       73     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   Low               1       47     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   Medium            0       31     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   Medium            1       20     238  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              0        4     175  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              1        3     175  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               0       10     175  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               1       44     175  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            0       38     175  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            1       76     175  stunted          
24 months   NIH-Birth        BANGLADESH                     High              0       77     429  stunted          
24 months   NIH-Birth        BANGLADESH                     High              1       53     429  stunted          
24 months   NIH-Birth        BANGLADESH                     Low               0       45     429  stunted          
24 months   NIH-Birth        BANGLADESH                     Low               1      108     429  stunted          
24 months   NIH-Birth        BANGLADESH                     Medium            0       63     429  stunted          
24 months   NIH-Birth        BANGLADESH                     Medium            1       83     429  stunted          
24 months   NIH-Crypto       BANGLADESH                     High              0      163     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     High              1       28     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     Low               0       97     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     Low               1       49     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     Medium            0      122     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     Medium            1       55     514  stunted          
24 months   PROBIT           BELARUS                        High              0      637    4035  stunted          
24 months   PROBIT           BELARUS                        High              1       27    4035  stunted          
24 months   PROBIT           BELARUS                        Low               0     1283    4035  stunted          
24 months   PROBIT           BELARUS                        Low               1      124    4035  stunted          
24 months   PROBIT           BELARUS                        Medium            0     1840    4035  stunted          
24 months   PROBIT           BELARUS                        Medium            1      124    4035  stunted          
24 months   PROVIDE          BANGLADESH                     High              0      156     578  stunted          
24 months   PROVIDE          BANGLADESH                     High              1       45     578  stunted          
24 months   PROVIDE          BANGLADESH                     Low               0       99     578  stunted          
24 months   PROVIDE          BANGLADESH                     Low               1       75     578  stunted          
24 months   PROVIDE          BANGLADESH                     Medium            0      133     578  stunted          
24 months   PROVIDE          BANGLADESH                     Medium            1       70     578  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0        2       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0        3       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        1       6  stunted          
24 months   ZVITAMBO         ZIMBABWE                       High              0      597    1639  stunted          
24 months   ZVITAMBO         ZIMBABWE                       High              1      265    1639  stunted          
24 months   ZVITAMBO         ZIMBABWE                       Low               0      200    1639  stunted          
24 months   ZVITAMBO         ZIMBABWE                       Low               1      145    1639  stunted          
24 months   ZVITAMBO         ZIMBABWE                       Medium            0      273    1639  stunted          
24 months   ZVITAMBO         ZIMBABWE                       Medium            1      159    1639  stunted          


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
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
