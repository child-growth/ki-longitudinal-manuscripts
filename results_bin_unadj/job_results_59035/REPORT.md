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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** birthlen

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        birthlen      wasted   n_cell       n
----------  ---------------  -----------------------------  -----------  -------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm            0       12      86
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm            1        1      86
Birth       CMC-V-BCS-2002   INDIA                          <48 cm             0       27      86
Birth       CMC-V-BCS-2002   INDIA                          <48 cm             1        6      86
Birth       CMC-V-BCS-2002   INDIA                          [48-50) cm         0       36      86
Birth       CMC-V-BCS-2002   INDIA                          [48-50) cm         1        4      86
Birth       CMIN             BANGLADESH                     >=50 cm            0        1      19
Birth       CMIN             BANGLADESH                     >=50 cm            1        1      19
Birth       CMIN             BANGLADESH                     <48 cm             0        6      19
Birth       CMIN             BANGLADESH                     <48 cm             1        3      19
Birth       CMIN             BANGLADESH                     [48-50) cm         0        8      19
Birth       CMIN             BANGLADESH                     [48-50) cm         1        0      19
Birth       COHORTS          GUATEMALA                      >=50 cm            0      260     756
Birth       COHORTS          GUATEMALA                      >=50 cm            1      136     756
Birth       COHORTS          GUATEMALA                      <48 cm             0      120     756
Birth       COHORTS          GUATEMALA                      <48 cm             1       12     756
Birth       COHORTS          GUATEMALA                      [48-50) cm         0      184     756
Birth       COHORTS          GUATEMALA                      [48-50) cm         1       44     756
Birth       COHORTS          INDIA                          >=50 cm            0     1102    6193
Birth       COHORTS          INDIA                          >=50 cm            1      302    6193
Birth       COHORTS          INDIA                          <48 cm             0     1992    6193
Birth       COHORTS          INDIA                          <48 cm             1      362    6193
Birth       COHORTS          INDIA                          [48-50) cm         0     2003    6193
Birth       COHORTS          INDIA                          [48-50) cm         1      432    6193
Birth       COHORTS          PHILIPPINES                    >=50 cm            0      864    2899
Birth       COHORTS          PHILIPPINES                    >=50 cm            1      246    2899
Birth       COHORTS          PHILIPPINES                    <48 cm             0      571    2899
Birth       COHORTS          PHILIPPINES                    <48 cm             1       80    2899
Birth       COHORTS          PHILIPPINES                    [48-50) cm         0     1013    2899
Birth       COHORTS          PHILIPPINES                    [48-50) cm         1      125    2899
Birth       CONTENT          PERU                           >=50 cm            0        1       2
Birth       CONTENT          PERU                           >=50 cm            1        0       2
Birth       CONTENT          PERU                           <48 cm             0        1       2
Birth       CONTENT          PERU                           <48 cm             1        0       2
Birth       CONTENT          PERU                           [48-50) cm         0        0       2
Birth       CONTENT          PERU                           [48-50) cm         1        0       2
Birth       EE               PAKISTAN                       >=50 cm            0       17     177
Birth       EE               PAKISTAN                       >=50 cm            1        4     177
Birth       EE               PAKISTAN                       <48 cm             0       92     177
Birth       EE               PAKISTAN                       <48 cm             1       10     177
Birth       EE               PAKISTAN                       [48-50) cm         0       46     177
Birth       EE               PAKISTAN                       [48-50) cm         1        8     177
Birth       GMS-Nepal        NEPAL                          >=50 cm            0       84     641
Birth       GMS-Nepal        NEPAL                          >=50 cm            1       30     641
Birth       GMS-Nepal        NEPAL                          <48 cm             0      262     641
Birth       GMS-Nepal        NEPAL                          <48 cm             1       57     641
Birth       GMS-Nepal        NEPAL                          [48-50) cm         0      163     641
Birth       GMS-Nepal        NEPAL                          [48-50) cm         1       45     641
Birth       IRC              INDIA                          >=50 cm            0       61     343
Birth       IRC              INDIA                          >=50 cm            1       59     343
Birth       IRC              INDIA                          <48 cm             0       75     343
Birth       IRC              INDIA                          <48 cm             1       12     343
Birth       IRC              INDIA                          [48-50) cm         0      115     343
Birth       IRC              INDIA                          [48-50) cm         1       21     343
Birth       JiVitA-3         BANGLADESH                     >=50 cm            0     1055   18014
Birth       JiVitA-3         BANGLADESH                     >=50 cm            1      188   18014
Birth       JiVitA-3         BANGLADESH                     <48 cm             0    10477   18014
Birth       JiVitA-3         BANGLADESH                     <48 cm             1     1215   18014
Birth       JiVitA-3         BANGLADESH                     [48-50) cm         0     4509   18014
Birth       JiVitA-3         BANGLADESH                     [48-50) cm         1      570   18014
Birth       JiVitA-4         BANGLADESH                     >=50 cm            0      150    2396
Birth       JiVitA-4         BANGLADESH                     >=50 cm            1       28    2396
Birth       JiVitA-4         BANGLADESH                     <48 cm             0     1350    2396
Birth       JiVitA-4         BANGLADESH                     <48 cm             1      137    2396
Birth       JiVitA-4         BANGLADESH                     [48-50) cm         0      657    2396
Birth       JiVitA-4         BANGLADESH                     [48-50) cm         1       74    2396
Birth       Keneba           GAMBIA                         >=50 cm            0      491    1465
Birth       Keneba           GAMBIA                         >=50 cm            1      245    1465
Birth       Keneba           GAMBIA                         <48 cm             0      208    1465
Birth       Keneba           GAMBIA                         <48 cm             1       32    1465
Birth       Keneba           GAMBIA                         [48-50) cm         0      403    1465
Birth       Keneba           GAMBIA                         [48-50) cm         1       86    1465
Birth       MAL-ED           BANGLADESH                     >=50 cm            0       30     215
Birth       MAL-ED           BANGLADESH                     >=50 cm            1        9     215
Birth       MAL-ED           BANGLADESH                     <48 cm             0       81     215
Birth       MAL-ED           BANGLADESH                     <48 cm             1       16     215
Birth       MAL-ED           BANGLADESH                     [48-50) cm         0       68     215
Birth       MAL-ED           BANGLADESH                     [48-50) cm         1       11     215
Birth       MAL-ED           BRAZIL                         >=50 cm            0       30      62
Birth       MAL-ED           BRAZIL                         >=50 cm            1        0      62
Birth       MAL-ED           BRAZIL                         <48 cm             0       13      62
Birth       MAL-ED           BRAZIL                         <48 cm             1        1      62
Birth       MAL-ED           BRAZIL                         [48-50) cm         0       17      62
Birth       MAL-ED           BRAZIL                         [48-50) cm         1        1      62
Birth       MAL-ED           INDIA                          >=50 cm            0        8      45
Birth       MAL-ED           INDIA                          >=50 cm            1        1      45
Birth       MAL-ED           INDIA                          <48 cm             0       16      45
Birth       MAL-ED           INDIA                          <48 cm             1        2      45
Birth       MAL-ED           INDIA                          [48-50) cm         0       16      45
Birth       MAL-ED           INDIA                          [48-50) cm         1        2      45
Birth       MAL-ED           NEPAL                          >=50 cm            0        8      26
Birth       MAL-ED           NEPAL                          >=50 cm            1        0      26
Birth       MAL-ED           NEPAL                          <48 cm             0        9      26
Birth       MAL-ED           NEPAL                          <48 cm             1        2      26
Birth       MAL-ED           NEPAL                          [48-50) cm         0        7      26
Birth       MAL-ED           NEPAL                          [48-50) cm         1        0      26
Birth       MAL-ED           PERU                           >=50 cm            0       51     228
Birth       MAL-ED           PERU                           >=50 cm            1        1     228
Birth       MAL-ED           PERU                           <48 cm             0       81     228
Birth       MAL-ED           PERU                           <48 cm             1        2     228
Birth       MAL-ED           PERU                           [48-50) cm         0       91     228
Birth       MAL-ED           PERU                           [48-50) cm         1        2     228
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm            0       37     120
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm            1        6     120
Birth       MAL-ED           SOUTH AFRICA                   <48 cm             0       30     120
Birth       MAL-ED           SOUTH AFRICA                   <48 cm             1        1     120
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm         0       41     120
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm         1        5     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm            0       32     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm            1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm             0       31     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm             1        1     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm         0       51     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm         1        0     115
Birth       NIH-Birth        BANGLADESH                     >=50 cm            0       91     575
Birth       NIH-Birth        BANGLADESH                     >=50 cm            1       45     575
Birth       NIH-Birth        BANGLADESH                     <48 cm             0      147     575
Birth       NIH-Birth        BANGLADESH                     <48 cm             1       64     575
Birth       NIH-Birth        BANGLADESH                     [48-50) cm         0      169     575
Birth       NIH-Birth        BANGLADESH                     [48-50) cm         1       59     575
Birth       NIH-Crypto       BANGLADESH                     >=50 cm            0      115     707
Birth       NIH-Crypto       BANGLADESH                     >=50 cm            1       45     707
Birth       NIH-Crypto       BANGLADESH                     <48 cm             0      208     707
Birth       NIH-Crypto       BANGLADESH                     <48 cm             1       59     707
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm         0      212     707
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm         1       68     707
Birth       PROBIT           BELARUS                        >=50 cm            0     9742   13817
Birth       PROBIT           BELARUS                        >=50 cm            1     2815   13817
Birth       PROBIT           BELARUS                        <48 cm             0      140   13817
Birth       PROBIT           BELARUS                        <48 cm             1        0   13817
Birth       PROBIT           BELARUS                        [48-50) cm         0     1029   13817
Birth       PROBIT           BELARUS                        [48-50) cm         1       91   13817
Birth       PROVIDE          BANGLADESH                     >=50 cm            0       92     532
Birth       PROVIDE          BANGLADESH                     >=50 cm            1       29     532
Birth       PROVIDE          BANGLADESH                     <48 cm             0      141     532
Birth       PROVIDE          BANGLADESH                     <48 cm             1       48     532
Birth       PROVIDE          BANGLADESH                     [48-50) cm         0      182     532
Birth       PROVIDE          BANGLADESH                     [48-50) cm         1       40     532
Birth       ResPak           PAKISTAN                       >=50 cm            0       10      38
Birth       ResPak           PAKISTAN                       >=50 cm            1        2      38
Birth       ResPak           PAKISTAN                       <48 cm             0       10      38
Birth       ResPak           PAKISTAN                       <48 cm             1        2      38
Birth       ResPak           PAKISTAN                       [48-50) cm         0       14      38
Birth       ResPak           PAKISTAN                       [48-50) cm         1        0      38
Birth       SAS-CompFeed     INDIA                          >=50 cm            0      102    1103
Birth       SAS-CompFeed     INDIA                          >=50 cm            1       14    1103
Birth       SAS-CompFeed     INDIA                          <48 cm             0      522    1103
Birth       SAS-CompFeed     INDIA                          <48 cm             1       68    1103
Birth       SAS-CompFeed     INDIA                          [48-50) cm         0      361    1103
Birth       SAS-CompFeed     INDIA                          [48-50) cm         1       36    1103
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm            0     3006   12917
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm            1      991   12917
Birth       ZVITAMBO         ZIMBABWE                       <48 cm             0     3276   12917
Birth       ZVITAMBO         ZIMBABWE                       <48 cm             1      365   12917
Birth       ZVITAMBO         ZIMBABWE                       [48-50) cm         0     4574   12917
Birth       ZVITAMBO         ZIMBABWE                       [48-50) cm         1      705   12917
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm            0       15     105
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm            1        1     105
6 months    CMC-V-BCS-2002   INDIA                          <48 cm             0       41     105
6 months    CMC-V-BCS-2002   INDIA                          <48 cm             1        8     105
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm         0       36     105
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm         1        4     105
6 months    CMIN             BANGLADESH                     >=50 cm            0        0      12
6 months    CMIN             BANGLADESH                     >=50 cm            1        0      12
6 months    CMIN             BANGLADESH                     <48 cm             0        6      12
6 months    CMIN             BANGLADESH                     <48 cm             1        0      12
6 months    CMIN             BANGLADESH                     [48-50) cm         0        5      12
6 months    CMIN             BANGLADESH                     [48-50) cm         1        1      12
6 months    COHORTS          GUATEMALA                      >=50 cm            0      343     689
6 months    COHORTS          GUATEMALA                      >=50 cm            1        8     689
6 months    COHORTS          GUATEMALA                      <48 cm             0      130     689
6 months    COHORTS          GUATEMALA                      <48 cm             1        4     689
6 months    COHORTS          GUATEMALA                      [48-50) cm         0      194     689
6 months    COHORTS          GUATEMALA                      [48-50) cm         1       10     689
6 months    COHORTS          INDIA                          >=50 cm            0     1213    6127
6 months    COHORTS          INDIA                          >=50 cm            1      116    6127
6 months    COHORTS          INDIA                          <48 cm             0     2121    6127
6 months    COHORTS          INDIA                          <48 cm             1      406    6127
6 months    COHORTS          INDIA                          [48-50) cm         0     2003    6127
6 months    COHORTS          INDIA                          [48-50) cm         1      268    6127
6 months    COHORTS          PHILIPPINES                    >=50 cm            0      944    2699
6 months    COHORTS          PHILIPPINES                    >=50 cm            1       45    2699
6 months    COHORTS          PHILIPPINES                    <48 cm             0      633    2699
6 months    COHORTS          PHILIPPINES                    <48 cm             1       44    2699
6 months    COHORTS          PHILIPPINES                    [48-50) cm         0      962    2699
6 months    COHORTS          PHILIPPINES                    [48-50) cm         1       71    2699
6 months    CONTENT          PERU                           >=50 cm            0        1       2
6 months    CONTENT          PERU                           >=50 cm            1        0       2
6 months    CONTENT          PERU                           <48 cm             0        1       2
6 months    CONTENT          PERU                           <48 cm             1        0       2
6 months    CONTENT          PERU                           [48-50) cm         0        0       2
6 months    CONTENT          PERU                           [48-50) cm         1        0       2
6 months    EE               PAKISTAN                       >=50 cm            0       21     238
6 months    EE               PAKISTAN                       >=50 cm            1        3     238
6 months    EE               PAKISTAN                       <48 cm             0      140     238
6 months    EE               PAKISTAN                       <48 cm             1       22     238
6 months    EE               PAKISTAN                       [48-50) cm         0       47     238
6 months    EE               PAKISTAN                       [48-50) cm         1        5     238
6 months    GMS-Nepal        NEPAL                          >=50 cm            0       89     563
6 months    GMS-Nepal        NEPAL                          >=50 cm            1        7     563
6 months    GMS-Nepal        NEPAL                          <48 cm             0      268     563
6 months    GMS-Nepal        NEPAL                          <48 cm             1       28     563
6 months    GMS-Nepal        NEPAL                          [48-50) cm         0      155     563
6 months    GMS-Nepal        NEPAL                          [48-50) cm         1       16     563
6 months    IRC              INDIA                          >=50 cm            0      118     389
6 months    IRC              INDIA                          >=50 cm            1       23     389
6 months    IRC              INDIA                          <48 cm             0       98     389
6 months    IRC              INDIA                          <48 cm             1       12     389
6 months    IRC              INDIA                          [48-50) cm         0      120     389
6 months    IRC              INDIA                          [48-50) cm         1       18     389
6 months    JiVitA-3         BANGLADESH                     >=50 cm            0      768   13899
6 months    JiVitA-3         BANGLADESH                     >=50 cm            1       58   13899
6 months    JiVitA-3         BANGLADESH                     <48 cm             0     8912   13899
6 months    JiVitA-3         BANGLADESH                     <48 cm             1      894   13899
6 months    JiVitA-3         BANGLADESH                     [48-50) cm         0     3025   13899
6 months    JiVitA-3         BANGLADESH                     [48-50) cm         1      242   13899
6 months    JiVitA-4         BANGLADESH                     >=50 cm            0     1049    4024
6 months    JiVitA-4         BANGLADESH                     >=50 cm            1       52    4024
6 months    JiVitA-4         BANGLADESH                     <48 cm             0     1815    4024
6 months    JiVitA-4         BANGLADESH                     <48 cm             1      112    4024
6 months    JiVitA-4         BANGLADESH                     [48-50) cm         0      946    4024
6 months    JiVitA-4         BANGLADESH                     [48-50) cm         1       50    4024
6 months    Keneba           GAMBIA                         >=50 cm            0      653    1347
6 months    Keneba           GAMBIA                         >=50 cm            1       24    1347
6 months    Keneba           GAMBIA                         <48 cm             0      221    1347
6 months    Keneba           GAMBIA                         <48 cm             1       13    1347
6 months    Keneba           GAMBIA                         [48-50) cm         0      399    1347
6 months    Keneba           GAMBIA                         [48-50) cm         1       37    1347
6 months    MAL-ED           BANGLADESH                     >=50 cm            0       37     211
6 months    MAL-ED           BANGLADESH                     >=50 cm            1        2     211
6 months    MAL-ED           BANGLADESH                     <48 cm             0       95     211
6 months    MAL-ED           BANGLADESH                     <48 cm             1        3     211
6 months    MAL-ED           BANGLADESH                     [48-50) cm         0       72     211
6 months    MAL-ED           BANGLADESH                     [48-50) cm         1        2     211
6 months    MAL-ED           BRAZIL                         >=50 cm            0       28      59
6 months    MAL-ED           BRAZIL                         >=50 cm            1        0      59
6 months    MAL-ED           BRAZIL                         <48 cm             0       15      59
6 months    MAL-ED           BRAZIL                         <48 cm             1        0      59
6 months    MAL-ED           BRAZIL                         [48-50) cm         0       16      59
6 months    MAL-ED           BRAZIL                         [48-50) cm         1        0      59
6 months    MAL-ED           INDIA                          >=50 cm            0        7      41
6 months    MAL-ED           INDIA                          >=50 cm            1        1      41
6 months    MAL-ED           INDIA                          <48 cm             0       17      41
6 months    MAL-ED           INDIA                          <48 cm             1        1      41
6 months    MAL-ED           INDIA                          [48-50) cm         0       14      41
6 months    MAL-ED           INDIA                          [48-50) cm         1        1      41
6 months    MAL-ED           NEPAL                          >=50 cm            0        7      26
6 months    MAL-ED           NEPAL                          >=50 cm            1        1      26
6 months    MAL-ED           NEPAL                          <48 cm             0       11      26
6 months    MAL-ED           NEPAL                          <48 cm             1        0      26
6 months    MAL-ED           NEPAL                          [48-50) cm         0        7      26
6 months    MAL-ED           NEPAL                          [48-50) cm         1        0      26
6 months    MAL-ED           PERU                           >=50 cm            0       48     215
6 months    MAL-ED           PERU                           >=50 cm            1        0     215
6 months    MAL-ED           PERU                           <48 cm             0       84     215
6 months    MAL-ED           PERU                           <48 cm             1        0     215
6 months    MAL-ED           PERU                           [48-50) cm         0       83     215
6 months    MAL-ED           PERU                           [48-50) cm         1        0     215
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm            0       33      93
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm            1        1      93
6 months    MAL-ED           SOUTH AFRICA                   <48 cm             0       20      93
6 months    MAL-ED           SOUTH AFRICA                   <48 cm             1        1      93
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm         0       34      93
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm         1        4      93
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm            0       31     118
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm            1        0     118
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm             0       39     118
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm             1        0     118
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm         0       48     118
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm         1        0     118
6 months    NIH-Birth        BANGLADESH                     >=50 cm            0      113     518
6 months    NIH-Birth        BANGLADESH                     >=50 cm            1        7     518
6 months    NIH-Birth        BANGLADESH                     <48 cm             0      182     518
6 months    NIH-Birth        BANGLADESH                     <48 cm             1       17     518
6 months    NIH-Birth        BANGLADESH                     [48-50) cm         0      188     518
6 months    NIH-Birth        BANGLADESH                     [48-50) cm         1       11     518
6 months    NIH-Crypto       BANGLADESH                     >=50 cm            0      161     715
6 months    NIH-Crypto       BANGLADESH                     >=50 cm            1        3     715
6 months    NIH-Crypto       BANGLADESH                     <48 cm             0      260     715
6 months    NIH-Crypto       BANGLADESH                     <48 cm             1       10     715
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm         0      273     715
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm         1        8     715
6 months    PROBIT           BELARUS                        >=50 cm            0    14198   15757
6 months    PROBIT           BELARUS                        >=50 cm            1       94   15757
6 months    PROBIT           BELARUS                        <48 cm             0      171   15757
6 months    PROBIT           BELARUS                        <48 cm             1        1   15757
6 months    PROBIT           BELARUS                        [48-50) cm         0     1280   15757
6 months    PROBIT           BELARUS                        [48-50) cm         1       13   15757
6 months    PROVIDE          BANGLADESH                     >=50 cm            0      141     603
6 months    PROVIDE          BANGLADESH                     >=50 cm            1        2     603
6 months    PROVIDE          BANGLADESH                     <48 cm             0      197     603
6 months    PROVIDE          BANGLADESH                     <48 cm             1       16     603
6 months    PROVIDE          BANGLADESH                     [48-50) cm         0      240     603
6 months    PROVIDE          BANGLADESH                     [48-50) cm         1        7     603
6 months    ResPak           PAKISTAN                       >=50 cm            0       10      34
6 months    ResPak           PAKISTAN                       >=50 cm            1        0      34
6 months    ResPak           PAKISTAN                       <48 cm             0       13      34
6 months    ResPak           PAKISTAN                       <48 cm             1        0      34
6 months    ResPak           PAKISTAN                       [48-50) cm         0        9      34
6 months    ResPak           PAKISTAN                       [48-50) cm         1        2      34
6 months    SAS-CompFeed     INDIA                          >=50 cm            0      176    1322
6 months    SAS-CompFeed     INDIA                          >=50 cm            1       20    1322
6 months    SAS-CompFeed     INDIA                          <48 cm             0      594    1322
6 months    SAS-CompFeed     INDIA                          <48 cm             1      114    1322
6 months    SAS-CompFeed     INDIA                          [48-50) cm         0      388    1322
6 months    SAS-CompFeed     INDIA                          [48-50) cm         1       30    1322
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm            0     2398    8413
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm            1       63    8413
6 months    ZVITAMBO         ZIMBABWE                       <48 cm             0     2575    8413
6 months    ZVITAMBO         ZIMBABWE                       <48 cm             1       82    8413
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm         0     3178    8413
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm         1      117    8413
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm            0       16     106
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm            1        0     106
24 months   CMC-V-BCS-2002   INDIA                          <48 cm             0       46     106
24 months   CMC-V-BCS-2002   INDIA                          <48 cm             1        4     106
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm         0       39     106
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm         1        1     106
24 months   CMIN             BANGLADESH                     >=50 cm            0        0      11
24 months   CMIN             BANGLADESH                     >=50 cm            1        0      11
24 months   CMIN             BANGLADESH                     <48 cm             0        5      11
24 months   CMIN             BANGLADESH                     <48 cm             1        0      11
24 months   CMIN             BANGLADESH                     [48-50) cm         0        6      11
24 months   CMIN             BANGLADESH                     [48-50) cm         1        0      11
24 months   COHORTS          GUATEMALA                      >=50 cm            0      261     564
24 months   COHORTS          GUATEMALA                      >=50 cm            1        3     564
24 months   COHORTS          GUATEMALA                      <48 cm             0      110     564
24 months   COHORTS          GUATEMALA                      <48 cm             1       12     564
24 months   COHORTS          GUATEMALA                      [48-50) cm         0      174     564
24 months   COHORTS          GUATEMALA                      [48-50) cm         1        4     564
24 months   COHORTS          INDIA                          >=50 cm            0      983    4722
24 months   COHORTS          INDIA                          >=50 cm            1       52    4722
24 months   COHORTS          INDIA                          <48 cm             0     1686    4722
24 months   COHORTS          INDIA                          <48 cm             1      242    4722
24 months   COHORTS          INDIA                          [48-50) cm         0     1624    4722
24 months   COHORTS          INDIA                          [48-50) cm         1      135    4722
24 months   COHORTS          PHILIPPINES                    >=50 cm            0      855    2446
24 months   COHORTS          PHILIPPINES                    >=50 cm            1       40    2446
24 months   COHORTS          PHILIPPINES                    <48 cm             0      546    2446
24 months   COHORTS          PHILIPPINES                    <48 cm             1       63    2446
24 months   COHORTS          PHILIPPINES                    [48-50) cm         0      878    2446
24 months   COHORTS          PHILIPPINES                    [48-50) cm         1       64    2446
24 months   CONTENT          PERU                           >=50 cm            0        1       2
24 months   CONTENT          PERU                           >=50 cm            1        0       2
24 months   CONTENT          PERU                           <48 cm             0        1       2
24 months   CONTENT          PERU                           <48 cm             1        0       2
24 months   CONTENT          PERU                           [48-50) cm         0        0       2
24 months   CONTENT          PERU                           [48-50) cm         1        0       2
24 months   EE               PAKISTAN                       >=50 cm            0       10     107
24 months   EE               PAKISTAN                       >=50 cm            1        0     107
24 months   EE               PAKISTAN                       <48 cm             0       60     107
24 months   EE               PAKISTAN                       <48 cm             1       12     107
24 months   EE               PAKISTAN                       [48-50) cm         0       22     107
24 months   EE               PAKISTAN                       [48-50) cm         1        3     107
24 months   GMS-Nepal        NEPAL                          >=50 cm            0       74     486
24 months   GMS-Nepal        NEPAL                          >=50 cm            1       10     486
24 months   GMS-Nepal        NEPAL                          <48 cm             0      194     486
24 months   GMS-Nepal        NEPAL                          <48 cm             1       55     486
24 months   GMS-Nepal        NEPAL                          [48-50) cm         0      128     486
24 months   GMS-Nepal        NEPAL                          [48-50) cm         1       25     486
24 months   IRC              INDIA                          >=50 cm            0      132     390
24 months   IRC              INDIA                          >=50 cm            1       10     390
24 months   IRC              INDIA                          <48 cm             0      101     390
24 months   IRC              INDIA                          <48 cm             1        9     390
24 months   IRC              INDIA                          [48-50) cm         0      127     390
24 months   IRC              INDIA                          [48-50) cm         1       11     390
24 months   JiVitA-3         BANGLADESH                     >=50 cm            0      346    7159
24 months   JiVitA-3         BANGLADESH                     >=50 cm            1       58    7159
24 months   JiVitA-3         BANGLADESH                     <48 cm             0     3832    7159
24 months   JiVitA-3         BANGLADESH                     <48 cm             1     1218    7159
24 months   JiVitA-3         BANGLADESH                     [48-50) cm         0     1423    7159
24 months   JiVitA-3         BANGLADESH                     [48-50) cm         1      282    7159
24 months   JiVitA-4         BANGLADESH                     >=50 cm            0      883    3974
24 months   JiVitA-4         BANGLADESH                     >=50 cm            1      191    3974
24 months   JiVitA-4         BANGLADESH                     <48 cm             0     1489    3974
24 months   JiVitA-4         BANGLADESH                     <48 cm             1      448    3974
24 months   JiVitA-4         BANGLADESH                     [48-50) cm         0      802    3974
24 months   JiVitA-4         BANGLADESH                     [48-50) cm         1      161    3974
24 months   Keneba           GAMBIA                         >=50 cm            0      491    1066
24 months   Keneba           GAMBIA                         >=50 cm            1       44    1066
24 months   Keneba           GAMBIA                         <48 cm             0      169    1066
24 months   Keneba           GAMBIA                         <48 cm             1       28    1066
24 months   Keneba           GAMBIA                         [48-50) cm         0      293    1066
24 months   Keneba           GAMBIA                         [48-50) cm         1       41    1066
24 months   MAL-ED           BANGLADESH                     >=50 cm            0       35     187
24 months   MAL-ED           BANGLADESH                     >=50 cm            1        4     187
24 months   MAL-ED           BANGLADESH                     <48 cm             0       71     187
24 months   MAL-ED           BANGLADESH                     <48 cm             1        9     187
24 months   MAL-ED           BANGLADESH                     [48-50) cm         0       62     187
24 months   MAL-ED           BANGLADESH                     [48-50) cm         1        6     187
24 months   MAL-ED           BRAZIL                         >=50 cm            0       20      42
24 months   MAL-ED           BRAZIL                         >=50 cm            1        0      42
24 months   MAL-ED           BRAZIL                         <48 cm             0       10      42
24 months   MAL-ED           BRAZIL                         <48 cm             1        0      42
24 months   MAL-ED           BRAZIL                         [48-50) cm         0       11      42
24 months   MAL-ED           BRAZIL                         [48-50) cm         1        1      42
24 months   MAL-ED           INDIA                          >=50 cm            0        6      39
24 months   MAL-ED           INDIA                          >=50 cm            1        0      39
24 months   MAL-ED           INDIA                          <48 cm             0       13      39
24 months   MAL-ED           INDIA                          <48 cm             1        5      39
24 months   MAL-ED           INDIA                          [48-50) cm         0       12      39
24 months   MAL-ED           INDIA                          [48-50) cm         1        3      39
24 months   MAL-ED           NEPAL                          >=50 cm            0        8      26
24 months   MAL-ED           NEPAL                          >=50 cm            1        0      26
24 months   MAL-ED           NEPAL                          <48 cm             0       11      26
24 months   MAL-ED           NEPAL                          <48 cm             1        0      26
24 months   MAL-ED           NEPAL                          [48-50) cm         0        6      26
24 months   MAL-ED           NEPAL                          [48-50) cm         1        1      26
24 months   MAL-ED           PERU                           >=50 cm            0       34     160
24 months   MAL-ED           PERU                           >=50 cm            1        0     160
24 months   MAL-ED           PERU                           <48 cm             0       63     160
24 months   MAL-ED           PERU                           <48 cm             1        4     160
24 months   MAL-ED           PERU                           [48-50) cm         0       59     160
24 months   MAL-ED           PERU                           [48-50) cm         1        0     160
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm            0       32      91
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm            1        0      91
24 months   MAL-ED           SOUTH AFRICA                   <48 cm             0       21      91
24 months   MAL-ED           SOUTH AFRICA                   <48 cm             1        0      91
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm         0       37      91
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm         1        1      91
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm            0       29     104
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm            1        0     104
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm             0       32     104
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm             1        2     104
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm         0       40     104
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm         1        1     104
24 months   NIH-Birth        BANGLADESH                     >=50 cm            0       92     413
24 months   NIH-Birth        BANGLADESH                     >=50 cm            1        7     413
24 months   NIH-Birth        BANGLADESH                     <48 cm             0      137     413
24 months   NIH-Birth        BANGLADESH                     <48 cm             1       23     413
24 months   NIH-Birth        BANGLADESH                     [48-50) cm         0      131     413
24 months   NIH-Birth        BANGLADESH                     [48-50) cm         1       23     413
24 months   NIH-Crypto       BANGLADESH                     >=50 cm            0      120     514
24 months   NIH-Crypto       BANGLADESH                     >=50 cm            1        8     514
24 months   NIH-Crypto       BANGLADESH                     <48 cm             0      178     514
24 months   NIH-Crypto       BANGLADESH                     <48 cm             1       22     514
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm         0      171     514
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm         1       15     514
24 months   PROBIT           BELARUS                        >=50 cm            0     3595    3970
24 months   PROBIT           BELARUS                        >=50 cm            1       27    3970
24 months   PROBIT           BELARUS                        <48 cm             0       43    3970
24 months   PROBIT           BELARUS                        <48 cm             1        1    3970
24 months   PROBIT           BELARUS                        [48-50) cm         0      300    3970
24 months   PROBIT           BELARUS                        [48-50) cm         1        4    3970
24 months   PROVIDE          BANGLADESH                     >=50 cm            0      131     579
24 months   PROVIDE          BANGLADESH                     >=50 cm            1        8     579
24 months   PROVIDE          BANGLADESH                     <48 cm             0      176     579
24 months   PROVIDE          BANGLADESH                     <48 cm             1       30     579
24 months   PROVIDE          BANGLADESH                     [48-50) cm         0      210     579
24 months   PROVIDE          BANGLADESH                     [48-50) cm         1       24     579
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm            0       33     426
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm            1        9     426
24 months   ZVITAMBO         ZIMBABWE                       <48 cm             0      214     426
24 months   ZVITAMBO         ZIMBABWE                       <48 cm             1       44     426
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm         0      101     426
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm         1       25     426


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
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROBIT, country: BELARUS

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




