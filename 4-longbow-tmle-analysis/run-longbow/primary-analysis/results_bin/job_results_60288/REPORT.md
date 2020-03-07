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




# Results Detail

## Results Plots
![](/tmp/834d0ce8-b20c-43b4-905c-f02048aad022/a4bdbb25-f371-4ec8-bc5e-5a615297c66c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/834d0ce8-b20c-43b4-905c-f02048aad022/a4bdbb25-f371-4ec8-bc5e-5a615297c66c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/834d0ce8-b20c-43b4-905c-f02048aad022/a4bdbb25-f371-4ec8-bc5e-5a615297c66c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/834d0ce8-b20c-43b4-905c-f02048aad022/a4bdbb25-f371-4ec8-bc5e-5a615297c66c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS        GUATEMALA     >=50 cm              NA                0.3447157   0.2978081   0.3916233
Birth       COHORTS        GUATEMALA     <48 cm               NA                0.0902585   0.0405525   0.1399646
Birth       COHORTS        GUATEMALA     [48-50) cm           NA                0.1903399   0.1386056   0.2420741
Birth       COHORTS        INDIA         >=50 cm              NA                0.2218437   0.2000325   0.2436548
Birth       COHORTS        INDIA         <48 cm               NA                0.1521097   0.1374532   0.1667662
Birth       COHORTS        INDIA         [48-50) cm           NA                0.1773739   0.1619609   0.1927868
Birth       COHORTS        PHILIPPINES   >=50 cm              NA                0.2223922   0.1979539   0.2468304
Birth       COHORTS        PHILIPPINES   <48 cm               NA                0.1192200   0.0944195   0.1440204
Birth       COHORTS        PHILIPPINES   [48-50) cm           NA                0.1107673   0.0923587   0.1291759
Birth       GMS-Nepal      NEPAL         >=50 cm              NA                0.2680188   0.1866462   0.3493913
Birth       GMS-Nepal      NEPAL         <48 cm               NA                0.1772432   0.1350116   0.2194747
Birth       GMS-Nepal      NEPAL         [48-50) cm           NA                0.2174835   0.1611248   0.2738423
Birth       IRC            INDIA         >=50 cm              NA                0.4885697   0.3958880   0.5812513
Birth       IRC            INDIA         <48 cm               NA                0.1361582   0.0631977   0.2091186
Birth       IRC            INDIA         [48-50) cm           NA                0.1567742   0.0948484   0.2187001
Birth       JiVitA-3       BANGLADESH    >=50 cm              NA                0.1584270   0.1373525   0.1795015
Birth       JiVitA-3       BANGLADESH    <48 cm               NA                0.1039118   0.0977388   0.1100848
Birth       JiVitA-3       BANGLADESH    [48-50) cm           NA                0.1163488   0.1063403   0.1263574
Birth       JiVitA-4       BANGLADESH    >=50 cm              NA                0.1562519   0.0869536   0.2255502
Birth       JiVitA-4       BANGLADESH    <48 cm               NA                0.0945499   0.0754064   0.1136934
Birth       JiVitA-4       BANGLADESH    [48-50) cm           NA                0.0990031   0.0722152   0.1257910
Birth       Keneba         GAMBIA        >=50 cm              NA                0.3350001   0.3007764   0.3692238
Birth       Keneba         GAMBIA        <48 cm               NA                0.1313899   0.0877523   0.1750275
Birth       Keneba         GAMBIA        [48-50) cm           NA                0.1741007   0.1403503   0.2078511
Birth       MAL-ED         BANGLADESH    >=50 cm              NA                0.2307692   0.0982297   0.3633088
Birth       MAL-ED         BANGLADESH    <48 cm               NA                0.1649485   0.0909189   0.2389780
Birth       MAL-ED         BANGLADESH    [48-50) cm           NA                0.1392405   0.0627213   0.2157597
Birth       NIH-Birth      BANGLADESH    >=50 cm              NA                0.3392094   0.2603383   0.4180805
Birth       NIH-Birth      BANGLADESH    <48 cm               NA                0.3052008   0.2430960   0.3673055
Birth       NIH-Birth      BANGLADESH    [48-50) cm           NA                0.2610315   0.2039489   0.3181142
Birth       NIH-Crypto     BANGLADESH    >=50 cm              NA                0.2784735   0.2088306   0.3481164
Birth       NIH-Crypto     BANGLADESH    <48 cm               NA                0.2206602   0.1707126   0.2706079
Birth       NIH-Crypto     BANGLADESH    [48-50) cm           NA                0.2445871   0.1938565   0.2953178
Birth       PROVIDE        BANGLADESH    >=50 cm              NA                0.2420106   0.1661578   0.3178634
Birth       PROVIDE        BANGLADESH    <48 cm               NA                0.2546058   0.1909299   0.3182816
Birth       PROVIDE        BANGLADESH    [48-50) cm           NA                0.1845063   0.1344300   0.2345826
Birth       SAS-CompFeed   INDIA         >=50 cm              NA                0.1171508   0.0532937   0.1810079
Birth       SAS-CompFeed   INDIA         <48 cm               NA                0.1178480   0.0733942   0.1623019
Birth       SAS-CompFeed   INDIA         [48-50) cm           NA                0.0922775   0.0734854   0.1110696
Birth       ZVITAMBO       ZIMBABWE      >=50 cm              NA                0.2551491   0.2415247   0.2687735
Birth       ZVITAMBO       ZIMBABWE      <48 cm               NA                0.1007065   0.0906639   0.1107491
Birth       ZVITAMBO       ZIMBABWE      [48-50) cm           NA                0.1338019   0.1244854   0.1431184
6 months    COHORTS        INDIA         >=50 cm              NA                0.0897194   0.0741268   0.1053120
6 months    COHORTS        INDIA         <48 cm               NA                0.1575785   0.1433337   0.1718233
6 months    COHORTS        INDIA         [48-50) cm           NA                0.1185384   0.1050694   0.1320074
6 months    COHORTS        PHILIPPINES   >=50 cm              NA                0.0442580   0.0313407   0.0571752
6 months    COHORTS        PHILIPPINES   <48 cm               NA                0.0669748   0.0483638   0.0855857
6 months    COHORTS        PHILIPPINES   [48-50) cm           NA                0.0688888   0.0533916   0.0843859
6 months    GMS-Nepal      NEPAL         >=50 cm              NA                0.0729167   0.0208606   0.1249727
6 months    GMS-Nepal      NEPAL         <48 cm               NA                0.0945946   0.0612256   0.1279636
6 months    GMS-Nepal      NEPAL         [48-50) cm           NA                0.0935673   0.0498789   0.1372556
6 months    IRC            INDIA         >=50 cm              NA                0.1631457   0.1019030   0.2243885
6 months    IRC            INDIA         <48 cm               NA                0.1098986   0.0508441   0.1689531
6 months    IRC            INDIA         [48-50) cm           NA                0.1310499   0.0743240   0.1877759
6 months    JiVitA-3       BANGLADESH    >=50 cm              NA                0.0686719   0.0489285   0.0884153
6 months    JiVitA-3       BANGLADESH    <48 cm               NA                0.0906713   0.0843740   0.0969687
6 months    JiVitA-3       BANGLADESH    [48-50) cm           NA                0.0729549   0.0628084   0.0831013
6 months    JiVitA-4       BANGLADESH    >=50 cm              NA                0.0493941   0.0341132   0.0646750
6 months    JiVitA-4       BANGLADESH    <48 cm               NA                0.0570431   0.0408955   0.0731906
6 months    JiVitA-4       BANGLADESH    [48-50) cm           NA                0.0501686   0.0337705   0.0665667
6 months    Keneba         GAMBIA        >=50 cm              NA                0.0352482   0.0213242   0.0491722
6 months    Keneba         GAMBIA        <48 cm               NA                0.0539713   0.0248817   0.0830608
6 months    Keneba         GAMBIA        [48-50) cm           NA                0.0864156   0.0599218   0.1129095
6 months    NIH-Birth      BANGLADESH    >=50 cm              NA                0.0583333   0.0163590   0.1003077
6 months    NIH-Birth      BANGLADESH    <48 cm               NA                0.0854271   0.0465541   0.1243002
6 months    NIH-Birth      BANGLADESH    [48-50) cm           NA                0.0552764   0.0234957   0.0870571
6 months    SAS-CompFeed   INDIA         >=50 cm              NA                0.1042242   0.0682968   0.1401515
6 months    SAS-CompFeed   INDIA         <48 cm               NA                0.1585631   0.1287795   0.1883467
6 months    SAS-CompFeed   INDIA         [48-50) cm           NA                0.0744805   0.0363003   0.1126608
6 months    ZVITAMBO       ZIMBABWE      >=50 cm              NA                0.0267889   0.0202693   0.0333084
6 months    ZVITAMBO       ZIMBABWE      <48 cm               NA                0.0323840   0.0255443   0.0392238
6 months    ZVITAMBO       ZIMBABWE      [48-50) cm           NA                0.0352204   0.0288538   0.0415870
24 months   COHORTS        INDIA         >=50 cm              NA                0.0541778   0.0405783   0.0677773
24 months   COHORTS        INDIA         <48 cm               NA                0.1198459   0.1052729   0.1344188
24 months   COHORTS        INDIA         [48-50) cm           NA                0.0776400   0.0651810   0.0900991
24 months   COHORTS        PHILIPPINES   >=50 cm              NA                0.0457014   0.0322662   0.0591367
24 months   COHORTS        PHILIPPINES   <48 cm               NA                0.0995796   0.0757130   0.1234463
24 months   COHORTS        PHILIPPINES   [48-50) cm           NA                0.0674060   0.0513049   0.0835071
24 months   GMS-Nepal      NEPAL         >=50 cm              NA                0.1180261   0.0484135   0.1876388
24 months   GMS-Nepal      NEPAL         <48 cm               NA                0.2208347   0.1691328   0.2725365
24 months   GMS-Nepal      NEPAL         [48-50) cm           NA                0.1620729   0.1030065   0.2211393
24 months   IRC            INDIA         >=50 cm              NA                0.0704225   0.0282859   0.1125592
24 months   IRC            INDIA         <48 cm               NA                0.0818182   0.0305322   0.1331041
24 months   IRC            INDIA         [48-50) cm           NA                0.0797101   0.0344636   0.1249567
24 months   JiVitA-3       BANGLADESH    >=50 cm              NA                0.1337659   0.0972795   0.1702522
24 months   JiVitA-3       BANGLADESH    <48 cm               NA                0.2419712   0.2288455   0.2550968
24 months   JiVitA-3       BANGLADESH    [48-50) cm           NA                0.1621059   0.1433763   0.1808355
24 months   JiVitA-4       BANGLADESH    >=50 cm              NA                0.1822919   0.1550035   0.2095804
24 months   JiVitA-4       BANGLADESH    <48 cm               NA                0.2319432   0.2097011   0.2541852
24 months   JiVitA-4       BANGLADESH    [48-50) cm           NA                0.1596069   0.1319088   0.1873049
24 months   Keneba         GAMBIA        >=50 cm              NA                0.0831680   0.0599148   0.1064211
24 months   Keneba         GAMBIA        <48 cm               NA                0.1393236   0.0912890   0.1873582
24 months   Keneba         GAMBIA        [48-50) cm           NA                0.1188419   0.0845073   0.1531765
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
Birth       COHORTS        GUATEMALA     <48 cm               >=50 cm           0.2618347   0.1483864   0.4620196
Birth       COHORTS        GUATEMALA     [48-50) cm           >=50 cm           0.5521647   0.4074936   0.7481979
Birth       COHORTS        INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       COHORTS        INDIA         <48 cm               >=50 cm           0.6856615   0.5975903   0.7867125
Birth       COHORTS        INDIA         [48-50) cm           >=50 cm           0.7995444   0.7012681   0.9115932
Birth       COHORTS        PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       COHORTS        PHILIPPINES   <48 cm               >=50 cm           0.5360798   0.4238568   0.6780158
Birth       COHORTS        PHILIPPINES   [48-50) cm           >=50 cm           0.4980720   0.4082099   0.6077160
Birth       GMS-Nepal      NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal      NEPAL         <48 cm               >=50 cm           0.6613088   0.4495422   0.9728325
Birth       GMS-Nepal      NEPAL         [48-50) cm           >=50 cm           0.8114489   0.5446703   1.2088950
Birth       IRC            INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       IRC            INDIA         <48 cm               >=50 cm           0.2786873   0.1577793   0.4922486
Birth       IRC            INDIA         [48-50) cm           >=50 cm           0.3208841   0.2067210   0.4980946
Birth       JiVitA-3       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       JiVitA-3       BANGLADESH    <48 cm               >=50 cm           0.6558970   0.5681376   0.7572125
Birth       JiVitA-3       BANGLADESH    [48-50) cm           >=50 cm           0.7344002   0.6308655   0.8549266
Birth       JiVitA-4       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       JiVitA-4       BANGLADESH    <48 cm               >=50 cm           0.6051121   0.3715336   0.9855385
Birth       JiVitA-4       BANGLADESH    [48-50) cm           >=50 cm           0.6336122   0.3782034   1.0615041
Birth       Keneba         GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       Keneba         GAMBIA        <48 cm               >=50 cm           0.3922086   0.2771081   0.5551176
Birth       Keneba         GAMBIA        [48-50) cm           >=50 cm           0.5197034   0.4173829   0.6471074
Birth       MAL-ED         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       MAL-ED         BANGLADESH    <48 cm               >=50 cm           0.7147766   0.3448378   1.4815826
Birth       MAL-ED         BANGLADESH    [48-50) cm           >=50 cm           0.6033755   0.2725003   1.3360061
Birth       NIH-Birth      BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       NIH-Birth      BANGLADESH    <48 cm               >=50 cm           0.8997416   0.6610211   1.2246734
Birth       NIH-Birth      BANGLADESH    [48-50) cm           >=50 cm           0.7695292   0.5590128   1.0593231
Birth       NIH-Crypto     BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto     BANGLADESH    <48 cm               >=50 cm           0.7923922   0.5656883   1.1099493
Birth       NIH-Crypto     BANGLADESH    [48-50) cm           >=50 cm           0.8783138   0.6346344   1.2155585
Birth       PROVIDE        BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       PROVIDE        BANGLADESH    <48 cm               >=50 cm           1.0520438   0.7045663   1.5708901
Birth       PROVIDE        BANGLADESH    [48-50) cm           >=50 cm           0.7623892   0.5047750   1.1514780
Birth       SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed   INDIA         <48 cm               >=50 cm           1.0059513   0.6932992   1.4595979
Birth       SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           0.7876814   0.4723373   1.3135569
Birth       ZVITAMBO       ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO       ZIMBABWE      <48 cm               >=50 cm           0.3946968   0.3524853   0.4419632
Birth       ZVITAMBO       ZIMBABWE      [48-50) cm           >=50 cm           0.5244067   0.4804173   0.5724240
6 months    COHORTS        INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    COHORTS        INDIA         <48 cm               >=50 cm           1.7563480   1.4441239   2.1360759
6 months    COHORTS        INDIA         [48-50) cm           >=50 cm           1.3212129   1.0735949   1.6259425
6 months    COHORTS        PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    COHORTS        PHILIPPINES   <48 cm               >=50 cm           1.5132817   1.0116099   2.2637397
6 months    COHORTS        PHILIPPINES   [48-50) cm           >=50 cm           1.5565276   1.0772881   2.2489604
6 months    GMS-Nepal      NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal      NEPAL         <48 cm               >=50 cm           1.2972973   0.5850688   2.8765512
6 months    GMS-Nepal      NEPAL         [48-50) cm           >=50 cm           1.2832080   0.5467954   3.0114057
6 months    IRC            INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    IRC            INDIA         <48 cm               >=50 cm           0.6736221   0.3494872   1.2983787
6 months    IRC            INDIA         [48-50) cm           >=50 cm           0.8032692   0.4524414   1.4261326
6 months    JiVitA-3       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    JiVitA-3       BANGLADESH    <48 cm               >=50 cm           1.3203568   0.9817695   1.7757142
6 months    JiVitA-3       BANGLADESH    [48-50) cm           >=50 cm           1.0623692   0.7709174   1.4640067
6 months    JiVitA-4       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    JiVitA-4       BANGLADESH    <48 cm               >=50 cm           1.1548557   0.7573287   1.7610473
6 months    JiVitA-4       BANGLADESH    [48-50) cm           >=50 cm           1.0156799   0.6543978   1.5764198
6 months    Keneba         GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    Keneba         GAMBIA        <48 cm               >=50 cm           1.5311788   0.7848136   2.9873447
6 months    Keneba         GAMBIA        [48-50) cm           >=50 cm           2.4516349   1.4870818   4.0418178
6 months    NIH-Birth      BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    NIH-Birth      BANGLADESH    <48 cm               >=50 cm           1.4644652   0.6250772   3.4310295
6 months    NIH-Birth      BANGLADESH    [48-50) cm           >=50 cm           0.9475951   0.3772400   2.3802790
6 months    SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed   INDIA         <48 cm               >=50 cm           1.5213662   0.9608411   2.4088844
6 months    SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           0.7146185   0.3720759   1.3725145
6 months    ZVITAMBO       ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO       ZIMBABWE      <48 cm               >=50 cm           1.2088621   0.8758018   1.6685827
6 months    ZVITAMBO       ZIMBABWE      [48-50) cm           >=50 cm           1.3147387   0.9709211   1.7803072
24 months   COHORTS        INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   COHORTS        INDIA         <48 cm               >=50 cm           2.2120839   1.6746381   2.9220136
24 months   COHORTS        INDIA         [48-50) cm           >=50 cm           1.4330599   1.0644203   1.9293701
24 months   COHORTS        PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   COHORTS        PHILIPPINES   <48 cm               >=50 cm           2.1789166   1.4918092   3.1824965
24 months   COHORTS        PHILIPPINES   [48-50) cm           >=50 cm           1.4749207   1.0101630   2.1535051
24 months   GMS-Nepal      NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal      NEPAL         <48 cm               >=50 cm           1.8710659   0.9912940   3.5316339
24 months   GMS-Nepal      NEPAL         [48-50) cm           >=50 cm           1.3731948   0.6868387   2.7454251
24 months   IRC            INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   IRC            INDIA         <48 cm               >=50 cm           1.1618182   0.4884231   2.7636315
24 months   IRC            INDIA         [48-50) cm           >=50 cm           1.1318841   0.4961517   2.5821974
24 months   JiVitA-3       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   JiVitA-3       BANGLADESH    <48 cm               >=50 cm           1.8089160   1.3626324   2.4013643
24 months   JiVitA-3       BANGLADESH    [48-50) cm           >=50 cm           1.2118631   0.8996237   1.6324738
24 months   JiVitA-4       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   JiVitA-4       BANGLADESH    <48 cm               >=50 cm           1.2723719   1.0640256   1.5215144
24 months   JiVitA-4       BANGLADESH    [48-50) cm           >=50 cm           0.8755564   0.6967536   1.1002440
24 months   Keneba         GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   Keneba         GAMBIA        <48 cm               >=50 cm           1.6752077   1.0749734   2.6105955
24 months   Keneba         GAMBIA        [48-50) cm           >=50 cm           1.4289388   0.9565620   2.1345883
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
Birth       COHORTS        GUATEMALA     >=50 cm              NA                -0.0907475   -0.1202499   -0.0612451
Birth       COHORTS        INDIA         >=50 cm              NA                -0.0448697   -0.0637788   -0.0259605
Birth       COHORTS        PHILIPPINES   >=50 cm              NA                -0.0668213   -0.0845882   -0.0490543
Birth       GMS-Nepal      NEPAL         >=50 cm              NA                -0.0620905   -0.1346586    0.0104776
Birth       IRC            INDIA         >=50 cm              NA                -0.2203481   -0.2913318   -0.1493644
Birth       JiVitA-3       BANGLADESH    >=50 cm              NA                -0.0489011   -0.0687444   -0.0290577
Birth       JiVitA-4       BANGLADESH    >=50 cm              NA                -0.0565023   -0.1222894    0.0092847
Birth       Keneba         GAMBIA        >=50 cm              NA                -0.0872185   -0.1093956   -0.0650415
Birth       MAL-ED         BANGLADESH    >=50 cm              NA                -0.0633274   -0.1803577    0.0537030
Birth       NIH-Birth      BANGLADESH    >=50 cm              NA                -0.0470355   -0.1153708    0.0212999
Birth       NIH-Crypto     BANGLADESH    >=50 cm              NA                -0.0351920   -0.0956960    0.0253120
Birth       PROVIDE        BANGLADESH    >=50 cm              NA                -0.0220858   -0.0881724    0.0440008
Birth       SAS-CompFeed   INDIA         >=50 cm              NA                -0.0101699   -0.0517148    0.0313750
Birth       ZVITAMBO       ZIMBABWE      >=50 cm              NA                -0.0955920   -0.1063144   -0.0848695
6 months    COHORTS        INDIA         >=50 cm              NA                 0.0392181    0.0246257    0.0538105
6 months    COHORTS        PHILIPPINES   >=50 cm              NA                 0.0150232    0.0039209    0.0261256
6 months    GMS-Nepal      NEPAL         >=50 cm              NA                 0.0176695   -0.0307949    0.0661339
6 months    IRC            INDIA         >=50 cm              NA                -0.0268989   -0.0739751    0.0201773
6 months    JiVitA-3       BANGLADESH    >=50 cm              NA                 0.0172336   -0.0021588    0.0366260
6 months    JiVitA-4       BANGLADESH    >=50 cm              NA                 0.0037868   -0.0102747    0.0178483
6 months    Keneba         GAMBIA        >=50 cm              NA                 0.0196887    0.0075592    0.0318182
6 months    NIH-Birth      BANGLADESH    >=50 cm              NA                 0.0092342   -0.0283646    0.0468331
6 months    SAS-CompFeed   INDIA         >=50 cm              NA                 0.0198303   -0.0265399    0.0662006
6 months    ZVITAMBO       ZIMBABWE      >=50 cm              NA                 0.0043534   -0.0013630    0.0100698
24 months   COHORTS        INDIA         >=50 cm              NA                 0.0366735    0.0235514    0.0497957
24 months   COHORTS        PHILIPPINES   >=50 cm              NA                 0.0225733    0.0104324    0.0347142
24 months   GMS-Nepal      NEPAL         >=50 cm              NA                 0.0671591    0.0009854    0.1333327
24 months   IRC            INDIA         >=50 cm              NA                 0.0065005   -0.0279054    0.0409065
24 months   JiVitA-3       BANGLADESH    >=50 cm              NA                 0.0838623    0.0468764    0.1208483
24 months   JiVitA-4       BANGLADESH    >=50 cm              NA                 0.0190166   -0.0048462    0.0428793
24 months   Keneba         GAMBIA        >=50 cm              NA                 0.0228358    0.0044986    0.0411730
24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                 0.0576222    0.0089037    0.1063407
24 months   NIH-Crypto     BANGLADESH    >=50 cm              NA                 0.0250486   -0.0134555    0.0635528
24 months   PROVIDE        BANGLADESH    >=50 cm              NA                 0.0495272    0.0118960    0.0871584
24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                -0.0311871   -0.1484218    0.0860476


### Parameter: PAF


agecat      studyid        country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS        GUATEMALA     >=50 cm              NA                -0.3573182   -0.4780416   -0.2464553
Birth       COHORTS        INDIA         >=50 cm              NA                -0.2535382   -0.3648689   -0.1512887
Birth       COHORTS        PHILIPPINES   >=50 cm              NA                -0.4295230   -0.5456388   -0.3221304
Birth       GMS-Nepal      NEPAL         >=50 cm              NA                -0.3015154   -0.7051995    0.0066017
Birth       IRC            INDIA         >=50 cm              NA                -0.8215151   -1.1177622   -0.5667091
Birth       JiVitA-3       BANGLADESH    >=50 cm              NA                -0.4464794   -0.6380365   -0.2773235
Birth       JiVitA-4       BANGLADESH    >=50 cm              NA                -0.5664419   -1.3796725   -0.0311251
Birth       Keneba         GAMBIA        >=50 cm              NA                -0.3519976   -0.4439034   -0.2659417
Birth       MAL-ED         BANGLADESH    >=50 cm              NA                -0.3782051   -1.2817707    0.1675546
Birth       NIH-Birth      BANGLADESH    >=50 cm              NA                -0.1609845   -0.4203698    0.0510324
Birth       NIH-Crypto     BANGLADESH    >=50 cm              NA                -0.1446556   -0.4221791    0.0787120
Birth       PROVIDE        BANGLADESH    >=50 cm              NA                -0.1004243   -0.4458607    0.1624825
Birth       SAS-CompFeed   INDIA         >=50 cm              NA                -0.0950624   -0.5410045    0.2218312
Birth       ZVITAMBO       ZIMBABWE      >=50 cm              NA                -0.5991079   -0.6664747   -0.5344643
6 months    COHORTS        INDIA         >=50 cm              NA                 0.3041636    0.1830656    0.4073107
6 months    COHORTS        PHILIPPINES   >=50 cm              NA                 0.2534233    0.0444614    0.4166884
6 months    GMS-Nepal      NEPAL         >=50 cm              NA                 0.1950572   -0.5606777    0.5848387
6 months    IRC            INDIA         >=50 cm              NA                -0.1974280   -0.5950941    0.1010976
6 months    JiVitA-3       BANGLADESH    >=50 cm              NA                 0.2006113   -0.0596202    0.3969327
6 months    JiVitA-4       BANGLADESH    >=50 cm              NA                 0.0712059   -0.2314483    0.2994766
6 months    Keneba         GAMBIA        >=50 cm              NA                 0.3583881    0.1135583    0.5355973
6 months    NIH-Birth      BANGLADESH    >=50 cm              NA                 0.1366667   -0.6418943    0.5460460
6 months    SAS-CompFeed   INDIA         >=50 cm              NA                 0.1598516   -0.2807100    0.4488609
6 months    ZVITAMBO       ZIMBABWE      >=50 cm              NA                 0.1397910   -0.0638370    0.3044428
24 months   COHORTS        INDIA         >=50 cm              NA                 0.4036652    0.2462041    0.5282342
24 months   COHORTS        PHILIPPINES   >=50 cm              NA                 0.3306244    0.1358602    0.4814916
24 months   GMS-Nepal      NEPAL         >=50 cm              NA                 0.3626589   -0.1088615    0.6336750
24 months   IRC            INDIA         >=50 cm              NA                 0.0845070   -0.4909232    0.4378467
24 months   JiVitA-3       BANGLADESH    >=50 cm              NA                 0.3853468    0.1930482    0.5318201
24 months   JiVitA-4       BANGLADESH    >=50 cm              NA                 0.0944647   -0.0319898    0.2054242
24 months   Keneba         GAMBIA        >=50 cm              NA                 0.2154245    0.0263237    0.3677994
24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                 0.4490185   -0.0691897    0.7160648
24 months   NIH-Crypto     BANGLADESH    >=50 cm              NA                 0.2861111   -0.3102198    0.6110291
24 months   PROVIDE        BANGLADESH    >=50 cm              NA                 0.4625203   -0.0050565    0.7125690
24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                -0.1703297   -1.0218429    0.3225628
