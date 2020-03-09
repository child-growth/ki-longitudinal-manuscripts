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

**Outcome Variable:** swasted

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

agecat      studyid          country                        birthlen      swasted   n_cell       n
----------  ---------------  -----------------------------  -----------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm             0       13      86
Birth       CMC-V-BCS-2002   INDIA                          >=50 cm             1        0      86
Birth       CMC-V-BCS-2002   INDIA                          <48 cm              0       32      86
Birth       CMC-V-BCS-2002   INDIA                          <48 cm              1        1      86
Birth       CMC-V-BCS-2002   INDIA                          [48-50) cm          0       40      86
Birth       CMC-V-BCS-2002   INDIA                          [48-50) cm          1        0      86
Birth       CMIN             BANGLADESH                     >=50 cm             0        2      19
Birth       CMIN             BANGLADESH                     >=50 cm             1        0      19
Birth       CMIN             BANGLADESH                     <48 cm              0        8      19
Birth       CMIN             BANGLADESH                     <48 cm              1        1      19
Birth       CMIN             BANGLADESH                     [48-50) cm          0        8      19
Birth       CMIN             BANGLADESH                     [48-50) cm          1        0      19
Birth       COHORTS          GUATEMALA                      >=50 cm             0      351     756
Birth       COHORTS          GUATEMALA                      >=50 cm             1       45     756
Birth       COHORTS          GUATEMALA                      <48 cm              0      129     756
Birth       COHORTS          GUATEMALA                      <48 cm              1        3     756
Birth       COHORTS          GUATEMALA                      [48-50) cm          0      216     756
Birth       COHORTS          GUATEMALA                      [48-50) cm          1       12     756
Birth       COHORTS          INDIA                          >=50 cm             0     1310    6193
Birth       COHORTS          INDIA                          >=50 cm             1       94    6193
Birth       COHORTS          INDIA                          <48 cm              0     2258    6193
Birth       COHORTS          INDIA                          <48 cm              1       96    6193
Birth       COHORTS          INDIA                          [48-50) cm          0     2305    6193
Birth       COHORTS          INDIA                          [48-50) cm          1      130    6193
Birth       COHORTS          PHILIPPINES                    >=50 cm             0     1042    2899
Birth       COHORTS          PHILIPPINES                    >=50 cm             1       68    2899
Birth       COHORTS          PHILIPPINES                    <48 cm              0      626    2899
Birth       COHORTS          PHILIPPINES                    <48 cm              1       25    2899
Birth       COHORTS          PHILIPPINES                    [48-50) cm          0     1110    2899
Birth       COHORTS          PHILIPPINES                    [48-50) cm          1       28    2899
Birth       CONTENT          PERU                           >=50 cm             0        1       2
Birth       CONTENT          PERU                           >=50 cm             1        0       2
Birth       CONTENT          PERU                           <48 cm              0        1       2
Birth       CONTENT          PERU                           <48 cm              1        0       2
Birth       CONTENT          PERU                           [48-50) cm          0        0       2
Birth       CONTENT          PERU                           [48-50) cm          1        0       2
Birth       EE               PAKISTAN                       >=50 cm             0       19     177
Birth       EE               PAKISTAN                       >=50 cm             1        2     177
Birth       EE               PAKISTAN                       <48 cm              0      100     177
Birth       EE               PAKISTAN                       <48 cm              1        2     177
Birth       EE               PAKISTAN                       [48-50) cm          0       52     177
Birth       EE               PAKISTAN                       [48-50) cm          1        2     177
Birth       GMS-Nepal        NEPAL                          >=50 cm             0      108     641
Birth       GMS-Nepal        NEPAL                          >=50 cm             1        6     641
Birth       GMS-Nepal        NEPAL                          <48 cm              0      307     641
Birth       GMS-Nepal        NEPAL                          <48 cm              1       12     641
Birth       GMS-Nepal        NEPAL                          [48-50) cm          0      199     641
Birth       GMS-Nepal        NEPAL                          [48-50) cm          1        9     641
Birth       IRC              INDIA                          >=50 cm             0       82     343
Birth       IRC              INDIA                          >=50 cm             1       38     343
Birth       IRC              INDIA                          <48 cm              0       80     343
Birth       IRC              INDIA                          <48 cm              1        7     343
Birth       IRC              INDIA                          [48-50) cm          0      127     343
Birth       IRC              INDIA                          [48-50) cm          1        9     343
Birth       JiVitA-3         BANGLADESH                     >=50 cm             0     1206   18014
Birth       JiVitA-3         BANGLADESH                     >=50 cm             1       37   18014
Birth       JiVitA-3         BANGLADESH                     <48 cm              0    11489   18014
Birth       JiVitA-3         BANGLADESH                     <48 cm              1      203   18014
Birth       JiVitA-3         BANGLADESH                     [48-50) cm          0     4970   18014
Birth       JiVitA-3         BANGLADESH                     [48-50) cm          1      109   18014
Birth       JiVitA-4         BANGLADESH                     >=50 cm             0      176    2396
Birth       JiVitA-4         BANGLADESH                     >=50 cm             1        2    2396
Birth       JiVitA-4         BANGLADESH                     <48 cm              0     1470    2396
Birth       JiVitA-4         BANGLADESH                     <48 cm              1       17    2396
Birth       JiVitA-4         BANGLADESH                     [48-50) cm          0      719    2396
Birth       JiVitA-4         BANGLADESH                     [48-50) cm          1       12    2396
Birth       Keneba           GAMBIA                         >=50 cm             0      657    1465
Birth       Keneba           GAMBIA                         >=50 cm             1       79    1465
Birth       Keneba           GAMBIA                         <48 cm              0      235    1465
Birth       Keneba           GAMBIA                         <48 cm              1        5    1465
Birth       Keneba           GAMBIA                         [48-50) cm          0      470    1465
Birth       Keneba           GAMBIA                         [48-50) cm          1       19    1465
Birth       MAL-ED           BANGLADESH                     >=50 cm             0       35     215
Birth       MAL-ED           BANGLADESH                     >=50 cm             1        4     215
Birth       MAL-ED           BANGLADESH                     <48 cm              0       95     215
Birth       MAL-ED           BANGLADESH                     <48 cm              1        2     215
Birth       MAL-ED           BANGLADESH                     [48-50) cm          0       77     215
Birth       MAL-ED           BANGLADESH                     [48-50) cm          1        2     215
Birth       MAL-ED           BRAZIL                         >=50 cm             0       30      62
Birth       MAL-ED           BRAZIL                         >=50 cm             1        0      62
Birth       MAL-ED           BRAZIL                         <48 cm              0       14      62
Birth       MAL-ED           BRAZIL                         <48 cm              1        0      62
Birth       MAL-ED           BRAZIL                         [48-50) cm          0       18      62
Birth       MAL-ED           BRAZIL                         [48-50) cm          1        0      62
Birth       MAL-ED           INDIA                          >=50 cm             0        9      45
Birth       MAL-ED           INDIA                          >=50 cm             1        0      45
Birth       MAL-ED           INDIA                          <48 cm              0       18      45
Birth       MAL-ED           INDIA                          <48 cm              1        0      45
Birth       MAL-ED           INDIA                          [48-50) cm          0       18      45
Birth       MAL-ED           INDIA                          [48-50) cm          1        0      45
Birth       MAL-ED           NEPAL                          >=50 cm             0        8      26
Birth       MAL-ED           NEPAL                          >=50 cm             1        0      26
Birth       MAL-ED           NEPAL                          <48 cm              0       10      26
Birth       MAL-ED           NEPAL                          <48 cm              1        1      26
Birth       MAL-ED           NEPAL                          [48-50) cm          0        7      26
Birth       MAL-ED           NEPAL                          [48-50) cm          1        0      26
Birth       MAL-ED           PERU                           >=50 cm             0       52     228
Birth       MAL-ED           PERU                           >=50 cm             1        0     228
Birth       MAL-ED           PERU                           <48 cm              0       83     228
Birth       MAL-ED           PERU                           <48 cm              1        0     228
Birth       MAL-ED           PERU                           [48-50) cm          0       93     228
Birth       MAL-ED           PERU                           [48-50) cm          1        0     228
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm             0       43     120
Birth       MAL-ED           SOUTH AFRICA                   >=50 cm             1        0     120
Birth       MAL-ED           SOUTH AFRICA                   <48 cm              0       31     120
Birth       MAL-ED           SOUTH AFRICA                   <48 cm              1        0     120
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm          0       46     120
Birth       MAL-ED           SOUTH AFRICA                   [48-50) cm          1        0     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       32     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm              0       32     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm              1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       51     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        0     115
Birth       NIH-Birth        BANGLADESH                     >=50 cm             0      125     575
Birth       NIH-Birth        BANGLADESH                     >=50 cm             1       11     575
Birth       NIH-Birth        BANGLADESH                     <48 cm              0      196     575
Birth       NIH-Birth        BANGLADESH                     <48 cm              1       15     575
Birth       NIH-Birth        BANGLADESH                     [48-50) cm          0      216     575
Birth       NIH-Birth        BANGLADESH                     [48-50) cm          1       12     575
Birth       NIH-Crypto       BANGLADESH                     >=50 cm             0      147     707
Birth       NIH-Crypto       BANGLADESH                     >=50 cm             1       13     707
Birth       NIH-Crypto       BANGLADESH                     <48 cm              0      253     707
Birth       NIH-Crypto       BANGLADESH                     <48 cm              1       14     707
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm          0      260     707
Birth       NIH-Crypto       BANGLADESH                     [48-50) cm          1       20     707
Birth       PROBIT           BELARUS                        >=50 cm             0    11639   13817
Birth       PROBIT           BELARUS                        >=50 cm             1      918   13817
Birth       PROBIT           BELARUS                        <48 cm              0      140   13817
Birth       PROBIT           BELARUS                        <48 cm              1        0   13817
Birth       PROBIT           BELARUS                        [48-50) cm          0     1119   13817
Birth       PROBIT           BELARUS                        [48-50) cm          1        1   13817
Birth       PROVIDE          BANGLADESH                     >=50 cm             0      118     532
Birth       PROVIDE          BANGLADESH                     >=50 cm             1        3     532
Birth       PROVIDE          BANGLADESH                     <48 cm              0      183     532
Birth       PROVIDE          BANGLADESH                     <48 cm              1        6     532
Birth       PROVIDE          BANGLADESH                     [48-50) cm          0      218     532
Birth       PROVIDE          BANGLADESH                     [48-50) cm          1        4     532
Birth       ResPak           PAKISTAN                       >=50 cm             0       12      38
Birth       ResPak           PAKISTAN                       >=50 cm             1        0      38
Birth       ResPak           PAKISTAN                       <48 cm              0       12      38
Birth       ResPak           PAKISTAN                       <48 cm              1        0      38
Birth       ResPak           PAKISTAN                       [48-50) cm          0       14      38
Birth       ResPak           PAKISTAN                       [48-50) cm          1        0      38
Birth       SAS-CompFeed     INDIA                          >=50 cm             0      112    1103
Birth       SAS-CompFeed     INDIA                          >=50 cm             1        4    1103
Birth       SAS-CompFeed     INDIA                          <48 cm              0      573    1103
Birth       SAS-CompFeed     INDIA                          <48 cm              1       17    1103
Birth       SAS-CompFeed     INDIA                          [48-50) cm          0      389    1103
Birth       SAS-CompFeed     INDIA                          [48-50) cm          1        8    1103
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm             0     3585   12917
Birth       ZVITAMBO         ZIMBABWE                       >=50 cm             1      412   12917
Birth       ZVITAMBO         ZIMBABWE                       <48 cm              0     3499   12917
Birth       ZVITAMBO         ZIMBABWE                       <48 cm              1      142   12917
Birth       ZVITAMBO         ZIMBABWE                       [48-50) cm          0     5041   12917
Birth       ZVITAMBO         ZIMBABWE                       [48-50) cm          1      238   12917
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm             0       15     105
6 months    CMC-V-BCS-2002   INDIA                          >=50 cm             1        1     105
6 months    CMC-V-BCS-2002   INDIA                          <48 cm              0       49     105
6 months    CMC-V-BCS-2002   INDIA                          <48 cm              1        0     105
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm          0       39     105
6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm          1        1     105
6 months    CMIN             BANGLADESH                     >=50 cm             0        0      12
6 months    CMIN             BANGLADESH                     >=50 cm             1        0      12
6 months    CMIN             BANGLADESH                     <48 cm              0        6      12
6 months    CMIN             BANGLADESH                     <48 cm              1        0      12
6 months    CMIN             BANGLADESH                     [48-50) cm          0        6      12
6 months    CMIN             BANGLADESH                     [48-50) cm          1        0      12
6 months    COHORTS          GUATEMALA                      >=50 cm             0      350     689
6 months    COHORTS          GUATEMALA                      >=50 cm             1        1     689
6 months    COHORTS          GUATEMALA                      <48 cm              0      133     689
6 months    COHORTS          GUATEMALA                      <48 cm              1        1     689
6 months    COHORTS          GUATEMALA                      [48-50) cm          0      203     689
6 months    COHORTS          GUATEMALA                      [48-50) cm          1        1     689
6 months    COHORTS          INDIA                          >=50 cm             0     1307    6127
6 months    COHORTS          INDIA                          >=50 cm             1       22    6127
6 months    COHORTS          INDIA                          <48 cm              0     2410    6127
6 months    COHORTS          INDIA                          <48 cm              1      117    6127
6 months    COHORTS          INDIA                          [48-50) cm          0     2209    6127
6 months    COHORTS          INDIA                          [48-50) cm          1       62    6127
6 months    COHORTS          PHILIPPINES                    >=50 cm             0      980    2699
6 months    COHORTS          PHILIPPINES                    >=50 cm             1        9    2699
6 months    COHORTS          PHILIPPINES                    <48 cm              0      667    2699
6 months    COHORTS          PHILIPPINES                    <48 cm              1       10    2699
6 months    COHORTS          PHILIPPINES                    [48-50) cm          0     1017    2699
6 months    COHORTS          PHILIPPINES                    [48-50) cm          1       16    2699
6 months    CONTENT          PERU                           >=50 cm             0        1       2
6 months    CONTENT          PERU                           >=50 cm             1        0       2
6 months    CONTENT          PERU                           <48 cm              0        1       2
6 months    CONTENT          PERU                           <48 cm              1        0       2
6 months    CONTENT          PERU                           [48-50) cm          0        0       2
6 months    CONTENT          PERU                           [48-50) cm          1        0       2
6 months    EE               PAKISTAN                       >=50 cm             0       22     238
6 months    EE               PAKISTAN                       >=50 cm             1        2     238
6 months    EE               PAKISTAN                       <48 cm              0      157     238
6 months    EE               PAKISTAN                       <48 cm              1        5     238
6 months    EE               PAKISTAN                       [48-50) cm          0       51     238
6 months    EE               PAKISTAN                       [48-50) cm          1        1     238
6 months    GMS-Nepal        NEPAL                          >=50 cm             0       95     563
6 months    GMS-Nepal        NEPAL                          >=50 cm             1        1     563
6 months    GMS-Nepal        NEPAL                          <48 cm              0      291     563
6 months    GMS-Nepal        NEPAL                          <48 cm              1        5     563
6 months    GMS-Nepal        NEPAL                          [48-50) cm          0      170     563
6 months    GMS-Nepal        NEPAL                          [48-50) cm          1        1     563
6 months    IRC              INDIA                          >=50 cm             0      135     389
6 months    IRC              INDIA                          >=50 cm             1        6     389
6 months    IRC              INDIA                          <48 cm              0      107     389
6 months    IRC              INDIA                          <48 cm              1        3     389
6 months    IRC              INDIA                          [48-50) cm          0      125     389
6 months    IRC              INDIA                          [48-50) cm          1       13     389
6 months    JiVitA-3         BANGLADESH                     >=50 cm             0      817   13899
6 months    JiVitA-3         BANGLADESH                     >=50 cm             1        9   13899
6 months    JiVitA-3         BANGLADESH                     <48 cm              0     9660   13899
6 months    JiVitA-3         BANGLADESH                     <48 cm              1      146   13899
6 months    JiVitA-3         BANGLADESH                     [48-50) cm          0     3225   13899
6 months    JiVitA-3         BANGLADESH                     [48-50) cm          1       42   13899
6 months    JiVitA-4         BANGLADESH                     >=50 cm             0     1094    4024
6 months    JiVitA-4         BANGLADESH                     >=50 cm             1        7    4024
6 months    JiVitA-4         BANGLADESH                     <48 cm              0     1910    4024
6 months    JiVitA-4         BANGLADESH                     <48 cm              1       17    4024
6 months    JiVitA-4         BANGLADESH                     [48-50) cm          0      992    4024
6 months    JiVitA-4         BANGLADESH                     [48-50) cm          1        4    4024
6 months    Keneba           GAMBIA                         >=50 cm             0      673    1347
6 months    Keneba           GAMBIA                         >=50 cm             1        4    1347
6 months    Keneba           GAMBIA                         <48 cm              0      231    1347
6 months    Keneba           GAMBIA                         <48 cm              1        3    1347
6 months    Keneba           GAMBIA                         [48-50) cm          0      424    1347
6 months    Keneba           GAMBIA                         [48-50) cm          1       12    1347
6 months    MAL-ED           BANGLADESH                     >=50 cm             0       37     211
6 months    MAL-ED           BANGLADESH                     >=50 cm             1        2     211
6 months    MAL-ED           BANGLADESH                     <48 cm              0       98     211
6 months    MAL-ED           BANGLADESH                     <48 cm              1        0     211
6 months    MAL-ED           BANGLADESH                     [48-50) cm          0       74     211
6 months    MAL-ED           BANGLADESH                     [48-50) cm          1        0     211
6 months    MAL-ED           BRAZIL                         >=50 cm             0       28      59
6 months    MAL-ED           BRAZIL                         >=50 cm             1        0      59
6 months    MAL-ED           BRAZIL                         <48 cm              0       15      59
6 months    MAL-ED           BRAZIL                         <48 cm              1        0      59
6 months    MAL-ED           BRAZIL                         [48-50) cm          0       16      59
6 months    MAL-ED           BRAZIL                         [48-50) cm          1        0      59
6 months    MAL-ED           INDIA                          >=50 cm             0        8      41
6 months    MAL-ED           INDIA                          >=50 cm             1        0      41
6 months    MAL-ED           INDIA                          <48 cm              0       18      41
6 months    MAL-ED           INDIA                          <48 cm              1        0      41
6 months    MAL-ED           INDIA                          [48-50) cm          0       14      41
6 months    MAL-ED           INDIA                          [48-50) cm          1        1      41
6 months    MAL-ED           NEPAL                          >=50 cm             0        8      26
6 months    MAL-ED           NEPAL                          >=50 cm             1        0      26
6 months    MAL-ED           NEPAL                          <48 cm              0       11      26
6 months    MAL-ED           NEPAL                          <48 cm              1        0      26
6 months    MAL-ED           NEPAL                          [48-50) cm          0        7      26
6 months    MAL-ED           NEPAL                          [48-50) cm          1        0      26
6 months    MAL-ED           PERU                           >=50 cm             0       48     215
6 months    MAL-ED           PERU                           >=50 cm             1        0     215
6 months    MAL-ED           PERU                           <48 cm              0       84     215
6 months    MAL-ED           PERU                           <48 cm              1        0     215
6 months    MAL-ED           PERU                           [48-50) cm          0       83     215
6 months    MAL-ED           PERU                           [48-50) cm          1        0     215
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm             0       33      93
6 months    MAL-ED           SOUTH AFRICA                   >=50 cm             1        1      93
6 months    MAL-ED           SOUTH AFRICA                   <48 cm              0       21      93
6 months    MAL-ED           SOUTH AFRICA                   <48 cm              1        0      93
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm          0       36      93
6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm          1        2      93
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       31     118
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        0     118
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm              0       39     118
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm              1        0     118
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       48     118
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        0     118
6 months    NIH-Birth        BANGLADESH                     >=50 cm             0      118     518
6 months    NIH-Birth        BANGLADESH                     >=50 cm             1        2     518
6 months    NIH-Birth        BANGLADESH                     <48 cm              0      196     518
6 months    NIH-Birth        BANGLADESH                     <48 cm              1        3     518
6 months    NIH-Birth        BANGLADESH                     [48-50) cm          0      198     518
6 months    NIH-Birth        BANGLADESH                     [48-50) cm          1        1     518
6 months    NIH-Crypto       BANGLADESH                     >=50 cm             0      164     715
6 months    NIH-Crypto       BANGLADESH                     >=50 cm             1        0     715
6 months    NIH-Crypto       BANGLADESH                     <48 cm              0      270     715
6 months    NIH-Crypto       BANGLADESH                     <48 cm              1        0     715
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm          0      281     715
6 months    NIH-Crypto       BANGLADESH                     [48-50) cm          1        0     715
6 months    PROBIT           BELARUS                        >=50 cm             0    14284   15757
6 months    PROBIT           BELARUS                        >=50 cm             1        8   15757
6 months    PROBIT           BELARUS                        <48 cm              0      172   15757
6 months    PROBIT           BELARUS                        <48 cm              1        0   15757
6 months    PROBIT           BELARUS                        [48-50) cm          0     1292   15757
6 months    PROBIT           BELARUS                        [48-50) cm          1        1   15757
6 months    PROVIDE          BANGLADESH                     >=50 cm             0      142     603
6 months    PROVIDE          BANGLADESH                     >=50 cm             1        1     603
6 months    PROVIDE          BANGLADESH                     <48 cm              0      210     603
6 months    PROVIDE          BANGLADESH                     <48 cm              1        3     603
6 months    PROVIDE          BANGLADESH                     [48-50) cm          0      246     603
6 months    PROVIDE          BANGLADESH                     [48-50) cm          1        1     603
6 months    ResPak           PAKISTAN                       >=50 cm             0       10      34
6 months    ResPak           PAKISTAN                       >=50 cm             1        0      34
6 months    ResPak           PAKISTAN                       <48 cm              0       13      34
6 months    ResPak           PAKISTAN                       <48 cm              1        0      34
6 months    ResPak           PAKISTAN                       [48-50) cm          0       10      34
6 months    ResPak           PAKISTAN                       [48-50) cm          1        1      34
6 months    SAS-CompFeed     INDIA                          >=50 cm             0      194    1322
6 months    SAS-CompFeed     INDIA                          >=50 cm             1        2    1322
6 months    SAS-CompFeed     INDIA                          <48 cm              0      676    1322
6 months    SAS-CompFeed     INDIA                          <48 cm              1       32    1322
6 months    SAS-CompFeed     INDIA                          [48-50) cm          0      410    1322
6 months    SAS-CompFeed     INDIA                          [48-50) cm          1        8    1322
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm             0     2440    8413
6 months    ZVITAMBO         ZIMBABWE                       >=50 cm             1       21    8413
6 months    ZVITAMBO         ZIMBABWE                       <48 cm              0     2634    8413
6 months    ZVITAMBO         ZIMBABWE                       <48 cm              1       23    8413
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm          0     3260    8413
6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm          1       35    8413
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm             0       16     106
24 months   CMC-V-BCS-2002   INDIA                          >=50 cm             1        0     106
24 months   CMC-V-BCS-2002   INDIA                          <48 cm              0       50     106
24 months   CMC-V-BCS-2002   INDIA                          <48 cm              1        0     106
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm          0       40     106
24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm          1        0     106
24 months   CMIN             BANGLADESH                     >=50 cm             0        0      11
24 months   CMIN             BANGLADESH                     >=50 cm             1        0      11
24 months   CMIN             BANGLADESH                     <48 cm              0        5      11
24 months   CMIN             BANGLADESH                     <48 cm              1        0      11
24 months   CMIN             BANGLADESH                     [48-50) cm          0        6      11
24 months   CMIN             BANGLADESH                     [48-50) cm          1        0      11
24 months   COHORTS          GUATEMALA                      >=50 cm             0      263     564
24 months   COHORTS          GUATEMALA                      >=50 cm             1        1     564
24 months   COHORTS          GUATEMALA                      <48 cm              0      122     564
24 months   COHORTS          GUATEMALA                      <48 cm              1        0     564
24 months   COHORTS          GUATEMALA                      [48-50) cm          0      178     564
24 months   COHORTS          GUATEMALA                      [48-50) cm          1        0     564
24 months   COHORTS          INDIA                          >=50 cm             0     1028    4722
24 months   COHORTS          INDIA                          >=50 cm             1        7    4722
24 months   COHORTS          INDIA                          <48 cm              0     1895    4722
24 months   COHORTS          INDIA                          <48 cm              1       33    4722
24 months   COHORTS          INDIA                          [48-50) cm          0     1749    4722
24 months   COHORTS          INDIA                          [48-50) cm          1       10    4722
24 months   COHORTS          PHILIPPINES                    >=50 cm             0      891    2446
24 months   COHORTS          PHILIPPINES                    >=50 cm             1        4    2446
24 months   COHORTS          PHILIPPINES                    <48 cm              0      601    2446
24 months   COHORTS          PHILIPPINES                    <48 cm              1        8    2446
24 months   COHORTS          PHILIPPINES                    [48-50) cm          0      929    2446
24 months   COHORTS          PHILIPPINES                    [48-50) cm          1       13    2446
24 months   CONTENT          PERU                           >=50 cm             0        1       2
24 months   CONTENT          PERU                           >=50 cm             1        0       2
24 months   CONTENT          PERU                           <48 cm              0        1       2
24 months   CONTENT          PERU                           <48 cm              1        0       2
24 months   CONTENT          PERU                           [48-50) cm          0        0       2
24 months   CONTENT          PERU                           [48-50) cm          1        0       2
24 months   EE               PAKISTAN                       >=50 cm             0       10     107
24 months   EE               PAKISTAN                       >=50 cm             1        0     107
24 months   EE               PAKISTAN                       <48 cm              0       71     107
24 months   EE               PAKISTAN                       <48 cm              1        1     107
24 months   EE               PAKISTAN                       [48-50) cm          0       24     107
24 months   EE               PAKISTAN                       [48-50) cm          1        1     107
24 months   GMS-Nepal        NEPAL                          >=50 cm             0       83     486
24 months   GMS-Nepal        NEPAL                          >=50 cm             1        1     486
24 months   GMS-Nepal        NEPAL                          <48 cm              0      243     486
24 months   GMS-Nepal        NEPAL                          <48 cm              1        6     486
24 months   GMS-Nepal        NEPAL                          [48-50) cm          0      145     486
24 months   GMS-Nepal        NEPAL                          [48-50) cm          1        8     486
24 months   IRC              INDIA                          >=50 cm             0      142     390
24 months   IRC              INDIA                          >=50 cm             1        0     390
24 months   IRC              INDIA                          <48 cm              0      109     390
24 months   IRC              INDIA                          <48 cm              1        1     390
24 months   IRC              INDIA                          [48-50) cm          0      134     390
24 months   IRC              INDIA                          [48-50) cm          1        4     390
24 months   JiVitA-3         BANGLADESH                     >=50 cm             0      395    7159
24 months   JiVitA-3         BANGLADESH                     >=50 cm             1        9    7159
24 months   JiVitA-3         BANGLADESH                     <48 cm              0     4826    7159
24 months   JiVitA-3         BANGLADESH                     <48 cm              1      224    7159
24 months   JiVitA-3         BANGLADESH                     [48-50) cm          0     1667    7159
24 months   JiVitA-3         BANGLADESH                     [48-50) cm          1       38    7159
24 months   JiVitA-4         BANGLADESH                     >=50 cm             0     1048    3974
24 months   JiVitA-4         BANGLADESH                     >=50 cm             1       26    3974
24 months   JiVitA-4         BANGLADESH                     <48 cm              0     1871    3974
24 months   JiVitA-4         BANGLADESH                     <48 cm              1       66    3974
24 months   JiVitA-4         BANGLADESH                     [48-50) cm          0      944    3974
24 months   JiVitA-4         BANGLADESH                     [48-50) cm          1       19    3974
24 months   Keneba           GAMBIA                         >=50 cm             0      530    1066
24 months   Keneba           GAMBIA                         >=50 cm             1        5    1066
24 months   Keneba           GAMBIA                         <48 cm              0      191    1066
24 months   Keneba           GAMBIA                         <48 cm              1        6    1066
24 months   Keneba           GAMBIA                         [48-50) cm          0      324    1066
24 months   Keneba           GAMBIA                         [48-50) cm          1       10    1066
24 months   MAL-ED           BANGLADESH                     >=50 cm             0       39     187
24 months   MAL-ED           BANGLADESH                     >=50 cm             1        0     187
24 months   MAL-ED           BANGLADESH                     <48 cm              0       80     187
24 months   MAL-ED           BANGLADESH                     <48 cm              1        0     187
24 months   MAL-ED           BANGLADESH                     [48-50) cm          0       68     187
24 months   MAL-ED           BANGLADESH                     [48-50) cm          1        0     187
24 months   MAL-ED           BRAZIL                         >=50 cm             0       20      42
24 months   MAL-ED           BRAZIL                         >=50 cm             1        0      42
24 months   MAL-ED           BRAZIL                         <48 cm              0       10      42
24 months   MAL-ED           BRAZIL                         <48 cm              1        0      42
24 months   MAL-ED           BRAZIL                         [48-50) cm          0       12      42
24 months   MAL-ED           BRAZIL                         [48-50) cm          1        0      42
24 months   MAL-ED           INDIA                          >=50 cm             0        6      39
24 months   MAL-ED           INDIA                          >=50 cm             1        0      39
24 months   MAL-ED           INDIA                          <48 cm              0       18      39
24 months   MAL-ED           INDIA                          <48 cm              1        0      39
24 months   MAL-ED           INDIA                          [48-50) cm          0       15      39
24 months   MAL-ED           INDIA                          [48-50) cm          1        0      39
24 months   MAL-ED           NEPAL                          >=50 cm             0        8      26
24 months   MAL-ED           NEPAL                          >=50 cm             1        0      26
24 months   MAL-ED           NEPAL                          <48 cm              0       11      26
24 months   MAL-ED           NEPAL                          <48 cm              1        0      26
24 months   MAL-ED           NEPAL                          [48-50) cm          0        7      26
24 months   MAL-ED           NEPAL                          [48-50) cm          1        0      26
24 months   MAL-ED           PERU                           >=50 cm             0       34     160
24 months   MAL-ED           PERU                           >=50 cm             1        0     160
24 months   MAL-ED           PERU                           <48 cm              0       65     160
24 months   MAL-ED           PERU                           <48 cm              1        2     160
24 months   MAL-ED           PERU                           [48-50) cm          0       59     160
24 months   MAL-ED           PERU                           [48-50) cm          1        0     160
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm             0       32      91
24 months   MAL-ED           SOUTH AFRICA                   >=50 cm             1        0      91
24 months   MAL-ED           SOUTH AFRICA                   <48 cm              0       21      91
24 months   MAL-ED           SOUTH AFRICA                   <48 cm              1        0      91
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm          0       38      91
24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm          1        0      91
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       29     104
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        0     104
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm              0       34     104
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm              1        0     104
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       41     104
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        0     104
24 months   NIH-Birth        BANGLADESH                     >=50 cm             0       99     413
24 months   NIH-Birth        BANGLADESH                     >=50 cm             1        0     413
24 months   NIH-Birth        BANGLADESH                     <48 cm              0      153     413
24 months   NIH-Birth        BANGLADESH                     <48 cm              1        7     413
24 months   NIH-Birth        BANGLADESH                     [48-50) cm          0      151     413
24 months   NIH-Birth        BANGLADESH                     [48-50) cm          1        3     413
24 months   NIH-Crypto       BANGLADESH                     >=50 cm             0      128     514
24 months   NIH-Crypto       BANGLADESH                     >=50 cm             1        0     514
24 months   NIH-Crypto       BANGLADESH                     <48 cm              0      197     514
24 months   NIH-Crypto       BANGLADESH                     <48 cm              1        3     514
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm          0      185     514
24 months   NIH-Crypto       BANGLADESH                     [48-50) cm          1        1     514
24 months   PROBIT           BELARUS                        >=50 cm             0     3615    3970
24 months   PROBIT           BELARUS                        >=50 cm             1        7    3970
24 months   PROBIT           BELARUS                        <48 cm              0       44    3970
24 months   PROBIT           BELARUS                        <48 cm              1        0    3970
24 months   PROBIT           BELARUS                        [48-50) cm          0      304    3970
24 months   PROBIT           BELARUS                        [48-50) cm          1        0    3970
24 months   PROVIDE          BANGLADESH                     >=50 cm             0      137     579
24 months   PROVIDE          BANGLADESH                     >=50 cm             1        2     579
24 months   PROVIDE          BANGLADESH                     <48 cm              0      202     579
24 months   PROVIDE          BANGLADESH                     <48 cm              1        4     579
24 months   PROVIDE          BANGLADESH                     [48-50) cm          0      231     579
24 months   PROVIDE          BANGLADESH                     [48-50) cm          1        3     579
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm             0       38     426
24 months   ZVITAMBO         ZIMBABWE                       >=50 cm             1        4     426
24 months   ZVITAMBO         ZIMBABWE                       <48 cm              0      243     426
24 months   ZVITAMBO         ZIMBABWE                       <48 cm              1       15     426
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm          0      114     426
24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm          1       12     426


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
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
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
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/e7e52ed8-4bd0-4e88-9f0c-e3ab54b53b5e/f62b753b-59e7-462f-b08e-22b149b5816b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e7e52ed8-4bd0-4e88-9f0c-e3ab54b53b5e/f62b753b-59e7-462f-b08e-22b149b5816b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e7e52ed8-4bd0-4e88-9f0c-e3ab54b53b5e/f62b753b-59e7-462f-b08e-22b149b5816b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e7e52ed8-4bd0-4e88-9f0c-e3ab54b53b5e/f62b753b-59e7-462f-b08e-22b149b5816b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS      INDIA         >=50 cm              NA                0.0685322   0.0551762   0.0818883
Birth       COHORTS      INDIA         <48 cm               NA                0.0385103   0.0307795   0.0462411
Birth       COHORTS      INDIA         [48-50) cm           NA                0.0540998   0.0449897   0.0632100
Birth       COHORTS      PHILIPPINES   >=50 cm              NA                0.0626440   0.0484860   0.0768019
Birth       COHORTS      PHILIPPINES   <48 cm               NA                0.0352318   0.0210920   0.0493715
Birth       COHORTS      PHILIPPINES   [48-50) cm           NA                0.0251759   0.0160853   0.0342665
Birth       GMS-Nepal    NEPAL         >=50 cm              NA                0.0526316   0.0116095   0.0936536
Birth       GMS-Nepal    NEPAL         <48 cm               NA                0.0376176   0.0167217   0.0585134
Birth       GMS-Nepal    NEPAL         [48-50) cm           NA                0.0432692   0.0155973   0.0709412
Birth       IRC          INDIA         >=50 cm              NA                0.3166667   0.2333160   0.4000173
Birth       IRC          INDIA         <48 cm               NA                0.0804598   0.0232201   0.1376995
Birth       IRC          INDIA         [48-50) cm           NA                0.0661765   0.0243360   0.1080170
Birth       JiVitA-3     BANGLADESH    >=50 cm              NA                0.0304990   0.0198002   0.0411978
Birth       JiVitA-3     BANGLADESH    <48 cm               NA                0.0173828   0.0148127   0.0199528
Birth       JiVitA-3     BANGLADESH    [48-50) cm           NA                0.0213367   0.0162704   0.0264030
Birth       Keneba       GAMBIA        >=50 cm              NA                0.1073370   0.0849664   0.1297075
Birth       Keneba       GAMBIA        <48 cm               NA                0.0208333   0.0027575   0.0389092
Birth       Keneba       GAMBIA        [48-50) cm           NA                0.0388548   0.0217208   0.0559888
Birth       NIH-Birth    BANGLADESH    >=50 cm              NA                0.0799279   0.0338655   0.1259904
Birth       NIH-Birth    BANGLADESH    <48 cm               NA                0.0696600   0.0347900   0.1045301
Birth       NIH-Birth    BANGLADESH    [48-50) cm           NA                0.0521624   0.0229424   0.0813825
Birth       NIH-Crypto   BANGLADESH    >=50 cm              NA                0.0817025   0.0393842   0.1240209
Birth       NIH-Crypto   BANGLADESH    <48 cm               NA                0.0529087   0.0260180   0.0797993
Birth       NIH-Crypto   BANGLADESH    [48-50) cm           NA                0.0726579   0.0421891   0.1031266
Birth       ZVITAMBO     ZIMBABWE      >=50 cm              NA                0.1055505   0.0958980   0.1152030
Birth       ZVITAMBO     ZIMBABWE      <48 cm               NA                0.0390045   0.0326061   0.0454029
Birth       ZVITAMBO     ZIMBABWE      [48-50) cm           NA                0.0454723   0.0397384   0.0512062
6 months    COHORTS      INDIA         >=50 cm              NA                0.0165198   0.0097385   0.0233011
6 months    COHORTS      INDIA         <48 cm               NA                0.0449441   0.0368691   0.0530191
6 months    COHORTS      INDIA         [48-50) cm           NA                0.0278646   0.0209937   0.0347355
6 months    COHORTS      PHILIPPINES   >=50 cm              NA                0.0091001   0.0031808   0.0150194
6 months    COHORTS      PHILIPPINES   <48 cm               NA                0.0147710   0.0056822   0.0238599
6 months    COHORTS      PHILIPPINES   [48-50) cm           NA                0.0154889   0.0079571   0.0230207
6 months    JiVitA-3     BANGLADESH    >=50 cm              NA                0.0108959   0.0044253   0.0173665
6 months    JiVitA-3     BANGLADESH    <48 cm               NA                0.0148888   0.0120858   0.0176919
6 months    JiVitA-3     BANGLADESH    [48-50) cm           NA                0.0128558   0.0085196   0.0171921
6 months    ZVITAMBO     ZIMBABWE      >=50 cm              NA                0.0084234   0.0047801   0.0120668
6 months    ZVITAMBO     ZIMBABWE      <48 cm               NA                0.0088753   0.0052667   0.0124840
6 months    ZVITAMBO     ZIMBABWE      [48-50) cm           NA                0.0108306   0.0072332   0.0144280
24 months   COHORTS      INDIA         >=50 cm              NA                0.0067633   0.0017695   0.0117571
24 months   COHORTS      INDIA         <48 cm               NA                0.0171162   0.0113260   0.0229064
24 months   COHORTS      INDIA         [48-50) cm           NA                0.0056850   0.0021711   0.0091990
24 months   JiVitA-3     BANGLADESH    >=50 cm              NA                0.0222772   0.0052361   0.0393183
24 months   JiVitA-3     BANGLADESH    <48 cm               NA                0.0443564   0.0382215   0.0504914
24 months   JiVitA-3     BANGLADESH    [48-50) cm           NA                0.0222874   0.0156040   0.0289708
24 months   JiVitA-4     BANGLADESH    >=50 cm              NA                0.0230258   0.0131678   0.0328838
24 months   JiVitA-4     BANGLADESH    <48 cm               NA                0.0325722   0.0232610   0.0418834
24 months   JiVitA-4     BANGLADESH    [48-50) cm           NA                0.0204224   0.0098733   0.0309716
24 months   Keneba       GAMBIA        >=50 cm              NA                0.0093458   0.0011885   0.0175031
24 months   Keneba       GAMBIA        <48 cm               NA                0.0304569   0.0064495   0.0544642
24 months   Keneba       GAMBIA        [48-50) cm           NA                0.0299401   0.0116547   0.0482255


