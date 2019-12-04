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

**Outcome Variable:** ever_wasted

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

agecat                        studyid                    country                        birthlen      ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  -----------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 0       31     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 1        8     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  0       80     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  1       31     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              0       64     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              1       15     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 0       29      65
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 1        1      65
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         <48 cm                  0       15      65
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         <48 cm                  1        2      65
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              0       17      65
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              1        1      65
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          >=50 cm                 0        6      47
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          >=50 cm                 1        3      47
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          <48 cm                  0       11      47
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          <48 cm                  1        9      47
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          [48-50) cm              0       10      47
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          [48-50) cm              1        8      47
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          >=50 cm                 0        7      27
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          >=50 cm                 1        1      27
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          <48 cm                  0        9      27
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          <48 cm                  1        3      27
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          [48-50) cm              0        5      27
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          [48-50) cm              1        2      27
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           >=50 cm                 0       49     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           >=50 cm                 1        3     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           <48 cm                  0       79     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           <48 cm                  1        9     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           [48-50) cm              0       86     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           [48-50) cm              1        7     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 0       36     119
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 1        6     119
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  0       28     119
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  1        3     119
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              0       39     119
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              1        7     119
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 0       30     124
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 1        2     124
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  0       29     124
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  1       12     124
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              0       43     124
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              1        8     124
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 0       11     104
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 1        5     104
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  0       22     104
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  1       26     104
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              0       18     104
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              1       22     104
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          >=50 cm                 0       64     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          >=50 cm                 1       78     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          <48 cm                  0       48     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          <48 cm                  1       63     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          [48-50) cm              0       71     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          [48-50) cm              1       66     390
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       >=50 cm                 0       11     240
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       >=50 cm                 1       13     240
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       <48 cm                  0       63     240
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       <48 cm                  1       99     240
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       [48-50) cm              0       30     240
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       [48-50) cm              1       24     240
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       >=50 cm                 0        7      41
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       >=50 cm                 1        5      41
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       <48 cm                  0        8      41
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       <48 cm                  1        7      41
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       [48-50) cm              0        9      41
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       [48-50) cm              1        5      41
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 0      161    1489
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 1       58    1489
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  0      475    1489
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  1      320    1489
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              0      313    1489
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              1      162    1489
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 0      100     581
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 1       30     581
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  0      152     581
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  1       76     581
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              0      156     581
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              1       67     581
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 0      149     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 1       17     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  0      177     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  1       62     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              0      239     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              1       43     687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 0      149     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 1       19     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  0      243     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  1       47     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              0      254     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              1       42     754
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         >=50 cm                 0      476    1547
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         >=50 cm                 1      283    1547
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         <48 cm                  0      173    1547
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         <48 cm                  1      120    1547
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         [48-50) cm              0      300    1547
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         [48-50) cm              1      195    1547
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          >=50 cm                 0       66     659
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          >=50 cm                 1       42     659
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          <48 cm                  0      163     659
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          <48 cm                  1      187     659
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm              0      100     659
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm              1      101     659
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     >=50 cm                 0        1      17
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     >=50 cm                 1        0      17
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     <48 cm                  0        5      17
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     <48 cm                  1        3      17
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     [48-50) cm              0        6      17
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     [48-50) cm              1        2      17
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           >=50 cm                 0        1       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           >=50 cm                 1        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           <48 cm                  0        1       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           <48 cm                  1        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           [48-50) cm              0        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           [48-50) cm              1        0       2
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        >=50 cm                 0    14250   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        >=50 cm                 1     1045   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        <48 cm                  0      169   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        <48 cm                  1       20   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        [48-50) cm              0     1248   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        [48-50) cm              1      145   16877
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 0     3676   13501
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 1      312   13501
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  0     3764   13501
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  1      521   13501
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              0     4684   13501
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              1      544   13501
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      >=50 cm                 0      382     821
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      >=50 cm                 1       38     821
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      <48 cm                  0      130     821
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      <48 cm                  1       25     821
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      [48-50) cm              0      219     821
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      [48-50) cm              1       27     821
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          >=50 cm                 0     1185    6400
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          >=50 cm                 1      204    6400
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          <48 cm                  0     2044    6400
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          <48 cm                  1      600    6400
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          [48-50) cm              0     1924    6400
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          [48-50) cm              1      443    6400
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 0      848    3011
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 1      273    3011
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    <48 cm                  0      454    3011
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    <48 cm                  1      286    3011
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              0      795    3011
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              1      355    3011
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 0     1017   21905
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 1      217   21905
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  0    12889   21905
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  1     2772   21905
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              0     4150   21905
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              1      860   21905
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 0      951    4464
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 1      279    4464
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  0     1498    4464
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  1      663    4464
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              0      826    4464
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              1      247    4464
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 0       36     228
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 1        3     228
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  0      101     228
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  1        9     228
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              0       75     228
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              1        4     228
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 0       29      65
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 1        1      65
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         <48 cm                  0       17      65
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         <48 cm                  1        0      65
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              0       18      65
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              1        0      65
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          >=50 cm                 0        7      47
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          >=50 cm                 1        2      47
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          <48 cm                  0       18      47
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          <48 cm                  1        2      47
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          [48-50) cm              0       14      47
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          [48-50) cm              1        4      47
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          >=50 cm                 0        7      27
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          >=50 cm                 1        1      27
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          <48 cm                  0       11      27
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          <48 cm                  1        1      27
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          [48-50) cm              0        7      27
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          [48-50) cm              1        0      27
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           >=50 cm                 0       50     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           >=50 cm                 1        2     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           <48 cm                  0       86     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           <48 cm                  1        2     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           [48-50) cm              0       92     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           [48-50) cm              1        1     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 0       38     118
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 1        4     118
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  0       30     118
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  1        1     118
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              0       41     118
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              1        4     118
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 0       31     124
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 1        1     124
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  0       40     124
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  1        1     124
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              0       49     124
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              1        2     124
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 0       10     101
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 1        5     101
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  0       27     101
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  1       19     101
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              0       19     101
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              1       21     101
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          >=50 cm                 0       83     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          >=50 cm                 1       48     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          <48 cm                  0       75     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          <48 cm                  1       34     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          [48-50) cm              0       84     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          [48-50) cm              1       48     372
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       >=50 cm                 0       16     238
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       >=50 cm                 1        8     238
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       <48 cm                  0      127     238
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       <48 cm                  1       34     238
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       [48-50) cm              0       41     238
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       [48-50) cm              1       12     238
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       >=50 cm                 0        8      41
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       >=50 cm                 1        4      41
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       <48 cm                  0       12      41
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       <48 cm                  1        3      41
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       [48-50) cm              0       11      41
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       [48-50) cm              1        3      41
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 0      196    1463
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 1       20    1463
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  0      670    1463
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  1      108    1463
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              0      412    1463
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              1       57    1463
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 0      120     564
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 1        8     564
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  0      201     564
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  1       17     564
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              0      198     564
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              1       20     564
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 0      157     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 1        9     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  0      221     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  1       16     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              0      268     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              1       12     683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 0      161     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 1        6     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  0      282     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  1        6     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              0      286     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              1        8     749
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         >=50 cm                 0      667    1533
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         >=50 cm                 1       84    1533
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         <48 cm                  0      254    1533
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         <48 cm                  1       38    1533
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         [48-50) cm              0      430    1533
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         [48-50) cm              1       60    1533
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          >=50 cm                 0       84     641
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          >=50 cm                 1       19     641
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          <48 cm                  0      285     641
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          <48 cm                  1       58     641
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm              0      149     641
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm              1       46     641
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     >=50 cm                 0        1      17
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     >=50 cm                 1        0      17
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     <48 cm                  0        7      17
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     <48 cm                  1        1      17
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     [48-50) cm              0        8      17
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     [48-50) cm              1        0      17
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           >=50 cm                 0        1       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           >=50 cm                 1        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           <48 cm                  0        1       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           <48 cm                  1        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           [48-50) cm              0        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           [48-50) cm              1        0       2
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        >=50 cm                 0    14154   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        >=50 cm                 1      924   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        <48 cm                  0      173   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        <48 cm                  1       16   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        [48-50) cm              0     1268   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        [48-50) cm              1      122   16657
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 0     3810   13254
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 1       99   13254
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  0     4061   13254
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  1      132   13254
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              0     4956   13254
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              1      196   13254
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      >=50 cm                 0      399     793
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      >=50 cm                 1        6     793
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      <48 cm                  0      145     793
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      <48 cm                  1        6     793
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      [48-50) cm              0      231     793
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      [48-50) cm              1        6     793
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          >=50 cm                 0     1189    6052
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          >=50 cm                 1      107    6052
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          <48 cm                  0     2294    6052
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          <48 cm                  1      212    6052
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          [48-50) cm              0     2035    6052
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          [48-50) cm              1      215    6052
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 0     1006    2990
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 1      107    2990
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    <48 cm                  0      670    2990
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    <48 cm                  1       65    2990
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              0     1031    2990
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              1      111    2990
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 0     1087   21725
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 1      133   21725
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  0    14501   21725
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  1     1030   21725
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              0     4485   21725
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              1      489   21725
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 0     1174    4359
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 1       35    4359
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  0     2032    4359
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  1       61    4359
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              0     1027    4359
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              1       30    4359
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 0       34     212
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 1        5     212
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  0       77     212
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  1       22     212
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              0       60     212
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              1       14     212
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 0       27      58
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 1        0      58
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         <48 cm                  0       13      58
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         <48 cm                  1        2      58
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              0       15      58
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              1        1      58
6-24 months                   ki0047075b-MAL-ED          INDIA                          >=50 cm                 0        6      41
6-24 months                   ki0047075b-MAL-ED          INDIA                          >=50 cm                 1        2      41
6-24 months                   ki0047075b-MAL-ED          INDIA                          <48 cm                  0        9      41
6-24 months                   ki0047075b-MAL-ED          INDIA                          <48 cm                  1        9      41
6-24 months                   ki0047075b-MAL-ED          INDIA                          [48-50) cm              0        9      41
6-24 months                   ki0047075b-MAL-ED          INDIA                          [48-50) cm              1        6      41
6-24 months                   ki0047075b-MAL-ED          NEPAL                          >=50 cm                 0        7      26
6-24 months                   ki0047075b-MAL-ED          NEPAL                          >=50 cm                 1        1      26
6-24 months                   ki0047075b-MAL-ED          NEPAL                          <48 cm                  0        8      26
6-24 months                   ki0047075b-MAL-ED          NEPAL                          <48 cm                  1        3      26
6-24 months                   ki0047075b-MAL-ED          NEPAL                          [48-50) cm              0        5      26
6-24 months                   ki0047075b-MAL-ED          NEPAL                          [48-50) cm              1        2      26
6-24 months                   ki0047075b-MAL-ED          PERU                           >=50 cm                 0       46     213
6-24 months                   ki0047075b-MAL-ED          PERU                           >=50 cm                 1        2     213
6-24 months                   ki0047075b-MAL-ED          PERU                           <48 cm                  0       76     213
6-24 months                   ki0047075b-MAL-ED          PERU                           <48 cm                  1        8     213
6-24 months                   ki0047075b-MAL-ED          PERU                           [48-50) cm              0       75     213
6-24 months                   ki0047075b-MAL-ED          PERU                           [48-50) cm              1        6     213
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 0       32      97
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 1        3      97
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  0       20      97
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  1        3      97
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              0       34      97
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              1        5      97
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 0       31     120
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 1        1     120
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  0       28     120
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  1       11     120
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              0       42     120
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              1        7     120
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 0       16     106
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 1        0     106
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  0       38     106
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  1       12     106
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              0       32     106
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              1        8     106
6-24 months                   ki1000108-IRC              INDIA                          >=50 cm                 0       98     391
6-24 months                   ki1000108-IRC              INDIA                          >=50 cm                 1       44     391
6-24 months                   ki1000108-IRC              INDIA                          <48 cm                  0       70     391
6-24 months                   ki1000108-IRC              INDIA                          <48 cm                  1       41     391
6-24 months                   ki1000108-IRC              INDIA                          [48-50) cm              0      100     391
6-24 months                   ki1000108-IRC              INDIA                          [48-50) cm              1       38     391
6-24 months                   ki1000109-EE               PAKISTAN                       >=50 cm                 0       15     237
6-24 months                   ki1000109-EE               PAKISTAN                       >=50 cm                 1        9     237
6-24 months                   ki1000109-EE               PAKISTAN                       <48 cm                  0       76     237
6-24 months                   ki1000109-EE               PAKISTAN                       <48 cm                  1       84     237
6-24 months                   ki1000109-EE               PAKISTAN                       [48-50) cm              0       36     237
6-24 months                   ki1000109-EE               PAKISTAN                       [48-50) cm              1       17     237
6-24 months                   ki1000109-ResPak           PAKISTAN                       >=50 cm                 0       10      32
6-24 months                   ki1000109-ResPak           PAKISTAN                       >=50 cm                 1        1      32
6-24 months                   ki1000109-ResPak           PAKISTAN                       <48 cm                  0        8      32
6-24 months                   ki1000109-ResPak           PAKISTAN                       <48 cm                  1        4      32
6-24 months                   ki1000109-ResPak           PAKISTAN                       [48-50) cm              0        6      32
6-24 months                   ki1000109-ResPak           PAKISTAN                       [48-50) cm              1        3      32
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 0      166    1376
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 1       44    1376
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  0      476    1376
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  1      251    1376
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              0      313    1376
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              1      126    1376
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 0       94     522
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 1       27     522
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  0      132     522
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  1       70     522
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              0      142     522
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              1       57     522
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 0      139     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 1       10     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  0      165     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  1       55     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              0      212     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              1       34     615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 0      151     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 1       14     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  0      236     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  1       44     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              0      247     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              1       38     730
6-24 months                   ki1101329-Keneba           GAMBIA                         >=50 cm                 0      501    1487
6-24 months                   ki1101329-Keneba           GAMBIA                         >=50 cm                 1      242    1487
6-24 months                   ki1101329-Keneba           GAMBIA                         <48 cm                  0      173    1487
6-24 months                   ki1101329-Keneba           GAMBIA                         <48 cm                  1       95    1487
6-24 months                   ki1101329-Keneba           GAMBIA                         [48-50) cm              0      313    1487
6-24 months                   ki1101329-Keneba           GAMBIA                         [48-50) cm              1      163    1487
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          >=50 cm                 0       67     589
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          >=50 cm                 1       33     589
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          <48 cm                  0      150     589
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          <48 cm                  1      161     589
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm              0       94     589
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm              1       84     589
6-24 months                   ki1114097-CMIN             BANGLADESH                     >=50 cm                 0        0      12
6-24 months                   ki1114097-CMIN             BANGLADESH                     >=50 cm                 1        0      12
6-24 months                   ki1114097-CMIN             BANGLADESH                     <48 cm                  0        4      12
6-24 months                   ki1114097-CMIN             BANGLADESH                     <48 cm                  1        2      12
6-24 months                   ki1114097-CMIN             BANGLADESH                     [48-50) cm              0        4      12
6-24 months                   ki1114097-CMIN             BANGLADESH                     [48-50) cm              1        2      12
6-24 months                   ki1114097-CONTENT          PERU                           >=50 cm                 0        1       2
6-24 months                   ki1114097-CONTENT          PERU                           >=50 cm                 1        0       2
6-24 months                   ki1114097-CONTENT          PERU                           <48 cm                  0        1       2
6-24 months                   ki1114097-CONTENT          PERU                           <48 cm                  1        0       2
6-24 months                   ki1114097-CONTENT          PERU                           [48-50) cm              0        0       2
6-24 months                   ki1114097-CONTENT          PERU                           [48-50) cm              1        0       2
6-24 months                   ki1119695-PROBIT           BELARUS                        >=50 cm                 0    14916   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        >=50 cm                 1      136   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        <48 cm                  0      175   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        <48 cm                  1        4   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        [48-50) cm              0     1340   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        [48-50) cm              1       27   16598
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 0     2848   10690
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 1      224   10690
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  0     3007   10690
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  1      417   10690
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              0     3812   10690
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              1      382   10690
6-24 months                   ki1135781-COHORTS          GUATEMALA                      >=50 cm                 0      327     727
6-24 months                   ki1135781-COHORTS          GUATEMALA                      >=50 cm                 1       35     727
6-24 months                   ki1135781-COHORTS          GUATEMALA                      <48 cm                  0      123     727
6-24 months                   ki1135781-COHORTS          GUATEMALA                      <48 cm                  1       19     727
6-24 months                   ki1135781-COHORTS          GUATEMALA                      [48-50) cm              0      200     727
6-24 months                   ki1135781-COHORTS          GUATEMALA                      [48-50) cm              1       23     727
6-24 months                   ki1135781-COHORTS          INDIA                          >=50 cm                 0     1235    6169
6-24 months                   ki1135781-COHORTS          INDIA                          >=50 cm                 1      107    6169
6-24 months                   ki1135781-COHORTS          INDIA                          <48 cm                  0     2132    6169
6-24 months                   ki1135781-COHORTS          INDIA                          <48 cm                  1      414    6169
6-24 months                   ki1135781-COHORTS          INDIA                          [48-50) cm              0     2039    6169
6-24 months                   ki1135781-COHORTS          INDIA                          [48-50) cm              1      242    6169
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 0      829    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 1      208    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    <48 cm                  0      443    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    <48 cm                  1      256    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              0      783    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              1      283    2802
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 0      749   14310
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 1       99   14310
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  0     8244   14310
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  1     1862   14310
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              0     2925   14310
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              1      431   14310
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 0      965    4474
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 1      260    4474
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  0     1537    4474
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  1      635    4474
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              0      849    4474
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              1      228    4474


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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




