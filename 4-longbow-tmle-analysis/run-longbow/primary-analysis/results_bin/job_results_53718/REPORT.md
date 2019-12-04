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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/d04614e2-7d67-41ca-9b9b-4be9607ec4d5/51da6562-0077-4ad1-8f6a-cf3a42d5901c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d04614e2-7d67-41ca-9b9b-4be9607ec4d5/51da6562-0077-4ad1-8f6a-cf3a42d5901c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d04614e2-7d67-41ca-9b9b-4be9607ec4d5/51da6562-0077-4ad1-8f6a-cf3a42d5901c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d04614e2-7d67-41ca-9b9b-4be9607ec4d5/51da6562-0077-4ad1-8f6a-cf3a42d5901c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months (no birth wast)   ki1000108-IRC              INDIA         >=50 cm              NA                0.5481396   0.4656255   0.6306538
0-24 months (no birth wast)   ki1000108-IRC              INDIA         <48 cm               NA                0.5692728   0.4757017   0.6628440
0-24 months (no birth wast)   ki1000108-IRC              INDIA         [48-50) cm           NA                0.4825967   0.3982460   0.5669473
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN      >=50 cm              NA                0.5133137   0.3011574   0.7254701
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN      <48 cm               NA                0.6143034   0.5390016   0.6896052
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN      [48-50) cm           NA                0.4466062   0.3088241   0.5843883
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN      >=50 cm              NA                0.4166667   0.1342618   0.6990715
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN      <48 cm               NA                0.4666667   0.2110630   0.7222704
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN      [48-50) cm           NA                0.3571429   0.1030314   0.6112543
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA         >=50 cm              NA                0.2553086   0.2119132   0.2987039
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA         <48 cm               NA                0.4045175   0.3450158   0.4640191
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA         [48-50) cm           NA                0.3441775   0.2754055   0.4129496
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH    >=50 cm              NA                0.2295448   0.1563337   0.3027559
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH    <48 cm               NA                0.3404416   0.2788648   0.4020185
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH    [48-50) cm           NA                0.3022402   0.2418823   0.3625981
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH    >=50 cm              NA                0.1004069   0.0536621   0.1471517
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH    <48 cm               NA                0.2608104   0.2047252   0.3168957
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH    [48-50) cm           NA                0.1543778   0.1118814   0.1968743
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH    >=50 cm              NA                0.1087271   0.0604984   0.1569559
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH    <48 cm               NA                0.1574273   0.1148193   0.2000354
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH    [48-50) cm           NA                0.1387290   0.0988191   0.1786388
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA        >=50 cm              NA                0.3639195   0.3297566   0.3980824
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA        <48 cm               NA                0.4284146   0.3716742   0.4851550
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA        [48-50) cm           NA                0.3977949   0.3546179   0.4409720
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL         >=50 cm              NA                0.3865518   0.2939068   0.4791968
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL         <48 cm               NA                0.5370881   0.4849441   0.5892321
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL         [48-50) cm           NA                0.4998090   0.4285122   0.5711059
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS       >=50 cm              NA                0.0688033   0.0563556   0.0812509
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS       <48 cm               NA                0.1017525   0.0813150   0.1221900
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS       [48-50) cm           NA                0.0968505   0.0820142   0.1116868
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE      >=50 cm              NA                0.0779729   0.0695977   0.0863481
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE      <48 cm               NA                0.1248740   0.1148899   0.1348580
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE      [48-50) cm           NA                0.1035489   0.0952165   0.1118814
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA     >=50 cm              NA                0.0891168   0.0616267   0.1166070
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA     <48 cm               NA                0.1619313   0.1033592   0.2205033
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA     [48-50) cm           NA                0.1106103   0.0714962   0.1497245
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA         >=50 cm              NA                0.1415399   0.1231788   0.1599010
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA         <48 cm               NA                0.2308871   0.2147253   0.2470489
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA         [48-50) cm           NA                0.1865113   0.1706320   0.2023906
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES   >=50 cm              NA                0.2388376   0.2138812   0.2637941
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES   <48 cm               NA                0.3848723   0.3500989   0.4196456
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES   [48-50) cm           NA                0.3099215   0.2831758   0.3366672
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH    >=50 cm              NA                0.1836593   0.1590779   0.2082408
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH    <48 cm               NA                0.1773883   0.1706097   0.1841668
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH    [48-50) cm           NA                0.1689755   0.1562839   0.1816672
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH    >=50 cm              NA                0.2241737   0.1985012   0.2498462
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH    <48 cm               NA                0.3101426   0.2867790   0.3335063
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH    [48-50) cm           NA                0.2277505   0.1977100   0.2577911
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA         >=50 cm              NA                0.3333333   0.0935843   0.5730824
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA         <48 cm               NA                0.4130435   0.2700452   0.5560417
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA         [48-50) cm           NA                0.5250000   0.3694732   0.6805268
0-6 months (no birth wast)    ki1000108-IRC              INDIA         >=50 cm              NA                0.3687302   0.2848247   0.4526357
0-6 months (no birth wast)    ki1000108-IRC              INDIA         <48 cm               NA                0.3171388   0.2292846   0.4049931
0-6 months (no birth wast)    ki1000108-IRC              INDIA         [48-50) cm           NA                0.3608068   0.2785441   0.4430695
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN      >=50 cm              NA                0.3333333   0.1443382   0.5223284
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN      <48 cm               NA                0.2111801   0.1480023   0.2743580
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN      [48-50) cm           NA                0.2264151   0.1135054   0.3393248
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA         >=50 cm              NA                0.0951832   0.0555614   0.1348050
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA         <48 cm               NA                0.1365927   0.1032717   0.1699136
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA         [48-50) cm           NA                0.1233237   0.0693453   0.1773020
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH    >=50 cm              NA                0.0625000   0.0205285   0.1044715
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH    <48 cm               NA                0.0779817   0.0423553   0.1136080
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH    [48-50) cm           NA                0.0917431   0.0533904   0.1300959
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH    >=50 cm              NA                0.0542169   0.0197442   0.0886896
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH    <48 cm               NA                0.0675105   0.0355437   0.0994774
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH    [48-50) cm           NA                0.0428571   0.0191168   0.0665975
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH    >=50 cm              NA                0.0359281   0.0076825   0.0641738
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH    <48 cm               NA                0.0208333   0.0043270   0.0373396
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH    [48-50) cm           NA                0.0272109   0.0086009   0.0458208
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA        >=50 cm              NA                0.1106927   0.0881382   0.1332472
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA        <48 cm               NA                0.1341451   0.0947127   0.1735774
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA        [48-50) cm           NA                0.1227767   0.0935271   0.1520262
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL         >=50 cm              NA                0.1843367   0.1079922   0.2606813
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL         <48 cm               NA                0.1700246   0.1302434   0.2098058
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL         [48-50) cm           NA                0.2342251   0.1738103   0.2946399
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS       >=50 cm              NA                0.0612696   0.0498175   0.0727218
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS       <48 cm               NA                0.0836860   0.0634794   0.1038926
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS       [48-50) cm           NA                0.0880084   0.0717593   0.1042575
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE      >=50 cm              NA                0.0253532   0.0203712   0.0303351
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE      <48 cm               NA                0.0331051   0.0275471   0.0386631
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE      [48-50) cm           NA                0.0374828   0.0322413   0.0427242
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA     >=50 cm              NA                0.0148148   0.0030414   0.0265882
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA     <48 cm               NA                0.0397351   0.0085594   0.0709108
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA     [48-50) cm           NA                0.0253165   0.0053049   0.0453280
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA         >=50 cm              NA                0.0796523   0.0649573   0.0943472
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA         <48 cm               NA                0.0849489   0.0739174   0.0959804
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA         [48-50) cm           NA                0.0954410   0.0831602   0.1077218
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES   >=50 cm              NA                0.0943834   0.0771744   0.1115924
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES   <48 cm               NA                0.0888706   0.0683527   0.1093885
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES   [48-50) cm           NA                0.0979848   0.0807335   0.1152360
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH    >=50 cm              NA                0.1145346   0.0947206   0.1343486
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH    <48 cm               NA                0.0664895   0.0620691   0.0709099
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH    [48-50) cm           NA                0.0971442   0.0871308   0.1071577
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH    >=50 cm              NA                0.0277916   0.0171699   0.0384134
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH    <48 cm               NA                0.0293304   0.0214970   0.0371639
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH    [48-50) cm           NA                0.0278546   0.0175971   0.0381120
6-24 months                   ki0047075b-MAL-ED          BANGLADESH    >=50 cm              NA                0.1282051   0.0230326   0.2333777
6-24 months                   ki0047075b-MAL-ED          BANGLADESH    <48 cm               NA                0.2222222   0.1401344   0.3043100
6-24 months                   ki0047075b-MAL-ED          BANGLADESH    [48-50) cm           NA                0.1891892   0.0997420   0.2786364
6-24 months                   ki1000108-IRC              INDIA         >=50 cm              NA                0.3097273   0.2330974   0.3863573
6-24 months                   ki1000108-IRC              INDIA         <48 cm               NA                0.3702747   0.2794724   0.4610771
6-24 months                   ki1000108-IRC              INDIA         [48-50) cm           NA                0.2753670   0.2001275   0.3506064
6-24 months                   ki1000109-EE               PAKISTAN      >=50 cm              NA                0.3750000   0.1809041   0.5690959
6-24 months                   ki1000109-EE               PAKISTAN      <48 cm               NA                0.5250000   0.4474588   0.6025412
6-24 months                   ki1000109-EE               PAKISTAN      [48-50) cm           NA                0.3207547   0.1948250   0.4466844
6-24 months                   ki1000304b-SAS-CompFeed    INDIA         >=50 cm              NA                0.1994500   0.1274665   0.2714335
6-24 months                   ki1000304b-SAS-CompFeed    INDIA         <48 cm               NA                0.3505070   0.3054701   0.3955439
6-24 months                   ki1000304b-SAS-CompFeed    INDIA         [48-50) cm           NA                0.2858789   0.2232278   0.3485300
6-24 months                   ki1017093-NIH-Birth        BANGLADESH    >=50 cm              NA                0.2175162   0.1428845   0.2921478
6-24 months                   ki1017093-NIH-Birth        BANGLADESH    <48 cm               NA                0.3513773   0.2857710   0.4169837
6-24 months                   ki1017093-NIH-Birth        BANGLADESH    [48-50) cm           NA                0.2862519   0.2230192   0.3494845
6-24 months                   ki1017093b-PROVIDE         BANGLADESH    >=50 cm              NA                0.0676661   0.0259344   0.1093978
6-24 months                   ki1017093b-PROVIDE         BANGLADESH    <48 cm               NA                0.2490257   0.1912368   0.3068146
6-24 months                   ki1017093b-PROVIDE         BANGLADESH    [48-50) cm           NA                0.1404358   0.0962013   0.1846704
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH    >=50 cm              NA                0.0818060   0.0390128   0.1245992
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH    <48 cm               NA                0.1550760   0.1122832   0.1978688
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH    [48-50) cm           NA                0.1319631   0.0922437   0.1716825
6-24 months                   ki1101329-Keneba           GAMBIA        >=50 cm              NA                0.3187580   0.2852650   0.3522510
6-24 months                   ki1101329-Keneba           GAMBIA        <48 cm               NA                0.3721686   0.3142767   0.4300606
6-24 months                   ki1101329-Keneba           GAMBIA        [48-50) cm           NA                0.3446559   0.3017259   0.3875859
6-24 months                   ki1113344-GMS-Nepal        NEPAL         >=50 cm              NA                0.3313284   0.2363968   0.4262600
6-24 months                   ki1113344-GMS-Nepal        NEPAL         <48 cm               NA                0.5171410   0.4615650   0.5727170
6-24 months                   ki1113344-GMS-Nepal        NEPAL         [48-50) cm           NA                0.4704319   0.3957657   0.5450980
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE      >=50 cm              NA                0.0726576   0.0633839   0.0819312
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE      <48 cm               NA                0.1240044   0.1128385   0.1351704
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE      [48-50) cm           NA                0.0906734   0.0819074   0.0994393
6-24 months                   ki1135781-COHORTS          GUATEMALA     >=50 cm              NA                0.0957713   0.0654582   0.1260844
6-24 months                   ki1135781-COHORTS          GUATEMALA     <48 cm               NA                0.1337009   0.0759176   0.1914842
6-24 months                   ki1135781-COHORTS          GUATEMALA     [48-50) cm           NA                0.1043413   0.0637325   0.1449502
6-24 months                   ki1135781-COHORTS          INDIA         >=50 cm              NA                0.0764313   0.0621210   0.0907416
6-24 months                   ki1135781-COHORTS          INDIA         <48 cm               NA                0.1674895   0.1529039   0.1820752
6-24 months                   ki1135781-COHORTS          INDIA         [48-50) cm           NA                0.1061740   0.0933125   0.1190356
6-24 months                   ki1135781-COHORTS          PHILIPPINES   >=50 cm              NA                0.1960030   0.1718003   0.2202057
6-24 months                   ki1135781-COHORTS          PHILIPPINES   <48 cm               NA                0.3649524   0.3296992   0.4002057
6-24 months                   ki1135781-COHORTS          PHILIPPINES   [48-50) cm           NA                0.2656943   0.2392002   0.2921883
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH    >=50 cm              NA                0.1172051   0.0926798   0.1417303
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH    <48 cm               NA                0.1853165   0.1771252   0.1935078
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH    [48-50) cm           NA                0.1239207   0.1109591   0.1368822
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH    >=50 cm              NA                0.2112410   0.1859796   0.2365024
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH    <48 cm               NA                0.2957154   0.2727351   0.3186956
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH    [48-50) cm           NA                0.2094604   0.1802864   0.2386344


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
0-24 months (no birth wast)   ki1000108-IRC              INDIA         <48 cm               >=50 cm           1.0385544   0.8308006   1.2982600
0-24 months (no birth wast)   ki1000108-IRC              INDIA         [48-50) cm           >=50 cm           0.8804265   0.6988118   1.1092411
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN      <48 cm               >=50 cm           1.1967406   0.7780920   1.8406411
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN      [48-50) cm           >=50 cm           0.8700453   0.5195863   1.4568876
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN      <48 cm               >=50 cm           1.1200000   0.4685596   2.6771410
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN      [48-50) cm           >=50 cm           0.8571429   0.3208401   2.2899064
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA         <48 cm               >=50 cm           1.5844259   1.3228216   1.8977656
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA         [48-50) cm           >=50 cm           1.3480845   1.0985599   1.6542857
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH    <48 cm               >=50 cm           1.4831163   1.0273643   2.1410457
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH    [48-50) cm           >=50 cm           1.3166937   0.9039636   1.9178673
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH    <48 cm               >=50 cm           2.5975348   1.5552785   4.3382503
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH    [48-50) cm           >=50 cm           1.5375222   0.8954705   2.6399246
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH    <48 cm               >=50 cm           1.4479119   0.8611921   2.4343568
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH    [48-50) cm           >=50 cm           1.2759370   0.7515862   2.1661059
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA        <48 cm               >=50 cm           1.1772234   1.0016753   1.3835371
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA        [48-50) cm           >=50 cm           1.0930849   0.9475407   1.2609850
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL         <48 cm               >=50 cm           1.3894337   1.0727847   1.7995464
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL         [48-50) cm           >=50 cm           1.2929936   0.9780904   1.7092822
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS       <48 cm               >=50 cm           1.4788905   1.0964519   1.9947222
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS       [48-50) cm           >=50 cm           1.4076440   1.1897776   1.6654052
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE      <48 cm               >=50 cm           1.6015042   1.4008847   1.8308542
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE      [48-50) cm           >=50 cm           1.3280113   1.1612255   1.5187524
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA     <48 cm               >=50 cm           1.8170668   1.1300773   2.9216866
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA     [48-50) cm           >=50 cm           1.2411834   0.7764264   1.9841368
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA         <48 cm               >=50 cm           1.6312509   1.4079401   1.8899806
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA         [48-50) cm           >=50 cm           1.3177296   1.1285278   1.5386518
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES   <48 cm               >=50 cm           1.6114390   1.4037031   1.8499181
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES   [48-50) cm           >=50 cm           1.2976244   1.1333835   1.4856659
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH    <48 cm               >=50 cm           0.9658550   0.8408148   1.1094903
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH    [48-50) cm           >=50 cm           0.9200488   0.7892102   1.0725784
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH    <48 cm               >=50 cm           1.3834925   1.2084686   1.5838653
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH    [48-50) cm           >=50 cm           1.0159557   0.8528825   1.2102089
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA         <48 cm               >=50 cm           1.2391304   0.5577621   2.7528657
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA         [48-50) cm           >=50 cm           1.5750000   0.7235318   3.4284946
0-6 months (no birth wast)    ki1000108-IRC              INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA         <48 cm               >=50 cm           0.8600836   0.6008648   1.2311318
0-6 months (no birth wast)    ki1000108-IRC              INDIA         [48-50) cm           >=50 cm           0.9785116   0.7086940   1.3510554
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN      <48 cm               >=50 cm           0.6335404   0.3337033   1.2027851
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN      [48-50) cm           >=50 cm           0.6792453   0.3192243   1.4452978
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA         <48 cm               >=50 cm           1.4350505   0.8072065   2.5512305
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA         [48-50) cm           >=50 cm           1.2956457   0.6640331   2.5280334
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
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA        <48 cm               >=50 cm           1.2118692   0.8476204   1.7326469
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA        [48-50) cm           >=50 cm           1.1091669   0.8107989   1.5173322
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL         <48 cm               >=50 cm           0.9223587   0.5732901   1.4839704
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL         [48-50) cm           >=50 cm           1.2706369   0.7798422   2.0703139
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS       <48 cm               >=50 cm           1.3658639   0.9795772   1.9044789
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS       [48-50) cm           >=50 cm           1.4364117   1.2257175   1.6833232
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE      <48 cm               >=50 cm           1.3057586   1.0083787   1.6908385
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE      [48-50) cm           >=50 cm           1.4784250   1.1615668   1.8817175
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA     <48 cm               >=50 cm           2.6821192   0.8779688   8.1936434
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA     [48-50) cm           >=50 cm           1.7088608   0.5570751   5.2420314
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA         <48 cm               >=50 cm           1.0664971   0.8510376   1.3365050
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA         [48-50) cm           >=50 cm           1.1982210   0.9568252   1.5005182
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES   <48 cm               >=50 cm           0.9415915   0.7016695   1.2635502
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES   [48-50) cm           >=50 cm           1.0381569   0.8058660   1.3374058
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH    <48 cm               >=50 cm           0.5805189   0.4837633   0.6966262
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH    [48-50) cm           >=50 cm           0.8481651   0.6951776   1.0348204
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH    <48 cm               >=50 cm           1.0553693   0.6584411   1.6915777
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH    [48-50) cm           >=50 cm           1.0022640   0.5872289   1.7106332
6-24 months                   ki0047075b-MAL-ED          BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED          BANGLADESH    <48 cm               >=50 cm           1.7333333   0.7049479   4.2619383
6-24 months                   ki0047075b-MAL-ED          BANGLADESH    [48-50) cm           >=50 cm           1.4756757   0.5725124   3.8036181
6-24 months                   ki1000108-IRC              INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-IRC              INDIA         <48 cm               >=50 cm           1.1954861   0.8436221   1.6941079
6-24 months                   ki1000108-IRC              INDIA         [48-50) cm           >=50 cm           0.8890625   0.6148729   1.2855210
6-24 months                   ki1000109-EE               PAKISTAN      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE               PAKISTAN      <48 cm               >=50 cm           1.4000000   0.8172766   2.3982088
6-24 months                   ki1000109-EE               PAKISTAN      [48-50) cm           >=50 cm           0.8553459   0.4466890   1.6378658
6-24 months                   ki1000304b-SAS-CompFeed    INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA         <48 cm               >=50 cm           1.7573678   1.2756408   2.4210120
6-24 months                   ki1000304b-SAS-CompFeed    INDIA         [48-50) cm           >=50 cm           1.4333363   0.9743785   2.1084752
6-24 months                   ki1017093-NIH-Birth        BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093-NIH-Birth        BANGLADESH    <48 cm               >=50 cm           1.6154079   1.0937494   2.3858688
6-24 months                   ki1017093-NIH-Birth        BANGLADESH    [48-50) cm           >=50 cm           1.3160027   0.8745532   1.9802834
6-24 months                   ki1017093b-PROVIDE         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH    <48 cm               >=50 cm           3.6802132   1.9054160   7.1081430
6-24 months                   ki1017093b-PROVIDE         BANGLADESH    [48-50) cm           >=50 cm           2.0754238   1.0380461   4.1495114
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH    <48 cm               >=50 cm           1.8956549   1.0493009   3.4246682
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH    [48-50) cm           >=50 cm           1.6131221   0.8818414   2.9508289
6-24 months                   ki1101329-Keneba           GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   ki1101329-Keneba           GAMBIA        <48 cm               >=50 cm           1.1675584   0.9684560   1.4075938
6-24 months                   ki1101329-Keneba           GAMBIA        [48-50) cm           >=50 cm           1.0812463   0.9192055   1.2718522
6-24 months                   ki1113344-GMS-Nepal        NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal        NEPAL         <48 cm               >=50 cm           1.5608111   1.1489350   2.1203386
6-24 months                   ki1113344-GMS-Nepal        NEPAL         [48-50) cm           >=50 cm           1.4198357   1.0233693   1.9698981
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE      <48 cm               >=50 cm           1.7066973   1.4599112   1.9952006
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE      [48-50) cm           >=50 cm           1.2479555   1.0632852   1.4646991
6-24 months                   ki1135781-COHORTS          GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          GUATEMALA     <48 cm               >=50 cm           1.3960434   0.8167389   2.3862427
6-24 months                   ki1135781-COHORTS          GUATEMALA     [48-50) cm           >=50 cm           1.0894846   0.6596244   1.7994734
6-24 months                   ki1135781-COHORTS          INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          INDIA         <48 cm               >=50 cm           2.1913738   1.7831931   2.6929888
6-24 months                   ki1135781-COHORTS          INDIA         [48-50) cm           >=50 cm           1.3891436   1.1118613   1.7355763
6-24 months                   ki1135781-COHORTS          PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES   <48 cm               >=50 cm           1.8619733   1.5921243   2.1775591
6-24 months                   ki1135781-COHORTS          PHILIPPINES   [48-50) cm           >=50 cm           1.3555620   1.1568278   1.5884371
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH    <48 cm               >=50 cm           1.5811309   1.2796349   1.9536626
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH    [48-50) cm           >=50 cm           1.0572982   0.8429054   1.3262217
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH    <48 cm               >=50 cm           1.3998957   1.2168259   1.6105081
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH    [48-50) cm           >=50 cm           0.9915709   0.8251233   1.1915951