### Parameter: E(Y)


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS      INDIA         NA                   NA                0.0516712   0.0461576   0.0571849
Birth       COHORTS      PHILIPPINES   NA                   NA                0.0417385   0.0344572   0.0490198
Birth       GMS-Nepal    NEPAL         NA                   NA                0.0421217   0.0265597   0.0576837
Birth       IRC          INDIA         NA                   NA                0.1574344   0.1188345   0.1960344
Birth       JiVitA-3     BANGLADESH    NA                   NA                0.0193738   0.0169653   0.0217823
Birth       Keneba       GAMBIA        NA                   NA                0.0703072   0.0572109   0.0834034
Birth       NIH-Birth    BANGLADESH    NA                   NA                0.0660870   0.0457632   0.0864107
Birth       NIH-Crypto   BANGLADESH    NA                   NA                0.0664781   0.0481022   0.0848539
Birth       ZVITAMBO     ZIMBABWE      NA                   NA                0.0613145   0.0571772   0.0654519
6 months    COHORTS      INDIA         NA                   NA                0.0328056   0.0283450   0.0372662
6 months    COHORTS      PHILIPPINES   NA                   NA                0.0129678   0.0086988   0.0172368
6 months    JiVitA-3     BANGLADESH    NA                   NA                0.0141737   0.0119136   0.0164337
6 months    ZVITAMBO     ZIMBABWE      NA                   NA                0.0093902   0.0073292   0.0114513
24 months   COHORTS      INDIA         NA                   NA                0.0105887   0.0076690   0.0135085
24 months   JiVitA-3     BANGLADESH    NA                   NA                0.0378544   0.0331920   0.0425169
24 months   JiVitA-4     BANGLADESH    NA                   NA                0.0279316   0.0220494   0.0338137
24 months   Keneba       GAMBIA        NA                   NA                0.0196998   0.0113537   0.0280459