# Results Detail

## Results Plots
![](/tmp/fb22ad95-7b7f-4e3b-8c00-1e080e649263/2511d822-de7f-48e8-95a3-ffbe544b179b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fb22ad95-7b7f-4e3b-8c00-1e080e649263/2511d822-de7f-48e8-95a3-ffbe544b179b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fb22ad95-7b7f-4e3b-8c00-1e080e649263/2511d822-de7f-48e8-95a3-ffbe544b179b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fb22ad95-7b7f-4e3b-8c00-1e080e649263/2511d822-de7f-48e8-95a3-ffbe544b179b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS        GUATEMALA     >=50 cm              NA                0.3434343   0.2966340   0.3902347
Birth       COHORTS        GUATEMALA     <48 cm               NA                0.0909091   0.0418346   0.1399836
Birth       COHORTS        GUATEMALA     [48-50) cm           NA                0.1929825   0.1417236   0.2442413
Birth       COHORTS        INDIA         >=50 cm              NA                0.2150997   0.1936052   0.2365942
Birth       COHORTS        INDIA         <48 cm               NA                0.1537808   0.1392070   0.1683546
Birth       COHORTS        INDIA         [48-50) cm           NA                0.1774127   0.1622381   0.1925873
Birth       COHORTS        PHILIPPINES   >=50 cm              NA                0.2216216   0.1971838   0.2460595
Birth       COHORTS        PHILIPPINES   <48 cm               NA                0.1228879   0.0976638   0.1481119
Birth       COHORTS        PHILIPPINES   [48-50) cm           NA                0.1098418   0.0916712   0.1280124
Birth       GMS-Nepal      NEPAL         >=50 cm              NA                0.2631579   0.1822613   0.3440545
Birth       GMS-Nepal      NEPAL         <48 cm               NA                0.1786834   0.1366118   0.2207550
Birth       GMS-Nepal      NEPAL         [48-50) cm           NA                0.2163462   0.1603456   0.2723467
Birth       IRC            INDIA         >=50 cm              NA                0.4916667   0.4020887   0.5812446
Birth       IRC            INDIA         <48 cm               NA                0.1379310   0.0653665   0.2104956
Birth       IRC            INDIA         [48-50) cm           NA                0.1544118   0.0935937   0.2152298
Birth       JiVitA-3       BANGLADESH    >=50 cm              NA                0.1512470   0.1279388   0.1745551
Birth       JiVitA-3       BANGLADESH    <48 cm               NA                0.1039172   0.0977926   0.1100418
Birth       JiVitA-3       BANGLADESH    [48-50) cm           NA                0.1122268   0.1028363   0.1216173
Birth       JiVitA-4       BANGLADESH    >=50 cm              NA                0.1573034   0.0891877   0.2254190
Birth       JiVitA-4       BANGLADESH    <48 cm               NA                0.0921318   0.0733319   0.1109317
Birth       JiVitA-4       BANGLADESH    [48-50) cm           NA                0.1012312   0.0733848   0.1290776
Birth       Keneba         GAMBIA        >=50 cm              NA                0.3328804   0.2988237   0.3669372
Birth       Keneba         GAMBIA        <48 cm               NA                0.1333333   0.0903118   0.1763549
Birth       Keneba         GAMBIA        [48-50) cm           NA                0.1758691   0.1421144   0.2096239
Birth       MAL-ED         BANGLADESH    >=50 cm              NA                0.2307692   0.0982297   0.3633088
Birth       MAL-ED         BANGLADESH    <48 cm               NA                0.1649485   0.0909189   0.2389780
Birth       MAL-ED         BANGLADESH    [48-50) cm           NA                0.1392405   0.0627213   0.2157597
Birth       NIH-Birth      BANGLADESH    >=50 cm              NA                0.3308824   0.2517335   0.4100312
Birth       NIH-Birth      BANGLADESH    <48 cm               NA                0.3033175   0.2412376   0.3653974
Birth       NIH-Birth      BANGLADESH    [48-50) cm           NA                0.2587719   0.2018744   0.3156694
Birth       NIH-Crypto     BANGLADESH    >=50 cm              NA                0.2812500   0.2115343   0.3509657
Birth       NIH-Crypto     BANGLADESH    <48 cm               NA                0.2209738   0.1711718   0.2707757
Birth       NIH-Crypto     BANGLADESH    [48-50) cm           NA                0.2428571   0.1925950   0.2931193
Birth       PROVIDE        BANGLADESH    >=50 cm              NA                0.2396694   0.1635367   0.3158022
Birth       PROVIDE        BANGLADESH    <48 cm               NA                0.2539683   0.1918536   0.3160829
Birth       PROVIDE        BANGLADESH    [48-50) cm           NA                0.1801802   0.1295752   0.2307851
Birth       SAS-CompFeed   INDIA         >=50 cm              NA                0.1206897   0.0538324   0.1875469
Birth       SAS-CompFeed   INDIA         <48 cm               NA                0.1152542   0.0728627   0.1576458
Birth       SAS-CompFeed   INDIA         [48-50) cm           NA                0.0906801   0.0726326   0.1087276
Birth       ZVITAMBO       ZIMBABWE      >=50 cm              NA                0.2479360   0.2345486   0.2613233
Birth       ZVITAMBO       ZIMBABWE      <48 cm               NA                0.1002472   0.0904916   0.1100027
Birth       ZVITAMBO       ZIMBABWE      [48-50) cm           NA                0.1335480   0.1243715   0.1427246
6 months    COHORTS        INDIA         >=50 cm              NA                0.0872837   0.0721077   0.1024596
6 months    COHORTS        INDIA         <48 cm               NA                0.1606648   0.1463459   0.1749837
6 months    COHORTS        INDIA         [48-50) cm           NA                0.1180097   0.1047398   0.1312795
6 months    COHORTS        PHILIPPINES   >=50 cm              NA                0.0455005   0.0325100   0.0584910
6 months    COHORTS        PHILIPPINES   <48 cm               NA                0.0649926   0.0464200   0.0835653
6 months    COHORTS        PHILIPPINES   [48-50) cm           NA                0.0687318   0.0533008   0.0841629
6 months    GMS-Nepal      NEPAL         >=50 cm              NA                0.0729167   0.0208606   0.1249727
6 months    GMS-Nepal      NEPAL         <48 cm               NA                0.0945946   0.0612256   0.1279636
6 months    GMS-Nepal      NEPAL         [48-50) cm           NA                0.0935673   0.0498789   0.1372556
6 months    IRC            INDIA         >=50 cm              NA                0.1631206   0.1020568   0.2241843
6 months    IRC            INDIA         <48 cm               NA                0.1090909   0.0507569   0.1674249
6 months    IRC            INDIA         [48-50) cm           NA                0.1304348   0.0741728   0.1866968
6 months    JiVitA-3       BANGLADESH    >=50 cm              NA                0.0702179   0.0508801   0.0895557
6 months    JiVitA-3       BANGLADESH    <48 cm               NA                0.0911687   0.0848515   0.0974858
6 months    JiVitA-3       BANGLADESH    [48-50) cm           NA                0.0740741   0.0644581   0.0836900
6 months    JiVitA-4       BANGLADESH    >=50 cm              NA                0.0472298   0.0319292   0.0625303
6 months    JiVitA-4       BANGLADESH    <48 cm               NA                0.0581214   0.0418992   0.0743437
6 months    JiVitA-4       BANGLADESH    [48-50) cm           NA                0.0502008   0.0348097   0.0655919
6 months    Keneba         GAMBIA        >=50 cm              NA                0.0354505   0.0215161   0.0493849
6 months    Keneba         GAMBIA        <48 cm               NA                0.0555556   0.0261957   0.0849154
6 months    Keneba         GAMBIA        [48-50) cm           NA                0.0848624   0.0586946   0.1110302
6 months    NIH-Birth      BANGLADESH    >=50 cm              NA                0.0583333   0.0163590   0.1003077
6 months    NIH-Birth      BANGLADESH    <48 cm               NA                0.0854271   0.0465541   0.1243002
6 months    NIH-Birth      BANGLADESH    [48-50) cm           NA                0.0552764   0.0234957   0.0870571
6 months    SAS-CompFeed   INDIA         >=50 cm              NA                0.1020408   0.0635152   0.1405664
6 months    SAS-CompFeed   INDIA         <48 cm               NA                0.1610169   0.1297444   0.1922895
6 months    SAS-CompFeed   INDIA         [48-50) cm           NA                0.0717703   0.0385034   0.1050373
6 months    ZVITAMBO       ZIMBABWE      >=50 cm              NA                0.0255993   0.0193591   0.0318396
6 months    ZVITAMBO       ZIMBABWE      <48 cm               NA                0.0308619   0.0242856   0.0374382
6 months    ZVITAMBO       ZIMBABWE      [48-50) cm           NA                0.0355083   0.0291892   0.0418275
24 months   COHORTS        INDIA         >=50 cm              NA                0.0502415   0.0369320   0.0635511
24 months   COHORTS        INDIA         <48 cm               NA                0.1255187   0.1107286   0.1403087
24 months   COHORTS        INDIA         [48-50) cm           NA                0.0767482   0.0643072   0.0891892
24 months   COHORTS        PHILIPPINES   >=50 cm              NA                0.0446927   0.0311528   0.0582326
24 months   COHORTS        PHILIPPINES   <48 cm               NA                0.1034483   0.0792560   0.1276406
24 months   COHORTS        PHILIPPINES   [48-50) cm           NA                0.0679406   0.0518675   0.0840136
24 months   GMS-Nepal      NEPAL         >=50 cm              NA                0.1190476   0.0497222   0.1883730
24 months   GMS-Nepal      NEPAL         <48 cm               NA                0.2208835   0.1693039   0.2724632
24 months   GMS-Nepal      NEPAL         [48-50) cm           NA                0.1633987   0.1047534   0.2220440
24 months   IRC            INDIA         >=50 cm              NA                0.0704225   0.0282859   0.1125592
24 months   IRC            INDIA         <48 cm               NA                0.0818182   0.0305322   0.1331041
24 months   IRC            INDIA         [48-50) cm           NA                0.0797101   0.0344636   0.1249567
24 months   JiVitA-3       BANGLADESH    >=50 cm              NA                0.1435644   0.1014422   0.1856865
24 months   JiVitA-3       BANGLADESH    <48 cm               NA                0.2411881   0.2280463   0.2543299
24 months   JiVitA-3       BANGLADESH    [48-50) cm           NA                0.1653959   0.1466530   0.1841388
24 months   JiVitA-4       BANGLADESH    >=50 cm              NA                0.1778399   0.1500639   0.2056158
24 months   JiVitA-4       BANGLADESH    <48 cm               NA                0.2312855   0.2090328   0.2535382
24 months   JiVitA-4       BANGLADESH    [48-50) cm           NA                0.1671859   0.1400359   0.1943358
24 months   Keneba         GAMBIA        >=50 cm              NA                0.0822430   0.0589520   0.1055340
24 months   Keneba         GAMBIA        <48 cm               NA                0.1421320   0.0933483   0.1909157
24 months   Keneba         GAMBIA        [48-50) cm           NA                0.1227545   0.0875451   0.1579638
24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                0.0707071   0.0201520   0.1212621
24 months   NIH-Birth      BANGLADESH    <48 cm               NA                0.1437500   0.0893225   0.1981775
24 months   NIH-Birth      BANGLADESH    [48-50) cm           NA                0.1493506   0.0929878   0.2057135
24 months   NIH-Crypto     BANGLADESH    >=50 cm              NA                0.0625000   0.0205249   0.1044751
24 months   NIH-Crypto     BANGLADESH    <48 cm               NA                0.1100000   0.0665942   0.1534058
24 months   NIH-Crypto     BANGLADESH    [48-50) cm           NA                0.0806452   0.0414759   0.1198144
24 months   PROVIDE        BANGLADESH    >=50 cm              NA                0.0575540   0.0188030   0.0963049
24 months   PROVIDE        BANGLADESH    <48 cm               NA                0.1456311   0.0974208   0.1938413
24 months   PROVIDE        BANGLADESH    [48-50) cm           NA                0.1025641   0.0636583   0.1414700
24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                0.2142857   0.0900454   0.3385261
24 months   ZVITAMBO       ZIMBABWE      <48 cm               NA                0.1705426   0.1245951   0.2164902
24 months   ZVITAMBO       ZIMBABWE      [48-50) cm           NA                0.1984127   0.1286966   0.2681288


### Parameter: E(Y)


agecat      studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS        GUATEMALA     NA                   NA                0.2539683   0.2229196   0.2850169
Birth       COHORTS        INDIA         NA                   NA                0.1769740   0.1674681   0.1864799
Birth       COHORTS        PHILIPPINES   NA                   NA                0.1555709   0.1423748   0.1687670
Birth       GMS-Nepal      NEPAL         NA                   NA                0.2059282   0.1745993   0.2372572
Birth       IRC            INDIA         NA                   NA                0.2682216   0.2212677   0.3151755
Birth       JiVitA-3       BANGLADESH    NA                   NA                0.1095259   0.1044047   0.1146471
Birth       JiVitA-4       BANGLADESH    NA                   NA                0.0997496   0.0843744   0.1151247
Birth       Keneba         GAMBIA        NA                   NA                0.2477816   0.2256667   0.2698964
Birth       MAL-ED         BANGLADESH    NA                   NA                0.1674419   0.1174176   0.2174661
Birth       NIH-Birth      BANGLADESH    NA                   NA                0.2921739   0.2549711   0.3293768
Birth       NIH-Crypto     BANGLADESH    NA                   NA                0.2432815   0.2116319   0.2749310
Birth       PROVIDE        BANGLADESH    NA                   NA                0.2199248   0.1846953   0.2551543
Birth       SAS-CompFeed   INDIA         NA                   NA                0.1069810   0.0760961   0.1378659
Birth       ZVITAMBO       ZIMBABWE      NA                   NA                0.1595572   0.1532418   0.1658725
6 months    COHORTS        INDIA         NA                   NA                0.1289375   0.1205453   0.1373297
6 months    COHORTS        PHILIPPINES   NA                   NA                0.0592812   0.0503704   0.0681920
6 months    GMS-Nepal      NEPAL         NA                   NA                0.0905861   0.0668565   0.1143158
6 months    IRC            INDIA         NA                   NA                0.1362468   0.1021125   0.1703810
6 months    JiVitA-3       BANGLADESH    NA                   NA                0.0859055   0.0807379   0.0910730
6 months    JiVitA-4       BANGLADESH    NA                   NA                0.0531809   0.0435210   0.0628408
6 months    Keneba         GAMBIA        NA                   NA                0.0549369   0.0427642   0.0671096
6 months    NIH-Birth      BANGLADESH    NA                   NA                0.0675676   0.0459314   0.0892038
6 months    SAS-CompFeed   INDIA         NA                   NA                0.1240545   0.0993302   0.1487787
6 months    ZVITAMBO       ZIMBABWE      NA                   NA                0.0311423   0.0274303   0.0348542
24 months   COHORTS        INDIA         NA                   NA                0.0908513   0.0826532   0.0990495
24 months   COHORTS        PHILIPPINES   NA                   NA                0.0682747   0.0582774   0.0782720
24 months   GMS-Nepal      NEPAL         NA                   NA                0.1851852   0.1506144   0.2197560
24 months   IRC            INDIA         NA                   NA                0.0769231   0.0504429   0.1034032
24 months   JiVitA-3       BANGLADESH    NA                   NA                0.2176282   0.2067563   0.2285000
24 months   JiVitA-4       BANGLADESH    NA                   NA                0.2013085   0.1867334   0.2158836
24 months   Keneba         GAMBIA        NA                   NA                0.1060038   0.0875152   0.1244923
24 months   NIH-Birth      BANGLADESH    NA                   NA                0.1283293   0.0960341   0.1606245
24 months   NIH-Crypto     BANGLADESH    NA                   NA                0.0875486   0.0630907   0.1120065
24 months   PROVIDE        BANGLADESH    NA                   NA                0.1070812   0.0818727   0.1322897
24 months   ZVITAMBO       ZIMBABWE      NA                   NA                0.1830986   0.1463297   0.2198675


### Parameter: RR


agecat      studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS        GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       COHORTS        GUATEMALA     <48 cm               >=50 cm           0.2647059   0.1516940   0.4619115
Birth       COHORTS        GUATEMALA     [48-50) cm           >=50 cm           0.5619195   0.4168923   0.7573984
Birth       COHORTS        INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       COHORTS        INDIA         <48 cm               >=50 cm           0.7149280   0.6229469   0.8204904
Birth       COHORTS        INDIA         [48-50) cm           >=50 cm           0.8247930   0.7231361   0.9407405
Birth       COHORTS        PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       COHORTS        PHILIPPINES   <48 cm               >=50 cm           0.5544940   0.4392425   0.6999860
Birth       COHORTS        PHILIPPINES   [48-50) cm           >=50 cm           0.4956278   0.4062697   0.6046399
Birth       GMS-Nepal      NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal      NEPAL         <48 cm               >=50 cm           0.6789969   0.4610005   1.0000787
Birth       GMS-Nepal      NEPAL         [48-50) cm           >=50 cm           0.8221154   0.5500500   1.2287496
Birth       IRC            INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       IRC            INDIA         <48 cm               >=50 cm           0.2805377   0.1607677   0.4895349
Birth       IRC            INDIA         [48-50) cm           >=50 cm           0.3140578   0.2034887   0.4847066
Birth       JiVitA-3       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       JiVitA-3       BANGLADESH    <48 cm               >=50 cm           0.6870696   0.5839637   0.8083802
Birth       JiVitA-3       BANGLADESH    [48-50) cm           >=50 cm           0.7420103   0.6255638   0.8801328
Birth       JiVitA-4       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       JiVitA-4       BANGLADESH    <48 cm               >=50 cm           0.5856951   0.3625793   0.9461068
Birth       JiVitA-4       BANGLADESH    [48-50) cm           >=50 cm           0.6435411   0.3867797   1.0707522
Birth       Keneba         GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       Keneba         GAMBIA        <48 cm               >=50 cm           0.4005442   0.2855253   0.5618964
Birth       Keneba         GAMBIA        [48-50) cm           >=50 cm           0.5283252   0.4250537   0.6566876
Birth       MAL-ED         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       MAL-ED         BANGLADESH    <48 cm               >=50 cm           0.7147766   0.3448378   1.4815826
Birth       MAL-ED         BANGLADESH    [48-50) cm           >=50 cm           0.6033755   0.2725003   1.3360061
Birth       NIH-Birth      BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       NIH-Birth      BANGLADESH    <48 cm               >=50 cm           0.9166930   0.6691157   1.2558756
Birth       NIH-Birth      BANGLADESH    [48-50) cm           >=50 cm           0.7820663   0.5651171   1.0823026
Birth       NIH-Crypto     BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto     BANGLADESH    <48 cm               >=50 cm           0.7856846   0.5620197   1.0983605
Birth       NIH-Crypto     BANGLADESH    [48-50) cm           >=50 cm           0.8634921   0.6251963   1.1926150
Birth       PROVIDE        BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       PROVIDE        BANGLADESH    <48 cm               >=50 cm           1.0596606   0.7096701   1.5822573
Birth       PROVIDE        BANGLADESH    [48-50) cm           >=50 cm           0.7517863   0.4919805   1.1487907
Birth       SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed   INDIA         <48 cm               >=50 cm           0.9549637   0.6529392   1.3966929
Birth       SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           0.7513494   0.4548618   1.2410933
Birth       ZVITAMBO       ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO       ZIMBABWE      <48 cm               >=50 cm           0.4043269   0.3617425   0.4519244
Birth       ZVITAMBO       ZIMBABWE      [48-50) cm           >=50 cm           0.5386392   0.4935656   0.5878290
6 months    COHORTS        INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    COHORTS        INDIA         <48 cm               >=50 cm           1.8407202   1.5140330   2.2378976
6 months    COHORTS        INDIA         [48-50) cm           >=50 cm           1.3520248   1.0991542   1.6630706
6 months    COHORTS        PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    COHORTS        PHILIPPINES   <48 cm               >=50 cm           1.4283932   0.9537083   2.1393409
6 months    COHORTS        PHILIPPINES   [48-50) cm           >=50 cm           1.5105733   1.0505205   2.1720962
6 months    GMS-Nepal      NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal      NEPAL         <48 cm               >=50 cm           1.2972973   0.5850688   2.8765512
6 months    GMS-Nepal      NEPAL         [48-50) cm           >=50 cm           1.2832080   0.5467954   3.0114057
6 months    IRC            INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    IRC            INDIA         <48 cm               >=50 cm           0.6687747   0.3481755   1.2845807
6 months    IRC            INDIA         [48-50) cm           >=50 cm           0.7996219   0.4516949   1.4155467
6 months    JiVitA-3       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    JiVitA-3       BANGLADESH    <48 cm               >=50 cm           1.2983676   0.9772593   1.7249859
6 months    JiVitA-3       BANGLADESH    [48-50) cm           >=50 cm           1.0549170   0.7777846   1.4307944
6 months    JiVitA-4       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    JiVitA-4       BANGLADESH    <48 cm               >=50 cm           1.2306096   0.8012937   1.8899437
6 months    JiVitA-4       BANGLADESH    [48-50) cm           >=50 cm           1.0629055   0.6919273   1.6327843
6 months    Keneba         GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    Keneba         GAMBIA        <48 cm               >=50 cm           1.5671296   0.8110863   3.0279088
6 months    Keneba         GAMBIA        [48-50) cm           >=50 cm           2.3938265   1.4525330   3.9451118
6 months    NIH-Birth      BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    NIH-Birth      BANGLADESH    <48 cm               >=50 cm           1.4644652   0.6250772   3.4310295
6 months    NIH-Birth      BANGLADESH    [48-50) cm           >=50 cm           0.9475951   0.3772400   2.3802790
6 months    SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed   INDIA         <48 cm               >=50 cm           1.5779661   0.9805499   2.5393679
6 months    SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           0.7033493   0.3954062   1.2511191
6 months    ZVITAMBO       ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO       ZIMBABWE      <48 cm               >=50 cm           1.2055726   0.8721294   1.6665017
6 months    ZVITAMBO       ZIMBABWE      [48-50) cm           >=50 cm           1.3870800   1.0257103   1.8757644
24 months   COHORTS        INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   COHORTS        INDIA         <48 cm               >=50 cm           2.4983043   1.8695133   3.3385826
24 months   COHORTS        INDIA         [48-50) cm           >=50 cm           1.5275834   1.1197617   2.0839355
24 months   COHORTS        PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   COHORTS        PHILIPPINES   <48 cm               >=50 cm           2.3146552   1.5786092   3.3938917
24 months   COHORTS        PHILIPPINES   [48-50) cm           >=50 cm           1.5201699   1.0350400   2.2326833
24 months   GMS-Nepal      NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal      NEPAL         <48 cm               >=50 cm           1.8554217   0.9907466   3.4747427
24 months   GMS-Nepal      NEPAL         [48-50) cm           >=50 cm           1.3725490   0.6925444   2.7202454
24 months   IRC            INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   IRC            INDIA         <48 cm               >=50 cm           1.1618182   0.4884231   2.7636315
24 months   IRC            INDIA         [48-50) cm           >=50 cm           1.1318841   0.4961517   2.5821974
24 months   JiVitA-3       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   JiVitA-3       BANGLADESH    <48 cm               >=50 cm           1.6800000   1.2399928   2.2761422
24 months   JiVitA-3       BANGLADESH    [48-50) cm           >=50 cm           1.1520680   0.8404355   1.5792534
24 months   JiVitA-4       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   JiVitA-4       BANGLADESH    <48 cm               >=50 cm           1.3005268   1.0805234   1.5653247
24 months   JiVitA-4       BANGLADESH    [48-50) cm           >=50 cm           0.9400923   0.7511525   1.1765567
24 months   Keneba         GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   Keneba         GAMBIA        <48 cm               >=50 cm           1.7281957   1.1074928   2.6967763
24 months   Keneba         GAMBIA        [48-50) cm           >=50 cm           1.4925830   0.9974349   2.2335333
24 months   NIH-Birth      BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   NIH-Birth      BANGLADESH    <48 cm               >=50 cm           2.0330357   0.9052657   4.5657689
24 months   NIH-Birth      BANGLADESH    [48-50) cm           >=50 cm           2.1122449   0.9410812   4.7409069
24 months   NIH-Crypto     BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   NIH-Crypto     BANGLADESH    <48 cm               >=50 cm           1.7600000   0.8076459   3.8353442
24 months   NIH-Crypto     BANGLADESH    [48-50) cm           >=50 cm           1.2903226   0.5633055   2.9556475
24 months   PROVIDE        BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   PROVIDE        BANGLADESH    <48 cm               >=50 cm           2.5303398   1.1949142   5.3582255
24 months   PROVIDE        BANGLADESH    [48-50) cm           >=50 cm           1.7820513   0.8228049   3.8596107
24 months   ZVITAMBO       ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ZVITAMBO       ZIMBABWE      <48 cm               >=50 cm           0.7958656   0.4199356   1.5083314
24 months   ZVITAMBO       ZIMBABWE      [48-50) cm           >=50 cm           0.9259259   0.4700529   1.8239200


### Parameter: PAR


agecat      studyid        country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS        GUATEMALA     >=50 cm              NA                -0.0894661   -0.1187871   -0.0601451
Birth       COHORTS        INDIA         >=50 cm              NA                -0.0381257   -0.0566430   -0.0196084
Birth       COHORTS        PHILIPPINES   >=50 cm              NA                -0.0660507   -0.0837712   -0.0483303
Birth       GMS-Nepal      NEPAL         >=50 cm              NA                -0.0572297   -0.1293268    0.0148675
Birth       IRC            INDIA         >=50 cm              NA                -0.2234451   -0.2913735   -0.1555167
Birth       JiVitA-3       BANGLADESH    >=50 cm              NA                -0.0417211   -0.0635805   -0.0198617
Birth       JiVitA-4       BANGLADESH    >=50 cm              NA                -0.0575538   -0.1222071    0.0070995
Birth       Keneba         GAMBIA        >=50 cm              NA                -0.0850989   -0.1070881   -0.0631097
Birth       MAL-ED         BANGLADESH    >=50 cm              NA                -0.0633274   -0.1803577    0.0537030
Birth       NIH-Birth      BANGLADESH    >=50 cm              NA                -0.0387084   -0.1071569    0.0297400
Birth       NIH-Crypto     BANGLADESH    >=50 cm              NA                -0.0379685   -0.0984841    0.0225470
Birth       PROVIDE        BANGLADESH    >=50 cm              NA                -0.0197446   -0.0860824    0.0465931
Birth       SAS-CompFeed   INDIA         >=50 cm              NA                -0.0137087   -0.0578019    0.0303845
Birth       ZVITAMBO       ZIMBABWE      >=50 cm              NA                -0.0883788   -0.0987802   -0.0779774
6 months    COHORTS        INDIA         >=50 cm              NA                 0.0416538    0.0274825    0.0558251
6 months    COHORTS        PHILIPPINES   >=50 cm              NA                 0.0137807    0.0026236    0.0249379
6 months    GMS-Nepal      NEPAL         >=50 cm              NA                 0.0176695   -0.0307949    0.0661339
6 months    IRC            INDIA         >=50 cm              NA                -0.0268738   -0.0736798    0.0199322
6 months    JiVitA-3       BANGLADESH    >=50 cm              NA                 0.0156875   -0.0032089    0.0345840
6 months    JiVitA-4       BANGLADESH    >=50 cm              NA                 0.0059511   -0.0079145    0.0198168
6 months    Keneba         GAMBIA        >=50 cm              NA                 0.0194864    0.0073552    0.0316176
6 months    NIH-Birth      BANGLADESH    >=50 cm              NA                 0.0092342   -0.0283646    0.0468331
6 months    SAS-CompFeed   INDIA         >=50 cm              NA                 0.0220136   -0.0225790    0.0666063
6 months    ZVITAMBO       ZIMBABWE      >=50 cm              NA                 0.0055429    0.0000714    0.0110144
24 months   COHORTS        INDIA         >=50 cm              NA                 0.0406098    0.0276987    0.0535209
24 months   COHORTS        PHILIPPINES   >=50 cm              NA                 0.0235820    0.0113708    0.0357932
24 months   GMS-Nepal      NEPAL         >=50 cm              NA                 0.0661376    0.0002603    0.1320148
24 months   IRC            INDIA         >=50 cm              NA                 0.0065005   -0.0279054    0.0409065
24 months   JiVitA-3       BANGLADESH    >=50 cm              NA                 0.0740638    0.0320105    0.1161171
24 months   JiVitA-4       BANGLADESH    >=50 cm              NA                 0.0234687   -0.0004869    0.0474243
24 months   Keneba         GAMBIA        >=50 cm              NA                 0.0237608    0.0053274    0.0421941
24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                 0.0576222    0.0089037    0.1063407
24 months   NIH-Crypto     BANGLADESH    >=50 cm              NA                 0.0250486   -0.0134555    0.0635528
24 months   PROVIDE        BANGLADESH    >=50 cm              NA                 0.0495272    0.0118960    0.0871584
24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                -0.0311871   -0.1484218    0.0860476


### Parameter: PAF


agecat      studyid        country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS        GUATEMALA     >=50 cm              NA                -0.3522727   -0.4721003   -0.2421990
Birth       COHORTS        INDIA         >=50 cm              NA                -0.2154311   -0.3243667   -0.1154560
Birth       COHORTS        PHILIPPINES   >=50 cm              NA                -0.4245700   -0.5401908   -0.3176288
Birth       GMS-Nepal      NEPAL         >=50 cm              NA                -0.2779107   -0.6795423    0.0276781
Birth       IRC            INDIA         >=50 cm              NA                -0.8330616   -1.1208325   -0.5843377
Birth       JiVitA-3       BANGLADESH    >=50 cm              NA                -0.3809241   -0.5929499   -0.1971194
Birth       JiVitA-4       BANGLADESH    >=50 cm              NA                -0.5769827   -1.3727541   -0.0480962
Birth       Keneba         GAMBIA        >=50 cm              NA                -0.3434431   -0.4345320   -0.2581381
Birth       MAL-ED         BANGLADESH    >=50 cm              NA                -0.3782051   -1.2817707    0.1675546
Birth       NIH-Birth      BANGLADESH    >=50 cm              NA                -0.1324842   -0.3927013    0.0791130
Birth       NIH-Crypto     BANGLADESH    >=50 cm              NA                -0.1560683   -0.4333397    0.0675665
Birth       PROVIDE        BANGLADESH    >=50 cm              NA                -0.0897789   -0.4371213    0.1736132
Birth       SAS-CompFeed   INDIA         >=50 cm              NA                -0.1281414   -0.5968366    0.2029848
Birth       ZVITAMBO       ZIMBABWE      >=50 cm              NA                -0.5539004   -0.6188822   -0.4915269
6 months    COHORTS        INDIA         >=50 cm              NA                 0.3230544    0.2056243    0.4231251
6 months    COHORTS        PHILIPPINES   >=50 cm              NA                 0.2324633    0.0229399    0.3970560
6 months    GMS-Nepal      NEPAL         >=50 cm              NA                 0.1950572   -0.5606777    0.5848387
6 months    IRC            INDIA         >=50 cm              NA                -0.1972434   -0.5921885    0.0997348
6 months    JiVitA-3       BANGLADESH    >=50 cm              NA                 0.1826140   -0.0694309    0.3752567
6 months    JiVitA-4       BANGLADESH    >=50 cm              NA                 0.1119034   -0.1869392    0.3355046
6 months    Keneba         GAMBIA        >=50 cm              NA                 0.3547048    0.1099869    0.5321351
6 months    NIH-Birth      BANGLADESH    >=50 cm              NA                 0.1366667   -0.6418943    0.5460460
6 months    SAS-CompFeed   INDIA         >=50 cm              NA                 0.1774515   -0.2480226    0.4578735
6 months    ZVITAMBO       ZIMBABWE      >=50 cm              NA                 0.1779873   -0.0163879    0.3351899
24 months   COHORTS        INDIA         >=50 cm              NA                 0.4469917    0.2916230    0.5682832
24 months   COHORTS        PHILIPPINES   >=50 cm              NA                 0.3453986    0.1483370    0.4968632
24 months   GMS-Nepal      NEPAL         >=50 cm              NA                 0.3571429   -0.1102820    0.6277835
24 months   IRC            INDIA         >=50 cm              NA                 0.0845070   -0.4909232    0.4378467
24 months   JiVitA-3       BANGLADESH    >=50 cm              NA                 0.3403227    0.1176115    0.5068225
24 months   JiVitA-4       BANGLADESH    >=50 cm              NA                 0.1165805   -0.0109438    0.2280185
24 months   Keneba         GAMBIA        >=50 cm              NA                 0.2241502    0.0337514    0.3770310
24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                 0.4490185   -0.0691897    0.7160648
24 months   NIH-Crypto     BANGLADESH    >=50 cm              NA                 0.2861111   -0.3102198    0.6110291
24 months   PROVIDE        BANGLADESH    >=50 cm              NA                 0.4625203   -0.0050565    0.7125690
24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                -0.1703297   -1.0218429    0.3225628