### Parameter: PAR


agecat                        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH    >=50 cm              NA                 0.0306797   -0.0862501    0.1476095
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA         >=50 cm              NA                 0.1971154   -0.0159054    0.4101362
0-24 months (no birth wast)   ki1000108-IRC              INDIA         >=50 cm              NA                -0.0173704   -0.0833846    0.0486437
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN      >=50 cm              NA                 0.0533529   -0.1478681    0.2545740
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN      >=50 cm              NA                -0.0020325   -0.2394717    0.2354067
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA         >=50 cm              NA                 0.1073509    0.0612281    0.1534738
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH    >=50 cm              NA                 0.0682177    0.0020425    0.1343928
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH    >=50 cm              NA                 0.0771768    0.0328271    0.1215265
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH    >=50 cm              NA                 0.0345089   -0.0094062    0.0784240
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA        >=50 cm              NA                 0.0226351   -0.0018245    0.0470947
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL         >=50 cm              NA                 0.1142069    0.0288458    0.1995680
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS       >=50 cm              NA                 0.0028919    0.0013330    0.0044509
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE      >=50 cm              NA                 0.0240195    0.0165891    0.0314499
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA     >=50 cm              NA                 0.0205056   -0.0004688    0.0414800
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA         >=50 cm              NA                 0.0533038    0.0364404    0.0701673
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES   >=50 cm              NA                 0.0647160    0.0440468    0.0853852
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH    >=50 cm              NA                -0.0079460   -0.0319460    0.0160540
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH    >=50 cm              NA                 0.0421793    0.0196260    0.0647326
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA         >=50 cm              NA                 0.1122112   -0.1111633    0.3355858
0-6 months (no birth wast)    ki1000108-IRC              INDIA         >=50 cm              NA                -0.0192679   -0.0864614    0.0479256
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN      >=50 cm              NA                -0.1064426   -0.2835258    0.0706407
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA         >=50 cm              NA                 0.0312693   -0.0233813    0.0859199
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH    >=50 cm              NA                 0.0172872   -0.0209617    0.0555361
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH    >=50 cm              NA                -0.0000441   -0.0300327    0.0299445
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH    >=50 cm              NA                -0.0092259   -0.0332159    0.0147641
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA        >=50 cm              NA                 0.0080288   -0.0085394    0.0245969
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL         >=50 cm              NA                 0.0075509   -0.0626557    0.0777576
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS       >=50 cm              NA                 0.0024874    0.0012360    0.0037387
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE      >=50 cm              NA                 0.0068635    0.0024481    0.0112790
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA     >=50 cm              NA                 0.0078838   -0.0023448    0.0181124
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA         >=50 cm              NA                 0.0085830   -0.0046038    0.0217699
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES   >=50 cm              NA                 0.0002654   -0.0133262    0.0138570
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH    >=50 cm              NA                -0.0384932   -0.0575256   -0.0194608
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH    >=50 cm              NA                 0.0011141   -0.0078084    0.0100366
6-24 months                   ki0047075b-MAL-ED          BANGLADESH    >=50 cm              NA                 0.0651911   -0.0339632    0.1643454
6-24 months                   ki1000108-IRC              INDIA         >=50 cm              NA                 0.0048507   -0.0564559    0.0661573
6-24 months                   ki1000109-EE               PAKISTAN      >=50 cm              NA                 0.0891350   -0.0955041    0.2737741
6-24 months                   ki1000304b-SAS-CompFeed    INDIA         >=50 cm              NA                 0.1065093    0.0473496    0.1656690
6-24 months                   ki1017093-NIH-Birth        BANGLADESH    >=50 cm              NA                 0.0775030    0.0101943    0.1448117
6-24 months                   ki1017093b-PROVIDE         BANGLADESH    >=50 cm              NA                 0.0933095    0.0511855    0.1354335
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH    >=50 cm              NA                 0.0497008    0.0095327    0.0898689
6-24 months                   ki1101329-Keneba           GAMBIA        >=50 cm              NA                 0.0174895   -0.0062953    0.0412743
6-24 months                   ki1113344-GMS-Nepal        NEPAL         >=50 cm              NA                 0.1406580    0.0528478    0.2284682
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE      >=50 cm              NA                 0.0230394    0.0147692    0.0313095
6-24 months                   ki1135781-COHORTS          GUATEMALA     >=50 cm              NA                 0.0101434   -0.0122848    0.0325717
6-24 months                   ki1135781-COHORTS          INDIA         >=50 cm              NA                 0.0472516    0.0337305    0.0607728
6-24 months                   ki1135781-COHORTS          PHILIPPINES   >=50 cm              NA                 0.0705923    0.0501608    0.0910237
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH    >=50 cm              NA                 0.0499508    0.0263818    0.0735198
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH    >=50 cm              NA                 0.0397648    0.0176874    0.0618423