### Parameter: RR


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  -----------
Birth       COHORTS      INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
Birth       COHORTS      INDIA         <48 cm               >=50 cm           0.5619295   0.4248562    0.7432274
Birth       COHORTS      INDIA         [48-50) cm           >=50 cm           0.7894071   0.6101941    1.0212546
Birth       COHORTS      PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
Birth       COHORTS      PHILIPPINES   <48 cm               >=50 cm           0.5624129   0.3549470    0.8911423
Birth       COHORTS      PHILIPPINES   [48-50) cm           >=50 cm           0.4018888   0.2625644    0.6151427
Birth       GMS-Nepal    NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
Birth       GMS-Nepal    NEPAL         <48 cm               >=50 cm           0.7147335   0.2744591    1.8612754
Birth       GMS-Nepal    NEPAL         [48-50) cm           >=50 cm           0.8221154   0.2999658    2.2531693
Birth       IRC          INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
Birth       IRC          INDIA         <48 cm               >=50 cm           0.2540835   0.1190000    0.5425075
Birth       IRC          INDIA         [48-50) cm           >=50 cm           0.2089783   0.1053590    0.4145060
Birth       JiVitA-3     BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
Birth       JiVitA-3     BANGLADESH    <48 cm               >=50 cm           0.5699464   0.3907261    0.8313724
Birth       JiVitA-3     BANGLADESH    [48-50) cm           >=50 cm           0.6995862   0.4614145    1.0606966
Birth       Keneba       GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
Birth       Keneba       GAMBIA        <48 cm               >=50 cm           0.1940928   0.0795206    0.4737392
Birth       Keneba       GAMBIA        [48-50) cm           >=50 cm           0.3619891   0.2222647    0.5895498
Birth       NIH-Birth    BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
Birth       NIH-Birth    BANGLADESH    <48 cm               >=50 cm           0.8715353   0.4063241    1.8693791
Birth       NIH-Birth    BANGLADESH    [48-50) cm           >=50 cm           0.6526185   0.2919707    1.4587453
Birth       NIH-Crypto   BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
Birth       NIH-Crypto   BANGLADESH    <48 cm               >=50 cm           0.6475766   0.3135546    1.3374239
Birth       NIH-Crypto   BANGLADESH    [48-50) cm           >=50 cm           0.8892973   0.4568423    1.7311219
Birth       ZVITAMBO     ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
Birth       ZVITAMBO     ZIMBABWE      <48 cm               >=50 cm           0.3695340   0.3062520    0.4458921
Birth       ZVITAMBO     ZIMBABWE      [48-50) cm           >=50 cm           0.4308110   0.3686850    0.5034057
6 months    COHORTS      INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
6 months    COHORTS      INDIA         <48 cm               >=50 cm           2.7206130   1.7380428    4.2586611
6 months    COHORTS      INDIA         [48-50) cm           >=50 cm           1.6867364   1.0448994    2.7228264
6 months    COHORTS      PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
6 months    COHORTS      PHILIPPINES   <48 cm               >=50 cm           1.6231741   0.6629864    3.9739795
6 months    COHORTS      PHILIPPINES   [48-50) cm           >=50 cm           1.7020544   0.7555587    3.8342347
6 months    JiVitA-3     BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
6 months    JiVitA-3     BANGLADESH    <48 cm               >=50 cm           1.3664650   0.7314499    2.5527743
6 months    JiVitA-3     BANGLADESH    [48-50) cm           >=50 cm           1.1798796   0.5910502    2.3553259
6 months    ZVITAMBO     ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
6 months    ZVITAMBO     ZIMBABWE      <48 cm               >=50 cm           1.0536480   0.5819781    1.9075874
6 months    ZVITAMBO     ZIMBABWE      [48-50) cm           >=50 cm           1.2857662   0.7453092    2.2181328
24 months   COHORTS      INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
24 months   COHORTS      INDIA         <48 cm               >=50 cm           2.5307499   1.1233819    5.7012625
24 months   COHORTS      INDIA         [48-50) cm           >=50 cm           0.8405750   0.3209098    2.2017599
24 months   JiVitA-3     BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
24 months   JiVitA-3     BANGLADESH    <48 cm               >=50 cm           1.9911111   0.9107336    4.3531099
24 months   JiVitA-3     BANGLADESH    [48-50) cm           >=50 cm           1.0004562   0.4365029    2.2930260
24 months   JiVitA-4     BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
24 months   JiVitA-4     BANGLADESH    <48 cm               >=50 cm           1.4145950   0.8483473    2.3587970
24 months   JiVitA-4     BANGLADESH    [48-50) cm           >=50 cm           0.8869376   0.4512747    1.7431916
24 months   Keneba       GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
24 months   Keneba       GAMBIA        <48 cm               >=50 cm           3.2588832   1.0053237   10.5640797
24 months   Keneba       GAMBIA        [48-50) cm           >=50 cm           3.2035928   1.1040590    9.2957052


