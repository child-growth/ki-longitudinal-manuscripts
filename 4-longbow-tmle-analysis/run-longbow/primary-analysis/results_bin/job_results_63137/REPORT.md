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

agecat      studyid          country                        birthwt                       sstunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ---------------------------  ---------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight           0       78      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight           1        3      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight                      0       10      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight                      1        1      92  sstunted         
Birth       CMIN             BANGLADESH                     Normal or high birthweight           0       13      26  sstunted         
Birth       CMIN             BANGLADESH                     Normal or high birthweight           1        0      26  sstunted         
Birth       CMIN             BANGLADESH                     Low birthweight                      0        7      26  sstunted         
Birth       CMIN             BANGLADESH                     Low birthweight                      1        6      26  sstunted         
Birth       COHORTS          GUATEMALA                      Normal or high birthweight           0      713     784  sstunted         
Birth       COHORTS          GUATEMALA                      Normal or high birthweight           1        4     784  sstunted         
Birth       COHORTS          GUATEMALA                      Low birthweight                      0       61     784  sstunted         
Birth       COHORTS          GUATEMALA                      Low birthweight                      1        6     784  sstunted         
Birth       COHORTS          INDIA                          Normal or high birthweight           0     5242    6638  sstunted         
Birth       COHORTS          INDIA                          Normal or high birthweight           1       26    6638  sstunted         
Birth       COHORTS          INDIA                          Low birthweight                      0     1190    6638  sstunted         
Birth       COHORTS          INDIA                          Low birthweight                      1      180    6638  sstunted         
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight           0     2704    3004  sstunted         
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight           1        5    3004  sstunted         
Birth       COHORTS          PHILIPPINES                    Low birthweight                      0      255    3004  sstunted         
Birth       COHORTS          PHILIPPINES                    Low birthweight                      1       40    3004  sstunted         
Birth       CONTENT          PERU                           Normal or high birthweight           0        2       2  sstunted         
Birth       CONTENT          PERU                           Normal or high birthweight           1        0       2  sstunted         
Birth       CONTENT          PERU                           Low birthweight                      0        0       2  sstunted         
Birth       CONTENT          PERU                           Low birthweight                      1        0       2  sstunted         
Birth       EE               PAKISTAN                       Normal or high birthweight           0      148     240  sstunted         
Birth       EE               PAKISTAN                       Normal or high birthweight           1       12     240  sstunted         
Birth       EE               PAKISTAN                       Low birthweight                      0       44     240  sstunted         
Birth       EE               PAKISTAN                       Low birthweight                      1       36     240  sstunted         
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight           0      464     696  sstunted         
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight           1        1     696  sstunted         
Birth       GMS-Nepal        NEPAL                          Low birthweight                      0      201     696  sstunted         
Birth       GMS-Nepal        NEPAL                          Low birthweight                      1       30     696  sstunted         
Birth       IRC              INDIA                          Normal or high birthweight           0      308     383  sstunted         
Birth       IRC              INDIA                          Normal or high birthweight           1        9     383  sstunted         
Birth       IRC              INDIA                          Low birthweight                      0       59     383  sstunted         
Birth       IRC              INDIA                          Low birthweight                      1        7     383  sstunted         
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight           0    12759   22454  sstunted         
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight           1       67   22454  sstunted         
Birth       JiVitA-3         BANGLADESH                     Low birthweight                      0     7247   22454  sstunted         
Birth       JiVitA-3         BANGLADESH                     Low birthweight                      1     2381   22454  sstunted         
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight           0     1789    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight           1       10    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     Low birthweight                      0      801    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     Low birthweight                      1      223    2823  sstunted         
Birth       Keneba           GAMBIA                         Normal or high birthweight           0     1290    1529  sstunted         
Birth       Keneba           GAMBIA                         Normal or high birthweight           1       18    1529  sstunted         
Birth       Keneba           GAMBIA                         Low birthweight                      0      210    1529  sstunted         
Birth       Keneba           GAMBIA                         Low birthweight                      1       11    1529  sstunted         
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight           0      176     231  sstunted         
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight           1        1     231  sstunted         
Birth       MAL-ED           BANGLADESH                     Low birthweight                      0       46     231  sstunted         
Birth       MAL-ED           BANGLADESH                     Low birthweight                      1        8     231  sstunted         
Birth       MAL-ED           BRAZIL                         Normal or high birthweight           0       59      65  sstunted         
Birth       MAL-ED           BRAZIL                         Normal or high birthweight           1        2      65  sstunted         
Birth       MAL-ED           BRAZIL                         Low birthweight                      0        3      65  sstunted         
Birth       MAL-ED           BRAZIL                         Low birthweight                      1        1      65  sstunted         
Birth       MAL-ED           INDIA                          Normal or high birthweight           0       38      47  sstunted         
Birth       MAL-ED           INDIA                          Normal or high birthweight           1        1      47  sstunted         
Birth       MAL-ED           INDIA                          Low birthweight                      0        7      47  sstunted         
Birth       MAL-ED           INDIA                          Low birthweight                      1        1      47  sstunted         
Birth       MAL-ED           NEPAL                          Normal or high birthweight           0       24      27  sstunted         
Birth       MAL-ED           NEPAL                          Normal or high birthweight           1        0      27  sstunted         
Birth       MAL-ED           NEPAL                          Low birthweight                      0        2      27  sstunted         
Birth       MAL-ED           NEPAL                          Low birthweight                      1        1      27  sstunted         
Birth       MAL-ED           PERU                           Normal or high birthweight           0      220     233  sstunted         
Birth       MAL-ED           PERU                           Normal or high birthweight           1        1     233  sstunted         
Birth       MAL-ED           PERU                           Low birthweight                      0        9     233  sstunted         
Birth       MAL-ED           PERU                           Low birthweight                      1        3     233  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight           0      115     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight           1        0     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight                      0        6     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight                      1        2     123  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           0      113     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           1        5     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                      0        2     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                      1        5     125  sstunted         
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight           0      412     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight           1        0     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     Low birthweight                      0      177     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     Low birthweight                      1       19     608  sstunted         
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight           0      559     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight           1        1     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     Low birthweight                      0      163     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     Low birthweight                      1        9     732  sstunted         
Birth       PROBIT           BELARUS                        Normal or high birthweight           0    13888   13893  sstunted         
Birth       PROBIT           BELARUS                        Normal or high birthweight           1        5   13893  sstunted         
Birth       PROBIT           BELARUS                        Low birthweight                      0        0   13893  sstunted         
Birth       PROBIT           BELARUS                        Low birthweight                      1        0   13893  sstunted         
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight           0      401     539  sstunted         
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight           1        1     539  sstunted         
Birth       PROVIDE          BANGLADESH                     Low birthweight                      0      134     539  sstunted         
Birth       PROVIDE          BANGLADESH                     Low birthweight                      1        3     539  sstunted         
Birth       ResPak           PAKISTAN                       Normal or high birthweight           0       34      42  sstunted         
Birth       ResPak           PAKISTAN                       Normal or high birthweight           1        0      42  sstunted         
Birth       ResPak           PAKISTAN                       Low birthweight                      0        6      42  sstunted         
Birth       ResPak           PAKISTAN                       Low birthweight                      1        2      42  sstunted         
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight           0      907    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight           1        7    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          Low birthweight                      0      254    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          Low birthweight                      1       84    1252  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight           0    11800   13830  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight           1      129   13830  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight                      0     1589   13830  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight                      1      312   13830  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight           0      289     361  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight           1       30     361  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight                      0       30     361  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight                      1       12     361  sstunted         
6 months    CMIN             BANGLADESH                     Normal or high birthweight           0        7      12  sstunted         
6 months    CMIN             BANGLADESH                     Normal or high birthweight           1        1      12  sstunted         
6 months    CMIN             BANGLADESH                     Low birthweight                      0        4      12  sstunted         
6 months    CMIN             BANGLADESH                     Low birthweight                      1        0      12  sstunted         
6 months    COHORTS          GUATEMALA                      Normal or high birthweight           0      642     771  sstunted         
6 months    COHORTS          GUATEMALA                      Normal or high birthweight           1       61     771  sstunted         
6 months    COHORTS          GUATEMALA                      Low birthweight                      0       42     771  sstunted         
6 months    COHORTS          GUATEMALA                      Low birthweight                      1       26     771  sstunted         
6 months    COHORTS          INDIA                          Normal or high birthweight           0     4895    6261  sstunted         
6 months    COHORTS          INDIA                          Normal or high birthweight           1      110    6261  sstunted         
6 months    COHORTS          INDIA                          Low birthweight                      0     1093    6261  sstunted         
6 months    COHORTS          INDIA                          Low birthweight                      1      163    6261  sstunted         
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight           0     2330    2666  sstunted         
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight           1       88    2666  sstunted         
6 months    COHORTS          PHILIPPINES                    Low birthweight                      0      205    2666  sstunted         
6 months    COHORTS          PHILIPPINES                    Low birthweight                      1       43    2666  sstunted         
6 months    CONTENT          PERU                           Normal or high birthweight           0        2       2  sstunted         
6 months    CONTENT          PERU                           Normal or high birthweight           1        0       2  sstunted         
6 months    CONTENT          PERU                           Low birthweight                      0        0       2  sstunted         
6 months    CONTENT          PERU                           Low birthweight                      1        0       2  sstunted         
6 months    EE               PAKISTAN                       Normal or high birthweight           0      212     372  sstunted         
6 months    EE               PAKISTAN                       Normal or high birthweight           1       30     372  sstunted         
6 months    EE               PAKISTAN                       Low birthweight                      0       80     372  sstunted         
6 months    EE               PAKISTAN                       Low birthweight                      1       50     372  sstunted         
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight           0      380     563  sstunted         
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight           1        6     563  sstunted         
6 months    GMS-Nepal        NEPAL                          Low birthweight                      0      162     563  sstunted         
6 months    GMS-Nepal        NEPAL                          Low birthweight                      1       15     563  sstunted         
6 months    IRC              INDIA                          Normal or high birthweight           0      320     401  sstunted         
6 months    IRC              INDIA                          Normal or high birthweight           1       15     401  sstunted         
6 months    IRC              INDIA                          Low birthweight                      0       54     401  sstunted         
6 months    IRC              INDIA                          Low birthweight                      1       12     401  sstunted         
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight           0     8215   14130  sstunted         
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight           1      121   14130  sstunted         
6 months    JiVitA-3         BANGLADESH                     Low birthweight                      0     5058   14130  sstunted         
6 months    JiVitA-3         BANGLADESH                     Low birthweight                      1      736   14130  sstunted         
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight           0     2920    4041  sstunted         
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight           1       84    4041  sstunted         
6 months    JiVitA-4         BANGLADESH                     Low birthweight                      0      901    4041  sstunted         
6 months    JiVitA-4         BANGLADESH                     Low birthweight                      1      136    4041  sstunted         
6 months    Keneba           GAMBIA                         Normal or high birthweight           0     1132    1334  sstunted         
6 months    Keneba           GAMBIA                         Normal or high birthweight           1       14    1334  sstunted         
6 months    Keneba           GAMBIA                         Low birthweight                      0      168    1334  sstunted         
6 months    Keneba           GAMBIA                         Low birthweight                      1       20    1334  sstunted         
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight           0      185     238  sstunted         
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight           1        3     238  sstunted         
6 months    MAL-ED           BANGLADESH                     Low birthweight                      0       45     238  sstunted         
6 months    MAL-ED           BANGLADESH                     Low birthweight                      1        5     238  sstunted         
6 months    MAL-ED           BRAZIL                         Normal or high birthweight           0      199     209  sstunted         
6 months    MAL-ED           BRAZIL                         Normal or high birthweight           1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         Low birthweight                      0       10     209  sstunted         
6 months    MAL-ED           BRAZIL                         Low birthweight                      1        0     209  sstunted         
6 months    MAL-ED           INDIA                          Normal or high birthweight           0      188     227  sstunted         
6 months    MAL-ED           INDIA                          Normal or high birthweight           1        5     227  sstunted         
6 months    MAL-ED           INDIA                          Low birthweight                      0       33     227  sstunted         
6 months    MAL-ED           INDIA                          Low birthweight                      1        1     227  sstunted         
6 months    MAL-ED           NEPAL                          Normal or high birthweight           0      210     229  sstunted         
6 months    MAL-ED           NEPAL                          Normal or high birthweight           1        0     229  sstunted         
6 months    MAL-ED           NEPAL                          Low birthweight                      0       18     229  sstunted         
6 months    MAL-ED           NEPAL                          Low birthweight                      1        1     229  sstunted         
6 months    MAL-ED           PERU                           Normal or high birthweight           0      249     270  sstunted         
6 months    MAL-ED           PERU                           Normal or high birthweight           1        5     270  sstunted         
6 months    MAL-ED           PERU                           Low birthweight                      0       12     270  sstunted         
6 months    MAL-ED           PERU                           Low birthweight                      1        4     270  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight           0      235     253  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight           1        3     253  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight                      0       12     253  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight                      1        3     253  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           0      170     186  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           1        7     186  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                      0        7     186  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                      1        2     186  sstunted         
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight           0      348     518  sstunted         
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight           1        8     518  sstunted         
6 months    NIH-Birth        BANGLADESH                     Low birthweight                      0      135     518  sstunted         
6 months    NIH-Birth        BANGLADESH                     Low birthweight                      1       27     518  sstunted         
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight           0      535     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight           1       10     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     Low birthweight                      0      157     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     Low birthweight                      1       13     715  sstunted         
6 months    PROBIT           BELARUS                        Normal or high birthweight           0    15583   15760  sstunted         
6 months    PROBIT           BELARUS                        Normal or high birthweight           1      177   15760  sstunted         
6 months    PROBIT           BELARUS                        Low birthweight                      0        0   15760  sstunted         
6 months    PROBIT           BELARUS                        Low birthweight                      1        0   15760  sstunted         
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight           0      457     604  sstunted         
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight           1        4     604  sstunted         
6 months    PROVIDE          BANGLADESH                     Low birthweight                      0      133     604  sstunted         
6 months    PROVIDE          BANGLADESH                     Low birthweight                      1       10     604  sstunted         
6 months    ResPak           PAKISTAN                       Normal or high birthweight           0       23      34  sstunted         
6 months    ResPak           PAKISTAN                       Normal or high birthweight           1        6      34  sstunted         
6 months    ResPak           PAKISTAN                       Low birthweight                      0        2      34  sstunted         
6 months    ResPak           PAKISTAN                       Low birthweight                      1        3      34  sstunted         
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight           0      948    1326  sstunted         
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight           1       55    1326  sstunted         
6 months    SAS-CompFeed     INDIA                          Low birthweight                      0      252    1326  sstunted         
6 months    SAS-CompFeed     INDIA                          Low birthweight                      1       71    1326  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           0     1931    2011  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           1       13    2011  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                      0       63    2011  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                      1        4    2011  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight           0     7375    8636  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight           1      191    8636  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight                      0      912    8636  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight                      1      158    8636  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight           0      226     363  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight           1       94     363  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                      0       16     363  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                      1       27     363  sstunted         
24 months   CMIN             BANGLADESH                     Normal or high birthweight           0        6      11  sstunted         
24 months   CMIN             BANGLADESH                     Normal or high birthweight           1        1      11  sstunted         
24 months   CMIN             BANGLADESH                     Low birthweight                      0        1      11  sstunted         
24 months   CMIN             BANGLADESH                     Low birthweight                      1        3      11  sstunted         
24 months   COHORTS          GUATEMALA                      Normal or high birthweight           0      322     650  sstunted         
24 months   COHORTS          GUATEMALA                      Normal or high birthweight           1      267     650  sstunted         
24 months   COHORTS          GUATEMALA                      Low birthweight                      0       14     650  sstunted         
24 months   COHORTS          GUATEMALA                      Low birthweight                      1       47     650  sstunted         
24 months   COHORTS          INDIA                          Normal or high birthweight           0     3216    4858  sstunted         
24 months   COHORTS          INDIA                          Normal or high birthweight           1      733    4858  sstunted         
24 months   COHORTS          INDIA                          Low birthweight                      0      537    4858  sstunted         
24 months   COHORTS          INDIA                          Low birthweight                      1      372    4858  sstunted         
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight           0     1607    2406  sstunted         
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight           1      587    2406  sstunted         
24 months   COHORTS          PHILIPPINES                    Low birthweight                      0      106    2406  sstunted         
24 months   COHORTS          PHILIPPINES                    Low birthweight                      1      106    2406  sstunted         
24 months   CONTENT          PERU                           Normal or high birthweight           0        2       2  sstunted         
24 months   CONTENT          PERU                           Normal or high birthweight           1        0       2  sstunted         
24 months   CONTENT          PERU                           Low birthweight                      0        0       2  sstunted         
24 months   CONTENT          PERU                           Low birthweight                      1        0       2  sstunted         
24 months   EE               PAKISTAN                       Normal or high birthweight           0       74     167  sstunted         
24 months   EE               PAKISTAN                       Normal or high birthweight           1       26     167  sstunted         
24 months   EE               PAKISTAN                       Low birthweight                      0       34     167  sstunted         
24 months   EE               PAKISTAN                       Low birthweight                      1       33     167  sstunted         
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight           0      322     487  sstunted         
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight           1       23     487  sstunted         
24 months   GMS-Nepal        NEPAL                          Low birthweight                      0      112     487  sstunted         
24 months   GMS-Nepal        NEPAL                          Low birthweight                      1       30     487  sstunted         
24 months   IRC              INDIA                          Normal or high birthweight           0      316     403  sstunted         
24 months   IRC              INDIA                          Normal or high birthweight           1       19     403  sstunted         
24 months   IRC              INDIA                          Low birthweight                      0       50     403  sstunted         
24 months   IRC              INDIA                          Low birthweight                      1       18     403  sstunted         
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight           0     3851    7307  sstunted         
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight           1      381    7307  sstunted         
24 months   JiVitA-3         BANGLADESH                     Low birthweight                      0     2287    7307  sstunted         
24 months   JiVitA-3         BANGLADESH                     Low birthweight                      1      788    7307  sstunted         
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight           0     2748    4010  sstunted         
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight           1      207    4010  sstunted         
24 months   JiVitA-4         BANGLADESH                     Low birthweight                      0      886    4010  sstunted         
24 months   JiVitA-4         BANGLADESH                     Low birthweight                      1      169    4010  sstunted         
24 months   Keneba           GAMBIA                         Normal or high birthweight           0      854    1056  sstunted         
24 months   Keneba           GAMBIA                         Normal or high birthweight           1       51    1056  sstunted         
24 months   Keneba           GAMBIA                         Low birthweight                      0      120    1056  sstunted         
24 months   Keneba           GAMBIA                         Low birthweight                      1       31    1056  sstunted         
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight           0      150     210  sstunted         
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight           1       15     210  sstunted         
24 months   MAL-ED           BANGLADESH                     Low birthweight                      0       33     210  sstunted         
24 months   MAL-ED           BANGLADESH                     Low birthweight                      1       12     210  sstunted         
24 months   MAL-ED           BRAZIL                         Normal or high birthweight           0      160     169  sstunted         
24 months   MAL-ED           BRAZIL                         Normal or high birthweight           1        1     169  sstunted         
24 months   MAL-ED           BRAZIL                         Low birthweight                      0        8     169  sstunted         
24 months   MAL-ED           BRAZIL                         Low birthweight                      1        0     169  sstunted         
24 months   MAL-ED           INDIA                          Normal or high birthweight           0      164     218  sstunted         
24 months   MAL-ED           INDIA                          Normal or high birthweight           1       21     218  sstunted         
24 months   MAL-ED           INDIA                          Low birthweight                      0       28     218  sstunted         
24 months   MAL-ED           INDIA                          Low birthweight                      1        5     218  sstunted         
24 months   MAL-ED           NEPAL                          Normal or high birthweight           0      198     221  sstunted         
24 months   MAL-ED           NEPAL                          Normal or high birthweight           1        5     221  sstunted         
24 months   MAL-ED           NEPAL                          Low birthweight                      0       17     221  sstunted         
24 months   MAL-ED           NEPAL                          Low birthweight                      1        1     221  sstunted         
24 months   MAL-ED           PERU                           Normal or high birthweight           0      181     199  sstunted         
24 months   MAL-ED           PERU                           Normal or high birthweight           1        6     199  sstunted         
24 months   MAL-ED           PERU                           Low birthweight                      0        4     199  sstunted         
24 months   MAL-ED           PERU                           Low birthweight                      1        8     199  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight           0      200     237  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight           1       24     237  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                      0       10     237  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                      1        3     237  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           0      112     162  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           1       42     162  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                      0        2     162  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                      1        6     162  sstunted         
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight           0      234     414  sstunted         
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight           1       44     414  sstunted         
24 months   NIH-Birth        BANGLADESH                     Low birthweight                      0       86     414  sstunted         
24 months   NIH-Birth        BANGLADESH                     Low birthweight                      1       50     414  sstunted         
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight           0      375     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight           1       13     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     Low birthweight                      0      103     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     Low birthweight                      1       23     514  sstunted         
24 months   PROBIT           BELARUS                        Normal or high birthweight           0     3970    4035  sstunted         
24 months   PROBIT           BELARUS                        Normal or high birthweight           1       65    4035  sstunted         
24 months   PROBIT           BELARUS                        Low birthweight                      0        0    4035  sstunted         
24 months   PROBIT           BELARUS                        Low birthweight                      1        0    4035  sstunted         
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight           0      411     578  sstunted         
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight           1       28     578  sstunted         
24 months   PROVIDE          BANGLADESH                     Low birthweight                      0      115     578  sstunted         
24 months   PROVIDE          BANGLADESH                     Low birthweight                      1       24     578  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           0        5       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           1        1       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                      0        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                      1        0       6  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight           0     1313    1635  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight           1      129    1635  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                      0      145    1635  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                      1       48    1635  sstunted         


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
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