### Parameter: PAF


agecat                        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH    >=50 cm              NA                 0.1301045   -0.5374946    0.5078238
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA         >=50 cm              NA                 0.3867925   -0.2158991    0.6907445
0-24 months (no birth wast)   ki1000108-IRC              INDIA         >=50 cm              NA                -0.0327269   -0.1649477    0.0844870
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN      >=50 cm              NA                 0.0941522   -0.3411810    0.3881809
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN      >=50 cm              NA                -0.0049020   -0.7766780    0.4316202
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA         >=50 cm              NA                 0.2960103    0.1798369    0.3957281
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH    >=50 cm              NA                 0.2291010   -0.0278144    0.4217971
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH    >=50 cm              NA                 0.4345940    0.1311583    0.6320573
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH    >=50 cm              NA                 0.2409234   -0.1346030    0.4921596
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA        >=50 cm              NA                 0.0585560   -0.0069417    0.1197933
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL         >=50 cm              NA                 0.2280677    0.0367525    0.3813849
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS       >=50 cm              NA                 0.0403366    0.0157566    0.0643027
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE      >=50 cm              NA                 0.2355030    0.1599236    0.3042827
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA     >=50 cm              NA                 0.1870563   -0.0257758    0.3557292
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA         >=50 cm              NA                 0.2735723    0.1823937    0.3545827
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES   >=50 cm              NA                 0.2131947    0.1423802    0.2781619
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH    >=50 cm              NA                -0.0452214   -0.1911963    0.0828650
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH    >=50 cm              NA                 0.1583588    0.0698767    0.2384236
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA         >=50 cm              NA                 0.2518519   -0.4634357    0.6175263
0-6 months (no birth wast)    ki1000108-IRC              INDIA         >=50 cm              NA                -0.0551358   -0.2659878    0.1205985
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN      >=50 cm              NA                -0.4691358   -1.4972590    0.1357084
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA         >=50 cm              NA                 0.2472812   -0.2681419    0.5532159
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH    >=50 cm              NA                 0.2166667   -0.4383833    0.5734022
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH    >=50 cm              NA                -0.0008140   -0.7400908    0.4243813
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH    >=50 cm              NA                -0.3455090   -1.6009534    0.3039497
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA        >=50 cm              NA                 0.0676270   -0.0827052    0.1970857
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL         >=50 cm              NA                 0.0393508   -0.4059639    0.3436198
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS       >=50 cm              NA                 0.0390131    0.0175968    0.0599625
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE      >=50 cm              NA                 0.2130423    0.0649294    0.3376945
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA     >=50 cm              NA                 0.3473251   -0.2471956    0.6584461
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA         >=50 cm              NA                 0.0972745   -0.0650592    0.2348657
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES   >=50 cm              NA                 0.0028043   -0.1516522    0.1365455
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH    >=50 cm              NA                -0.5062132   -0.7777161   -0.2761758
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH    >=50 cm              NA                 0.0385415   -0.3260853    0.3029088
6-24 months                   ki0047075b-MAL-ED          BANGLADESH    >=50 cm              NA                 0.3370857   -0.4241671    0.6914299
6-24 months                   ki1000108-IRC              INDIA         >=50 cm              NA                 0.0154196   -0.2001023    0.1922367
6-24 months                   ki1000109-EE               PAKISTAN      >=50 cm              NA                 0.1920455   -0.3225373    0.5064105
6-24 months                   ki1000304b-SAS-CompFeed    INDIA         >=50 cm              NA                 0.3481159    0.1169472    0.5187685
6-24 months                   ki1017093-NIH-Birth        BANGLADESH    >=50 cm              NA                 0.2627050   -0.0038632    0.4584880
6-24 months                   ki1017093b-PROVIDE         BANGLADESH    >=50 cm              NA                 0.5796499    0.2479394    0.7650533
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH    >=50 cm              NA                 0.3779334   -0.0072447    0.6158164
6-24 months                   ki1101329-Keneba           GAMBIA        >=50 cm              NA                 0.0520137   -0.0214602    0.1202025
6-24 months                   ki1113344-GMS-Nepal        NEPAL         >=50 cm              NA                 0.2980129    0.0842439    0.4618808
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE      >=50 cm              NA                 0.2407535    0.1502515    0.3216166
6-24 months                   ki1135781-COHORTS          GUATEMALA     >=50 cm              NA                 0.0957697   -0.1418880    0.2839645
6-24 months                   ki1135781-COHORTS          INDIA         >=50 cm              NA                 0.3820385    0.2651674    0.4803218
6-24 months                   ki1135781-COHORTS          PHILIPPINES   >=50 cm              NA                 0.2647918    0.1847972    0.3369367
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH    >=50 cm              NA                 0.2988276    0.1420225    0.4269748
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH    >=50 cm              NA                 0.1584219    0.0662804    0.2414706
