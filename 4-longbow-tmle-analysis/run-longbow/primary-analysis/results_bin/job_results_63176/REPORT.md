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

**Intervention Variable:** mage

**Adjustment Set:**

* arm
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        mage       ever_stunted   n_cell       n  outcome_variable 
------------  ---------------  -----------------------------  --------  -------------  -------  ------  -----------------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)               0       22     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)               1      274     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          <20                   0        3     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          <20                   1       31     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          >=30                  0        3     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          >=30                  1       40     373  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      [20-30)               0      151    1360  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      [20-30)               1      510    1360  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      <20                   0       52    1360  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      <20                   1      150    1360  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      >=30                  0      118    1360  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      >=30                  1      379    1360  ever_stunted     
0-24 months   COHORTS          INDIA                          [20-30)               0     2274    5313  ever_stunted     
0-24 months   COHORTS          INDIA                          [20-30)               1     1328    5313  ever_stunted     
0-24 months   COHORTS          INDIA                          <20                   0      248    5313  ever_stunted     
0-24 months   COHORTS          INDIA                          <20                   1      179    5313  ever_stunted     
0-24 months   COHORTS          INDIA                          >=30                  0      731    5313  ever_stunted     
0-24 months   COHORTS          INDIA                          >=30                  1      553    5313  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    [20-30)               0      607    3058  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    [20-30)               1     1220    3058  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    <20                   0      103    3058  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    <20                   1      275    3058  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    >=30                  0      249    3058  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    >=30                  1      604    3058  ever_stunted     
0-24 months   EE               PAKISTAN                       [20-30)               0       20     377  ever_stunted     
0-24 months   EE               PAKISTAN                       [20-30)               1      142     377  ever_stunted     
0-24 months   EE               PAKISTAN                       <20                   0        0     377  ever_stunted     
0-24 months   EE               PAKISTAN                       <20                   1        1     377  ever_stunted     
0-24 months   EE               PAKISTAN                       >=30                  0       21     377  ever_stunted     
0-24 months   EE               PAKISTAN                       >=30                  1      193     377  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          [20-30)               0      166     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          [20-30)               1      281     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          <20                   0       47     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          <20                   1      102     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          >=30                  0       39     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          >=30                  1       63     698  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)               0       80     281  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)               1       95     281  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      <20                   0       18     281  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      <20                   1       29     281  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      >=30                  0       27     281  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      >=30                  1       32     281  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)               0     1135    3178  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)               1      608    3178  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                   0      232    3178  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                   1      171    3178  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                  0      679    3178  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                  1      353    3178  ever_stunted     
0-24 months   IRC              INDIA                          [20-30)               0      124     410  ever_stunted     
0-24 months   IRC              INDIA                          [20-30)               1      220     410  ever_stunted     
0-24 months   IRC              INDIA                          <20                   0        8     410  ever_stunted     
0-24 months   IRC              INDIA                          <20                   1       29     410  ever_stunted     
0-24 months   IRC              INDIA                          >=30                  0       15     410  ever_stunted     
0-24 months   IRC              INDIA                          >=30                  1       14     410  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     [20-30)               0     6864   27216  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     [20-30)               1     5837   27216  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     <20                   0     5643   27216  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     <20                   1     6542   27216  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     >=30                  0     1229   27216  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     >=30                  1     1101   27216  ever_stunted     
0-24 months   Keneba           GAMBIA                         [20-30)               0      732    2859  ever_stunted     
0-24 months   Keneba           GAMBIA                         [20-30)               1      705    2859  ever_stunted     
0-24 months   Keneba           GAMBIA                         <20                   0      206    2859  ever_stunted     
0-24 months   Keneba           GAMBIA                         <20                   1      189    2859  ever_stunted     
0-24 months   Keneba           GAMBIA                         >=30                  0      439    2859  ever_stunted     
0-24 months   Keneba           GAMBIA                         >=30                  1      588    2859  ever_stunted     
0-24 months   LCNI-5           MALAWI                         [20-30)               0      135     670  ever_stunted     
0-24 months   LCNI-5           MALAWI                         [20-30)               1      229     670  ever_stunted     
0-24 months   LCNI-5           MALAWI                         <20                   0       42     670  ever_stunted     
0-24 months   LCNI-5           MALAWI                         <20                   1       66     670  ever_stunted     
0-24 months   LCNI-5           MALAWI                         >=30                  0       66     670  ever_stunted     
0-24 months   LCNI-5           MALAWI                         >=30                  1      132     670  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     [20-30)               0       77     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     [20-30)               1      105     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     <20                   0        8     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     <20                   1       29     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     >=30                  0       18     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     >=30                  1       28     265  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         [20-30)               0       99     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         [20-30)               1       40     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         <20                   0       32     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         <20                   1       11     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         >=30                  0       39     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         >=30                  1       12     233  ever_stunted     
0-24 months   MAL-ED           INDIA                          [20-30)               0       75     249  ever_stunted     
0-24 months   MAL-ED           INDIA                          [20-30)               1      119     249  ever_stunted     
0-24 months   MAL-ED           INDIA                          <20                   0       13     249  ever_stunted     
0-24 months   MAL-ED           INDIA                          <20                   1       21     249  ever_stunted     
0-24 months   MAL-ED           INDIA                          >=30                  0       11     249  ever_stunted     
0-24 months   MAL-ED           INDIA                          >=30                  1       10     249  ever_stunted     
0-24 months   MAL-ED           NEPAL                          [20-30)               0      126     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          [20-30)               1       63     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          <20                   0        2     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          <20                   1        3     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          >=30                  0       28     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          >=30                  1       18     240  ever_stunted     
0-24 months   MAL-ED           PERU                           [20-30)               0       61     303  ever_stunted     
0-24 months   MAL-ED           PERU                           [20-30)               1       92     303  ever_stunted     
0-24 months   MAL-ED           PERU                           <20                   0       29     303  ever_stunted     
0-24 months   MAL-ED           PERU                           <20                   1       54     303  ever_stunted     
0-24 months   MAL-ED           PERU                           >=30                  0       25     303  ever_stunted     
0-24 months   MAL-ED           PERU                           >=30                  1       42     303  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)               0       73     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)               1       88     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   <20                   0       20     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   <20                   1       28     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   >=30                  0       45     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   >=30                  1       60     314  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)               0       21     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)               1      119     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                   0        2     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                   1       14     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                  0       17     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                  1       89     262  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     [20-30)               0      140     627  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     [20-30)               1      282     627  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     <20                   0       26     627  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     <20                   1       47     627  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     >=30                  0       45     627  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     >=30                  1       87     627  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)               0      263     758  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)               1      231     758  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     <20                   0       72     758  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     <20                   1       64     758  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     >=30                  0       61     758  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     >=30                  1       67     758  ever_stunted     
0-24 months   PROBIT           BELARUS                        [20-30)               0    10591   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        [20-30)               1     1538   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        <20                   0     1460   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        <20                   1      285   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        >=30                  0     2693   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        >=30                  1      330   16897  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     [20-30)               0      284     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     [20-30)               1      209     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     <20                   0       46     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     <20                   1       39     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     >=30                  0       65     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     >=30                  1       57     700  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          [20-30)               0      368    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          [20-30)               1      799    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          <20                   0       61    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          <20                   1      132    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          >=30                  0       44    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          >=30                  1      129    1533  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)               0       48     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)               1      242     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          <20                   0        8     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          <20                   1       28     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          >=30                  0       16     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          >=30                  1       76     418  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               0     1012    2376  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               1      559    2376  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   0      109    2376  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   1       58    2376  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      433    2376  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1      205    2376  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)               0     5588   14034  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)               1     3846   14034  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       <20                   0     1231   14034  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       <20                   1     1012   14034  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                  0     1360   14034  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                  1      997   14034  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)               0      139     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)               1      153     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          <20                   0       17     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          <20                   1       17     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          >=30                  0       24     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          >=30                  1       18     368  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      [20-30)               0      372    1091  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      [20-30)               1      159    1091  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      <20                   0      100    1091  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      <20                   1       49    1091  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      >=30                  0      264    1091  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      >=30                  1      147    1091  ever_stunted     
0-6 months    COHORTS          INDIA                          [20-30)               0     2841    5135  ever_stunted     
0-6 months    COHORTS          INDIA                          [20-30)               1      642    5135  ever_stunted     
0-6 months    COHORTS          INDIA                          <20                   0      308    5135  ever_stunted     
0-6 months    COHORTS          INDIA                          <20                   1       95    5135  ever_stunted     
0-6 months    COHORTS          INDIA                          >=30                  0     1009    5135  ever_stunted     
0-6 months    COHORTS          INDIA                          >=30                  1      240    5135  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    [20-30)               0     1440    3058  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    [20-30)               1      387    3058  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    <20                   0      265    3058  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    <20                   1      113    3058  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    >=30                  0      622    3058  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    >=30                  1      231    3058  ever_stunted     
0-6 months    EE               PAKISTAN                       [20-30)               0       43     377  ever_stunted     
0-6 months    EE               PAKISTAN                       [20-30)               1      119     377  ever_stunted     
0-6 months    EE               PAKISTAN                       <20                   0        0     377  ever_stunted     
0-6 months    EE               PAKISTAN                       <20                   1        1     377  ever_stunted     
0-6 months    EE               PAKISTAN                       >=30                  0       52     377  ever_stunted     
0-6 months    EE               PAKISTAN                       >=30                  1      162     377  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          [20-30)               0      323     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          [20-30)               1      124     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          <20                   0       81     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          <20                   1       68     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          >=30                  0       72     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          >=30                  1       30     698  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)               0      118     264  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)               1       46     264  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      <20                   0       25     264  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      <20                   1       21     264  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      >=30                  0       37     264  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      >=30                  1       17     264  ever_stunted     
0-6 months    IRC              INDIA                          [20-30)               0      200     410  ever_stunted     
0-6 months    IRC              INDIA                          [20-30)               1      144     410  ever_stunted     
0-6 months    IRC              INDIA                          <20                   0       17     410  ever_stunted     
0-6 months    IRC              INDIA                          <20                   1       20     410  ever_stunted     
0-6 months    IRC              INDIA                          >=30                  0       19     410  ever_stunted     
0-6 months    IRC              INDIA                          >=30                  1       10     410  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     [20-30)               0     7952   27150  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     [20-30)               1     4726   27150  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     <20                   0     6583   27150  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     <20                   1     5562   27150  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     >=30                  0     1403   27150  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     >=30                  1      924   27150  ever_stunted     
0-6 months    Keneba           GAMBIA                         [20-30)               0      814    2443  ever_stunted     
0-6 months    Keneba           GAMBIA                         [20-30)               1      358    2443  ever_stunted     
0-6 months    Keneba           GAMBIA                         <20                   0      252    2443  ever_stunted     
0-6 months    Keneba           GAMBIA                         <20                   1      107    2443  ever_stunted     
0-6 months    Keneba           GAMBIA                         >=30                  0      613    2443  ever_stunted     
0-6 months    Keneba           GAMBIA                         >=30                  1      299    2443  ever_stunted     
0-6 months    LCNI-5           MALAWI                         [20-30)               0       71     220  ever_stunted     
0-6 months    LCNI-5           MALAWI                         [20-30)               1       45     220  ever_stunted     
0-6 months    LCNI-5           MALAWI                         <20                   0       29     220  ever_stunted     
0-6 months    LCNI-5           MALAWI                         <20                   1       10     220  ever_stunted     
0-6 months    LCNI-5           MALAWI                         >=30                  0       42     220  ever_stunted     
0-6 months    LCNI-5           MALAWI                         >=30                  1       23     220  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     [20-30)               0      122     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     [20-30)               1       60     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     <20                   0       22     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     <20                   1       15     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     >=30                  0       26     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     >=30                  1       20     265  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         [20-30)               0      104     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         [20-30)               1       35     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         <20                   0       36     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         <20                   1        7     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         >=30                  0       41     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         >=30                  1       10     233  ever_stunted     
0-6 months    MAL-ED           INDIA                          [20-30)               0      126     249  ever_stunted     
0-6 months    MAL-ED           INDIA                          [20-30)               1       68     249  ever_stunted     
0-6 months    MAL-ED           INDIA                          <20                   0       20     249  ever_stunted     
0-6 months    MAL-ED           INDIA                          <20                   1       14     249  ever_stunted     
0-6 months    MAL-ED           INDIA                          >=30                  0       18     249  ever_stunted     
0-6 months    MAL-ED           INDIA                          >=30                  1        3     249  ever_stunted     
0-6 months    MAL-ED           NEPAL                          [20-30)               0      157     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          [20-30)               1       32     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          <20                   0        2     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          <20                   1        3     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          >=30                  0       38     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          >=30                  1        8     240  ever_stunted     
0-6 months    MAL-ED           PERU                           [20-30)               0       88     303  ever_stunted     
0-6 months    MAL-ED           PERU                           [20-30)               1       65     303  ever_stunted     
0-6 months    MAL-ED           PERU                           <20                   0       47     303  ever_stunted     
0-6 months    MAL-ED           PERU                           <20                   1       36     303  ever_stunted     
0-6 months    MAL-ED           PERU                           >=30                  0       39     303  ever_stunted     
0-6 months    MAL-ED           PERU                           >=30                  1       28     303  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)               0      103     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)               1       58     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   <20                   0       28     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   <20                   1       20     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   >=30                  0       67     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   >=30                  1       38     314  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)               0       75     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)               1       65     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                   0       11     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                   1        5     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                  0       67     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                  1       39     262  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     [20-30)               0      264     627  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     [20-30)               1      158     627  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     <20                   0       56     627  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     <20                   1       17     627  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     >=30                  0       89     627  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     >=30                  1       43     627  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)               0      347     758  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)               1      147     758  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     <20                   0       90     758  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     <20                   1       46     758  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     >=30                  0       92     758  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     >=30                  1       36     758  ever_stunted     
0-6 months    PROBIT           BELARUS                        [20-30)               0    11319   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        [20-30)               1      808   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        <20                   0     1577   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        <20                   1      167   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        >=30                  0     2837   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        >=30                  1      184   16892  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     [20-30)               0      379     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     [20-30)               1      114     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     <20                   0       61     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     <20                   1       24     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     >=30                  0       92     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     >=30                  1       30     700  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          [20-30)               0      674    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          [20-30)               1      490    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          <20                   0      109    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          <20                   1       84    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          >=30                  0       96    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          >=30                  1       77    1530  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)               0      171     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)               1      118     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          <20                   0       20     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          <20                   1       16     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          >=30                  0       63     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          >=30                  1       28     416  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               0     1250    2376  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               1      321    2376  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   0      134    2376  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   1       33    2376  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      530    2376  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1      108    2376  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)               0     7025   14017  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)               1     2399   14017  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       <20                   0     1612   14017  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       <20                   1      627   14017  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                  0     1753   14017  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                  1      601   14017  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          [20-30)               0       22     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          [20-30)               1      121     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          <20                   0        3     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          <20                   1       14     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          >=30                  0        3     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          >=30                  1       22     185  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      [20-30)               0       94     895  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      [20-30)               1      351     895  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      <20                   0       30     895  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      <20                   1      101     895  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      >=30                  0       87     895  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      >=30                  1      232     895  ever_stunted     
6-24 months   COHORTS          INDIA                          [20-30)               0     2088    4062  ever_stunted     
6-24 months   COHORTS          INDIA                          [20-30)               1      686    4062  ever_stunted     
6-24 months   COHORTS          INDIA                          <20                   0      209    4062  ever_stunted     
6-24 months   COHORTS          INDIA                          <20                   1       84    4062  ever_stunted     
6-24 months   COHORTS          INDIA                          >=30                  0      682    4062  ever_stunted     
6-24 months   COHORTS          INDIA                          >=30                  1      313    4062  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    [20-30)               0      480    2121  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    [20-30)               1      833    2121  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    <20                   0       75    2121  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    <20                   1      162    2121  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    >=30                  0      198    2121  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    >=30                  1      373    2121  ever_stunted     
6-24 months   EE               PAKISTAN                       [20-30)               0       19      93  ever_stunted     
6-24 months   EE               PAKISTAN                       [20-30)               1       23      93  ever_stunted     
6-24 months   EE               PAKISTAN                       <20                   0        0      93  ever_stunted     
6-24 months   EE               PAKISTAN                       <20                   1        0      93  ever_stunted     
6-24 months   EE               PAKISTAN                       >=30                  0       20      93  ever_stunted     
6-24 months   EE               PAKISTAN                       >=30                  1       31      93  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          [20-30)               0      112     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          [20-30)               1      157     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          <20                   0       33     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          <20                   1       34     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          >=30                  0       28     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          >=30                  1       33     397  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      [20-30)               0       72     184  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      [20-30)               1       49     184  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      <20                   0       15     184  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      <20                   1        8     184  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      >=30                  0       25     184  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      >=30                  1       15     184  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)               0     1135    3178  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)               1      608    3178  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   <20                   0      232    3178  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   <20                   1      171    3178  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                  0      679    3178  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                  1      353    3178  ever_stunted     
6-24 months   IRC              INDIA                          [20-30)               0      124     236  ever_stunted     
6-24 months   IRC              INDIA                          [20-30)               1       76     236  ever_stunted     
6-24 months   IRC              INDIA                          <20                   0        8     236  ever_stunted     
6-24 months   IRC              INDIA                          <20                   1        9     236  ever_stunted     
6-24 months   IRC              INDIA                          >=30                  0       15     236  ever_stunted     
6-24 months   IRC              INDIA                          >=30                  1        4     236  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     [20-30)               0     3995   10488  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     [20-30)               1     1111   10488  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     <20                   0     3635   10488  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     <20                   1      980   10488  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     >=30                  0      590   10488  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     >=30                  1      177   10488  ever_stunted     
6-24 months   Keneba           GAMBIA                         [20-30)               0      657    1972  ever_stunted     
6-24 months   Keneba           GAMBIA                         [20-30)               1      347    1972  ever_stunted     
6-24 months   Keneba           GAMBIA                         <20                   0      185    1972  ever_stunted     
6-24 months   Keneba           GAMBIA                         <20                   1       82    1972  ever_stunted     
6-24 months   Keneba           GAMBIA                         >=30                  0      412    1972  ever_stunted     
6-24 months   Keneba           GAMBIA                         >=30                  1      289    1972  ever_stunted     
6-24 months   LCNI-5           MALAWI                         [20-30)               0      128     581  ever_stunted     
6-24 months   LCNI-5           MALAWI                         [20-30)               1      184     581  ever_stunted     
6-24 months   LCNI-5           MALAWI                         <20                   0       40     581  ever_stunted     
6-24 months   LCNI-5           MALAWI                         <20                   1       56     581  ever_stunted     
6-24 months   LCNI-5           MALAWI                         >=30                  0       64     581  ever_stunted     
6-24 months   LCNI-5           MALAWI                         >=30                  1      109     581  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     [20-30)               0       67     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     [20-30)               1       45     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     <20                   0        7     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     <20                   1       14     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     >=30                  0       17     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     >=30                  1        8     158  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         [20-30)               0       90     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         [20-30)               1        5     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         <20                   0       26     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         <20                   1        4     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         >=30                  0       36     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         >=30                  1        2     163  ever_stunted     
6-24 months   MAL-ED           INDIA                          [20-30)               0       65     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          [20-30)               1       51     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          <20                   0       13     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          <20                   1        7     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          >=30                  0       11     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          >=30                  1        7     154  ever_stunted     
6-24 months   MAL-ED           NEPAL                          [20-30)               0      123     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          [20-30)               1       31     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          <20                   0        2     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          <20                   1        0     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          >=30                  0       28     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          >=30                  1       10     194  ever_stunted     
6-24 months   MAL-ED           PERU                           [20-30)               0       46     149  ever_stunted     
6-24 months   MAL-ED           PERU                           [20-30)               1       27     149  ever_stunted     
6-24 months   MAL-ED           PERU                           <20                   0       24     149  ever_stunted     
6-24 months   MAL-ED           PERU                           <20                   1       18     149  ever_stunted     
6-24 months   MAL-ED           PERU                           >=30                  0       20     149  ever_stunted     
6-24 months   MAL-ED           PERU                           >=30                  1       14     149  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)               0       46     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)               1       30     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   <20                   0       14     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   <20                   1        8     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   >=30                  0       38     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   >=30                  1       22     158  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)               0       15     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)               1       54     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                   0        0     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                   1        9     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                  0       16     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                  1       50     144  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     [20-30)               0       95     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     [20-30)               1      124     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     <20                   0       16     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     <20                   1       30     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     >=30                  0       36     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     >=30                  1       44     345  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)               0      246     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)               1       84     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     <20                   0       70     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     <20                   1       18     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     >=30                  0       57     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     >=30                  1       31     506  ever_stunted     
6-24 months   PROBIT           BELARUS                        [20-30)               0    10376   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        [20-30)               1      730   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        <20                   0     1433   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        <20                   1      118   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        >=30                  0     2664   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        >=30                  1      146   15467  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     [20-30)               0      235     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     [20-30)               1       95     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     <20                   0       29     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     <20                   1       15     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     >=30                  0       55     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     >=30                  1       27     456  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          [20-30)               0      313     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          [20-30)               1      309     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          <20                   0       55     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          <20                   1       48     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          >=30                  0       36     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          >=30                  1       52     813  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)               0       40     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)               1      124     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          <20                   0        8     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          <20                   1       12     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          >=30                  0       11     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          >=30                  1       48     243  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               0      783    1591  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               1      238    1591  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   0       90    1591  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   1       25    1591  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      358    1591  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1       97    1591  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)               0     4259    8476  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)               1     1447    8476  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       <20                   0      900    8476  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       <20                   1      385    8476  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       >=30                  0     1089    8476  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       >=30                  1      396    8476  ever_stunted     


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