### Parameter: PAR


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      INDIA         >=50 cm              NA                -0.0168610   -0.0283155   -0.0054065
Birth       COHORTS      PHILIPPINES   >=50 cm              NA                -0.0209055   -0.0309360   -0.0108749
Birth       GMS-Nepal    NEPAL         >=50 cm              NA                -0.0105099   -0.0469299    0.0259102
Birth       IRC          INDIA         >=50 cm              NA                -0.1592323   -0.2190334   -0.0994311
Birth       JiVitA-3     BANGLADESH    >=50 cm              NA                -0.0111252   -0.0212265   -0.0010238
Birth       Keneba       GAMBIA        >=50 cm              NA                -0.0370298   -0.0500344   -0.0240251
Birth       NIH-Birth    BANGLADESH    >=50 cm              NA                -0.0138410   -0.0530536    0.0253717
Birth       NIH-Crypto   BANGLADESH    >=50 cm              NA                -0.0152245   -0.0515076    0.0210587
Birth       ZVITAMBO     ZIMBABWE      >=50 cm              NA                -0.0442360   -0.0516548   -0.0368171
6 months    COHORTS      INDIA         >=50 cm              NA                 0.0162858    0.0095119    0.0230597
6 months    COHORTS      PHILIPPINES   >=50 cm              NA                 0.0038677   -0.0013844    0.0091197
6 months    JiVitA-3     BANGLADESH    >=50 cm              NA                 0.0032778   -0.0032527    0.0098083
6 months    ZVITAMBO     ZIMBABWE      >=50 cm              NA                 0.0009668   -0.0021673    0.0041009
24 months   COHORTS      INDIA         >=50 cm              NA                 0.0038254   -0.0009212    0.0085721
24 months   JiVitA-3     BANGLADESH    >=50 cm              NA                 0.0155772   -0.0013349    0.0324894
24 months   JiVitA-4     BANGLADESH    >=50 cm              NA                 0.0049058   -0.0041901    0.0140016
24 months   Keneba       GAMBIA        >=50 cm              NA                 0.0103540    0.0020229    0.0186852


