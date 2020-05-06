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

agecat      studyid          country                        meducyrs    sstunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ---------  ---------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          High               0       49      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          High               1        2      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          Low                0       16      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          Low                1        0      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          Medium             0       23      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          Medium             1        2      92  sstunted         
Birth       COHORTS          GUATEMALA                      High               0      177     842  sstunted         
Birth       COHORTS          GUATEMALA                      High               1        1     842  sstunted         
Birth       COHORTS          GUATEMALA                      Low                0      384     842  sstunted         
Birth       COHORTS          GUATEMALA                      Low                1        7     842  sstunted         
Birth       COHORTS          GUATEMALA                      Medium             0      270     842  sstunted         
Birth       COHORTS          GUATEMALA                      Medium             1        3     842  sstunted         
Birth       COHORTS          INDIA                          High               0      668    5216  sstunted         
Birth       COHORTS          INDIA                          High               1       10    5216  sstunted         
Birth       COHORTS          INDIA                          Low                0     1683    5216  sstunted         
Birth       COHORTS          INDIA                          Low                1       73    5216  sstunted         
Birth       COHORTS          INDIA                          Medium             0     2716    5216  sstunted         
Birth       COHORTS          INDIA                          Medium             1       66    5216  sstunted         
Birth       COHORTS          PHILIPPINES                    High               0     1156    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    High               1       13    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    Low                0      882    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    Low                1       18    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    Medium             0      966    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    Medium             1       15    3050  sstunted         
Birth       EE               PAKISTAN                       High               0        5     239  sstunted         
Birth       EE               PAKISTAN                       High               1        2     239  sstunted         
Birth       EE               PAKISTAN                       Low                0      171     239  sstunted         
Birth       EE               PAKISTAN                       Low                1       44     239  sstunted         
Birth       EE               PAKISTAN                       Medium             0       16     239  sstunted         
Birth       EE               PAKISTAN                       Medium             1        1     239  sstunted         
Birth       GMS-Nepal        NEPAL                          High               0       82     693  sstunted         
Birth       GMS-Nepal        NEPAL                          High               1        3     693  sstunted         
Birth       GMS-Nepal        NEPAL                          Low                0      462     693  sstunted         
Birth       GMS-Nepal        NEPAL                          Low                1       23     693  sstunted         
Birth       GMS-Nepal        NEPAL                          Medium             0      118     693  sstunted         
Birth       GMS-Nepal        NEPAL                          Medium             1        5     693  sstunted         
Birth       IRC              INDIA                          High               0      110     388  sstunted         
Birth       IRC              INDIA                          High               1        3     388  sstunted         
Birth       IRC              INDIA                          Low                0      137     388  sstunted         
Birth       IRC              INDIA                          Low                1        5     388  sstunted         
Birth       IRC              INDIA                          Medium             0      125     388  sstunted         
Birth       IRC              INDIA                          Medium             1        8     388  sstunted         
Birth       JiVitA-3         BANGLADESH                     High               0     6145   22427  sstunted         
Birth       JiVitA-3         BANGLADESH                     High               1      538   22427  sstunted         
Birth       JiVitA-3         BANGLADESH                     Low                0     7731   22427  sstunted         
Birth       JiVitA-3         BANGLADESH                     Low                1     1064   22427  sstunted         
Birth       JiVitA-3         BANGLADESH                     Medium             0     6103   22427  sstunted         
Birth       JiVitA-3         BANGLADESH                     Medium             1      846   22427  sstunted         
Birth       JiVitA-4         BANGLADESH                     High               0      866    2817  sstunted         
Birth       JiVitA-4         BANGLADESH                     High               1       67    2817  sstunted         
Birth       JiVitA-4         BANGLADESH                     Low                0      892    2817  sstunted         
Birth       JiVitA-4         BANGLADESH                     Low                1       98    2817  sstunted         
Birth       JiVitA-4         BANGLADESH                     Medium             0      826    2817  sstunted         
Birth       JiVitA-4         BANGLADESH                     Medium             1       68    2817  sstunted         
Birth       MAL-ED           BANGLADESH                     High               0       65     187  sstunted         
Birth       MAL-ED           BANGLADESH                     High               1        2     187  sstunted         
Birth       MAL-ED           BANGLADESH                     Low                0       62     187  sstunted         
Birth       MAL-ED           BANGLADESH                     Low                1        3     187  sstunted         
Birth       MAL-ED           BANGLADESH                     Medium             0       53     187  sstunted         
Birth       MAL-ED           BANGLADESH                     Medium             1        2     187  sstunted         
Birth       MAL-ED           BRAZIL                         High               0       18      65  sstunted         
Birth       MAL-ED           BRAZIL                         High               1        0      65  sstunted         
Birth       MAL-ED           BRAZIL                         Low                0       17      65  sstunted         
Birth       MAL-ED           BRAZIL                         Low                1        0      65  sstunted         
Birth       MAL-ED           BRAZIL                         Medium             0       27      65  sstunted         
Birth       MAL-ED           BRAZIL                         Medium             1        3      65  sstunted         
Birth       MAL-ED           INDIA                          High               0        8      40  sstunted         
Birth       MAL-ED           INDIA                          High               1        0      40  sstunted         
Birth       MAL-ED           INDIA                          Low                0       18      40  sstunted         
Birth       MAL-ED           INDIA                          Low                1        0      40  sstunted         
Birth       MAL-ED           INDIA                          Medium             0       12      40  sstunted         
Birth       MAL-ED           INDIA                          Medium             1        2      40  sstunted         
Birth       MAL-ED           NEPAL                          High               0        5      25  sstunted         
Birth       MAL-ED           NEPAL                          High               1        0      25  sstunted         
Birth       MAL-ED           NEPAL                          Low                0       12      25  sstunted         
Birth       MAL-ED           NEPAL                          Low                1        0      25  sstunted         
Birth       MAL-ED           NEPAL                          Medium             0        7      25  sstunted         
Birth       MAL-ED           NEPAL                          Medium             1        1      25  sstunted         
Birth       MAL-ED           PERU                           High               0       66     233  sstunted         
Birth       MAL-ED           PERU                           High               1        2     233  sstunted         
Birth       MAL-ED           PERU                           Low                0       83     233  sstunted         
Birth       MAL-ED           PERU                           Low                1        1     233  sstunted         
Birth       MAL-ED           PERU                           Medium             0       80     233  sstunted         
Birth       MAL-ED           PERU                           Medium             1        1     233  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   High               0       35     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   High               1        0     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   Low                0       60     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   Low                1        2     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   Medium             0       26     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   Medium             1        0     123  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               0        7     105  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               1        0     105  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                0       32     105  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                1        2     105  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             0       58     105  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             1        6     105  sstunted         
Birth       NIH-Birth        BANGLADESH                     High               0      165     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     High               1        5     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     Low                0      215     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     Low                1        9     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     Medium             0      209     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     Medium             1        5     608  sstunted         
Birth       NIH-Crypto       BANGLADESH                     High               0      243     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     High               1        4     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     Low                0      230     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     Low                1        2     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     Medium             0      249     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     Medium             1        4     732  sstunted         
Birth       PROBIT           BELARUS                        High               0     2249   13893  sstunted         
Birth       PROBIT           BELARUS                        High               1        0   13893  sstunted         
Birth       PROBIT           BELARUS                        Low                0     4963   13893  sstunted         
Birth       PROBIT           BELARUS                        Low                1        2   13893  sstunted         
Birth       PROBIT           BELARUS                        Medium             0     6676   13893  sstunted         
Birth       PROBIT           BELARUS                        Medium             1        3   13893  sstunted         
Birth       PROVIDE          BANGLADESH                     High               0      170     539  sstunted         
Birth       PROVIDE          BANGLADESH                     High               1        1     539  sstunted         
Birth       PROVIDE          BANGLADESH                     Low                0      164     539  sstunted         
Birth       PROVIDE          BANGLADESH                     Low                1        1     539  sstunted         
Birth       PROVIDE          BANGLADESH                     Medium             0      201     539  sstunted         
Birth       PROVIDE          BANGLADESH                     Medium             1        2     539  sstunted         
Birth       SAS-CompFeed     INDIA                          High               0      235    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          High               1       13    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          Low                0      535    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          Low                1       52    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          Medium             0      391    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          Medium             1       26    1252  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       High               0     7301   13855  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       High               1      214   13855  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       Low                0     2802   13855  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       Low                1      110   13855  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       Medium             0     3310   13855  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       Medium             1      118   13855  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          High               0      144     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          High               1       13     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          Low                0       89     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          Low                1       16     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          Medium             0       94     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          Medium             1       13     369  sstunted         
6 months    COHORTS          GUATEMALA                      High               0      161     952  sstunted         
6 months    COHORTS          GUATEMALA                      High               1       24     952  sstunted         
6 months    COHORTS          GUATEMALA                      Low                0      381     952  sstunted         
6 months    COHORTS          GUATEMALA                      Low                1       68     952  sstunted         
6 months    COHORTS          GUATEMALA                      Medium             0      288     952  sstunted         
6 months    COHORTS          GUATEMALA                      Medium             1       30     952  sstunted         
6 months    COHORTS          INDIA                          High               0      731    5413  sstunted         
6 months    COHORTS          INDIA                          High               1        5    5413  sstunted         
6 months    COHORTS          INDIA                          Low                0     1638    5413  sstunted         
6 months    COHORTS          INDIA                          Low                1      139    5413  sstunted         
6 months    COHORTS          INDIA                          Medium             0     2793    5413  sstunted         
6 months    COHORTS          INDIA                          Medium             1      107    5413  sstunted         
6 months    COHORTS          PHILIPPINES                    High               0      986    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    High               1       28    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    Low                0      770    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    Low                1       56    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    Medium             0      820    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    Medium             1       48    2708  sstunted         
6 months    EE               PAKISTAN                       High               0       12     370  sstunted         
6 months    EE               PAKISTAN                       High               1        3     370  sstunted         
6 months    EE               PAKISTAN                       Low                0      248     370  sstunted         
6 months    EE               PAKISTAN                       Low                1       74     370  sstunted         
6 months    EE               PAKISTAN                       Medium             0       30     370  sstunted         
6 months    EE               PAKISTAN                       Medium             1        3     370  sstunted         
6 months    GMS-Nepal        NEPAL                          High               0       68     561  sstunted         
6 months    GMS-Nepal        NEPAL                          High               1        0     561  sstunted         
6 months    GMS-Nepal        NEPAL                          Low                0      378     561  sstunted         
6 months    GMS-Nepal        NEPAL                          Low                1       21     561  sstunted         
6 months    GMS-Nepal        NEPAL                          Medium             0       94     561  sstunted         
6 months    GMS-Nepal        NEPAL                          Medium             1        0     561  sstunted         
6 months    Guatemala BSC    GUATEMALA                      High               0      103     277  sstunted         
6 months    Guatemala BSC    GUATEMALA                      High               1       14     277  sstunted         
6 months    Guatemala BSC    GUATEMALA                      Low                0       67     277  sstunted         
6 months    Guatemala BSC    GUATEMALA                      Low                1        6     277  sstunted         
6 months    Guatemala BSC    GUATEMALA                      Medium             0       82     277  sstunted         
6 months    Guatemala BSC    GUATEMALA                      Medium             1        5     277  sstunted         
6 months    IRC              INDIA                          High               0      117     407  sstunted         
6 months    IRC              INDIA                          High               1        6     407  sstunted         
6 months    IRC              INDIA                          Low                0      133     407  sstunted         
6 months    IRC              INDIA                          Low                1       13     407  sstunted         
6 months    IRC              INDIA                          Medium             0      128     407  sstunted         
6 months    IRC              INDIA                          Medium             1       10     407  sstunted         
6 months    JiVitA-3         BANGLADESH                     High               0     5673   16794  sstunted         
6 months    JiVitA-3         BANGLADESH                     High               1      249   16794  sstunted         
6 months    JiVitA-3         BANGLADESH                     Low                0     5201   16794  sstunted         
6 months    JiVitA-3         BANGLADESH                     Low                1      421   16794  sstunted         
6 months    JiVitA-3         BANGLADESH                     Medium             0     4901   16794  sstunted         
6 months    JiVitA-3         BANGLADESH                     Medium             1      349   16794  sstunted         
6 months    JiVitA-4         BANGLADESH                     High               0     1659    4818  sstunted         
6 months    JiVitA-4         BANGLADESH                     High               1       59    4818  sstunted         
6 months    JiVitA-4         BANGLADESH                     Low                0     1458    4818  sstunted         
6 months    JiVitA-4         BANGLADESH                     Low                1      123    4818  sstunted         
6 months    JiVitA-4         BANGLADESH                     Medium             0     1430    4818  sstunted         
6 months    JiVitA-4         BANGLADESH                     Medium             1       89    4818  sstunted         
6 months    LCNI-5           MALAWI                         High               0      279     813  sstunted         
6 months    LCNI-5           MALAWI                         High               1       19     813  sstunted         
6 months    LCNI-5           MALAWI                         Low                0      233     813  sstunted         
6 months    LCNI-5           MALAWI                         Low                1       28     813  sstunted         
6 months    LCNI-5           MALAWI                         Medium             0      236     813  sstunted         
6 months    LCNI-5           MALAWI                         Medium             1       18     813  sstunted         
6 months    MAL-ED           BANGLADESH                     High               0       72     196  sstunted         
6 months    MAL-ED           BANGLADESH                     High               1        1     196  sstunted         
6 months    MAL-ED           BANGLADESH                     Low                0       59     196  sstunted         
6 months    MAL-ED           BANGLADESH                     Low                1        5     196  sstunted         
6 months    MAL-ED           BANGLADESH                     Medium             0       58     196  sstunted         
6 months    MAL-ED           BANGLADESH                     Medium             1        1     196  sstunted         
6 months    MAL-ED           BRAZIL                         High               0       71     208  sstunted         
6 months    MAL-ED           BRAZIL                         High               1        0     208  sstunted         
6 months    MAL-ED           BRAZIL                         Low                0       56     208  sstunted         
6 months    MAL-ED           BRAZIL                         Low                1        0     208  sstunted         
6 months    MAL-ED           BRAZIL                         Medium             0       81     208  sstunted         
6 months    MAL-ED           BRAZIL                         Medium             1        0     208  sstunted         
6 months    MAL-ED           INDIA                          High               0       58     208  sstunted         
6 months    MAL-ED           INDIA                          High               1        1     208  sstunted         
6 months    MAL-ED           INDIA                          Low                0       70     208  sstunted         
6 months    MAL-ED           INDIA                          Low                1        2     208  sstunted         
6 months    MAL-ED           INDIA                          Medium             0       73     208  sstunted         
6 months    MAL-ED           INDIA                          Medium             1        4     208  sstunted         
6 months    MAL-ED           NEPAL                          High               0       53     221  sstunted         
6 months    MAL-ED           NEPAL                          High               1        0     221  sstunted         
6 months    MAL-ED           NEPAL                          Low                0       93     221  sstunted         
6 months    MAL-ED           NEPAL                          Low                1        0     221  sstunted         
6 months    MAL-ED           NEPAL                          Medium             0       74     221  sstunted         
6 months    MAL-ED           NEPAL                          Medium             1        1     221  sstunted         
6 months    MAL-ED           PERU                           High               0       80     272  sstunted         
6 months    MAL-ED           PERU                           High               1        1     272  sstunted         
6 months    MAL-ED           PERU                           Low                0       88     272  sstunted         
6 months    MAL-ED           PERU                           Low                1        6     272  sstunted         
6 months    MAL-ED           PERU                           Medium             0       94     272  sstunted         
6 months    MAL-ED           PERU                           Medium             1        3     272  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   High               0       68     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   High               1        2     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   Low                0      123     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   Low                1        4     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   Medium             0       57     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   Medium             1        0     254  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               0        9     203  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               1        0     203  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                0       60     203  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                1        2     203  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             0      126     203  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             1        6     203  sstunted         
6 months    NIH-Birth        BANGLADESH                     High               0      152     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     High               1        3     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     Low                0      174     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     Low                1       21     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     Medium             0      176     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     Medium             1       11     537  sstunted         
6 months    NIH-Crypto       BANGLADESH                     High               0      232     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     High               1        8     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     Low                0      221     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     Low                1        8     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     Medium             0      239     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     Medium             1        7     715  sstunted         
6 months    PROBIT           BELARUS                        High               0     2644   15760  sstunted         
6 months    PROBIT           BELARUS                        High               1       13   15760  sstunted         
6 months    PROBIT           BELARUS                        Low                0     5543   15760  sstunted         
6 months    PROBIT           BELARUS                        Low                1      100   15760  sstunted         
6 months    PROBIT           BELARUS                        Medium             0     7396   15760  sstunted         
6 months    PROBIT           BELARUS                        Medium             1       64   15760  sstunted         
6 months    PROVIDE          BANGLADESH                     High               0      208     604  sstunted         
6 months    PROVIDE          BANGLADESH                     High               1        1     604  sstunted         
6 months    PROVIDE          BANGLADESH                     Low                0      181     604  sstunted         
6 months    PROVIDE          BANGLADESH                     Low                1        6     604  sstunted         
6 months    PROVIDE          BANGLADESH                     Medium             0      201     604  sstunted         
6 months    PROVIDE          BANGLADESH                     Medium             1        7     604  sstunted         
6 months    SAS-CompFeed     INDIA                          High               0      278    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          High               1       12    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          Low                0      521    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          Low                1       76    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          Medium             0      409    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          Medium             1       40    1336  sstunted         
6 months    SAS-FoodSuppl    INDIA                          High               0       33     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          High               1        2     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          Low                0      257     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          Low                1       47     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          Medium             0       36     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          Medium             1        5     380  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               0      506    2021  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               1        6    2021  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                0       73    2021  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                1        1    2021  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             0     1423    2021  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             1       12    2021  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       High               0     4535    8655  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       High               1      167    8655  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       Low                0     1714    8655  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       Low                1       81    8655  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       Medium             0     2055    8655  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       Medium             1      103    8655  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          High               0      106     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          High               1       52     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          Low                0       66     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          Low                1       39     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          Medium             0       74     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          Medium             1       34     371  sstunted         
24 months   COHORTS          GUATEMALA                      High               0      101    1057  sstunted         
24 months   COHORTS          GUATEMALA                      High               1      108    1057  sstunted         
24 months   COHORTS          GUATEMALA                      Low                0      241    1057  sstunted         
24 months   COHORTS          GUATEMALA                      Low                1      265    1057  sstunted         
24 months   COHORTS          GUATEMALA                      Medium             0      199    1057  sstunted         
24 months   COHORTS          GUATEMALA                      Medium             1      143    1057  sstunted         
24 months   COHORTS          INDIA                          High               0      583    4198  sstunted         
24 months   COHORTS          INDIA                          High               1       25    4198  sstunted         
24 months   COHORTS          INDIA                          Low                0      721    4198  sstunted         
24 months   COHORTS          INDIA                          Low                1      551    4198  sstunted         
24 months   COHORTS          INDIA                          Medium             0     1871    4198  sstunted         
24 months   COHORTS          INDIA                          Medium             1      447    4198  sstunted         
24 months   COHORTS          PHILIPPINES                    High               0      752    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    High               1      162    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    Low                0      453    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    Low                1      291    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    Medium             0      533    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    Medium             1      254    2445  sstunted         
24 months   EE               PAKISTAN                       High               0        5     165  sstunted         
24 months   EE               PAKISTAN                       High               1        1     165  sstunted         
24 months   EE               PAKISTAN                       Low                0       88     165  sstunted         
24 months   EE               PAKISTAN                       Low                1       54     165  sstunted         
24 months   EE               PAKISTAN                       Medium             0       15     165  sstunted         
24 months   EE               PAKISTAN                       Medium             1        2     165  sstunted         
24 months   GMS-Nepal        NEPAL                          High               0       53     485  sstunted         
24 months   GMS-Nepal        NEPAL                          High               1        2     485  sstunted         
24 months   GMS-Nepal        NEPAL                          Low                0      301     485  sstunted         
24 months   GMS-Nepal        NEPAL                          Low                1       43     485  sstunted         
24 months   GMS-Nepal        NEPAL                          Medium             0       78     485  sstunted         
24 months   GMS-Nepal        NEPAL                          Medium             1        8     485  sstunted         
24 months   IRC              INDIA                          High               0      111     409  sstunted         
24 months   IRC              INDIA                          High               1       13     409  sstunted         
24 months   IRC              INDIA                          Low                0      131     409  sstunted         
24 months   IRC              INDIA                          Low                1       15     409  sstunted         
24 months   IRC              INDIA                          Medium             0      126     409  sstunted         
24 months   IRC              INDIA                          Medium             1       13     409  sstunted         
24 months   JiVitA-3         BANGLADESH                     High               0     2634    8621  sstunted         
24 months   JiVitA-3         BANGLADESH                     High               1      293    8621  sstunted         
24 months   JiVitA-3         BANGLADESH                     Low                0     2388    8621  sstunted         
24 months   JiVitA-3         BANGLADESH                     Low                1      616    8621  sstunted         
24 months   JiVitA-3         BANGLADESH                     Medium             0     2255    8621  sstunted         
24 months   JiVitA-3         BANGLADESH                     Medium             1      435    8621  sstunted         
24 months   JiVitA-4         BANGLADESH                     High               0     1588    4741  sstunted         
24 months   JiVitA-4         BANGLADESH                     High               1      108    4741  sstunted         
24 months   JiVitA-4         BANGLADESH                     Low                0     1344    4741  sstunted         
24 months   JiVitA-4         BANGLADESH                     Low                1      192    4741  sstunted         
24 months   JiVitA-4         BANGLADESH                     Medium             0     1357    4741  sstunted         
24 months   JiVitA-4         BANGLADESH                     Medium             1      152    4741  sstunted         
24 months   LCNI-5           MALAWI                         High               0      201     572  sstunted         
24 months   LCNI-5           MALAWI                         High               1       19     572  sstunted         
24 months   LCNI-5           MALAWI                         Low                0      150     572  sstunted         
24 months   LCNI-5           MALAWI                         Low                1       27     572  sstunted         
24 months   LCNI-5           MALAWI                         Medium             0      153     572  sstunted         
24 months   LCNI-5           MALAWI                         Medium             1       22     572  sstunted         
24 months   MAL-ED           BANGLADESH                     High               0       57     171  sstunted         
24 months   MAL-ED           BANGLADESH                     High               1        7     171  sstunted         
24 months   MAL-ED           BANGLADESH                     Low                0       53     171  sstunted         
24 months   MAL-ED           BANGLADESH                     Low                1        6     171  sstunted         
24 months   MAL-ED           BANGLADESH                     Medium             0       44     171  sstunted         
24 months   MAL-ED           BANGLADESH                     Medium             1        4     171  sstunted         
24 months   MAL-ED           BRAZIL                         High               0       62     168  sstunted         
24 months   MAL-ED           BRAZIL                         High               1        0     168  sstunted         
24 months   MAL-ED           BRAZIL                         Low                0       42     168  sstunted         
24 months   MAL-ED           BRAZIL                         Low                1        0     168  sstunted         
24 months   MAL-ED           BRAZIL                         Medium             0       63     168  sstunted         
24 months   MAL-ED           BRAZIL                         Medium             1        1     168  sstunted         
24 months   MAL-ED           INDIA                          High               0       53     199  sstunted         
24 months   MAL-ED           INDIA                          High               1        2     199  sstunted         
24 months   MAL-ED           INDIA                          Low                0       60     199  sstunted         
24 months   MAL-ED           INDIA                          Low                1        9     199  sstunted         
24 months   MAL-ED           INDIA                          Medium             0       65     199  sstunted         
24 months   MAL-ED           INDIA                          Medium             1       10     199  sstunted         
24 months   MAL-ED           NEPAL                          High               0       46     213  sstunted         
24 months   MAL-ED           NEPAL                          High               1        2     213  sstunted         
24 months   MAL-ED           NEPAL                          Low                0       89     213  sstunted         
24 months   MAL-ED           NEPAL                          Low                1        2     213  sstunted         
24 months   MAL-ED           NEPAL                          Medium             0       73     213  sstunted         
24 months   MAL-ED           NEPAL                          Medium             1        1     213  sstunted         
24 months   MAL-ED           PERU                           High               0       56     200  sstunted         
24 months   MAL-ED           PERU                           High               1        3     200  sstunted         
24 months   MAL-ED           PERU                           Low                0       67     200  sstunted         
24 months   MAL-ED           PERU                           Low                1        7     200  sstunted         
24 months   MAL-ED           PERU                           Medium             0       62     200  sstunted         
24 months   MAL-ED           PERU                           Medium             1        5     200  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   High               0       63     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   High               1        4     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   Low                0      103     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   Low                1       17     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   Medium             0       45     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   Medium             1        6     238  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               0        6     175  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               1        1     175  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                0       32     175  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                1       22     175  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             0       85     175  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             1       29     175  sstunted         
24 months   NIH-Birth        BANGLADESH                     High               0      117     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     High               1       13     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     Low                0      104     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     Low                1       49     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     Medium             0      113     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     Medium             1       33     429  sstunted         
24 months   NIH-Crypto       BANGLADESH                     High               0      185     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     High               1        6     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     Low                0      133     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     Low                1       13     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     Medium             0      160     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     Medium             1       17     514  sstunted         
24 months   PROBIT           BELARUS                        High               0      663    4035  sstunted         
24 months   PROBIT           BELARUS                        High               1        1    4035  sstunted         
24 months   PROBIT           BELARUS                        Low                0     1378    4035  sstunted         
24 months   PROBIT           BELARUS                        Low                1       29    4035  sstunted         
24 months   PROBIT           BELARUS                        Medium             0     1929    4035  sstunted         
24 months   PROBIT           BELARUS                        Medium             1       35    4035  sstunted         
24 months   PROVIDE          BANGLADESH                     High               0      193     578  sstunted         
24 months   PROVIDE          BANGLADESH                     High               1        8     578  sstunted         
24 months   PROVIDE          BANGLADESH                     Low                0      150     578  sstunted         
24 months   PROVIDE          BANGLADESH                     Low                1       24     578  sstunted         
24 months   PROVIDE          BANGLADESH                     Medium             0      183     578  sstunted         
24 months   PROVIDE          BANGLADESH                     Medium             1       20     578  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               0        2       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                0        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             0        3       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             1        1       6  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       High               0      787    1639  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       High               1       75    1639  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       Low                0      298    1639  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       Low                1       47    1639  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       Medium             0      376    1639  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       Medium             1       56    1639  sstunted         


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
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
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
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in gam.fit3(x = X, y = y, sp = L %*% lsp1 + lsp0, Eb = Eb, UrS = UrS, : inner loop 3; can't correct step size
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_gam_NULL_NULL_GCV.Cp
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
