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

agecat        studyid          country                        mage       ever_sstunted   n_cell       n  outcome_variable 
------------  ---------------  -----------------------------  --------  --------------  -------  ------  -----------------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)                0      106     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)                1      190     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          <20                    0       13     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          <20                    1       21     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          >=30                   0       17     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          >=30                   1       26     373  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      [20-30)                0      354    1360  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      [20-30)                1      307    1360  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      <20                    0      111    1360  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      <20                    1       91    1360  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      >=30                   0      264    1360  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      >=30                   1      233    1360  ever_sstunted    
0-24 months   COHORTS          INDIA                          [20-30)                0     3140    5313  ever_sstunted    
0-24 months   COHORTS          INDIA                          [20-30)                1      462    5313  ever_sstunted    
0-24 months   COHORTS          INDIA                          <20                    0      368    5313  ever_sstunted    
0-24 months   COHORTS          INDIA                          <20                    1       59    5313  ever_sstunted    
0-24 months   COHORTS          INDIA                          >=30                   0     1077    5313  ever_sstunted    
0-24 months   COHORTS          INDIA                          >=30                   1      207    5313  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    [20-30)                0     1230    3058  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    [20-30)                1      597    3058  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    <20                    0      231    3058  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    <20                    1      147    3058  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    >=30                   0      508    3058  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    >=30                   1      345    3058  ever_sstunted    
0-24 months   EE               PAKISTAN                       [20-30)                0       65     377  ever_sstunted    
0-24 months   EE               PAKISTAN                       [20-30)                1       97     377  ever_sstunted    
0-24 months   EE               PAKISTAN                       <20                    0        0     377  ever_sstunted    
0-24 months   EE               PAKISTAN                       <20                    1        1     377  ever_sstunted    
0-24 months   EE               PAKISTAN                       >=30                   0       85     377  ever_sstunted    
0-24 months   EE               PAKISTAN                       >=30                   1      129     377  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          [20-30)                0      349     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          [20-30)                1       98     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          <20                    0      107     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          <20                    1       42     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          >=30                   0       73     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          >=30                   1       29     698  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)                0      144     281  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)                1       31     281  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      <20                    0       38     281  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      <20                    1        9     281  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      >=30                   0       46     281  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      >=30                   1       13     281  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)                0     1585    3178  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)                1      158    3178  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                    0      345    3178  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                    1       58    3178  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                   0      920    3178  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                   1      112    3178  ever_sstunted    
0-24 months   IRC              INDIA                          [20-30)                0      260     410  ever_sstunted    
0-24 months   IRC              INDIA                          [20-30)                1       84     410  ever_sstunted    
0-24 months   IRC              INDIA                          <20                    0       25     410  ever_sstunted    
0-24 months   IRC              INDIA                          <20                    1       12     410  ever_sstunted    
0-24 months   IRC              INDIA                          >=30                   0       23     410  ever_sstunted    
0-24 months   IRC              INDIA                          >=30                   1        6     410  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     [20-30)                0    10693   27216  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     [20-30)                1     2008   27216  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     <20                    0     9578   27216  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     <20                    1     2607   27216  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     >=30                   0     1927   27216  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     >=30                   1      403   27216  ever_sstunted    
0-24 months   Keneba           GAMBIA                         [20-30)                0     1170    2859  ever_sstunted    
0-24 months   Keneba           GAMBIA                         [20-30)                1      267    2859  ever_sstunted    
0-24 months   Keneba           GAMBIA                         <20                    0      319    2859  ever_sstunted    
0-24 months   Keneba           GAMBIA                         <20                    1       76    2859  ever_sstunted    
0-24 months   Keneba           GAMBIA                         >=30                   0      755    2859  ever_sstunted    
0-24 months   Keneba           GAMBIA                         >=30                   1      272    2859  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         [20-30)                0      292     670  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         [20-30)                1       72     670  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         <20                    0       92     670  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         <20                    1       16     670  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         >=30                   0      151     670  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         >=30                   1       47     670  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     [20-30)                0      147     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     [20-30)                1       35     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     <20                    0       29     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     <20                    1        8     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     >=30                   0       31     265  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     >=30                   1       15     265  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         [20-30)                0      124     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         [20-30)                1       15     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         <20                    0       39     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         <20                    1        4     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         >=30                   0       48     233  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         >=30                   1        3     233  ever_sstunted    
0-24 months   MAL-ED           INDIA                          [20-30)                0      148     249  ever_sstunted    
0-24 months   MAL-ED           INDIA                          [20-30)                1       46     249  ever_sstunted    
0-24 months   MAL-ED           INDIA                          <20                    0       25     249  ever_sstunted    
0-24 months   MAL-ED           INDIA                          <20                    1        9     249  ever_sstunted    
0-24 months   MAL-ED           INDIA                          >=30                   0       19     249  ever_sstunted    
0-24 months   MAL-ED           INDIA                          >=30                   1        2     249  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          [20-30)                0      173     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          [20-30)                1       16     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          <20                    0        3     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          <20                    1        2     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          >=30                   0       43     240  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          >=30                   1        3     240  ever_sstunted    
0-24 months   MAL-ED           PERU                           [20-30)                0      121     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           [20-30)                1       32     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           <20                    0       62     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           <20                    1       21     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           >=30                   0       56     303  ever_sstunted    
0-24 months   MAL-ED           PERU                           >=30                   1       11     303  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)                0      121     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)                1       40     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   <20                    0       39     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   <20                    1        9     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   >=30                   0       81     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   >=30                   1       24     314  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)                0       66     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)                1       74     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                    0        7     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                    1        9     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                   0       52     262  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                   1       54     262  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     [20-30)                0      284     627  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     [20-30)                1      138     627  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     <20                    0       55     627  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     <20                    1       18     627  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     >=30                   0       92     627  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     >=30                   1       40     627  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)                0      434     758  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)                1       60     758  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     <20                    0      113     758  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     <20                    1       23     758  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     >=30                   0      112     758  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     >=30                   1       16     758  ever_sstunted    
0-24 months   PROBIT           BELARUS                        [20-30)                0    11797   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        [20-30)                1      332   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        <20                    0     1678   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        <20                    1       67   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        >=30                   0     2955   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        >=30                   1       68   16897  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     [20-30)                0      428     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     [20-30)                1       65     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     <20                    0       71     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     <20                    1       14     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     >=30                   0      106     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     >=30                   1       16     700  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          [20-30)                0      784    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          [20-30)                1      383    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          <20                    0      134    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          <20                    1       59    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          >=30                   0      108    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          >=30                   1       65    1533  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)                0      153     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)                1      137     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          <20                    0       19     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          <20                    1       17     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          >=30                   0       45     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          >=30                   1       47     418  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)                0     1411    2376  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)                1      160    2376  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                    0      147    2376  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                    1       20    2376  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                   0      582    2376  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                   1       56    2376  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)                0     7915   14034  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)                1     1519   14034  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       <20                    0     1815   14034  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       <20                    1      428   14034  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                   0     1946   14034  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                   1      411   14034  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)                0      221     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)                1       71     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          <20                    0       24     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          <20                    1       10     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          >=30                   0       32     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          >=30                   1       10     368  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      [20-30)                0      487    1091  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      [20-30)                1       44    1091  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      <20                    0      138    1091  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      <20                    1       11    1091  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      >=30                   0      356    1091  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      >=30                   1       55    1091  ever_sstunted    
0-6 months    COHORTS          INDIA                          [20-30)                0     3314    5135  ever_sstunted    
0-6 months    COHORTS          INDIA                          [20-30)                1      169    5135  ever_sstunted    
0-6 months    COHORTS          INDIA                          <20                    0      381    5135  ever_sstunted    
0-6 months    COHORTS          INDIA                          <20                    1       22    5135  ever_sstunted    
0-6 months    COHORTS          INDIA                          >=30                   0     1192    5135  ever_sstunted    
0-6 months    COHORTS          INDIA                          >=30                   1       57    5135  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    [20-30)                0     1735    3058  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    [20-30)                1       92    3058  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    <20                    0      347    3058  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    <20                    1       31    3058  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    >=30                   0      785    3058  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    >=30                   1       68    3058  ever_sstunted    
0-6 months    EE               PAKISTAN                       [20-30)                0       94     377  ever_sstunted    
0-6 months    EE               PAKISTAN                       [20-30)                1       68     377  ever_sstunted    
0-6 months    EE               PAKISTAN                       <20                    0        0     377  ever_sstunted    
0-6 months    EE               PAKISTAN                       <20                    1        1     377  ever_sstunted    
0-6 months    EE               PAKISTAN                       >=30                   0      123     377  ever_sstunted    
0-6 months    EE               PAKISTAN                       >=30                   1       91     377  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          [20-30)                0      421     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          [20-30)                1       26     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          <20                    0      124     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          <20                    1       25     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          >=30                   0       93     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          >=30                   1        9     698  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)                0      151     264  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)                1       13     264  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      <20                    0       41     264  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      <20                    1        5     264  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      >=30                   0       48     264  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      >=30                   1        6     264  ever_sstunted    
0-6 months    IRC              INDIA                          [20-30)                0      294     410  ever_sstunted    
0-6 months    IRC              INDIA                          [20-30)                1       50     410  ever_sstunted    
0-6 months    IRC              INDIA                          <20                    0       28     410  ever_sstunted    
0-6 months    IRC              INDIA                          <20                    1        9     410  ever_sstunted    
0-6 months    IRC              INDIA                          >=30                   0       26     410  ever_sstunted    
0-6 months    IRC              INDIA                          >=30                   1        3     410  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     [20-30)                0    11166   27150  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     [20-30)                1     1512   27150  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     <20                    0     9990   27150  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     <20                    1     2155   27150  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     >=30                   0     1994   27150  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     >=30                   1      333   27150  ever_sstunted    
0-6 months    Keneba           GAMBIA                         [20-30)                0     1040    2443  ever_sstunted    
0-6 months    Keneba           GAMBIA                         [20-30)                1      132    2443  ever_sstunted    
0-6 months    Keneba           GAMBIA                         <20                    0      317    2443  ever_sstunted    
0-6 months    Keneba           GAMBIA                         <20                    1       42    2443  ever_sstunted    
0-6 months    Keneba           GAMBIA                         >=30                   0      802    2443  ever_sstunted    
0-6 months    Keneba           GAMBIA                         >=30                   1      110    2443  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         [20-30)                0      109     220  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         [20-30)                1        7     220  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         <20                    0       37     220  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         <20                    1        2     220  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         >=30                   0       61     220  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         >=30                   1        4     220  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     [20-30)                0      170     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     [20-30)                1       12     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     <20                    0       33     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     <20                    1        4     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     >=30                   0       41     265  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     >=30                   1        5     265  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         [20-30)                0      128     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         [20-30)                1       11     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         <20                    0       40     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         <20                    1        3     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         >=30                   0       48     233  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         >=30                   1        3     233  ever_sstunted    
0-6 months    MAL-ED           INDIA                          [20-30)                0      179     249  ever_sstunted    
0-6 months    MAL-ED           INDIA                          [20-30)                1       15     249  ever_sstunted    
0-6 months    MAL-ED           INDIA                          <20                    0       30     249  ever_sstunted    
0-6 months    MAL-ED           INDIA                          <20                    1        4     249  ever_sstunted    
0-6 months    MAL-ED           INDIA                          >=30                   0       21     249  ever_sstunted    
0-6 months    MAL-ED           INDIA                          >=30                   1        0     249  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          [20-30)                0      181     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          [20-30)                1        8     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          <20                    0        4     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          <20                    1        1     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          >=30                   0       45     240  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          >=30                   1        1     240  ever_sstunted    
0-6 months    MAL-ED           PERU                           [20-30)                0      136     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           [20-30)                1       17     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           <20                    0       71     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           <20                    1       12     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           >=30                   0       58     303  ever_sstunted    
0-6 months    MAL-ED           PERU                           >=30                   1        9     303  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)                0      145     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)                1       16     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   <20                    0       43     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   <20                    1        5     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   >=30                   0       97     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   >=30                   1        8     314  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)                0      119     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)                1       21     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                    0       14     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                    1        2     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                   0       91     262  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                   1       15     262  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     [20-30)                0      384     627  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     [20-30)                1       38     627  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     <20                    0       67     627  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     <20                    1        6     627  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     >=30                   0      117     627  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     >=30                   1       15     627  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)                0      469     758  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)                1       25     758  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     <20                    0      123     758  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     <20                    1       13     758  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     >=30                   0      119     758  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     >=30                   1        9     758  ever_sstunted    
0-6 months    PROBIT           BELARUS                        [20-30)                0    12000   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        [20-30)                1      127   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        <20                    0     1714   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        <20                    1       30   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        >=30                   0     2993   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        >=30                   1       28   16892  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     [20-30)                0      474     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     [20-30)                1       19     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     <20                    0       81     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     <20                    1        4     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     >=30                   0      114     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     >=30                   1        8     700  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          [20-30)                0      990    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          [20-30)                1      174    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          <20                    0      165    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          <20                    1       28    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          >=30                   0      146    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          >=30                   1       27    1530  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)                0      258     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)                1       31     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          <20                    0       31     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          <20                    1        5     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          >=30                   0       77     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          >=30                   1       14     416  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)                0     1505    2376  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)                1       66    2376  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                    0      154    2376  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                    1       13    2376  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                   0      614    2376  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                   1       24    2376  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)                0     8598   14017  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)                1      826   14017  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       <20                    0     2006   14017  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       <20                    1      233   14017  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                   0     2133   14017  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                   1      221   14017  ever_sstunted    


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
