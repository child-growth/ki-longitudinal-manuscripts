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

**Outcome Variable:** y_rate_wtkg

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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=38           69    151
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <32            30    151
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)        52    151
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38           30     79
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <32            18     79
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)        31     79
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38           36    159
0-3 months     ki0047075b-MAL-ED          INDIA                          <32            53    159
0-3 months     ki0047075b-MAL-ED          INDIA                          [32-38)        70    159
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38           17     78
0-3 months     ki0047075b-MAL-ED          NEPAL                          <32            14     78
0-3 months     ki0047075b-MAL-ED          NEPAL                          [32-38)        47     78
0-3 months     ki0047075b-MAL-ED          PERU                           >=38           27     84
0-3 months     ki0047075b-MAL-ED          PERU                           <32            29     84
0-3 months     ki0047075b-MAL-ED          PERU                           [32-38)        28     84
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           64     89
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32             9     89
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16     89
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           44     94
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     94
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        35     94
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38            7    387
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <32           326    387
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)        54    387
0-3 months     ki1119695-PROBIT           BELARUS                        >=38          327   7258
0-3 months     ki1119695-PROBIT           BELARUS                        <32          5802   7258
0-3 months     ki1119695-PROBIT           BELARUS                        [32-38)      1129   7258
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38          112    383
0-3 months     ki1135781-COHORTS          GUATEMALA                      <32           175    383
0-3 months     ki1135781-COHORTS          GUATEMALA                      [32-38)        96    383
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
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38            7    344
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <32           290    344
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)        47    344
3-6 months     ki1119695-PROBIT           BELARUS                        >=38          292   6442
3-6 months     ki1119695-PROBIT           BELARUS                        <32          5149   6442
3-6 months     ki1119695-PROBIT           BELARUS                        [32-38)      1001   6442
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38          117    379
3-6 months     ki1135781-COHORTS          GUATEMALA                      <32           168    379
3-6 months     ki1135781-COHORTS          GUATEMALA                      [32-38)        94    379
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
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=38            7    348
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <32           294    348
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)        47    348
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=38            9     74
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <32            47     74
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        18     74
6-9 months     ki1119695-PROBIT           BELARUS                        >=38          284   6034
6-9 months     ki1119695-PROBIT           BELARUS                        <32          4804   6034
6-9 months     ki1119695-PROBIT           BELARUS                        [32-38)       946   6034
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=38          106    374
6-9 months     ki1135781-COHORTS          GUATEMALA                      <32           171    374
6-9 months     ki1135781-COHORTS          GUATEMALA                      [32-38)        97    374
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
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38            7    369
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <32           310    369
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)        52    369
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38            8     72
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32            47     72
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        17     72
9-12 months    ki1119695-PROBIT           BELARUS                        >=38          286   6038
9-12 months    ki1119695-PROBIT           BELARUS                        <32          4814   6038
9-12 months    ki1119695-PROBIT           BELARUS                        [32-38)       938   6038
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=38          119    422
9-12 months    ki1135781-COHORTS          GUATEMALA                      <32           198    422
9-12 months    ki1135781-COHORTS          GUATEMALA                      [32-38)       105    422
9-12 months    ki1148112-LCNI-5           MALAWI                         >=38           12     45
9-12 months    ki1148112-LCNI-5           MALAWI                         <32            24     45
9-12 months    ki1148112-LCNI-5           MALAWI                         [32-38)         9     45
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
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38            7     74
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32            49     74
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        18     74
12-15 months   ki1119695-PROBIT           BELARUS                        >=38           13    277
12-15 months   ki1119695-PROBIT           BELARUS                        <32           229    277
12-15 months   ki1119695-PROBIT           BELARUS                        [32-38)        35    277
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=38          125    412
12-15 months   ki1135781-COHORTS          GUATEMALA                      <32           187    412
12-15 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       100    412
12-15 months   ki1148112-LCNI-5           MALAWI                         >=38            4     13
12-15 months   ki1148112-LCNI-5           MALAWI                         <32             7     13
12-15 months   ki1148112-LCNI-5           MALAWI                         [32-38)         2     13
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
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           47     98
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            14     98
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     98
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=38            7    360
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <32           306    360
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)        47    360
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38            7     72
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32            51     72
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        14     72
15-18 months   ki1119695-PROBIT           BELARUS                        >=38            0     36
15-18 months   ki1119695-PROBIT           BELARUS                        <32            32     36
15-18 months   ki1119695-PROBIT           BELARUS                        [32-38)         4     36
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=38          113    366
15-18 months   ki1135781-COHORTS          GUATEMALA                      <32           166    366
15-18 months   ki1135781-COHORTS          GUATEMALA                      [32-38)        87    366
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
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           44     94
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            14     94
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        36     94
18-21 months   ki1119695-PROBIT           BELARUS                        >=38            2     21
18-21 months   ki1119695-PROBIT           BELARUS                        <32            17     21
18-21 months   ki1119695-PROBIT           BELARUS                        [32-38)         2     21
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=38          110    366
18-21 months   ki1135781-COHORTS          GUATEMALA                      <32           170    366
18-21 months   ki1135781-COHORTS          GUATEMALA                      [32-38)        86    366
18-21 months   ki1148112-LCNI-5           MALAWI                         >=38           15     59
18-21 months   ki1148112-LCNI-5           MALAWI                         <32            30     59
18-21 months   ki1148112-LCNI-5           MALAWI                         [32-38)        14     59
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
21-24 months   ki1119695-PROBIT           BELARUS                        >=38            0     33
21-24 months   ki1119695-PROBIT           BELARUS                        <32            27     33
21-24 months   ki1119695-PROBIT           BELARUS                        [32-38)         6     33
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=38          118    409
21-24 months   ki1135781-COHORTS          GUATEMALA                      <32           192    409
21-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)        99    409
21-24 months   ki1148112-LCNI-5           MALAWI                         >=38           15     53
21-24 months   ki1148112-LCNI-5           MALAWI                         <32            27     53
21-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)        11     53


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
![](/tmp/09b8c487-bfc7-4923-9468-8fb73bce3644/5047986f-55f8-4dbf-b2d3-4c6a6656c548/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/09b8c487-bfc7-4923-9468-8fb73bce3644/5047986f-55f8-4dbf-b2d3-4c6a6656c548/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/09b8c487-bfc7-4923-9468-8fb73bce3644/5047986f-55f8-4dbf-b2d3-4c6a6656c548/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.8603298    0.8157560   0.9049037
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.9338046    0.8807909   0.9868183
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.8788873    0.8288416   0.9289330
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                1.0264506    0.9096696   1.1432316
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <32                  NA                1.0464863    0.9699445   1.1230281
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                1.0797069    0.9862063   1.1732075
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.7461118    0.6878681   0.8043556
0-3 months     ki0047075b-MAL-ED          INDIA                          <32                  NA                0.7599505    0.7118247   0.8080764
0-3 months     ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.7750781    0.7353092   0.8148469
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                0.9617983    0.8549305   1.0686661
0-3 months     ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.8853853    0.7961840   0.9745865
0-3 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.9434420    0.8787964   1.0080875
0-3 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                0.9356826    0.8592973   1.0120678
0-3 months     ki0047075b-MAL-ED          PERU                           <32                  NA                0.9470468    0.8901296   1.0039639
0-3 months     ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.9991473    0.9115266   1.0867680
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                0.9808637    0.9231370   1.0385903
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                0.9550553    0.8205106   1.0896001
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.9396671    0.8693825   1.0099517
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.8377312    0.7783402   0.8971222
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.9549746    0.8194726   1.0904767
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.8803547    0.7962714   0.9644380
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.7228662    0.7209251   0.7248073
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.7956634    0.7683135   0.8230132
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.7682599    0.6962073   0.8403125
0-3 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                0.8024532    0.7637747   0.8411317
0-3 months     ki1119695-PROBIT           BELARUS                        <32                  NA                0.8266092    0.8103785   0.8428399
0-3 months     ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.8142753    0.7972382   0.8313123
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.7117017    0.6650773   0.7583261
0-3 months     ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.8299055    0.7959515   0.8638596
0-3 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.7376283    0.6805586   0.7946980
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.4608073    0.4324506   0.4891640
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.4965268    0.4540916   0.5389620
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.4568159    0.4188847   0.4947471
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                0.5954922    0.5140837   0.6769008
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <32                  NA                0.6020896    0.5052341   0.6989452
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                0.5437046    0.4777990   0.6096103
3-6 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.4668659    0.4312139   0.5025179
3-6 months     ki0047075b-MAL-ED          INDIA                          <32                  NA                0.4133944    0.3740677   0.4527211
3-6 months     ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.4456767    0.4164618   0.4748916
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                0.5209690    0.4554197   0.5865182
3-6 months     ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.4680272    0.3897087   0.5463457
3-6 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.5047229    0.4722426   0.5372033
3-6 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                0.5310167    0.4540591   0.6079742
3-6 months     ki0047075b-MAL-ED          PERU                           <32                  NA                0.4649796    0.4199513   0.5100079
3-6 months     ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.5114997    0.4512038   0.5717955
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                0.4469201    0.4017536   0.4920865
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                0.4196559    0.2494437   0.5898682
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.4424206    0.3493899   0.5354512
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.4716805    0.4035074   0.5398536
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.4949172    0.3762989   0.6135356
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.4318431    0.3716451   0.4920411
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.4775125    0.4059757   0.5490493
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.4241539    0.4042624   0.4440454
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.4042030    0.3852726   0.4231335
3-6 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                0.6642689    0.6269788   0.7015589
3-6 months     ki1119695-PROBIT           BELARUS                        <32                  NA                0.6675425    0.6526297   0.6824552
3-6 months     ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.6587016    0.6374448   0.6799583
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.4307009    0.3975177   0.4638841
3-6 months     ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.4546695    0.4330137   0.4763254
3-6 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.4383968    0.4032682   0.4735254
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.2295035    0.2099970   0.2490100
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.2342105    0.1930500   0.2753711
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.2450439    0.2134022   0.2766856
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                0.4337795    0.3627312   0.5048277
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <32                  NA                0.3513360    0.2607879   0.4418840
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                0.3993558    0.3399742   0.4587374
6-9 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.2370392    0.1986896   0.2753888
6-9 months     ki0047075b-MAL-ED          INDIA                          <32                  NA                0.2219318    0.1849478   0.2589159
6-9 months     ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.2395955    0.2193302   0.2598608
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                0.2559748    0.1973926   0.3145569
6-9 months     ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.2911655    0.2082564   0.3740746
6-9 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.2492145    0.2195791   0.2788499
6-9 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                0.2542624    0.1923069   0.3162179
6-9 months     ki0047075b-MAL-ED          PERU                           <32                  NA                0.2588988    0.2188580   0.2989397
6-9 months     ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.2718637    0.2185931   0.3251342
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                0.2484049    0.2076383   0.2891715
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                0.2801037    0.1710843   0.3891231
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.2643039    0.1726743   0.3559335
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.2513860    0.1781751   0.3245969
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.1636467    0.0663221   0.2609713
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.2707139    0.2091523   0.3322755
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.2107564    0.1190775   0.3024354
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.2588854    0.2438197   0.2739510
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.2271696    0.1831701   0.2711692
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.1584807    0.0473011   0.2696602
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.1841995    0.1460050   0.2223940
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                0.2483125    0.1872188   0.3094061
6-9 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                0.4778001    0.4434083   0.5121918
6-9 months     ki1119695-PROBIT           BELARUS                        <32                  NA                0.4787617    0.4633845   0.4941389
6-9 months     ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.4711534    0.4451947   0.4971121
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.1967039    0.1720530   0.2213548
6-9 months     ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.2006954    0.1763633   0.2250275
6-9 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.2253287    0.1975987   0.2530587
6-9 months     ki1148112-LCNI-5           MALAWI                         >=38                 NA                0.2705770    0.2207508   0.3204031
6-9 months     ki1148112-LCNI-5           MALAWI                         <32                  NA                0.3000015    0.2576467   0.3423563
6-9 months     ki1148112-LCNI-5           MALAWI                         [32-38)              NA                0.2095239    0.1277849   0.2912628
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.1606463    0.1396359   0.1816566
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.1561983    0.1180635   0.1943331
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.1850855    0.1577899   0.2123811
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                0.3391691    0.2582954   0.4200428
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <32                  NA                0.4319406    0.3047106   0.5591706
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                0.2509788    0.1735961   0.3283615
9-12 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.2139640    0.1803703   0.2475576
9-12 months    ki0047075b-MAL-ED          INDIA                          <32                  NA                0.1761080    0.1453794   0.2068367
9-12 months    ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.1587536    0.1335481   0.1839591
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                0.1746271    0.1302282   0.2190260
9-12 months    ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.1260011    0.0230728   0.2289294
9-12 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.2065985    0.1817708   0.2314262
9-12 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                0.2374494    0.1845504   0.2903484
9-12 months    ki0047075b-MAL-ED          PERU                           <32                  NA                0.2052409    0.1617411   0.2487407
9-12 months    ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.2105216    0.1678336   0.2532096
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                0.1980120    0.1593030   0.2367210
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                0.2023962    0.0364316   0.3683609
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.2048793    0.1002975   0.3094610
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.1511590    0.1124105   0.1899076
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.1090737    0.0398680   0.1782793
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.1280759    0.0757648   0.1803871
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.2567622    0.2176035   0.2959208
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.2142541    0.2031723   0.2253360
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.2204758    0.1290970   0.3118547
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.1958726    0.0858084   0.3059368
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.1330757    0.0791295   0.1870220
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                0.1889552    0.1250266   0.2528837
9-12 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                0.3773812    0.3377448   0.4170176
9-12 months    ki1119695-PROBIT           BELARUS                        <32                  NA                0.3723285    0.3461420   0.3985149
9-12 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.3624279    0.3350895   0.3897664
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.1598949    0.1356508   0.1841390
9-12 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.1453461    0.1278025   0.1628897
9-12 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.1318517    0.1070724   0.1566309
9-12 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                0.2336709    0.2022926   0.2650493
9-12 months    ki1148112-LCNI-5           MALAWI                         <32                  NA                0.1414750    0.0732717   0.2096783
9-12 months    ki1148112-LCNI-5           MALAWI                         [32-38)              NA                0.2485001    0.1515497   0.3454505
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.1403029    0.1147580   0.1658479
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.1254164    0.0814371   0.1693957
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.1507994    0.1191867   0.1824122
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                0.1794265    0.1164830   0.2423700
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                0.1887703    0.1042331   0.2733074
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                0.2244852    0.1656092   0.2833612
12-15 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.2078098    0.1691859   0.2464338
12-15 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.1636766    0.1325594   0.1947938
12-15 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.1812861    0.1496114   0.2129609
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                0.1449413    0.1045334   0.1853492
12-15 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.1614893    0.0639571   0.2590215
12-15 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.0917672    0.0587298   0.1248047
12-15 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                0.1335082    0.0846154   0.1824010
12-15 months   ki0047075b-MAL-ED          PERU                           <32                  NA                0.1791586    0.1356470   0.2226702
12-15 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.1234665    0.0696736   0.1772593
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                0.1996143    0.1473285   0.2519002
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                0.3423189    0.1877118   0.4969260
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.2261022    0.1250355   0.3271689
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.2074859    0.1569428   0.2580291
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.1777497    0.0809348   0.2745647
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.1177335    0.0524647   0.1830022
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.2202953    0.1833933   0.2571974
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.1514783    0.1412875   0.1616690
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.1704125    0.1000304   0.2407947
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.2489173    0.2069426   0.2908919
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.1793946    0.1406161   0.2181730
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                0.1737866    0.1255761   0.2219971
12-15 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                0.3518078    0.1375299   0.5660857
12-15 months   ki1119695-PROBIT           BELARUS                        <32                  NA                0.2212093    0.1210749   0.3213437
12-15 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.2375285   -0.1021969   0.5772539
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.1564463    0.1324538   0.1804389
12-15 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.1512731    0.1312923   0.1712540
12-15 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.1336916    0.1068266   0.1605566
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.1360798    0.1117554   0.1604043
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.1260728    0.0819614   0.1701842
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.1579438    0.1249947   0.1908929
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                0.1637056    0.0868040   0.2406072
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                0.2295796    0.1408742   0.3182850
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                0.2558659    0.1896192   0.3221125
15-18 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.1297166    0.1014556   0.1579777
15-18 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.1627883    0.1334093   0.1921674
15-18 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.1648992    0.1345018   0.1952965
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                0.1464924    0.0861888   0.2067960
15-18 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.1854244    0.1249585   0.2458903
15-18 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.1638503    0.1374130   0.1902875
15-18 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                0.1451676    0.0894941   0.2008412
15-18 months   ki0047075b-MAL-ED          PERU                           <32                  NA                0.1395637    0.0771153   0.2020122
15-18 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.1683184    0.1302048   0.2064320
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                0.2105611    0.1517265   0.2693957
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                0.3279582    0.2333677   0.4225486
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.2505200    0.1574704   0.3435695
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.1286511    0.0776327   0.1796696
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.1660277    0.0826869   0.2493686
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.1515571    0.0897285   0.2133858
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.1833847    0.1380788   0.2286906
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.1389229    0.1209434   0.1569023
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.1720635    0.1590818   0.1850453
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.1264001    0.0877356   0.1650647
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.1858986    0.1432308   0.2285663
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                0.1650468    0.0986337   0.2314599
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.1493262    0.1234493   0.1752030
15-18 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.1102662    0.0853728   0.1351596
15-18 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.1091105    0.0763684   0.1418527
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.1608294    0.1318955   0.1897634
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.1226007    0.0777296   0.1674718
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.1144605    0.0816643   0.1472568
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                0.2040412    0.1415690   0.2665133
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                0.1623121    0.1168382   0.2077860
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                0.1752696    0.0999336   0.2506057
18-21 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.1840651    0.1556871   0.2124432
18-21 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.1806998    0.1474784   0.2139213
18-21 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.1762485    0.1482818   0.2042151
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                0.1832125    0.1346373   0.2317877
18-21 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.2118013    0.1444131   0.2791895
18-21 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.1670210    0.1385133   0.1955286
18-21 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                0.1787064    0.1193819   0.2380308
18-21 months   ki0047075b-MAL-ED          PERU                           <32                  NA                0.1526733    0.1012341   0.2041125
18-21 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.1256757    0.0656537   0.1856977
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                0.1606211    0.1045368   0.2167055
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                0.2423864    0.1680511   0.3167216
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.1937025    0.0485500   0.3388549
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.2045508    0.1491514   0.2599502
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.1339409    0.0411931   0.2266886
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.1191441    0.0547998   0.1834884
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.1842031    0.1574688   0.2109374
18-21 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.1282413    0.1043657   0.1521169
18-21 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.1513056    0.1182512   0.1843599
18-21 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                0.2015064    0.1306209   0.2723919
18-21 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                0.1594402    0.0615150   0.2573653
18-21 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                0.1372781    0.0485780   0.2259783
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.1605953    0.1311070   0.1900835
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.1426316    0.1056965   0.1795667
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.1483005    0.1231560   0.1734449
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                0.1673878    0.0905274   0.2442483
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                0.1599279    0.1015319   0.2183240
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                0.1210768    0.0697984   0.1723552
21-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.1756173    0.1447413   0.2064932
21-24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.1558497    0.1269415   0.1847579
21-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.1681862    0.1451465   0.1912258
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                0.2015591    0.1378140   0.2653041
21-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.1927681    0.1200476   0.2654886
21-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.1818713    0.1309309   0.2328117
21-24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                0.1980027    0.1495936   0.2464117
21-24 months   ki0047075b-MAL-ED          PERU                           <32                  NA                0.1481789    0.0978433   0.1985144
21-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.2147859    0.1374046   0.2921672
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                0.2193163    0.1755606   0.2630719
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                0.1550059    0.1141767   0.1958351
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.1494783    0.0749127   0.2240438
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.1710400    0.1079926   0.2340875
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.0675482   -0.0496797   0.1847760
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.1102601    0.0440324   0.1764877
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.1477733    0.1190211   0.1765254
21-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.1791439    0.1580377   0.2002501
21-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.1610900    0.1307459   0.1914341
21-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                0.1766502    0.0534233   0.2998771
21-24 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                0.0981511    0.0093182   0.1869839
21-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                0.1901823    0.0630439   0.3173207


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8813181   0.8523002   0.9103361
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.0519137   0.9915451   1.1122824
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.7634772   0.7362560   0.7906983
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9370223   0.8885664   0.9854781
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.9607608   0.9174356   1.0040861
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9708477   0.9252425   1.0164529
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8723107   0.8244598   0.9201616
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.7905229   0.7603904   0.8206553
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.8236023   0.8074141   0.8397905
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7722099   0.7465138   0.7979059
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4666993   0.4463537   0.4870449
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.5766737   0.5303441   0.6230033
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4393676   0.4189812   0.4597541
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.5012513   0.4728207   0.5296820
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.5021551   0.4660009   0.5383093
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4433239   0.4028262   0.4838216
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4604262   0.4167857   0.5040667
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4225138   0.4091013   0.4359263
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.6660203   0.6505858   0.6814549
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4432343   0.4266772   0.4597914
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2357500   0.2194193   0.2520807
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.4014869   0.3597213   0.4432525
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2331610   0.2156968   0.2506252
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2586687   0.2316430   0.2856945
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.2618558   0.2317502   0.2919613
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2540737   0.2186999   0.2894474
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2447921   0.1997413   0.2898428
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2536338   0.2431036   0.2641640
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1966666   0.1644047   0.2289285
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.4775236   0.4617822   0.4932650
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2059530   0.1909300   0.2209759
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2735849   0.2414957   0.3056741
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1678849   0.1523357   0.1834342
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.3257006   0.2714459   0.3799553
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1769297   0.1597056   0.1941539
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1845408   0.1572083   0.2118732
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2175569   0.1905725   0.2445413
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1996036   0.1627703   0.2364369
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1362526   0.1074068   0.1650985
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2159373   0.2048701   0.2270045
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1532469   0.1125153   0.1939785
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.3710298   0.3451016   0.3969579
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1460911   0.1337032   0.1584790
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1874656   0.1429417   0.2319895
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1409754   0.1227577   0.1591931
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1992367   0.1605457   0.2379277
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1815324   0.1618745   0.2011903
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1164481   0.0872881   0.1456081
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1445225   0.1156255   0.1734195
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2148528   0.1696351   0.2600706
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1695773   0.1314588   0.2076959
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1552369   0.1502204   0.1602535
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1846069   0.1556992   0.2135147
12-15 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2294005   0.1066484   0.3521525
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1485753   0.1352163   0.1619343
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1419478   0.1236639   0.1602318
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2150113   0.1700612   0.2599614
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1565038   0.1384785   0.1745291
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1642160   0.1405776   0.1878544
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1510897   0.1203542   0.1818252
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2277508   0.1801980   0.2753036
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1426388   0.1066757   0.1786020
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1441141   0.1287179   0.1595103
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1760595   0.1427086   0.2094103
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1220510   0.1060705   0.1380315
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1368851   0.1170300   0.1567402
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1830766   0.1437984   0.2223548
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1794249   0.1616011   0.1972487
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1791615   0.1551321   0.2031909
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1523476   0.1189567   0.1857385
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1742237   0.1248586   0.2235888
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1613255   0.1220903   0.2005607
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1504799   0.1345462   0.1664136
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1648762   0.1075820   0.2221704
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1527022   0.1351256   0.1702789
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1475154   0.1093518   0.1856790
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1658488   0.1501840   0.1815136
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1881769   0.1521138   0.2242400
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1871341   0.1519649   0.2223032
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2009804   0.1655657   0.2363951
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1320769   0.0886257   0.1755282
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1657232   0.1508018   0.1806446
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1394686   0.0754909   0.2034463


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.0734748    0.0042124    0.1427372
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0185574   -0.0484605    0.0855754
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.0200357   -0.1195940    0.1596653
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38               0.0532563   -0.0963437    0.2028563
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.0138387   -0.0617155    0.0893928
0-3 months     ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.0289662   -0.0415597    0.0994921
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.0764130   -0.2156164    0.0627904
0-3 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0183563   -0.1432554    0.1065427
0-3 months     ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <32                  >=38               0.0113642   -0.0838947    0.1066231
0-3 months     ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.0634647   -0.0527768    0.1797062
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0258083   -0.1722141    0.1205975
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0411965   -0.1321487    0.0497556
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.1172435   -0.0307028    0.2651897
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0426235   -0.0603197    0.1455667
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.0727971    0.0438571    0.1017372
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.0453937   -0.0275308    0.1183182
0-3 months     ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0241560   -0.0049725    0.0532846
0-3 months     ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.0118221   -0.0180189    0.0416631
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.1182039    0.0605262    0.1758815
0-3 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38               0.0259266   -0.0477672    0.0996205
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.0357195   -0.0153182    0.0867572
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0039914   -0.0513504    0.0433676
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.0065974   -0.1199267    0.1331215
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0517876   -0.1565297    0.0529545
3-6 months     ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0534715   -0.1065530   -0.0003899
3-6 months     ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0211892   -0.0672823    0.0249039
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.0529418   -0.1550716    0.0491880
3-6 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0162461   -0.0894012    0.0569091
3-6 months     ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.0660370   -0.1551999    0.0231258
3-6 months     ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.0195170   -0.1172822    0.0782483
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0272641   -0.2033670    0.1488388
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0044995   -0.1079147    0.0989157
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.0232367   -0.1135766    0.1600500
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0398374   -0.1307845    0.0511097
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              -0.0533587   -0.1432204    0.0365031
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              -0.0733095   -0.1329770   -0.0136420
3-6 months     ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0032736   -0.0317621    0.0383093
3-6 months     ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0055673   -0.0395003    0.0283657
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0239687   -0.0156559    0.0635932
3-6 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38               0.0076959   -0.0406274    0.0560192
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.0047070   -0.0408418    0.0502558
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0155404   -0.0216308    0.0527116
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.0824435   -0.1975383    0.0326513
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0344236   -0.1270197    0.0581724
6-9 months     ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0151074   -0.0683851    0.0381703
6-9 months     ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.0025563   -0.0408186    0.0459311
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.0351907   -0.0663267    0.1367082
6-9 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0067603   -0.0724118    0.0588913
6-9 months     ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           <32                  >=38               0.0046364   -0.0691318    0.0784046
6-9 months     ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.0176013   -0.0641070    0.0993095
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0316988   -0.0846934    0.1480910
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0158990   -0.0843900    0.1161881
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0877393   -0.2095256    0.0340470
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0193279   -0.0763260    0.1149818
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.0481289   -0.0528615    0.1491193
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.0164132   -0.0353070    0.0681334
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38               0.0257189   -0.0918384    0.1432762
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.0898318   -0.0370277    0.2166913
6-9 months     ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0009616   -0.0301683    0.0320915
6-9 months     ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0066467   -0.0459006    0.0326073
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0039915   -0.0306455    0.0386285
6-9 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38               0.0286248   -0.0084780    0.0657277
6-9 months     ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         <32                  >=38               0.0294245   -0.0359710    0.0948200
6-9 months     ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.0610531   -0.1567814    0.0346752
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.0044479   -0.0479875    0.0390917
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0244393   -0.0100061    0.0588847
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.0927715   -0.0579867    0.2435297
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0881903   -0.2001217    0.0237412
9-12 months    ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0378560   -0.0833838    0.0076719
9-12 months    ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0552103   -0.0972086   -0.0132121
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.0486260   -0.1607219    0.0634699
9-12 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38               0.0319715   -0.0188977    0.0828407
9-12 months    ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.0322085   -0.1006960    0.0362790
9-12 months    ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.0269278   -0.0949025    0.0410470
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0043843   -0.1660348    0.1748034
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0068673   -0.1046483    0.1183829
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0420854   -0.1214004    0.0372297
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0230831   -0.0881823    0.0420161
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              -0.0425080   -0.0806753   -0.0043407
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              -0.0362863   -0.1620326    0.0894599
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              -0.0627968   -0.1853706    0.0597769
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38              -0.0069174   -0.1342005    0.1203656
9-12 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0050527   -0.0346140    0.0245086
9-12 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0149533   -0.0424270    0.0125205
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0145488   -0.0444746    0.0153770
9-12 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0280432   -0.0627100    0.0066236
9-12 months    ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.0921959   -0.1672711   -0.0171207
9-12 months    ki1148112-LCNI-5           MALAWI                         [32-38)              >=38               0.0148292   -0.0870727    0.1167310
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.0148865   -0.0657463    0.0359733
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0104965   -0.0301472    0.0511402
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.0093438   -0.0960527    0.1147402
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38               0.0450587   -0.0411287    0.1312461
12-15 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0441332   -0.0937325    0.0054660
12-15 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0265237   -0.0764746    0.0234273
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.0165480   -0.0890234    0.1221195
12-15 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0531740   -0.1053686   -0.0009795
12-15 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           <32                  >=38               0.0456504   -0.0198001    0.1111009
12-15 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.0100417   -0.0827341    0.0626506
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1427046   -0.0205044    0.3059135
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0264879   -0.0873027    0.1402784
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0297362   -0.1389504    0.0794780
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0897525   -0.1723032   -0.0072018
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              -0.0688171   -0.1121682   -0.0254659
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              -0.0498828   -0.0908604   -0.0089052
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              -0.0695227   -0.1266685   -0.0123769
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38              -0.0751307   -0.1390534   -0.0112079
12-15 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.1305985   -0.3097348    0.0485378
12-15 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.1142793   -0.4608053    0.2322466
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0051732   -0.0363962    0.0260498
12-15 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0227547   -0.0587738    0.0132643
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.0100070   -0.0603806    0.0403665
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0218639   -0.0190912    0.0628191
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.0658740   -0.0515250    0.1832729
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38               0.0921603   -0.0093409    0.1936614
15-18 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.0330717   -0.0076937    0.0738371
15-18 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.0351825   -0.0063227    0.0766878
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.0389321   -0.0464650    0.1243291
15-18 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38               0.0173579   -0.0484863    0.0832021
15-18 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.0056039   -0.0892660    0.0780582
15-18 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.0231508   -0.0443192    0.0906207
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1173971    0.0060020    0.2287922
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0399589   -0.0701308    0.1500485
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.0373766   -0.0603402    0.1350934
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0229060   -0.0572542    0.1030662
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              -0.0444618   -0.0959716    0.0070480
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              -0.0113211   -0.0626269    0.0399846
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38               0.0594984    0.0019182    0.1170786
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.0386466   -0.0382015    0.1154948
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0390600   -0.0749667   -0.0031532
15-18 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0402156   -0.0819489    0.0015176
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.0382288   -0.0916197    0.0151621
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0463689   -0.0901041   -0.0026338
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.0417290   -0.1189990    0.0355410
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0287715   -0.1266403    0.0690972
18-21 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0033653   -0.0470572    0.0403266
18-21 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0078167   -0.0476595    0.0320261
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.0285888   -0.0544817    0.1116593
18-21 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0161915   -0.0725141    0.0401311
18-21 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.0260331   -0.1045530    0.0524869
18-21 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.0530306   -0.1374228    0.0313615
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0817652   -0.0113540    0.1748844
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0330814   -0.1225293    0.1886920
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0706100   -0.1786435    0.0374236
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0854067   -0.1703142   -0.0004992
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0559618   -0.0918054   -0.0201182
18-21 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0328975   -0.0754100    0.0096150
18-21 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.0420662   -0.1629550    0.0788225
18-21 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.0642282   -0.1777732    0.0493168
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.0179636   -0.0652263    0.0292990
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0122948   -0.0510478    0.0264583
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.0074599   -0.1039878    0.0890680
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0463110   -0.1387069    0.0460849
21-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0197676   -0.0620642    0.0225291
21-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0074311   -0.0459557    0.0310936
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.0087910   -0.1054952    0.0879132
21-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0196878   -0.1012865    0.0619109
21-24 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.0498238   -0.1196601    0.0200125
21-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.0167832   -0.0744928    0.1080591
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0643104   -0.1241567   -0.0044640
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0698380   -0.1562936    0.0166177
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.1034919   -0.2365984    0.0296147
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0607799   -0.1522189    0.0306590
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0313706   -0.0042967    0.0670379
21-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38               0.0133167   -0.0284858    0.0551193
21-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.0784991   -0.2304075    0.0734093
21-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38               0.0135321   -0.1635245    0.1905887


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0209883   -0.0108408    0.0528174
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0254631   -0.0577495    0.1086758
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0173653   -0.0335972    0.0683278
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0247760   -0.1185333    0.0689813
0-3 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0250783   -0.0378574    0.0880139
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0100160   -0.0349074    0.0148755
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0345795   -0.0155688    0.0847278
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.0676567    0.0360825    0.0992308
0-3 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0211491   -0.0062212    0.0485195
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0605082    0.0209767    0.1000397
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0058920   -0.0159973    0.0277813
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0188185   -0.0799769    0.0423399
3-6 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0274983   -0.0612051    0.0062085
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0197176   -0.0767772    0.0373420
3-6 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0288616   -0.0869686    0.0292454
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0035962   -0.0305328    0.0233404
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0112543   -0.0569752    0.0344665
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.0549987   -0.1383496    0.0283522
3-6 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0017515   -0.0312809    0.0347839
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0125334   -0.0138373    0.0389040
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0062465   -0.0110839    0.0235768
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0322926   -0.0866838    0.0220986
6-9 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0038782   -0.0377414    0.0299850
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.0026940   -0.0497876    0.0551755
6-9 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0075933   -0.0404761    0.0556628
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0056688   -0.0157768    0.0271144
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0065939   -0.0534484    0.0402605
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.0428774   -0.0495709    0.1353257
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                 0.0381859   -0.0637700    0.1401419
6-9 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0002764   -0.0304190    0.0298661
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0092491   -0.0128621    0.0313602
6-9 months     ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.0030079   -0.0438751    0.0498910
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0072387   -0.0093388    0.0238161
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0134685   -0.0806743    0.0537373
9-12 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0370342   -0.0672695   -0.0067990
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.0099137   -0.0337853    0.0536127
9-12 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0198925   -0.0612152    0.0214302
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0015917   -0.0237692    0.0269525
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0149064   -0.0445627    0.0147500
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.0408249   -0.0884676    0.0068178
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0426257   -0.1478928    0.0626414
9-12 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0063514   -0.0336442    0.0209413
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0138038   -0.0340459    0.0064383
9-12 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.0462053   -0.0956205    0.0032098
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0006724   -0.0186249    0.0199698
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0198102   -0.0296857    0.0693062
12-15 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0262774   -0.0609575    0.0084026
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0284932   -0.0706877    0.0137014
12-15 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0110144   -0.0288796    0.0509083
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0152385   -0.0120165    0.0424935
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0379086   -0.0777170    0.0018998
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.0650584   -0.0982610   -0.0318558
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0643103   -0.1118939   -0.0167267
12-15 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.1224074   -0.2994451    0.0546304
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0078710   -0.0279908    0.0122488
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0058680   -0.0139067    0.0256427
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0513057   -0.0076839    0.1102953
15-18 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0267872   -0.0010368    0.0546111
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.0177236   -0.0333660    0.0688132
15-18 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0059221   -0.0391281    0.0509722
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0171897   -0.0087535    0.0431328
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0139877   -0.0234234    0.0513988
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.0392706   -0.0885105    0.0099693
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                 0.0496593    0.0015289    0.0977898
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0272752   -0.0498919   -0.0046585
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0239443   -0.0458453   -0.0020434
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0209645   -0.0710225    0.0290934
18-21 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0046402   -0.0323614    0.0230809
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0040510   -0.0477367    0.0396347
18-21 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0263588   -0.0738731    0.0211556
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0136026   -0.0184425    0.0456476
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0432253   -0.0848823   -0.0015684
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0337232   -0.0569394   -0.0105070
18-21 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.0366302   -0.1124749    0.0392145
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0078930   -0.0278346    0.0120486
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0198724   -0.0735125    0.0337677
21-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0097684   -0.0375122    0.0179753
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0133822   -0.0735084    0.0467440
21-24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0108686   -0.0553310    0.0335938
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0183358   -0.0376287    0.0009570
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0389631   -0.0851848    0.0072587
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0179499   -0.0059733    0.0418732
21-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.0371816   -0.1405392    0.0661761
