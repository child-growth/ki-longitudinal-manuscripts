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

**Outcome Variable:** y_rate_len

## Predictor Variables

**Intervention Variable:** fage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        fage       n_cell      n
-------------  -------------------------  -----------------------------  --------  -------  -----
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=38           68    150
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <32            30    150
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)        52    150
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38           26     65
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <32            16     65
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)        23     65
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38           28    121
0-3 months     ki0047075b-MAL-ED          INDIA                          <32            41    121
0-3 months     ki0047075b-MAL-ED          INDIA                          [32-38)        52    121
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38           13     54
0-3 months     ki0047075b-MAL-ED          NEPAL                          <32             9     54
0-3 months     ki0047075b-MAL-ED          NEPAL                          [32-38)        32     54
0-3 months     ki0047075b-MAL-ED          PERU                           >=38           27     79
0-3 months     ki0047075b-MAL-ED          PERU                           <32            26     79
0-3 months     ki0047075b-MAL-ED          PERU                           [32-38)        26     79
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           49     70
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32             7     70
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        14     70
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           42     91
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     91
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        34     91
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38            7    387
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <32           326    387
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)        54    387
0-3 months     ki1119695-PROBIT           BELARUS                        >=38          327   7251
0-3 months     ki1119695-PROBIT           BELARUS                        <32          5796   7251
0-3 months     ki1119695-PROBIT           BELARUS                        [32-38)      1128   7251
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38          101    343
0-3 months     ki1135781-COHORTS          GUATEMALA                      <32           157    343
0-3 months     ki1135781-COHORTS          GUATEMALA                      [32-38)        85    343
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=38           68    148
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <32            30    148
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)        50    148
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=38           30     79
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <32            18     79
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)        31     79
3-6 months     ki0047075b-MAL-ED          INDIA                          >=38           34    157
3-6 months     ki0047075b-MAL-ED          INDIA                          <32            53    157
3-6 months     ki0047075b-MAL-ED          INDIA                          [32-38)        70    157
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=38           17     79
3-6 months     ki0047075b-MAL-ED          NEPAL                          <32            15     79
3-6 months     ki0047075b-MAL-ED          NEPAL                          [32-38)        47     79
3-6 months     ki0047075b-MAL-ED          PERU                           >=38           27     83
3-6 months     ki0047075b-MAL-ED          PERU                           <32            28     83
3-6 months     ki0047075b-MAL-ED          PERU                           [32-38)        28     83
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           63     87
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32             9     87
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        15     87
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48    100
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15    100
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37    100
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38            7    347
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <32           291    347
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)        49    347
3-6 months     ki1119695-PROBIT           BELARUS                        >=38          292   6436
3-6 months     ki1119695-PROBIT           BELARUS                        <32          5144   6436
3-6 months     ki1119695-PROBIT           BELARUS                        [32-38)      1000   6436
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38          114    378
3-6 months     ki1135781-COHORTS          GUATEMALA                      <32           168    378
3-6 months     ki1135781-COHORTS          GUATEMALA                      [32-38)        96    378
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=38           67    147
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <32            30    147
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)        50    147
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=38           30     79
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <32            18     79
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)        31     79
6-9 months     ki0047075b-MAL-ED          INDIA                          >=38           34    159
6-9 months     ki0047075b-MAL-ED          INDIA                          <32            53    159
6-9 months     ki0047075b-MAL-ED          INDIA                          [32-38)        72    159
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=38           16     78
6-9 months     ki0047075b-MAL-ED          NEPAL                          <32            15     78
6-9 months     ki0047075b-MAL-ED          NEPAL                          [32-38)        47     78
6-9 months     ki0047075b-MAL-ED          PERU                           >=38           26     82
6-9 months     ki0047075b-MAL-ED          PERU                           <32            28     82
6-9 months     ki0047075b-MAL-ED          PERU                           [32-38)        28     82
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           62     84
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8     84
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        14     84
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           47     97
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     97
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        35     97
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=38            7    349
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <32           294    349
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)        48    349
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=38            9     74
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <32            47     74
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        18     74
6-9 months     ki1119695-PROBIT           BELARUS                        >=38          284   6028
6-9 months     ki1119695-PROBIT           BELARUS                        <32          4799   6028
6-9 months     ki1119695-PROBIT           BELARUS                        [32-38)       945   6028
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=38          104    373
6-9 months     ki1135781-COHORTS          GUATEMALA                      <32           172    373
6-9 months     ki1135781-COHORTS          GUATEMALA                      [32-38)        97    373
6-9 months     ki1148112-LCNI-5           MALAWI                         >=38           18     68
6-9 months     ki1148112-LCNI-5           MALAWI                         <32            36     68
6-9 months     ki1148112-LCNI-5           MALAWI                         [32-38)        14     68
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=38           68    147
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <32            30    147
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)        49    147
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=38           30     79
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <32            18     79
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)        31     79
9-12 months    ki0047075b-MAL-ED          INDIA                          >=38           36    159
9-12 months    ki0047075b-MAL-ED          INDIA                          <32            52    159
9-12 months    ki0047075b-MAL-ED          INDIA                          [32-38)        71    159
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=38           16     78
9-12 months    ki0047075b-MAL-ED          NEPAL                          <32            15     78
9-12 months    ki0047075b-MAL-ED          NEPAL                          [32-38)        47     78
9-12 months    ki0047075b-MAL-ED          PERU                           >=38           26     80
9-12 months    ki0047075b-MAL-ED          PERU                           <32            26     80
9-12 months    ki0047075b-MAL-ED          PERU                           [32-38)        28     80
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           62     84
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32             7     84
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        15     84
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           46     95
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     95
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        34     95
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38            7    370
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <32           310    370
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)        53    370
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38            9     77
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32            50     77
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        18     77
9-12 months    ki1119695-PROBIT           BELARUS                        >=38          286   6035
9-12 months    ki1119695-PROBIT           BELARUS                        <32          4812   6035
9-12 months    ki1119695-PROBIT           BELARUS                        [32-38)       937   6035
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=38          116    419
9-12 months    ki1135781-COHORTS          GUATEMALA                      <32           198    419
9-12 months    ki1135781-COHORTS          GUATEMALA                      [32-38)       105    419
9-12 months    ki1148112-LCNI-5           MALAWI                         >=38           12     46
9-12 months    ki1148112-LCNI-5           MALAWI                         <32            25     46
9-12 months    ki1148112-LCNI-5           MALAWI                         [32-38)         9     46
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=38           68    145
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <32            28    145
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)        49    145
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=38           30     79
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <32            18     79
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)        31     79
12-15 months   ki0047075b-MAL-ED          INDIA                          >=38           36    159
12-15 months   ki0047075b-MAL-ED          INDIA                          <32            52    159
12-15 months   ki0047075b-MAL-ED          INDIA                          [32-38)        71    159
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=38           17     79
12-15 months   ki0047075b-MAL-ED          NEPAL                          <32            15     79
12-15 months   ki0047075b-MAL-ED          NEPAL                          [32-38)        47     79
12-15 months   ki0047075b-MAL-ED          PERU                           >=38           27     79
12-15 months   ki0047075b-MAL-ED          PERU                           <32            25     79
12-15 months   ki0047075b-MAL-ED          PERU                           [32-38)        27     79
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           62     84
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             6     84
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16     84
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           46     97
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     97
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        36     97
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=38            7    375
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <32           319    375
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)        49    375
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38            7     76
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32            51     76
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        18     76
12-15 months   ki1119695-PROBIT           BELARUS                        >=38           13    278
12-15 months   ki1119695-PROBIT           BELARUS                        <32           233    278
12-15 months   ki1119695-PROBIT           BELARUS                        [32-38)        32    278
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=38          121    408
12-15 months   ki1135781-COHORTS          GUATEMALA                      <32           187    408
12-15 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       100    408
12-15 months   ki1148112-LCNI-5           MALAWI                         >=38            4     14
12-15 months   ki1148112-LCNI-5           MALAWI                         <32             8     14
12-15 months   ki1148112-LCNI-5           MALAWI                         [32-38)         2     14
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=38           66    146
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <32            28    146
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)        52    146
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=38           29     77
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <32            18     77
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)        30     77
15-18 months   ki0047075b-MAL-ED          INDIA                          >=38           35    160
15-18 months   ki0047075b-MAL-ED          INDIA                          <32            53    160
15-18 months   ki0047075b-MAL-ED          INDIA                          [32-38)        72    160
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=38           17     78
15-18 months   ki0047075b-MAL-ED          NEPAL                          <32            15     78
15-18 months   ki0047075b-MAL-ED          NEPAL                          [32-38)        46     78
15-18 months   ki0047075b-MAL-ED          PERU                           >=38           26     80
15-18 months   ki0047075b-MAL-ED          PERU                           <32            27     80
15-18 months   ki0047075b-MAL-ED          PERU                           [32-38)        27     80
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           62     85
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             7     85
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16     85
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           46     96
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            14     96
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        36     96
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=38            7    360
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <32           306    360
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)        47    360
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38            7     72
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32            51     72
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        14     72
15-18 months   ki1119695-PROBIT           BELARUS                        >=38            0     35
15-18 months   ki1119695-PROBIT           BELARUS                        <32            31     35
15-18 months   ki1119695-PROBIT           BELARUS                        [32-38)         4     35
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=38          108    359
15-18 months   ki1135781-COHORTS          GUATEMALA                      <32           165    359
15-18 months   ki1135781-COHORTS          GUATEMALA                      [32-38)        86    359
15-18 months   ki1148112-LCNI-5           MALAWI                         >=38            4     13
15-18 months   ki1148112-LCNI-5           MALAWI                         <32             7     13
15-18 months   ki1148112-LCNI-5           MALAWI                         [32-38)         2     13
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=38           66    147
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <32            29    147
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)        52    147
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=38           29     77
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <32            18     77
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)        30     77
18-21 months   ki0047075b-MAL-ED          INDIA                          >=38           35    159
18-21 months   ki0047075b-MAL-ED          INDIA                          <32            52    159
18-21 months   ki0047075b-MAL-ED          INDIA                          [32-38)        72    159
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=38           17     78
18-21 months   ki0047075b-MAL-ED          NEPAL                          <32            15     78
18-21 months   ki0047075b-MAL-ED          NEPAL                          [32-38)        46     78
18-21 months   ki0047075b-MAL-ED          PERU                           >=38           26     77
18-21 months   ki0047075b-MAL-ED          PERU                           <32            25     77
18-21 months   ki0047075b-MAL-ED          PERU                           [32-38)        26     77
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           63     87
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8     87
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16     87
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           43     92
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            14     92
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        35     92
18-21 months   ki1119695-PROBIT           BELARUS                        >=38            2     23
18-21 months   ki1119695-PROBIT           BELARUS                        <32            19     23
18-21 months   ki1119695-PROBIT           BELARUS                        [32-38)         2     23
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=38          106    355
18-21 months   ki1135781-COHORTS          GUATEMALA                      <32           166    355
18-21 months   ki1135781-COHORTS          GUATEMALA                      [32-38)        83    355
18-21 months   ki1148112-LCNI-5           MALAWI                         >=38           18     63
18-21 months   ki1148112-LCNI-5           MALAWI                         <32            31     63
18-21 months   ki1148112-LCNI-5           MALAWI                         [32-38)        14     63
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38           66    147
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32            29    147
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)        52    147
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38           30     79
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <32            18     79
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)        31     79
21-24 months   ki0047075b-MAL-ED          INDIA                          >=38           36    160
21-24 months   ki0047075b-MAL-ED          INDIA                          <32            52    160
21-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)        72    160
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=38           17     79
21-24 months   ki0047075b-MAL-ED          NEPAL                          <32            15     79
21-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)        47     79
21-24 months   ki0047075b-MAL-ED          PERU                           >=38           26     76
21-24 months   ki0047075b-MAL-ED          PERU                           <32            25     76
21-24 months   ki0047075b-MAL-ED          PERU                           [32-38)        25     76
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           65     89
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8     89
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16     89
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           45     96
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     96
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        36     96
21-24 months   ki1119695-PROBIT           BELARUS                        >=38            0     32
21-24 months   ki1119695-PROBIT           BELARUS                        <32            26     32
21-24 months   ki1119695-PROBIT           BELARUS                        [32-38)         6     32
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=38          115    400
21-24 months   ki1135781-COHORTS          GUATEMALA                      <32           189    400
21-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)        96    400
21-24 months   ki1148112-LCNI-5           MALAWI                         >=38           16     55
21-24 months   ki1148112-LCNI-5           MALAWI                         <32            28     55
21-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)        11     55


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/38c296ad-d86e-4694-952f-17ade36b46c2/2e7fb3bb-2715-4525-94ea-a824b894630a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/38c296ad-d86e-4694-952f-17ade36b46c2/2e7fb3bb-2715-4525-94ea-a824b894630a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/38c296ad-d86e-4694-952f-17ade36b46c2/2e7fb3bb-2715-4525-94ea-a824b894630a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                3.3614868    3.2479085   3.4750650
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                3.2087443    3.0745740   3.3429147
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                3.4139229    3.2706339   3.5572119
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                3.8862124    3.6549465   4.1174783
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <32                  NA                3.7190164    3.3078207   4.1302121
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                3.7677503    3.5140738   4.0214267
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                3.1132216    2.9050234   3.3214199
0-3 months     ki0047075b-MAL-ED          INDIA                          <32                  NA                3.2383365    3.0850057   3.3916674
0-3 months     ki0047075b-MAL-ED          INDIA                          [32-38)              NA                3.4399965    3.2555127   3.6244803
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                3.5520298    3.1530633   3.9509964
0-3 months     ki0047075b-MAL-ED          NEPAL                          <32                  NA                3.3972082    3.0245983   3.7698180
0-3 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                3.5611691    3.3848421   3.7374962
0-3 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                2.9223637    2.7367720   3.1079554
0-3 months     ki0047075b-MAL-ED          PERU                           <32                  NA                3.1277405    2.9559106   3.2995705
0-3 months     ki0047075b-MAL-ED          PERU                           [32-38)              NA                3.1054092    2.8529523   3.3578662
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                3.2933269    3.0861138   3.5005400
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                3.2667673    2.6373150   3.8962196
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                3.1882784    2.8224884   3.5540684
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                3.2609503    3.1004283   3.4214722
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                3.3666785    3.0726121   3.6607448
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                3.0677640    2.8452285   3.2902996
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                3.2394746    2.9010359   3.5779134
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                3.4513830    3.3220320   3.5807340
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                3.1265523    2.9690456   3.2840590
0-3 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                2.6420116    2.4490048   2.8350184
0-3 months     ki1119695-PROBIT           BELARUS                        <32                  NA                2.7511653    2.5781433   2.9241873
0-3 months     ki1119695-PROBIT           BELARUS                        [32-38)              NA                2.7372365    2.5844777   2.8899953
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                2.4523675    2.3327886   2.5719463
0-3 months     ki1135781-COHORTS          GUATEMALA                      <32                  NA                2.6341297    2.5489869   2.7192726
0-3 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                2.3836427    2.2387138   2.5285715
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                1.9353169    1.8341803   2.0364534
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                1.9002130    1.7616649   2.0387611
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                1.8955947    1.7939200   1.9972695
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                2.1608709    1.9663829   2.3553590
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <32                  NA                2.4028498    2.0846520   2.7210476
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                2.1935429    2.0153252   2.3717607
3-6 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                1.9876317    1.8620572   2.1132062
3-6 months     ki0047075b-MAL-ED          INDIA                          <32                  NA                1.9030353    1.7704033   2.0356673
3-6 months     ki0047075b-MAL-ED          INDIA                          [32-38)              NA                1.8732718    1.7450520   2.0014916
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                1.8830020    1.6495951   2.1164090
3-6 months     ki0047075b-MAL-ED          NEPAL                          <32                  NA                1.8554008    1.6178074   2.0929942
3-6 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                1.8788892    1.7564616   2.0013168
3-6 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                2.1525313    1.9361488   2.3689138
3-6 months     ki0047075b-MAL-ED          PERU                           <32                  NA                2.0099977    1.7995217   2.2204737
3-6 months     ki0047075b-MAL-ED          PERU                           [32-38)              NA                1.9748530    1.7842944   2.1654117
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                1.8759677    1.7377058   2.0142296
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                1.7766280    1.3254495   2.2278064
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                1.9390510    1.6953495   2.1827524
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                1.8261685    1.7106580   1.9416790
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                1.7303921    1.5254428   1.9353415
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                1.8306944    1.6802855   1.9811032
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                2.2599057    2.1827667   2.3370447
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                1.8912564    1.8337564   1.9487565
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                1.9986968    1.8711806   2.1262130
3-6 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                2.1107883    2.0040440   2.2175327
3-6 months     ki1119695-PROBIT           BELARUS                        <32                  NA                2.1004406    2.0344679   2.1664133
3-6 months     ki1119695-PROBIT           BELARUS                        [32-38)              NA                2.0423401    1.9648952   2.1197851
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                1.5727434    1.4906374   1.6548495
3-6 months     ki1135781-COHORTS          GUATEMALA                      <32                  NA                1.7366514    1.6716497   1.8016530
3-6 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                1.6572240    1.5656217   1.7488263
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                1.1690220    1.0938404   1.2442036
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                1.3846543    1.2933551   1.4759536
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                1.2602491    1.1762398   1.3442584
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                1.4334572    1.2516327   1.6152817
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <32                  NA                1.4318412    1.2121446   1.6515378
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                1.5040167    1.2982323   1.7098012
6-9 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                1.2048967    1.0763110   1.3334825
6-9 months     ki0047075b-MAL-ED          INDIA                          <32                  NA                1.2548637    1.1640309   1.3456965
6-9 months     ki0047075b-MAL-ED          INDIA                          [32-38)              NA                1.2063871    1.1069425   1.3058317
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                1.2906185    1.1334029   1.4478341
6-9 months     ki0047075b-MAL-ED          NEPAL                          <32                  NA                1.3383690    1.2463405   1.4303976
6-9 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                1.2933600    1.2024995   1.3842205
6-9 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                1.3077267    1.1768413   1.4386121
6-9 months     ki0047075b-MAL-ED          PERU                           <32                  NA                1.1775723    1.0246485   1.3304960
6-9 months     ki0047075b-MAL-ED          PERU                           [32-38)              NA                1.2762751    1.0978152   1.4547350
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                1.4270536    1.3105373   1.5435699
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                1.3882002    1.1346907   1.6417096
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                1.4679147    1.2908188   1.6450105
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                1.2390001    1.0459844   1.4320157
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                1.0530537    0.9170366   1.1890707
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                1.2823538    1.0350173   1.5296903
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.9878863    0.9496637   1.0261090
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                1.2332105    1.2182586   1.2481625
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                1.2054788    0.9388600   1.4720975
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                1.0058433    0.7802225   1.2314640
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                1.1619873    1.0627109   1.2612637
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                1.1245593    0.9519247   1.2971940
6-9 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                1.5356413    1.4563199   1.6149627
6-9 months     ki1119695-PROBIT           BELARUS                        <32                  NA                1.5974889    1.5510685   1.6439093
6-9 months     ki1119695-PROBIT           BELARUS                        [32-38)              NA                1.5733756    1.5257234   1.6210279
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                1.0844439    1.0113425   1.1575453
6-9 months     ki1135781-COHORTS          GUATEMALA                      <32                  NA                1.0990436    1.0399376   1.1581495
6-9 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.9856754    0.9094141   1.0619367
6-9 months     ki1148112-LCNI-5           MALAWI                         >=38                 NA                1.4794121    1.2960931   1.6627310
6-9 months     ki1148112-LCNI-5           MALAWI                         <32                  NA                1.3118297    1.1830625   1.4405970
6-9 months     ki1148112-LCNI-5           MALAWI                         [32-38)              NA                1.3194501    1.0976597   1.5412405
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.9790850    0.9066574   1.0515127
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.9324328    0.8343304   1.0305353
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.9618656    0.8808841   1.0428472
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                1.4926521    1.2806011   1.7047031
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <32                  NA                1.4647170    1.2459817   1.6834524
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                1.3058165    1.1349451   1.4766878
9-12 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                1.1246148    1.0155320   1.2336976
9-12 months    ki0047075b-MAL-ED          INDIA                          <32                  NA                0.9181910    0.8336016   1.0027805
9-12 months    ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.9538813    0.8889828   1.0187799
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                1.2108283    1.0498316   1.3718251
9-12 months    ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.9920243    0.8260462   1.1580024
9-12 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                1.0599116    0.9906078   1.1292153
9-12 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                0.9739055    0.8266189   1.1211920
9-12 months    ki0047075b-MAL-ED          PERU                           <32                  NA                1.1765580    1.0241407   1.3289752
9-12 months    ki0047075b-MAL-ED          PERU                           [32-38)              NA                1.1717189    0.9974685   1.3459694
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                0.9488065    0.8097391   1.0878739
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                1.0679340    0.7327871   1.4030809
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                1.0180432    0.8448339   1.1912526
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.8769348    0.6835170   1.0703526
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.8387657    0.6243879   1.0531436
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.6958779    0.4188069   0.9729488
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                1.1368001    0.8478485   1.4257517
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                1.0002925    0.9759400   1.0246451
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.8846403    0.7389990   1.0302816
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                1.2815195   -0.1186663   2.6817052
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.9890521    0.5450201   1.4330841
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                1.0139091    0.3118660   1.7159522
9-12 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                1.4004529    1.3148068   1.4860991
9-12 months    ki1119695-PROBIT           BELARUS                        <32                  NA                1.3635131    1.3071688   1.4198574
9-12 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                1.3627347    1.2926037   1.4328658
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.9777060    0.9156966   1.0397154
9-12 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.9405457    0.8870095   0.9940819
9-12 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.9413844    0.8748977   1.0078710
9-12 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                1.1610501    0.9198168   1.4022835
9-12 months    ki1148112-LCNI-5           MALAWI                         <32                  NA                1.1861374    0.8906439   1.4816309
9-12 months    ki1148112-LCNI-5           MALAWI                         [32-38)              NA                1.1821339    0.7814667   1.5828011
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.9129142    0.8425279   0.9833005
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.9075063    0.7872737   1.0277390
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.9356220    0.8646360   1.0066079
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                1.2475518    1.1179503   1.3771534
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                1.0771996    0.9495246   1.2048746
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                1.1821896    1.0362559   1.3281232
12-15 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.9316811    0.8412716   1.0220906
12-15 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.9574121    0.8829472   1.0318771
12-15 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.9012472    0.8273172   0.9751772
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                0.9980593    0.8466999   1.1494186
12-15 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.9632770    0.8247506   1.1018035
12-15 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.9625341    0.8917534   1.0333147
12-15 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                0.8659801    0.7732288   0.9587315
12-15 months   ki0047075b-MAL-ED          PERU                           <32                  NA                0.8230970    0.6695897   0.9766042
12-15 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.9275189    0.7694296   1.0856082
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                0.9701546    0.8777156   1.0625935
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                0.8911482    0.6833992   1.0988971
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                1.0422629    0.7929638   1.2915619
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.7232766    0.6000223   0.8465310
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.9601445    0.6311964   1.2890925
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.8769680    0.7404126   1.0135233
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.7052838    0.4010480   1.0095197
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.8647025    0.8427703   0.8866347
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.7439878    0.5287474   0.9592283
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                1.1554968    0.8335978   1.4773957
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.8751237    0.4994277   1.2508197
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                1.1398728    0.9685879   1.3111577
12-15 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                1.2045713   -0.0163153   2.4254578
12-15 months   ki1119695-PROBIT           BELARUS                        <32                  NA                1.1540945    0.6894450   1.6187440
12-15 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                1.7593054    0.4507234   3.0678875
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.7799111    0.7146424   0.8451798
12-15 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.7554565    0.6965354   0.8143775
12-15 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.6995914    0.6309537   0.7682292
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.8149202    0.7478099   0.8820305
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.8867906    0.7928946   0.9806865
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.8644169    0.7950287   0.9338051
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                0.9565419    0.8134241   1.0996597
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                0.9202631    0.7559092   1.0846170
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                1.0252810    0.8689569   1.1816052
15-18 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.9280360    0.8248824   1.0311896
15-18 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.7880855    0.7172886   0.8588824
15-18 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.8170845    0.7529302   0.8812388
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                0.8885631    0.7569541   1.0201720
15-18 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.8386189    0.7042477   0.9729900
15-18 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.8491331    0.7628768   0.9353893
15-18 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                0.7858008    0.6707564   0.9008451
15-18 months   ki0047075b-MAL-ED          PERU                           <32                  NA                1.0246590    0.8854153   1.1639027
15-18 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.8606184    0.7308425   0.9903943
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                0.8579317    0.7585445   0.9573190
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                1.2680730    1.0363720   1.4997740
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.8538727    0.7177219   0.9900235
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.7921552    0.6828807   0.9014298
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.7209923    0.5246290   0.9173557
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.6582757    0.5001933   0.8163581
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                1.3249849    1.0972374   1.5527325
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.9426407    0.8444132   1.0408682
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                1.0319833    0.8238576   1.2401090
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.8898505    0.6513467   1.1283542
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.8158689    0.7335235   0.8982142
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                0.8607684    0.7225258   0.9990110
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.7373943    0.6603986   0.8143899
15-18 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.7260522    0.6688909   0.7832135
15-18 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.7241189    0.6303904   0.8178473
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.7863382    0.7238203   0.8488560
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.7731587    0.6925513   0.8537661
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.7983639    0.7333068   0.8634210
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                0.9835158    0.7571463   1.2098854
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                0.8568720    0.7253513   0.9883926
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                0.9167617    0.6833029   1.1502205
18-21 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.8689268    0.7891191   0.9487344
18-21 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.8618949    0.7872904   0.9364995
18-21 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.9110894    0.8409552   0.9812236
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                0.7352651    0.6159100   0.8546202
18-21 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.7878468    0.6716503   0.9040433
18-21 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.7037485    0.6365788   0.7709182
18-21 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                0.8970506    0.7664554   1.0276458
18-21 months   ki0047075b-MAL-ED          PERU                           <32                  NA                0.9331186    0.7850362   1.0812011
18-21 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.8968284    0.7931525   1.0005044
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                0.7456706    0.6482415   0.8430996
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                0.6471890    0.3890002   0.9053777
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.9088091    0.7412631   1.0763551
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.7655540    0.6375050   0.8936030
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.6585047    0.3259419   0.9910674
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.6665228    0.5137067   0.8193388
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.8514063    0.7777401   0.9250724
18-21 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.6638027    0.6089570   0.7186484
18-21 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.7091454    0.6232163   0.7950744
18-21 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                0.7882224    0.5648340   1.0116107
18-21 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                0.5650862    0.3343902   0.7957822
18-21 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                0.7475610    0.5680081   0.9271139
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.8249510    0.7592527   0.8906493
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.7812688    0.6772074   0.8853303
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.7232783    0.6675977   0.7789588
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                0.8016735    0.7013586   0.9019884
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                0.9771178    0.8701499   1.0840858
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                0.7601161    0.6684651   0.8517671
21-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.7841938    0.6995621   0.8688254
21-24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.8580815    0.7979918   0.9181713
21-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.8109377    0.7530349   0.8688405
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                0.7320641    0.6136841   0.8504441
21-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.7947227    0.6952746   0.8941708
21-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.8338686    0.7263470   0.9413901
21-24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                0.8837792    0.7115573   1.0560011
21-24 months   ki0047075b-MAL-ED          PERU                           <32                  NA                0.7317225    0.6045000   0.8589449
21-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.7623432    0.6443746   0.8803119
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                0.8495434    0.7524155   0.9466714
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                1.2155486    0.5831306   1.8479666
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.8399900    0.6796321   1.0003479
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.7400989    0.6444740   0.8357237
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.6468305    0.4368252   0.8568358
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.6790101    0.5237348   0.8342855
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.6402446    0.5717766   0.7087125
21-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.6473032    0.6030496   0.6915568
21-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.5837346    0.5100960   0.6573731
21-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                0.7171769    0.4634377   0.9709162
21-24 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                0.8406055    0.6179690   1.0632420
21-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                0.9229439    0.7242373   1.1216505


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.3491161   3.2717886   3.4264437
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                3.8031391   3.6383467   3.9679315
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.2960481   3.1870759   3.4050203
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.5316421   3.3758765   3.6874077
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.0501989   2.9295886   3.1708093
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.2696613   3.0951646   3.4441579
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2061985   3.0825156   3.3298814
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.4022248   3.2704557   3.5339939
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.7440759   2.5753290   2.9128228
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.5185338   2.4538624   2.5832053
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9147816   1.8504595   1.9791037
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.2288260   2.1021293   2.3555227
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.9080852   1.8302412   1.9859292
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.8753144   1.7759777   1.9746511
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0445080   1.9244992   2.1645168
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.8765676   1.7580590   1.9950762
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8134766   1.7288377   1.8981155
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9138649   1.8623955   1.9653342
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0918826   2.0255064   2.1582589
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.6670468   1.6218969   1.7121967
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.2440582   1.1939196   1.2941968
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.4607769   1.3430762   1.5784776
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.2222273   1.1612882   1.2831664
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.3014532   1.2353703   1.3675362
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                1.2525442   1.1613943   1.3436940
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.4301634   1.3359869   1.5243400
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.2258886   1.0940255   1.3577517
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.2244759   1.1805129   1.2684389
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.1338927   1.0525014   1.2152841
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                1.5907949   1.5484746   1.6331151
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.0654911   1.0258036   1.1051786
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                1.3577587   1.2608409   1.4546764
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9638244   0.9162830   1.0113657
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.4129719   1.2953507   1.5305931
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9808657   0.9322032   1.0295281
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.0778136   1.0136680   1.1419593
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.1090022   1.0147042   1.2033003
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9710975   0.8599937   1.0822013
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8061088   0.6645672   0.9476504
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.9863087   0.9640508   1.0085666
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.0290473   0.6585278   1.3995669
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.3651429   1.3092875   1.4209982
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.9510437   0.9161891   0.9858983
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.1788096   0.9893217   1.3682975
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9195436   0.8725575   0.9665297
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.1830889   1.1009226   1.2652552
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9265063   0.8804996   0.9725130
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9703198   0.9108527   1.0297869
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8734417   0.7936064   0.9532771
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9782462   0.8934306   1.0630618
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8169458   0.7225030   0.9113885
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.8459533   0.8245899   0.8673167
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.9636513   0.7049916   1.2223109
12-15 months   ki1119695-PROBIT           BELARUS                        NA                   NA                1.2261195   0.7429514   1.7092875
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7490165   0.7116603   0.7863728
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8463325   0.8029895   0.8896755
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9748426   0.8843846   1.0653007
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8317492   0.7874866   0.8760119
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8557048   0.7917206   0.9196890
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8916664   0.8141547   0.9691781
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8909440   0.8081180   0.9737700
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7315725   0.6465481   0.8165969
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.9617394   0.8773098   1.0461689
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8317920   0.7632451   0.9003389
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7290012   0.6873933   0.7706090
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.7879921   0.7483367   0.8276476
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9279027   0.7990301   1.0567753
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8857196   0.8418371   0.9296020
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.7267903   0.6739002   0.7796804
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.9086860   0.8345500   0.9828220
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.7666173   0.6845834   0.8486512
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7115890   0.6134511   0.8097268
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7304208   0.6902178   0.7706237
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6693894   0.5307616   0.8080171
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.7803676   0.7387346   0.8220005
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.8253408   0.7645970   0.8860847
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8202421   0.7822662   0.8582179
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8045285   0.7325617   0.8764954
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.7938145   0.7104356   0.8771934
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8807253   0.7828557   0.9785949
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7026174   0.6218016   0.7834332
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6300174   0.5961996   0.6638352
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8211667   0.6788314   0.9635020


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.1527424   -0.3285312    0.0230464
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0524362   -0.1304074    0.2352797
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.1671960   -0.6389649    0.3045728
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.1184621   -0.4617341    0.2248099
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.1251149   -0.1334520    0.3836818
0-3 months     ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.3267748    0.0486008    0.6049489
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.1548217   -0.7007268    0.3910835
0-3 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38               0.0091393   -0.4270551    0.4453337
0-3 months     ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <32                  >=38               0.2053768   -0.0475457    0.4582993
0-3 months     ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.1830455   -0.1302894    0.4963805
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0265596   -0.6892416    0.6361224
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.1050485   -0.5254526    0.3153556
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.1057282   -0.2292976    0.4407540
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.1931862   -0.4675753    0.0812029
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.2119084   -0.0321148    0.4559316
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              -0.1129223   -0.3333276    0.1074829
0-3 months     ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <32                  >=38               0.1091537    0.0152651    0.2030423
0-3 months     ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.0952249   -0.0252478    0.2156977
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.1817623    0.0349685    0.3285560
0-3 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0687248   -0.2566169    0.1191674
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.0351039   -0.2066387    0.1364308
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0397221   -0.1831319    0.1036876
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.2419789   -0.1309493    0.6149071
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38               0.0326720   -0.2311218    0.2964658
3-6 months     ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0845964   -0.2672441    0.0980513
3-6 months     ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.1143599   -0.2938293    0.0651095
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.0276012   -0.3606619    0.3054595
3-6 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0041129   -0.2676794    0.2594537
3-6 months     ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.1425336   -0.4443970    0.1593298
3-6 months     ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.1776783   -0.4660080    0.1106513
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0993398   -0.5712279    0.3725483
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0630833   -0.2171073    0.3432738
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0957763   -0.3310355    0.1394829
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0045259   -0.1851198    0.1941716
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              -0.3686493   -0.4283603   -0.3089382
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              -0.2612089   -0.3496988   -0.1727190
3-6 months     ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0103477   -0.0959649    0.0752694
3-6 months     ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0684482   -0.1623091    0.0254127
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.1639079    0.0591863    0.2686296
3-6 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38               0.0844805   -0.0385332    0.2074943
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.2156324    0.0973622    0.3339025
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0912272   -0.0215107    0.2039651
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.0016160   -0.2867944    0.2835624
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38               0.0705596   -0.2040445    0.3451636
6-9 months     ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.0499670   -0.1074652    0.2073992
6-9 months     ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.0014904   -0.1610628    0.1640435
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.0477505   -0.1344197    0.2299208
6-9 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38               0.0027415   -0.1788414    0.1843245
6-9 months     ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.1301544   -0.3314420    0.0711331
6-9 months     ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.0314516   -0.2527634    0.1898603
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0388534   -0.3178572    0.2401504
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0408611   -0.1711271    0.2528493
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.1859464   -0.4220728    0.0501800
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0433537   -0.2703824    0.3570898
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.2453242    0.1955753    0.2950731
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.2175924   -0.0759201    0.5111050
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38               0.1561440   -0.0903525    0.4026405
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.1187161   -0.1653745    0.4028067
6-9 months     ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0618476   -0.0328801    0.1565752
6-9 months     ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.0377343   -0.0506910    0.1261595
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0145996   -0.0794074    0.1086067
6-9 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0987685   -0.2044075    0.0068705
6-9 months     ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.1675823   -0.3916065    0.0564419
6-9 months     ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.1599620   -0.4477063    0.1277824
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.0466522   -0.1685942    0.0752898
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0172194   -0.1258646    0.0914258
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.0279351   -0.3325837    0.2767136
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.1868356   -0.4591638    0.0854926
9-12 months    ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.2064237   -0.3444615   -0.0683859
9-12 months    ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.1707334   -0.2976621   -0.0438048
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.2188040   -0.4500370    0.0124290
9-12 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.1509168   -0.3261965    0.0243629
9-12 months    ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           <32                  >=38               0.2026525   -0.0093011    0.4146061
9-12 months    ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.1978134   -0.0303456    0.4259725
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1191275   -0.2437267    0.4819817
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0692367   -0.1528921    0.2913655
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0381691   -0.3269048    0.2505666
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.1810569   -0.5189604    0.1568465
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              -0.1365076   -0.4092385    0.1362234
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              -0.2521598   -0.5691816    0.0648619
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              -0.2924674   -1.7613733    1.1764385
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38              -0.2676104   -1.8339388    1.2987180
9-12 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0369398   -0.1212910    0.0474114
9-12 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0377182   -0.1457633    0.0703269
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0371603   -0.1190828    0.0447622
9-12 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0363217   -0.1272372    0.0545939
9-12 months    ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         <32                  >=38               0.0250873   -0.3563703    0.4065449
9-12 months    ki1148112-LCNI-5           MALAWI                         [32-38)              >=38               0.0210838   -0.4465996    0.4887671
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.0054079   -0.1447281    0.1339124
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0227078   -0.0772584    0.1226740
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.1703523   -0.3522794    0.0115749
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0653623   -0.2605371    0.1298125
12-15 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.0257310   -0.0913967    0.1428588
12-15 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0304339   -0.1472223    0.0863545
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.0347822   -0.2399632    0.1703988
12-15 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0355252   -0.2026166    0.1315663
12-15 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.0428832   -0.2222356    0.1364693
12-15 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.0615388   -0.1217507    0.2448283
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0790064   -0.3063928    0.1483800
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0721083   -0.1937769    0.3379936
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.2368678   -0.1144133    0.5881490
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.1536913   -0.0302625    0.3376451
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.1594187   -0.1578244    0.4766617
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.0387040   -0.4253191    0.5027271
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              -0.2803730   -0.7751118    0.2143657
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38              -0.0156239   -0.3802572    0.3490094
12-15 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0504768   -1.1190336    1.0180800
12-15 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.5547341   -1.5173976    2.6268658
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0244546   -0.1123847    0.0634754
12-15 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0803197   -0.1750358    0.0143964
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.0718704   -0.0435430    0.1872838
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0494967   -0.0470357    0.1460292
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.0362788   -0.2542120    0.1816544
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38               0.0687391   -0.1432041    0.2806824
15-18 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.1399505   -0.2650619   -0.0148391
15-18 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.1109515   -0.2324276    0.0105245
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.0499442   -0.2380307    0.1381423
15-18 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0394300   -0.1967865    0.1179264
15-18 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           <32                  >=38               0.2388582    0.0582370    0.4194794
15-18 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.0748176   -0.0986096    0.2482448
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.4101412    0.1580239    0.6622586
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0040590   -0.1726261    0.1645080
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0711629   -0.2958838    0.1535581
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.1338795   -0.3260539    0.0582948
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              -0.3823442   -0.5618357   -0.2028527
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              -0.2930017   -0.6157555    0.0297522
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              -0.0739816   -0.3263005    0.1783372
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38              -0.0290820   -0.3047541    0.2465900
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0113421   -0.1072365    0.0845524
15-18 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0132754   -0.1345740    0.1080232
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.0131795   -0.1151895    0.0888305
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0120258   -0.0782012    0.1022528
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.1266439   -0.3884469    0.1351592
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0667541   -0.3919405    0.2584323
18-21 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0070318   -0.1162797    0.1022161
18-21 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.0421626   -0.0640827    0.1484079
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.0525817   -0.1139934    0.2191569
18-21 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0315166   -0.1684743    0.1054411
18-21 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           <32                  >=38               0.0360680   -0.1613744    0.2335104
18-21 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.0002222   -0.1669669    0.1665226
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0984816   -0.3744415    0.1774782
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.1631385   -0.0306760    0.3569531
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.1070494   -0.4634123    0.2493136
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0990313   -0.2984035    0.1003409
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.1876036   -0.2794445   -0.0957627
18-21 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.1422609   -0.2554444   -0.0290774
18-21 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.2231361   -0.5442638    0.0979915
18-21 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.0406613   -0.3272649    0.2459423
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.0436822   -0.1667474    0.0793831
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.1016727   -0.1877923   -0.0155531
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.1754443    0.0287977    0.3220909
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0415574   -0.1774360    0.0943212
21-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.0738877   -0.0299067    0.1776822
21-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.0267439   -0.0757999    0.1292878
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.0626586   -0.0919498    0.2172670
21-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38               0.1018044   -0.0581165    0.2617253
21-24 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.1520568   -0.3661734    0.0620599
21-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.1214360   -0.3301870    0.0873150
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.3660052   -0.2738279    1.0058383
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0095534   -0.1970328    0.1779259
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0932684   -0.3240201    0.1374833
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0610887   -0.2434470    0.1212696
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0070587   -0.0744658    0.0885831
21-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0565100   -0.1570610    0.0440409
21-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38               0.1234286   -0.2141371    0.4609943
21-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38               0.2057669   -0.1165185    0.5280524


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0123706   -0.0971265    0.0723852
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0830733   -0.2776326    0.1114860
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.1828265   -0.0046842    0.3703371
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0203877   -0.3471870    0.3064115
0-3 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.1278352   -0.0316858    0.2873562
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0236657   -0.1388792    0.0915479
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0547517   -0.1862035    0.0767000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.1627502   -0.0801001    0.4056005
0-3 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.1020643    0.0097480    0.1943806
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0661664   -0.0341354    0.1664682
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0205353   -0.0910100    0.0499394
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0679551   -0.0906304    0.2265406
3-6 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0795465   -0.2020160    0.0429230
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0076876   -0.2099251    0.1945499
3-6 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.1080233   -0.2834125    0.0673660
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0005999   -0.0733926    0.0745923
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0126919   -0.1004270    0.0750433
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.3460408   -0.3944469   -0.2976347
3-6 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0189057   -0.1008205    0.0630091
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0943033    0.0256472    0.1629595
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0750363    0.0201387    0.1299338
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0273197   -0.1203442    0.1749837
6-9 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0173305   -0.0974588    0.1321199
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.0108347   -0.1268007    0.1484701
6-9 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0551825   -0.1759125    0.0655475
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0031099   -0.0459252    0.0521449
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0131115   -0.1492735    0.1230505
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.2365895    0.1609545    0.3122245
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                 0.1280495   -0.0844289    0.3405278
6-9 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0551535   -0.0333037    0.1436108
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0189528   -0.0817141    0.0438085
6-9 months     ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.1216534   -0.2804223    0.0371155
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0152607   -0.0667652    0.0362439
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0796802   -0.2366811    0.0773207
9-12 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.1437491   -0.2379767   -0.0495215
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.1330147   -0.2723015    0.0062720
9-12 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.1350968    0.0067036    0.2634899
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0222910   -0.0336970    0.0782790
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0708260   -0.2164811    0.0748291
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.1504914   -0.4181989    0.1172161
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.2524722   -1.5329024    1.0279580
9-12 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0353101   -0.1187645    0.0481443
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0266623   -0.0808005    0.0274759
9-12 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.0177595   -0.2347031    0.2702221
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0066294   -0.0435223    0.0567811
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0644629   -0.1683426    0.0394167
12-15 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0051748   -0.0863482    0.0759986
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0277394   -0.1565266    0.1010477
12-15 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0074616   -0.0879118    0.1028351
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0080916   -0.0478070    0.0639902
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0936691   -0.0048322    0.1921704
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.1406695   -0.1813822    0.4627211
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.1918455   -0.5809933    0.1973024
12-15 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0215482   -1.0881566    1.1312530
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0308946   -0.0868296    0.0250404
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0314123   -0.0166552    0.0794799
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0183007   -0.0967507    0.1333521
15-18 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0962868   -0.1854190   -0.0071546
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0328583   -0.1506069    0.0848904
15-18 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.1058656    0.0027134    0.2090178
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0330123   -0.0152367    0.0812613
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0605827   -0.1484843    0.0273188
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.3632456   -0.5401825   -0.1863087
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0580585   -0.2828293    0.1667123
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0083931   -0.0723668    0.0555806
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0016540   -0.0427462    0.0460542
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0556131   -0.2266470    0.1154207
18-21 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0167928   -0.0573075    0.0908931
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0084748   -0.1125583    0.0956086
18-21 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0116354   -0.0934052    0.1166759
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0209467   -0.0287961    0.0706895
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0539651   -0.1574077    0.0494776
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.1209855   -0.1826478   -0.0593232
18-21 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.1188330   -0.3203383    0.0826723
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0445834   -0.0912068    0.0020399
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0236673   -0.0544995    0.1018341
21-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0360483   -0.0373108    0.1094073
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.0724644   -0.0422604    0.1871892
21-24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0899647   -0.2177085    0.0377791
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0311819   -0.0411544    0.1035181
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0374815   -0.1217590    0.0467961
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0102272   -0.0662271    0.0457727
21-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.1039898   -0.1132277    0.3212072