# Results Detail

## Results Plots
![](/tmp/125f3afb-d128-42a3-b7e2-b605ebc51ec3/7bf05b21-c079-455f-a930-e07e8b87842a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/125f3afb-d128-42a3-b7e2-b605ebc51ec3/7bf05b21-c079-455f-a930-e07e8b87842a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/125f3afb-d128-42a3-b7e2-b605ebc51ec3/7bf05b21-c079-455f-a930-e07e8b87842a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/125f3afb-d128-42a3-b7e2-b605ebc51ec3/7bf05b21-c079-455f-a930-e07e8b87842a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH    >=50 cm              NA                0.2051282   0.0781213   0.3321351
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH    <48 cm               NA                0.2792793   0.1956343   0.3629242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH    [48-50) cm           NA                0.1898734   0.1031985   0.2765483
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA         >=50 cm              NA                0.3125000   0.0842832   0.5407168
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA         <48 cm               NA                0.5416667   0.4000278   0.6833055
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA         [48-50) cm           NA                0.5500000   0.3950813   0.7049187
0-24 months (no birth wast)   ki1000108-IRC              INDIA         >=50 cm              NA                0.5492958   0.4673531   0.6312385
0-24 months (no birth wast)   ki1000108-IRC              INDIA         <48 cm               NA                0.5675676   0.4752866   0.6598485
0-24 months (no birth wast)   ki1000108-IRC              INDIA         [48-50) cm           NA                0.4817518   0.3979746   0.5655290
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN      >=50 cm              NA                0.5416667   0.3419079   0.7414255
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN      <48 cm               NA                0.6111111   0.5358847   0.6863375
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN      [48-50) cm           NA                0.4444444   0.3116346   0.5772543
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN      >=50 cm              NA                0.4166667   0.1342618   0.6990715
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN      <48 cm               NA                0.4666667   0.2110630   0.7222704
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN      [48-50) cm           NA                0.3571429   0.1030314   0.6112543
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA         >=50 cm              NA                0.2648402   0.2189696   0.3107108
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA         <48 cm               NA                0.4025157   0.3443976   0.4606338
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA         [48-50) cm           NA                0.3410526   0.2728394   0.4092659
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH    >=50 cm              NA                0.2307692   0.1582810   0.3032575
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH    <48 cm               NA                0.3333333   0.2720915   0.3945752
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH    [48-50) cm           NA                0.3004484   0.2402251   0.3606717
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH    >=50 cm              NA                0.1024096   0.0562545   0.1485648
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH    <48 cm               NA                0.2594142   0.2038046   0.3150239
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH    [48-50) cm           NA                0.1524823   0.1104944   0.1944701
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH    >=50 cm              NA                0.1130952   0.0651724   0.1610180
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH    <48 cm               NA                0.1620690   0.1196274   0.2045105
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH    [48-50) cm           NA                0.1418919   0.1021141   0.1816696
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA        >=50 cm              NA                0.3728590   0.3384460   0.4072720
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA        <48 cm               NA                0.4095563   0.3532314   0.4658813
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA        [48-50) cm           NA                0.3939394   0.3508809   0.4369979
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL         >=50 cm              NA                0.3888889   0.2968781   0.4808997
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL         <48 cm               NA                0.5342857   0.4819871   0.5865844
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL         [48-50) cm           NA                0.5024876   0.4333133   0.5716618
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS       >=50 cm              NA                0.0683230   0.0560052   0.0806408
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS       <48 cm               NA                0.1058201   0.0846003   0.1270399
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS       [48-50) cm           NA                0.1040919   0.0887859   0.1193979
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE      >=50 cm              NA                0.0782347   0.0698999   0.0865695
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE      <48 cm               NA                0.1215869   0.1118015   0.1313724
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE      [48-50) cm           NA                0.1040551   0.0957782   0.1123320
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA     >=50 cm              NA                0.0904762   0.0630249   0.1179275
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA     <48 cm               NA                0.1612903   0.1033532   0.2192274
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA     [48-50) cm           NA                0.1097561   0.0706707   0.1488414
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA         >=50 cm              NA                0.1468683   0.1282515   0.1654850
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA         <48 cm               NA                0.2269289   0.2109625   0.2428953
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA         [48-50) cm           NA                0.1871567   0.1714427   0.2028708
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES   >=50 cm              NA                0.2435326   0.2184026   0.2686625
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES   <48 cm               NA                0.3864865   0.3513965   0.4215765
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES   [48-50) cm           NA                0.3086957   0.2819920   0.3353993
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH    >=50 cm              NA                0.1758509   0.1523210   0.1993808
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH    <48 cm               NA                0.1770002   0.1702655   0.1837349
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH    [48-50) cm           NA                0.1716567   0.1592554   0.1840580
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH    >=50 cm              NA                0.2268293   0.2013265   0.2523321
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH    <48 cm               NA                0.3068024   0.2836348   0.3299700
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH    [48-50) cm           NA                0.2301957   0.2003465   0.2600449
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA         >=50 cm              NA                0.3333333   0.0935843   0.5730824
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA         <48 cm               NA                0.4130435   0.2700452   0.5560417
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA         [48-50) cm           NA                0.5250000   0.3694732   0.6805268
0-6 months (no birth wast)    ki1000108-IRC              INDIA         >=50 cm              NA                0.3664122   0.2837922   0.4490322
0-6 months (no birth wast)    ki1000108-IRC              INDIA         <48 cm               NA                0.3119266   0.2248377   0.3990155
0-6 months (no birth wast)    ki1000108-IRC              INDIA         [48-50) cm           NA                0.3636364   0.2814628   0.4458099
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN      >=50 cm              NA                0.3333333   0.1443382   0.5223284
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN      <48 cm               NA                0.2111801   0.1480023   0.2743580
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN      [48-50) cm           NA                0.2264151   0.1135054   0.3393248
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA         >=50 cm              NA                0.0925926   0.0544210   0.1307642
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA         <48 cm               NA                0.1388175   0.1039478   0.1736872
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA         [48-50) cm           NA                0.1215352   0.0685965   0.1744738
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH    >=50 cm              NA                0.0625000   0.0205285   0.1044715
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH    <48 cm               NA                0.0779817   0.0423553   0.1136080
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH    [48-50) cm           NA                0.0917431   0.0533904   0.1300959
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH    >=50 cm              NA                0.0542169   0.0197442   0.0886896
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH    <48 cm               NA                0.0675105   0.0355437   0.0994774
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH    [48-50) cm           NA                0.0428571   0.0191168   0.0665975
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH    >=50 cm              NA                0.0359281   0.0076825   0.0641738
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH    <48 cm               NA                0.0208333   0.0043270   0.0373396
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH    [48-50) cm           NA                0.0272109   0.0086009   0.0458208
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA        >=50 cm              NA                0.1118509   0.0893016   0.1344001
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA        <48 cm               NA                0.1301370   0.0915337   0.1687403
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA        [48-50) cm           NA                0.1224490   0.0934151   0.1514829
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL         >=50 cm              NA                0.1844660   0.1095029   0.2594292
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL         <48 cm               NA                0.1690962   0.1293970   0.2087955
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL         [48-50) cm           NA                0.2358974   0.1762616   0.2955333
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS       >=50 cm              NA                0.0612813   0.0498365   0.0727262
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS       <48 cm               NA                0.0846561   0.0640717   0.1052404
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS       [48-50) cm           NA                0.0877698   0.0721364   0.1034032
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE      >=50 cm              NA                0.0253262   0.0204007   0.0302516
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE      <48 cm               NA                0.0314810   0.0261956   0.0367665
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE      [48-50) cm           NA                0.0380435   0.0328196   0.0432674
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA     >=50 cm              NA                0.0148148   0.0030414   0.0265882
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA     <48 cm               NA                0.0397351   0.0085594   0.0709108
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA     [48-50) cm           NA                0.0253165   0.0053049   0.0453280
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA         >=50 cm              NA                0.0825617   0.0675766   0.0975468
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA         <48 cm               NA                0.0845970   0.0737007   0.0954932
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA         [48-50) cm           NA                0.0955556   0.0834074   0.1077037
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES   >=50 cm              NA                0.0961366   0.0788157   0.1134574
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES   <48 cm               NA                0.0884354   0.0679056   0.1089651
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES   [48-50) cm           NA                0.0971979   0.0800144   0.1143814
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH    >=50 cm              NA                0.1090164   0.0900057   0.1280270
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH    <48 cm               NA                0.0663190   0.0619462   0.0706917
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH    [48-50) cm           NA                0.0983112   0.0887626   0.1078598
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH    >=50 cm              NA                0.0289495   0.0180590   0.0398400
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH    <48 cm               NA                0.0291448   0.0212712   0.0370183
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH    [48-50) cm           NA                0.0283822   0.0180002   0.0387642
6-24 months                   ki0047075b-MAL-ED          BANGLADESH    >=50 cm              NA                0.1282051   0.0230326   0.2333777
6-24 months                   ki0047075b-MAL-ED          BANGLADESH    <48 cm               NA                0.2222222   0.1401344   0.3043100
6-24 months                   ki0047075b-MAL-ED          BANGLADESH    [48-50) cm           NA                0.1891892   0.0997420   0.2786364
6-24 months                   ki1000108-IRC              INDIA         >=50 cm              NA                0.3098592   0.2337019   0.3860164
6-24 months                   ki1000108-IRC              INDIA         <48 cm               NA                0.3693694   0.2794692   0.4592696
6-24 months                   ki1000108-IRC              INDIA         [48-50) cm           NA                0.2753623   0.2007385   0.3499861
6-24 months                   ki1000109-EE               PAKISTAN      >=50 cm              NA                0.3750000   0.1809041   0.5690959
6-24 months                   ki1000109-EE               PAKISTAN      <48 cm               NA                0.5250000   0.4474588   0.6025412
6-24 months                   ki1000109-EE               PAKISTAN      [48-50) cm           NA                0.3207547   0.1948250   0.4466844
6-24 months                   ki1000304b-SAS-CompFeed    INDIA         >=50 cm              NA                0.2095238   0.1392995   0.2797482
6-24 months                   ki1000304b-SAS-CompFeed    INDIA         <48 cm               NA                0.3452545   0.3010536   0.3894554
6-24 months                   ki1000304b-SAS-CompFeed    INDIA         [48-50) cm           NA                0.2870159   0.2284625   0.3455694
6-24 months                   ki1017093-NIH-Birth        BANGLADESH    >=50 cm              NA                0.2231405   0.1488844   0.2973966
6-24 months                   ki1017093-NIH-Birth        BANGLADESH    <48 cm               NA                0.3465347   0.2808486   0.4122207
6-24 months                   ki1017093-NIH-Birth        BANGLADESH    [48-50) cm           NA                0.2864322   0.2235588   0.3493055
6-24 months                   ki1017093b-PROVIDE         BANGLADESH    >=50 cm              NA                0.0671141   0.0269045   0.1073237
6-24 months                   ki1017093b-PROVIDE         BANGLADESH    <48 cm               NA                0.2500000   0.1927348   0.3072652
6-24 months                   ki1017093b-PROVIDE         BANGLADESH    [48-50) cm           NA                0.1382114   0.0950489   0.1813738
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH    >=50 cm              NA                0.0848485   0.0423012   0.1273958
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH    <48 cm               NA                0.1571429   0.1144858   0.1997999
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH    [48-50) cm           NA                0.1333333   0.0938405   0.1728262
6-24 months                   ki1101329-Keneba           GAMBIA        >=50 cm              NA                0.3257066   0.2919982   0.3594149
6-24 months                   ki1101329-Keneba           GAMBIA        <48 cm               NA                0.3544776   0.2971879   0.4117673
6-24 months                   ki1101329-Keneba           GAMBIA        [48-50) cm           NA                0.3424370   0.2997938   0.3850802
6-24 months                   ki1113344-GMS-Nepal        NEPAL         >=50 cm              NA                0.3300000   0.2377617   0.4222383
6-24 months                   ki1113344-GMS-Nepal        NEPAL         <48 cm               NA                0.5176849   0.4621028   0.5732670
6-24 months                   ki1113344-GMS-Nepal        NEPAL         [48-50) cm           NA                0.4719101   0.3985110   0.5453092
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE      >=50 cm              NA                0.0729167   0.0637221   0.0821112
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE      <48 cm               NA                0.1217874   0.1108326   0.1327421
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE      [48-50) cm           NA                0.0910825   0.0823742   0.0997908
6-24 months                   ki1135781-COHORTS          GUATEMALA     >=50 cm              NA                0.0966851   0.0662207   0.1271494
6-24 months                   ki1135781-COHORTS          GUATEMALA     <48 cm               NA                0.1338028   0.0777698   0.1898358
6-24 months                   ki1135781-COHORTS          GUATEMALA     [48-50) cm           NA                0.1031390   0.0631934   0.1430846
6-24 months                   ki1135781-COHORTS          INDIA         >=50 cm              NA                0.0797317   0.0652380   0.0942255
6-24 months                   ki1135781-COHORTS          INDIA         <48 cm               NA                0.1626080   0.1482733   0.1769427
6-24 months                   ki1135781-COHORTS          INDIA         [48-50) cm           NA                0.1060938   0.0934548   0.1187328
6-24 months                   ki1135781-COHORTS          PHILIPPINES   >=50 cm              NA                0.2005786   0.1762024   0.2249548
6-24 months                   ki1135781-COHORTS          PHILIPPINES   <48 cm               NA                0.3662375   0.3305158   0.4019591
6-24 months                   ki1135781-COHORTS          PHILIPPINES   [48-50) cm           NA                0.2654784   0.2389651   0.2919917
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH    >=50 cm              NA                0.1167453   0.0918379   0.1416526
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH    <48 cm               NA                0.1842470   0.1761442   0.1923498
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH    [48-50) cm           NA                0.1284267   0.1155830   0.1412704
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH    >=50 cm              NA                0.2122449   0.1871629   0.2373269
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH    <48 cm               NA                0.2923573   0.2696492   0.3150654
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH    [48-50) cm           NA                0.2116992   0.1826714   0.2407269


### Parameter: E(Y)


agecat                        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.2358079   0.1807067   0.2909091
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.5096154   0.4130727   0.6061580
0-24 months (no birth wast)   ki1000108-IRC              INDIA         NA                   NA                0.5307692   0.4811763   0.5803621
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN      NA                   NA                0.5666667   0.5038429   0.6294904
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN      NA                   NA                0.4146341   0.2619604   0.5673079
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.3626595   0.3120201   0.4132989
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.2977625   0.2605481   0.3349769
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA        NA                   NA                0.3865546   0.3622809   0.4108284
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.5007587   0.4625551   0.5389624
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS       NA                   NA                0.0716952   0.0597165   0.0836739
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.1019924   0.0968873   0.1070976
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1096224   0.0882390   0.1310059
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA         NA                   NA                0.1948438   0.1851392   0.2045483
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.3035536   0.2871278   0.3199794
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1757133   0.1696451   0.1817815
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.2663530   0.2512746   0.2814315
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.4455446   0.3481293   0.5429598
0-6 months (no birth wast)    ki1000108-IRC              INDIA         NA                   NA                0.3494624   0.3009450   0.3979798
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN      NA                   NA                0.2268908   0.1735692   0.2802123
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1264525   0.0961151   0.1567899
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.0797872   0.0574049   0.1021695
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0541728   0.0371844   0.0711612
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA        NA                   NA                0.1187215   0.1025243   0.1349187
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1918877   0.1613794   0.2223959
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS       NA                   NA                0.0637570   0.0524446   0.0750694
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0322167   0.0292105   0.0352229
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0226986   0.0123257   0.0330715
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA         NA                   NA                0.0882353   0.0810887   0.0953819
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0946488   0.0841546   0.1051431
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0760414   0.0718411   0.0802418
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0289057   0.0236101   0.0342013
6-24 months                   ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.1933962   0.1401044   0.2466881
6-24 months                   ki1000108-IRC              INDIA         NA                   NA                0.3145780   0.2684931   0.3606629
6-24 months                   ki1000109-EE               PAKISTAN      NA                   NA                0.4641350   0.4005079   0.5277621
6-24 months                   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.3059593   0.2629068   0.3490118
6-24 months                   ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.2950192   0.2558591   0.3341792
6-24 months                   ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1101329-Keneba           GAMBIA        NA                   NA                0.3362475   0.3122276   0.3602674
6-24 months                   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.4719864   0.4316361   0.5123367
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0956969   0.0901201   0.1012737
6-24 months                   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1059147   0.0835302   0.1282992
6-24 months                   ki1135781-COHORTS          INDIA         NA                   NA                0.1236829   0.1154669   0.1318989
6-24 months                   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2665953   0.2502200   0.2829706
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1671558   0.1603545   0.1739571
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.2510058   0.2361044   0.2659072


### Parameter: RR


agecat                        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH    <48 cm               >=50 cm           1.3614865   0.6843977   2.7084331
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH    [48-50) cm           >=50 cm           0.9256329   0.4289036   1.9976429
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA         <48 cm               >=50 cm           1.7333333   0.7979976   3.7649791
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA         [48-50) cm           >=50 cm           1.7600000   0.8045947   3.8498887
0-24 months (no birth wast)   ki1000108-IRC              INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA         <48 cm               >=50 cm           1.0332640   0.8286690   1.2883727
0-24 months (no birth wast)   ki1000108-IRC              INDIA         [48-50) cm           >=50 cm           0.8770354   0.6974481   1.1028649
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN      <48 cm               >=50 cm           1.1282051   0.7647857   1.6643182
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN      [48-50) cm           >=50 cm           0.8205128   0.5104407   1.3189413
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN      <48 cm               >=50 cm           1.1200000   0.4685596   2.6771410
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN      [48-50) cm           >=50 cm           0.8571429   0.3208401   2.2899064
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA         <48 cm               >=50 cm           1.5198439   1.2743105   1.8126864
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA         [48-50) cm           >=50 cm           1.2877677   1.0531535   1.5746476
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH    <48 cm               >=50 cm           1.4444444   1.0038312   2.0784568
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH    [48-50) cm           >=50 cm           1.3019432   0.8969424   1.8898161
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH    <48 cm               >=50 cm           2.5331036   1.5378276   4.1725184
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH    [48-50) cm           >=50 cm           1.4889445   0.8780192   2.5249512
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH    <48 cm               >=50 cm           1.4330309   0.8708053   2.3582510
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH    [48-50) cm           >=50 cm           1.2546230   0.7548445   2.0853024
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA        <48 cm               >=50 cm           1.0984214   0.9307618   1.2962817
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA        [48-50) cm           >=50 cm           1.0565371   0.9157055   1.2190280
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL         <48 cm               >=50 cm           1.3738776   1.0635250   1.7747957
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL         [48-50) cm           >=50 cm           1.2921109   0.9826944   1.6989518
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS       <48 cm               >=50 cm           1.5488215   1.1526104   2.0812308
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS       [48-50) cm           >=50 cm           1.5235267   1.2889575   1.8007838
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE      <48 cm               >=50 cm           1.5541304   1.3598816   1.7761261
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE      [48-50) cm           >=50 cm           1.3300375   1.1644533   1.5191676
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA     <48 cm               >=50 cm           1.7826825   1.1139570   2.8528543
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA     [48-50) cm           >=50 cm           1.2130937   0.7598277   1.9367500
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA         <48 cm               >=50 cm           1.5451188   1.3365951   1.7861746
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA         [48-50) cm           >=50 cm           1.2743172   1.0945760   1.4835739
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES   <48 cm               >=50 cm           1.5870013   1.3832016   1.8208287
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES   [48-50) cm           >=50 cm           1.2675745   1.1078857   1.4502805
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH    <48 cm               >=50 cm           1.0065357   0.8761131   1.1563736
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH    [48-50) cm           >=50 cm           0.9761491   0.8387895   1.1360025
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH    <48 cm               >=50 cm           1.3525697   1.1821963   1.5474968
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH    [48-50) cm           >=50 cm           1.0148413   0.8548892   1.2047209
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA         <48 cm               >=50 cm           1.2391304   0.5577621   2.7528657
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA         [48-50) cm           >=50 cm           1.5750000   0.7235318   3.4284946
0-6 months (no birth wast)    ki1000108-IRC              INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA         <48 cm               >=50 cm           0.8512997   0.5945981   1.2188253
0-6 months (no birth wast)    ki1000108-IRC              INDIA         [48-50) cm           >=50 cm           0.9924242   0.7212020   1.3656449
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN      <48 cm               >=50 cm           0.6335404   0.3337033   1.2027851
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN      [48-50) cm           >=50 cm           0.6792453   0.3192243   1.4452978
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA         <48 cm               >=50 cm           1.4992287   0.8451910   2.6593830
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA         [48-50) cm           >=50 cm           1.3125799   0.6803351   2.5323783
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH    <48 cm               >=50 cm           1.2477064   0.5538262   2.8109386
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH    [48-50) cm           >=50 cm           1.4678899   0.6655069   3.2376837
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH    <48 cm               >=50 cm           1.2451946   0.5635598   2.7512779
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH    [48-50) cm           >=50 cm           0.7904762   0.3401375   1.8370590
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH    <48 cm               >=50 cm           0.5798611   0.1899253   1.7703747
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH    [48-50) cm           >=50 cm           0.7573696   0.2671556   2.1470963
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA        <48 cm               >=50 cm           1.1634866   0.8128269   1.6654236
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA        [48-50) cm           >=50 cm           1.0947522   0.8019554   1.4944502
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL         <48 cm               >=50 cm           0.9166795   0.5733158   1.4656866
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL         [48-50) cm           >=50 cm           1.2788124   0.7924199   2.0637559
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS       <48 cm               >=50 cm           1.3814334   0.9921256   1.9235047
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS       [48-50) cm           >=50 cm           1.4322433   1.2209821   1.6800581
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE      <48 cm               >=50 cm           1.2430241   0.9613870   1.6071664
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE      [48-50) cm           >=50 cm           1.5021410   1.1839074   1.9059155
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA     <48 cm               >=50 cm           2.6821192   0.8779688   8.1936434
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA     [48-50) cm           >=50 cm           1.7088608   0.5570751   5.2420314
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA         <48 cm               >=50 cm           1.0246511   0.8201997   1.2800662
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA         [48-50) cm           >=50 cm           1.1573832   0.9273392   1.4444940
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES   <48 cm               >=50 cm           0.9198932   0.6856730   1.2341211
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES   [48-50) cm           >=50 cm           1.0110398   0.7854963   1.3013448
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH    <48 cm               >=50 cm           0.6083395   0.5060540   0.7312992
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH    [48-50) cm           >=50 cm           0.9018022   0.7400740   1.0988727
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH    <48 cm               >=50 cm           1.0067436   0.6298565   1.6091484
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH    [48-50) cm           >=50 cm           0.9804028   0.5778055   1.6635175
6-24 months                   ki0047075b-MAL-ED          BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED          BANGLADESH    <48 cm               >=50 cm           1.7333333   0.7049479   4.2619383
6-24 months                   ki0047075b-MAL-ED          BANGLADESH    [48-50) cm           >=50 cm           1.4756757   0.5725124   3.8036181
6-24 months                   ki1000108-IRC              INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-IRC              INDIA         <48 cm               >=50 cm           1.1920557   0.8434799   1.6846835
6-24 months                   ki1000108-IRC              INDIA         [48-50) cm           >=50 cm           0.8886693   0.6163839   1.2812359
6-24 months                   ki1000109-EE               PAKISTAN      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE               PAKISTAN      <48 cm               >=50 cm           1.4000000   0.8172766   2.3982088
6-24 months                   ki1000109-EE               PAKISTAN      [48-50) cm           >=50 cm           0.8553459   0.4466890   1.6378658
6-24 months                   ki1000304b-SAS-CompFeed    INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA         <48 cm               >=50 cm           1.6478054   1.2308546   2.2059980
6-24 months                   ki1000304b-SAS-CompFeed    INDIA         [48-50) cm           >=50 cm           1.3698488   0.9600936   1.9544821
6-24 months                   ki1017093-NIH-Birth        BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093-NIH-Birth        BANGLADESH    <48 cm               >=50 cm           1.5529886   1.0588733   2.2776793
6-24 months                   ki1017093-NIH-Birth        BANGLADESH    [48-50) cm           >=50 cm           1.2836404   0.8616107   1.9123866
6-24 months                   ki1017093b-PROVIDE         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH    <48 cm               >=50 cm           3.7250000   1.9613815   7.0744142
6-24 months                   ki1017093b-PROVIDE         BANGLADESH    [48-50) cm           >=50 cm           2.0593496   1.0478715   4.0471765
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH    <48 cm               >=50 cm           1.8520408   1.0471556   3.2755925
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH    [48-50) cm           >=50 cm           1.5714286   0.8777346   2.8133648
6-24 months                   ki1101329-Keneba           GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   ki1101329-Keneba           GAMBIA        <48 cm               >=50 cm           1.0883342   0.8982869   1.3185890
6-24 months                   ki1101329-Keneba           GAMBIA        [48-50) cm           >=50 cm           1.0513664   0.8941966   1.2361614
6-24 months                   ki1113344-GMS-Nepal        NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal        NEPAL         <48 cm               >=50 cm           1.5687421   1.1628247   2.1163566
6-24 months                   ki1113344-GMS-Nepal        NEPAL         [48-50) cm           >=50 cm           1.4300306   1.0385494   1.9690807
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE      <48 cm               >=50 cm           1.6702270   1.4305631   1.9500421
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE      [48-50) cm           >=50 cm           1.2491314   1.0663093   1.4632989
6-24 months                   ki1135781-COHORTS          GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          GUATEMALA     <48 cm               >=50 cm           1.3839034   0.8194155   2.3372618
6-24 months                   ki1135781-COHORTS          GUATEMALA     [48-50) cm           >=50 cm           1.0667521   0.6474837   1.7575114
6-24 months                   ki1135781-COHORTS          INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          INDIA         <48 cm               >=50 cm           2.0394388   1.6663669   2.4960353
6-24 months                   ki1135781-COHORTS          INDIA         [48-50) cm           >=50 cm           1.3306346   1.0707044   1.6536669
6-24 months                   ki1135781-COHORTS          PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES   <48 cm               >=50 cm           1.8259051   1.5624361   2.1338022
6-24 months                   ki1135781-COHORTS          PHILIPPINES   [48-50) cm           >=50 cm           1.3235631   1.1309149   1.5490283
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH    <48 cm               >=50 cm           1.5781964   1.2715765   1.9587526
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH    [48-50) cm           >=50 cm           1.1000590   0.8737073   1.3850516
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH    <48 cm               >=50 cm           1.3774525   1.1979028   1.5839144
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH    [48-50) cm           >=50 cm           0.9974288   0.8320705   1.1956488


### Parameter: PAR


agecat                        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH    >=50 cm              NA                 0.0306797   -0.0862501    0.1476095
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA         >=50 cm              NA                 0.1971154   -0.0159054    0.4101362
0-24 months (no birth wast)   ki1000108-IRC              INDIA         >=50 cm              NA                -0.0185265   -0.0839823    0.0469292
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN      >=50 cm              NA                 0.0250000   -0.1643929    0.2143929
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN      >=50 cm              NA                -0.0020325   -0.2394717    0.2354067
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA         >=50 cm              NA                 0.0978193    0.0523505    0.1432881
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH    >=50 cm              NA                 0.0669932    0.0015102    0.1324763
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH    >=50 cm              NA                 0.0751741    0.0313717    0.1189764
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH    >=50 cm              NA                 0.0301408   -0.0134394    0.0737211
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA        >=50 cm              NA                 0.0136956   -0.0110312    0.0384224
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL         >=50 cm              NA                 0.1118698    0.0273085    0.1964311
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS       >=50 cm              NA                 0.0033722    0.0018145    0.0049299
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE      >=50 cm              NA                 0.0237577    0.0163759    0.0311395
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA     >=50 cm              NA                 0.0191462   -0.0018255    0.0401179
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA         >=50 cm              NA                 0.0479755    0.0309367    0.0650143
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES   >=50 cm              NA                 0.0600211    0.0392583    0.0807839
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH    >=50 cm              NA                -0.0001376   -0.0230546    0.0227794
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH    >=50 cm              NA                 0.0395238    0.0170406    0.0620069
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA         >=50 cm              NA                 0.1122112   -0.1111633    0.3355858
0-6 months (no birth wast)    ki1000108-IRC              INDIA         >=50 cm              NA                -0.0169498   -0.0830740    0.0491743
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN      >=50 cm              NA                -0.1064426   -0.2835258    0.0706407
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA         >=50 cm              NA                 0.0338599   -0.0192183    0.0869381
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH    >=50 cm              NA                 0.0172872   -0.0209617    0.0555361
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH    >=50 cm              NA                -0.0000441   -0.0300327    0.0299445
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH    >=50 cm              NA                -0.0092259   -0.0332159    0.0147641
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA        >=50 cm              NA                 0.0068706   -0.0096410    0.0233821
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL         >=50 cm              NA                 0.0074217   -0.0614571    0.0763004
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS       >=50 cm              NA                 0.0024756    0.0012407    0.0037106
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE      >=50 cm              NA                 0.0068905    0.0025331    0.0112480
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA     >=50 cm              NA                 0.0078838   -0.0023448    0.0181124
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA         >=50 cm              NA                 0.0056736   -0.0077224    0.0190696
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES   >=50 cm              NA                -0.0014877   -0.0151548    0.0121793
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH    >=50 cm              NA                -0.0329750   -0.0511949   -0.0147550
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH    >=50 cm              NA                -0.0000438   -0.0092041    0.0091164
6-24 months                   ki0047075b-MAL-ED          BANGLADESH    >=50 cm              NA                 0.0651911   -0.0339632    0.1643454
6-24 months                   ki1000108-IRC              INDIA         >=50 cm              NA                 0.0047189   -0.0561992    0.0656369
6-24 months                   ki1000109-EE               PAKISTAN      >=50 cm              NA                 0.0891350   -0.0955041    0.2737741
6-24 months                   ki1000304b-SAS-CompFeed    INDIA         >=50 cm              NA                 0.0964355    0.0396946    0.1531764
6-24 months                   ki1017093-NIH-Birth        BANGLADESH    >=50 cm              NA                 0.0718787    0.0048623    0.1388950
6-24 months                   ki1017093b-PROVIDE         BANGLADESH    >=50 cm              NA                 0.0938615    0.0528933    0.1348297
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH    >=50 cm              NA                 0.0466584    0.0067363    0.0865805
6-24 months                   ki1101329-Keneba           GAMBIA        >=50 cm              NA                 0.0105409   -0.0134949    0.0345767
6-24 months                   ki1113344-GMS-Nepal        NEPAL         >=50 cm              NA                 0.1419864    0.0568564    0.2271165
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE      >=50 cm              NA                 0.0227802    0.0145917    0.0309688
6-24 months                   ki1135781-COHORTS          GUATEMALA     >=50 cm              NA                 0.0092296   -0.0132402    0.0316995
6-24 months                   ki1135781-COHORTS          INDIA         >=50 cm              NA                 0.0439512    0.0303066    0.0575958
6-24 months                   ki1135781-COHORTS          PHILIPPINES   >=50 cm              NA                 0.0660167    0.0454611    0.0865723
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH    >=50 cm              NA                 0.0504106    0.0264642    0.0743570
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH    >=50 cm              NA                 0.0387609    0.0167400    0.0607819


### Parameter: PAF


agecat                        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH    >=50 cm              NA                 0.1301045   -0.5374946    0.5078238
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA         >=50 cm              NA                 0.3867925   -0.2158991    0.6907445
0-24 months (no birth wast)   ki1000108-IRC              INDIA         >=50 cm              NA                -0.0349051   -0.1659411    0.0814043
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN      >=50 cm              NA                 0.0441176   -0.3560611    0.3262021
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN      >=50 cm              NA                -0.0049020   -0.7766780    0.4316202
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA         >=50 cm              NA                 0.2697277    0.1517851    0.3712707
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH    >=50 cm              NA                 0.2249889   -0.0284839    0.4159926
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH    >=50 cm              NA                 0.4233162    0.1264523    0.6192948
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH    >=50 cm              NA                 0.2104277   -0.1583561    0.4618024
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA        >=50 cm              NA                 0.0354299   -0.0307149    0.0973299
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL         >=50 cm              NA                 0.2234007    0.0341728    0.3755544
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS       >=50 cm              NA                 0.0470356    0.0224974    0.0709578
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE      >=50 cm              NA                 0.2329363    0.1578922    0.3012928
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA     >=50 cm              NA                 0.1746561   -0.0375791    0.3434789
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA         >=50 cm              NA                 0.2462255    0.1541172    0.3283041
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES   >=50 cm              NA                 0.1977281    0.1266031    0.2630610
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH    >=50 cm              NA                -0.0007830   -0.1400866    0.1214995
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH    >=50 cm              NA                 0.1483887    0.0603211    0.2282025
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA         >=50 cm              NA                 0.2518519   -0.4634357    0.6175263
0-6 months (no birth wast)    ki1000108-IRC              INDIA         >=50 cm              NA                -0.0485026   -0.2558860    0.1246357
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN      >=50 cm              NA                -0.4691358   -1.4972590    0.1357084
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA         >=50 cm              NA                 0.2677677   -0.2253175    0.5624284
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH    >=50 cm              NA                 0.2166667   -0.4383833    0.5734022
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH    >=50 cm              NA                -0.0008140   -0.7400908    0.4243813
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH    >=50 cm              NA                -0.3455090   -1.6009534    0.3039497
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA        >=50 cm              NA                 0.0578716   -0.0918024    0.1870269
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL         >=50 cm              NA                 0.0386771   -0.3964322    0.3382122
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS       >=50 cm              NA                 0.0388293    0.0176997    0.0595045
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE      >=50 cm              NA                 0.2138804    0.0679579    0.3369570
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA     >=50 cm              NA                 0.3473251   -0.2471956    0.6584461
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA         >=50 cm              NA                 0.0643004   -0.1004458    0.2043827
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES   >=50 cm              NA                -0.0157185   -0.1708743    0.1188772
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH    >=50 cm              NA                -0.4336448   -0.6936688   -0.2135415
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH    >=50 cm              NA                -0.0015164   -0.3742620    0.2701282
6-24 months                   ki0047075b-MAL-ED          BANGLADESH    >=50 cm              NA                 0.3370857   -0.4241671    0.6914299
6-24 months                   ki1000108-IRC              INDIA         >=50 cm              NA                 0.0150006   -0.1989951    0.1908025
6-24 months                   ki1000109-EE               PAKISTAN      >=50 cm              NA                 0.1920455   -0.3225373    0.5064105
6-24 months                   ki1000304b-SAS-CompFeed    INDIA         >=50 cm              NA                 0.3151906    0.0969709    0.4806768
6-24 months                   ki1017093-NIH-Birth        BANGLADESH    >=50 cm              NA                 0.2436407   -0.0201758    0.4392344
6-24 months                   ki1017093b-PROVIDE         BANGLADESH    >=50 cm              NA                 0.5830791    0.2665679    0.7630005
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH    >=50 cm              NA                 0.3547980   -0.0235052    0.5932745
6-24 months                   ki1101329-Keneba           GAMBIA        >=50 cm              NA                 0.0313486   -0.0428369    0.1002566
6-24 months                   ki1113344-GMS-Nepal        NEPAL         >=50 cm              NA                 0.3008273    0.0944684    0.4601598
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE      >=50 cm              NA                 0.2380458    0.1485494    0.3181352
6-24 months                   ki1135781-COHORTS          GUATEMALA     >=50 cm              NA                 0.0871421   -0.1508955    0.2759469
6-24 months                   ki1135781-COHORTS          INDIA         >=50 cm              NA                 0.3553537    0.2375037    0.4549890
6-24 months                   ki1135781-COHORTS          PHILIPPINES   >=50 cm              NA                 0.2476289    0.1671914    0.3202973
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH    >=50 cm              NA                 0.3015782    0.1418937    0.4315471
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH    >=50 cm              NA                 0.1544224    0.0626561    0.2372047