### Parameter: PAF


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      INDIA         >=50 cm              NA                -0.3263130   -0.5653531   -0.1237760
Birth       COHORTS      PHILIPPINES   >=50 cm              NA                -0.5008670   -0.7469523   -0.2894466
Birth       GMS-Nepal    NEPAL         >=50 cm              NA                -0.2495127   -1.4873677    0.3723156
Birth       IRC          INDIA         >=50 cm              NA                -1.0114198   -1.4046724   -0.6824784
Birth       JiVitA-3     BANGLADESH    >=50 cm              NA                -0.5742376   -1.1855943   -0.1338902
Birth       Keneba       GAMBIA        >=50 cm              NA                -0.5266858   -0.6995299   -0.3714202
Birth       NIH-Birth    BANGLADESH    >=50 cm              NA                -0.2094358   -0.9697776    0.2574112
Birth       NIH-Crypto   BANGLADESH    >=50 cm              NA                -0.2290149   -0.9117172    0.2098843
Birth       ZVITAMBO     ZIMBABWE      >=50 cm              NA                -0.7214593   -0.8392320   -0.6112281
6 months    COHORTS      INDIA         >=50 cm              NA                 0.4964328    0.2581578    0.6581754
6 months    COHORTS      PHILIPPINES   >=50 cm              NA                 0.2982522   -0.2288368    0.5992552
6 months    JiVitA-3     BANGLADESH    >=50 cm              NA                 0.2312594   -0.3890986    0.5745716
6 months    ZVITAMBO     ZIMBABWE      >=50 cm              NA                 0.1029561   -0.3004621    0.3812293
24 months   COHORTS      INDIA         >=50 cm              NA                 0.3612754   -0.2664726    0.6778697
24 months   JiVitA-3     BANGLADESH    >=50 cm              NA                 0.4115031   -0.2515399    0.7232780
24 months   JiVitA-4     BANGLADESH    >=50 cm              NA                 0.1756349   -0.2164532    0.4413449
24 months   Keneba       GAMBIA        >=50 cm              NA                 0.5255897   -0.0150497    0.7782718
