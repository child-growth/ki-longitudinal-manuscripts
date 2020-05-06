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

**Intervention Variable:** birthwt

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        birthwt                       stunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ---------------------------  --------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0       71      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1       10      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight                     0        4      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight                     1        7      92  stunted          
Birth       CMIN             BANGLADESH                     Normal or high birthweight          0       13      26  stunted          
Birth       CMIN             BANGLADESH                     Normal or high birthweight          1        0      26  stunted          
Birth       CMIN             BANGLADESH                     Low birthweight                     0        4      26  stunted          
Birth       CMIN             BANGLADESH                     Low birthweight                     1        9      26  stunted          
Birth       COHORTS          GUATEMALA                      Normal or high birthweight          0      695     784  stunted          
Birth       COHORTS          GUATEMALA                      Normal or high birthweight          1       22     784  stunted          
Birth       COHORTS          GUATEMALA                      Low birthweight                     0       43     784  stunted          
Birth       COHORTS          GUATEMALA                      Low birthweight                     1       24     784  stunted          
Birth       COHORTS          INDIA                          Normal or high birthweight          0     5059    6638  stunted          
Birth       COHORTS          INDIA                          Normal or high birthweight          1      209    6638  stunted          
Birth       COHORTS          INDIA                          Low birthweight                     0      787    6638  stunted          
Birth       COHORTS          INDIA                          Low birthweight                     1      583    6638  stunted          
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight          0     2643    3004  stunted          
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight          1       66    3004  stunted          
Birth       COHORTS          PHILIPPINES                    Low birthweight                     0      181    3004  stunted          
Birth       COHORTS          PHILIPPINES                    Low birthweight                     1      114    3004  stunted          
Birth       CONTENT          PERU                           Normal or high birthweight          0        2       2  stunted          
Birth       CONTENT          PERU                           Normal or high birthweight          1        0       2  stunted          
Birth       CONTENT          PERU                           Low birthweight                     0        0       2  stunted          
Birth       CONTENT          PERU                           Low birthweight                     1        0       2  stunted          
Birth       EE               PAKISTAN                       Normal or high birthweight          0      112     240  stunted          
Birth       EE               PAKISTAN                       Normal or high birthweight          1       48     240  stunted          
Birth       EE               PAKISTAN                       Low birthweight                     0       28     240  stunted          
Birth       EE               PAKISTAN                       Low birthweight                     1       52     240  stunted          
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight          0      442     696  stunted          
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight          1       23     696  stunted          
Birth       GMS-Nepal        NEPAL                          Low birthweight                     0      132     696  stunted          
Birth       GMS-Nepal        NEPAL                          Low birthweight                     1       99     696  stunted          
Birth       IRC              INDIA                          Normal or high birthweight          0      292     383  stunted          
Birth       IRC              INDIA                          Normal or high birthweight          1       25     383  stunted          
Birth       IRC              INDIA                          Low birthweight                     0       47     383  stunted          
Birth       IRC              INDIA                          Low birthweight                     1       19     383  stunted          
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight          0    11688   22454  stunted          
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight          1     1138   22454  stunted          
Birth       JiVitA-3         BANGLADESH                     Low birthweight                     0     3380   22454  stunted          
Birth       JiVitA-3         BANGLADESH                     Low birthweight                     1     6248   22454  stunted          
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight          0     1617    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight          1      182    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     Low birthweight                     0      349    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     Low birthweight                     1      675    2823  stunted          
Birth       Keneba           GAMBIA                         Normal or high birthweight          0     1269    1529  stunted          
Birth       Keneba           GAMBIA                         Normal or high birthweight          1       39    1529  stunted          
Birth       Keneba           GAMBIA                         Low birthweight                     0      177    1529  stunted          
Birth       Keneba           GAMBIA                         Low birthweight                     1       44    1529  stunted          
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight          0      163     231  stunted          
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight          1       14     231  stunted          
Birth       MAL-ED           BANGLADESH                     Low birthweight                     0       24     231  stunted          
Birth       MAL-ED           BANGLADESH                     Low birthweight                     1       30     231  stunted          
Birth       MAL-ED           BRAZIL                         Normal or high birthweight          0       55      65  stunted          
Birth       MAL-ED           BRAZIL                         Normal or high birthweight          1        6      65  stunted          
Birth       MAL-ED           BRAZIL                         Low birthweight                     0        1      65  stunted          
Birth       MAL-ED           BRAZIL                         Low birthweight                     1        3      65  stunted          
Birth       MAL-ED           INDIA                          Normal or high birthweight          0       34      47  stunted          
Birth       MAL-ED           INDIA                          Normal or high birthweight          1        5      47  stunted          
Birth       MAL-ED           INDIA                          Low birthweight                     0        3      47  stunted          
Birth       MAL-ED           INDIA                          Low birthweight                     1        5      47  stunted          
Birth       MAL-ED           NEPAL                          Normal or high birthweight          0       24      27  stunted          
Birth       MAL-ED           NEPAL                          Normal or high birthweight          1        0      27  stunted          
Birth       MAL-ED           NEPAL                          Low birthweight                     0        1      27  stunted          
Birth       MAL-ED           NEPAL                          Low birthweight                     1        2      27  stunted          
Birth       MAL-ED           PERU                           Normal or high birthweight          0      205     233  stunted          
Birth       MAL-ED           PERU                           Normal or high birthweight          1       16     233  stunted          
Birth       MAL-ED           PERU                           Low birthweight                     0        2     233  stunted          
Birth       MAL-ED           PERU                           Low birthweight                     1       10     233  stunted          
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight          0      109     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight          1        6     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight                     0        4     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight                     1        4     123  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      102     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       16     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        0     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        7     125  stunted          
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight          0      398     608  stunted          
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight          1       14     608  stunted          
Birth       NIH-Birth        BANGLADESH                     Low birthweight                     0      113     608  stunted          
Birth       NIH-Birth        BANGLADESH                     Low birthweight                     1       83     608  stunted          
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight          0      519     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight          1       41     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     Low birthweight                     0      112     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     Low birthweight                     1       60     732  stunted          
Birth       PROBIT           BELARUS                        Normal or high birthweight          0    13859   13893  stunted          
Birth       PROBIT           BELARUS                        Normal or high birthweight          1       34   13893  stunted          
Birth       PROBIT           BELARUS                        Low birthweight                     0        0   13893  stunted          
Birth       PROBIT           BELARUS                        Low birthweight                     1        0   13893  stunted          
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight          0      397     539  stunted          
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight          1        5     539  stunted          
Birth       PROVIDE          BANGLADESH                     Low birthweight                     0       94     539  stunted          
Birth       PROVIDE          BANGLADESH                     Low birthweight                     1       43     539  stunted          
Birth       ResPak           PAKISTAN                       Normal or high birthweight          0       28      42  stunted          
Birth       ResPak           PAKISTAN                       Normal or high birthweight          1        6      42  stunted          
Birth       ResPak           PAKISTAN                       Low birthweight                     0        0      42  stunted          
Birth       ResPak           PAKISTAN                       Low birthweight                     1        8      42  stunted          
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight          0      793    1252  stunted          
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight          1      121    1252  stunted          
Birth       SAS-CompFeed     INDIA                          Low birthweight                     0      110    1252  stunted          
Birth       SAS-CompFeed     INDIA                          Low birthweight                     1      228    1252  stunted          
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0    11231   13830  stunted          
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      698   13830  stunted          
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight                     0     1167   13830  stunted          
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight                     1      734   13830  stunted          
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      237     361  stunted          
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1       82     361  stunted          
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight                     0       15     361  stunted          
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight                     1       27     361  stunted          
6 months    CMIN             BANGLADESH                     Normal or high birthweight          0        6      12  stunted          
6 months    CMIN             BANGLADESH                     Normal or high birthweight          1        2      12  stunted          
6 months    CMIN             BANGLADESH                     Low birthweight                     0        2      12  stunted          
6 months    CMIN             BANGLADESH                     Low birthweight                     1        2      12  stunted          
6 months    COHORTS          GUATEMALA                      Normal or high birthweight          0      446     771  stunted          
6 months    COHORTS          GUATEMALA                      Normal or high birthweight          1      257     771  stunted          
6 months    COHORTS          GUATEMALA                      Low birthweight                     0       16     771  stunted          
6 months    COHORTS          GUATEMALA                      Low birthweight                     1       52     771  stunted          
6 months    COHORTS          INDIA                          Normal or high birthweight          0     4360    6261  stunted          
6 months    COHORTS          INDIA                          Normal or high birthweight          1      645    6261  stunted          
6 months    COHORTS          INDIA                          Low birthweight                     0      741    6261  stunted          
6 months    COHORTS          INDIA                          Low birthweight                     1      515    6261  stunted          
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight          0     1979    2666  stunted          
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight          1      439    2666  stunted          
6 months    COHORTS          PHILIPPINES                    Low birthweight                     0      125    2666  stunted          
6 months    COHORTS          PHILIPPINES                    Low birthweight                     1      123    2666  stunted          
6 months    CONTENT          PERU                           Normal or high birthweight          0        2       2  stunted          
6 months    CONTENT          PERU                           Normal or high birthweight          1        0       2  stunted          
6 months    CONTENT          PERU                           Low birthweight                     0        0       2  stunted          
6 months    CONTENT          PERU                           Low birthweight                     1        0       2  stunted          
6 months    EE               PAKISTAN                       Normal or high birthweight          0      155     372  stunted          
6 months    EE               PAKISTAN                       Normal or high birthweight          1       87     372  stunted          
6 months    EE               PAKISTAN                       Low birthweight                     0       35     372  stunted          
6 months    EE               PAKISTAN                       Low birthweight                     1       95     372  stunted          
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight          0      334     563  stunted          
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight          1       52     563  stunted          
6 months    GMS-Nepal        NEPAL                          Low birthweight                     0      107     563  stunted          
6 months    GMS-Nepal        NEPAL                          Low birthweight                     1       70     563  stunted          
6 months    IRC              INDIA                          Normal or high birthweight          0      268     401  stunted          
6 months    IRC              INDIA                          Normal or high birthweight          1       67     401  stunted          
6 months    IRC              INDIA                          Low birthweight                     0       38     401  stunted          
6 months    IRC              INDIA                          Low birthweight                     1       28     401  stunted          
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight          0     7270   14130  stunted          
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight          1     1066   14130  stunted          
6 months    JiVitA-3         BANGLADESH                     Low birthweight                     0     3239   14130  stunted          
6 months    JiVitA-3         BANGLADESH                     Low birthweight                     1     2555   14130  stunted          
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight          0     2493    4041  stunted          
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight          1      511    4041  stunted          
6 months    JiVitA-4         BANGLADESH                     Low birthweight                     0      539    4041  stunted          
6 months    JiVitA-4         BANGLADESH                     Low birthweight                     1      498    4041  stunted          
6 months    Keneba           GAMBIA                         Normal or high birthweight          0     1029    1334  stunted          
6 months    Keneba           GAMBIA                         Normal or high birthweight          1      117    1334  stunted          
6 months    Keneba           GAMBIA                         Low birthweight                     0      127    1334  stunted          
6 months    Keneba           GAMBIA                         Low birthweight                     1       61    1334  stunted          
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight          0      165     238  stunted          
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight          1       23     238  stunted          
6 months    MAL-ED           BANGLADESH                     Low birthweight                     0       29     238  stunted          
6 months    MAL-ED           BANGLADESH                     Low birthweight                     1       21     238  stunted          
6 months    MAL-ED           BRAZIL                         Normal or high birthweight          0      194     209  stunted          
6 months    MAL-ED           BRAZIL                         Normal or high birthweight          1        5     209  stunted          
6 months    MAL-ED           BRAZIL                         Low birthweight                     0        9     209  stunted          
6 months    MAL-ED           BRAZIL                         Low birthweight                     1        1     209  stunted          
6 months    MAL-ED           INDIA                          Normal or high birthweight          0      162     227  stunted          
6 months    MAL-ED           INDIA                          Normal or high birthweight          1       31     227  stunted          
6 months    MAL-ED           INDIA                          Low birthweight                     0       26     227  stunted          
6 months    MAL-ED           INDIA                          Low birthweight                     1        8     227  stunted          
6 months    MAL-ED           NEPAL                          Normal or high birthweight          0      204     229  stunted          
6 months    MAL-ED           NEPAL                          Normal or high birthweight          1        6     229  stunted          
6 months    MAL-ED           NEPAL                          Low birthweight                     0       15     229  stunted          
6 months    MAL-ED           NEPAL                          Low birthweight                     1        4     229  stunted          
6 months    MAL-ED           PERU                           Normal or high birthweight          0      208     270  stunted          
6 months    MAL-ED           PERU                           Normal or high birthweight          1       46     270  stunted          
6 months    MAL-ED           PERU                           Low birthweight                     0        5     270  stunted          
6 months    MAL-ED           PERU                           Low birthweight                     1       11     270  stunted          
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight          0      193     253  stunted          
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight          1       45     253  stunted          
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight                     0       10     253  stunted          
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight                     1        5     253  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      143     186  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       34     186  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        2     186  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        7     186  stunted          
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight          0      299     518  stunted          
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight          1       57     518  stunted          
6 months    NIH-Birth        BANGLADESH                     Low birthweight                     0       79     518  stunted          
6 months    NIH-Birth        BANGLADESH                     Low birthweight                     1       83     518  stunted          
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight          0      467     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight          1       78     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     Low birthweight                     0       98     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     Low birthweight                     1       72     715  stunted          
6 months    PROBIT           BELARUS                        Normal or high birthweight          0    15140   15760  stunted          
6 months    PROBIT           BELARUS                        Normal or high birthweight          1      620   15760  stunted          
6 months    PROBIT           BELARUS                        Low birthweight                     0        0   15760  stunted          
6 months    PROBIT           BELARUS                        Low birthweight                     1        0   15760  stunted          
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight          0      417     604  stunted          
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight          1       44     604  stunted          
6 months    PROVIDE          BANGLADESH                     Low birthweight                     0       91     604  stunted          
6 months    PROVIDE          BANGLADESH                     Low birthweight                     1       52     604  stunted          
6 months    ResPak           PAKISTAN                       Normal or high birthweight          0       18      34  stunted          
6 months    ResPak           PAKISTAN                       Normal or high birthweight          1       11      34  stunted          
6 months    ResPak           PAKISTAN                       Low birthweight                     0        1      34  stunted          
6 months    ResPak           PAKISTAN                       Low birthweight                     1        4      34  stunted          
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight          0      803    1326  stunted          
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight          1      200    1326  stunted          
6 months    SAS-CompFeed     INDIA                          Low birthweight                     0      146    1326  stunted          
6 months    SAS-CompFeed     INDIA                          Low birthweight                     1      177    1326  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0     1770    2011  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1      174    2011  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0       47    2011  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1       20    2011  stunted          
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0     6601    8636  stunted          
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      965    8636  stunted          
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight                     0      630    8636  stunted          
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight                     1      440    8636  stunted          
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0       98     363  stunted          
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1      222     363  stunted          
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                     0        6     363  stunted          
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                     1       37     363  stunted          
24 months   CMIN             BANGLADESH                     Normal or high birthweight          0        3      11  stunted          
24 months   CMIN             BANGLADESH                     Normal or high birthweight          1        4      11  stunted          
24 months   CMIN             BANGLADESH                     Low birthweight                     0        1      11  stunted          
24 months   CMIN             BANGLADESH                     Low birthweight                     1        3      11  stunted          
24 months   COHORTS          GUATEMALA                      Normal or high birthweight          0      119     650  stunted          
24 months   COHORTS          GUATEMALA                      Normal or high birthweight          1      470     650  stunted          
24 months   COHORTS          GUATEMALA                      Low birthweight                     0        2     650  stunted          
24 months   COHORTS          GUATEMALA                      Low birthweight                     1       59     650  stunted          
24 months   COHORTS          INDIA                          Normal or high birthweight          0     2020    4858  stunted          
24 months   COHORTS          INDIA                          Normal or high birthweight          1     1929    4858  stunted          
24 months   COHORTS          INDIA                          Low birthweight                     0      244    4858  stunted          
24 months   COHORTS          INDIA                          Low birthweight                     1      665    4858  stunted          
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight          0      875    2406  stunted          
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight          1     1319    2406  stunted          
24 months   COHORTS          PHILIPPINES                    Low birthweight                     0       38    2406  stunted          
24 months   COHORTS          PHILIPPINES                    Low birthweight                     1      174    2406  stunted          
24 months   CONTENT          PERU                           Normal or high birthweight          0        2       2  stunted          
24 months   CONTENT          PERU                           Normal or high birthweight          1        0       2  stunted          
24 months   CONTENT          PERU                           Low birthweight                     0        0       2  stunted          
24 months   CONTENT          PERU                           Low birthweight                     1        0       2  stunted          
24 months   EE               PAKISTAN                       Normal or high birthweight          0       34     167  stunted          
24 months   EE               PAKISTAN                       Normal or high birthweight          1       66     167  stunted          
24 months   EE               PAKISTAN                       Low birthweight                     0       15     167  stunted          
24 months   EE               PAKISTAN                       Low birthweight                     1       52     167  stunted          
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight          0      206     487  stunted          
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight          1      139     487  stunted          
24 months   GMS-Nepal        NEPAL                          Low birthweight                     0       63     487  stunted          
24 months   GMS-Nepal        NEPAL                          Low birthweight                     1       79     487  stunted          
24 months   IRC              INDIA                          Normal or high birthweight          0      208     403  stunted          
24 months   IRC              INDIA                          Normal or high birthweight          1      127     403  stunted          
24 months   IRC              INDIA                          Low birthweight                     0       27     403  stunted          
24 months   IRC              INDIA                          Low birthweight                     1       41     403  stunted          
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight          0     2573    7307  stunted          
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight          1     1659    7307  stunted          
24 months   JiVitA-3         BANGLADESH                     Low birthweight                     0     1082    7307  stunted          
24 months   JiVitA-3         BANGLADESH                     Low birthweight                     1     1993    7307  stunted          
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight          0     1966    4010  stunted          
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight          1      989    4010  stunted          
24 months   JiVitA-4         BANGLADESH                     Low birthweight                     0      444    4010  stunted          
24 months   JiVitA-4         BANGLADESH                     Low birthweight                     1      611    4010  stunted          
24 months   Keneba           GAMBIA                         Normal or high birthweight          0      646    1056  stunted          
24 months   Keneba           GAMBIA                         Normal or high birthweight          1      259    1056  stunted          
24 months   Keneba           GAMBIA                         Low birthweight                     0       69    1056  stunted          
24 months   Keneba           GAMBIA                         Low birthweight                     1       82    1056  stunted          
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight          0       94     210  stunted          
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight          1       71     210  stunted          
24 months   MAL-ED           BANGLADESH                     Low birthweight                     0       16     210  stunted          
24 months   MAL-ED           BANGLADESH                     Low birthweight                     1       29     210  stunted          
24 months   MAL-ED           BRAZIL                         Normal or high birthweight          0      154     169  stunted          
24 months   MAL-ED           BRAZIL                         Normal or high birthweight          1        7     169  stunted          
24 months   MAL-ED           BRAZIL                         Low birthweight                     0        8     169  stunted          
24 months   MAL-ED           BRAZIL                         Low birthweight                     1        0     169  stunted          
24 months   MAL-ED           INDIA                          Normal or high birthweight          0      109     218  stunted          
24 months   MAL-ED           INDIA                          Normal or high birthweight          1       76     218  stunted          
24 months   MAL-ED           INDIA                          Low birthweight                     0       18     218  stunted          
24 months   MAL-ED           INDIA                          Low birthweight                     1       15     218  stunted          
24 months   MAL-ED           NEPAL                          Normal or high birthweight          0      163     221  stunted          
24 months   MAL-ED           NEPAL                          Normal or high birthweight          1       40     221  stunted          
24 months   MAL-ED           NEPAL                          Low birthweight                     0       11     221  stunted          
24 months   MAL-ED           NEPAL                          Low birthweight                     1        7     221  stunted          
24 months   MAL-ED           PERU                           Normal or high birthweight          0      124     199  stunted          
24 months   MAL-ED           PERU                           Normal or high birthweight          1       63     199  stunted          
24 months   MAL-ED           PERU                           Low birthweight                     0        2     199  stunted          
24 months   MAL-ED           PERU                           Low birthweight                     1       10     199  stunted          
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight          0      144     237  stunted          
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight          1       80     237  stunted          
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                     0        9     237  stunted          
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                     1        4     237  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0       48     162  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1      106     162  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        1     162  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        7     162  stunted          
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight          0      146     414  stunted          
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight          1      132     414  stunted          
24 months   NIH-Birth        BANGLADESH                     Low birthweight                     0       32     414  stunted          
24 months   NIH-Birth        BANGLADESH                     Low birthweight                     1      104     414  stunted          
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight          0      315     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight          1       73     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     Low birthweight                     0       67     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     Low birthweight                     1       59     514  stunted          
24 months   PROBIT           BELARUS                        Normal or high birthweight          0     3760    4035  stunted          
24 months   PROBIT           BELARUS                        Normal or high birthweight          1      275    4035  stunted          
24 months   PROBIT           BELARUS                        Low birthweight                     0        0    4035  stunted          
24 months   PROBIT           BELARUS                        Low birthweight                     1        0    4035  stunted          
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight          0      319     578  stunted          
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight          1      120     578  stunted          
24 months   PROVIDE          BANGLADESH                     Low birthweight                     0       69     578  stunted          
24 months   PROVIDE          BANGLADESH                     Low birthweight                     1       70     578  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0        5       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        1       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        0       6  stunted          
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0      991    1635  stunted          
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      451    1635  stunted          
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                     0       78    1635  stunted          
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                     1      115    1635  stunted          


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
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
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
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
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
