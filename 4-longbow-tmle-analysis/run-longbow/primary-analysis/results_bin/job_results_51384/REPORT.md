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
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 0       23     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 1        6     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  0      107     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  1       35     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              0       70     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              1       15     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 0       32     191
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 1        2     191
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         <48 cm                  0       74     191
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         <48 cm                  1        6     191
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              0       73     191
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              1        4     191
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          >=50 cm                 0       17     203
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          >=50 cm                 1        8     203
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          <48 cm                  0       68     203
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          <48 cm                  1       38     203
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          [48-50) cm              0       48     203
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          [48-50) cm              1       24     203
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          >=50 cm                 0       33     173
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          >=50 cm                 1        5     173
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          <48 cm                  0       48     173
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          <48 cm                  1       21     173
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          [48-50) cm              0       58     173
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          [48-50) cm              1        8     173
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           >=50 cm                 0       32     288
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           >=50 cm                 1        2     288
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           <48 cm                  0      129     288
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           <48 cm                  1       13     288
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           [48-50) cm              0      107     288
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           [48-50) cm              1        5     288
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 0       40     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 1        5     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  0       94     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  1       16     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              0       85     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              1       17     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 0       15     126
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 1        0     126
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  0       48     126
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  1       10     126
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              0       49     126
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              1        4     126
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 0       10     102
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 1        5     102
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  0       21     102
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  1       26     102
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              0       18     102
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              1       22     102
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          >=50 cm                 0       64     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          >=50 cm                 1       78     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          <48 cm                  0       48     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          <48 cm                  1       63     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          [48-50) cm              0       71     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          [48-50) cm              1       66     390
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       >=50 cm                 0       14      91
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       >=50 cm                 1        8      91
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       <48 cm                  0       22      91
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       <48 cm                  1       21      91
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       [48-50) cm              0       14      91
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       [48-50) cm              1       12      91
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       >=50 cm                 0        3      22
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       >=50 cm                 1        4      22
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       <48 cm                  0        5      22
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       <48 cm                  1        2      22
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       [48-50) cm              0        5      22
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       [48-50) cm              1        3      22
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 0      161    1489
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 1       58    1489
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  0      475    1489
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  1      320    1489
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              0      313    1489
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              1      162    1489
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 0       21     215
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 1        8     215
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  0       71     215
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  1       34     215
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              0       52     215
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              1       29     215
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
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         >=50 cm                 0      471    1546
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         >=50 cm                 1      290    1546
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         <48 cm                  0      173    1546
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         <48 cm                  1      118    1546
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         [48-50) cm              0      293    1546
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         [48-50) cm              1      201    1546
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     >=50 cm                 0        1       6
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     >=50 cm                 1        0       6
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     <48 cm                  0        3       6
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     <48 cm                  1        0       6
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     [48-50) cm              0        2       6
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     [48-50) cm              1        0       6
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         >=50 cm                 0       61     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         >=50 cm                 1        2     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         <48 cm                  0       16     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         <48 cm                  1        0     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         [48-50) cm              0       34     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         [48-50) cm              1        2     115
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                 0        0       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                 1        0       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                  0        1       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                  1        0       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm              0        1       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm              1        0       2
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           >=50 cm                 0       14      17
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           >=50 cm                 1        1      17
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           <48 cm                  0        0      17
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           <48 cm                  1        1      17
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           [48-50) cm              0        1      17
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           [48-50) cm              1        0      17
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
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 0     3684   13488
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 1      300   13488
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  0     3771   13488
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  1      506   13488
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              0     4688   13488
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              1      539   13488
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
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 0     3229   26067
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 1      542   26067
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  0    13578   26067
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  1     2903   26067
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              0     4827   26067
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              1      988   26067
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 0      951    4464
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 1      279    4464
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  0     1498    4464
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  1      663    4464
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              0      826    4464
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              1      247    4464
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 0       25     255
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 1        4     255
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  0      132     255
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  1        9     255
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              0       79     255
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              1        6     255
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 0       32     191
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 1        2     191
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         <48 cm                  0       78     191
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         <48 cm                  1        2     191
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              0       74     191
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              1        3     191
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          >=50 cm                 0       20     202
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          >=50 cm                 1        5     202
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          <48 cm                  0       98     202
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          <48 cm                  1        8     202
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          [48-50) cm              0       55     202
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          [48-50) cm              1       16     202
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          >=50 cm                 0       33     172
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          >=50 cm                 1        4     172
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          <48 cm                  0       65     172
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          <48 cm                  1        4     172
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          [48-50) cm              0       64     172
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          [48-50) cm              1        2     172
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           >=50 cm                 0       32     288
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           >=50 cm                 1        2     288
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           <48 cm                  0      140     288
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           <48 cm                  1        2     288
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           [48-50) cm              0      111     288
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           [48-50) cm              1        1     288
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 0       43     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 1        2     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  0      105     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  1        5     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              0       97     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              1        4     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 0       15     126
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 1        0     126
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  0       56     126
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  1        2     126
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              0       50     126
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              1        3     126
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 0        9      99
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 1        5      99
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  0       26      99
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  1       19      99
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              0       19      99
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              1       21      99
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          >=50 cm                 0       83     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          >=50 cm                 1       48     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          <48 cm                  0       75     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          <48 cm                  1       34     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          [48-50) cm              0       84     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          [48-50) cm              1       48     372
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       >=50 cm                 0       19      90
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       >=50 cm                 1        3      90
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       <48 cm                  0       36      90
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       <48 cm                  1        6      90
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       [48-50) cm              0       20      90
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       [48-50) cm              1        6      90
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       >=50 cm                 0        4      22
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       >=50 cm                 1        3      22
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       <48 cm                  0        6      22
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       <48 cm                  1        1      22
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       [48-50) cm              0        7      22
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       [48-50) cm              1        1      22
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 0      196    1463
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 1       20    1463
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  0      670    1463
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  1      108    1463
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              0      412    1463
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              1       57    1463
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 0       26     207
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 1        3     207
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  0       91     207
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  1        9     207
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              0       68     207
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              1       10     207
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 0      157     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 1        9     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  0      222     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  1       15     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              0      268     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              1       12     683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 0      161     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 1        6     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  0      282     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  1        6     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              0      286     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              1        8     749
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         >=50 cm                 0      641    1519
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         >=50 cm                 1      105    1519
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         <48 cm                  0      245    1519
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         <48 cm                  1       39    1519
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         [48-50) cm              0      420    1519
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         [48-50) cm              1       69    1519
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     >=50 cm                 0        1       6
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     >=50 cm                 1        0       6
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     <48 cm                  0        3       6
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     <48 cm                  1        0       6
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     [48-50) cm              0        2       6
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     [48-50) cm              1        0       6
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         >=50 cm                 0       62     113
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         >=50 cm                 1        0     113
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         <48 cm                  0       16     113
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         <48 cm                  1        0     113
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         [48-50) cm              0       34     113
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         [48-50) cm              1        1     113
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                 0        0       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                 1        0       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                  0        1       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                  1        0       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm              0        1       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm              1        0       2
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           >=50 cm                 0       14      17
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           >=50 cm                 1        1      17
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           <48 cm                  0        1      17
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           <48 cm                  1        0      17
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           [48-50) cm              0        1      17
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           [48-50) cm              1        0      17
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
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 0     3805   13242
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 1       99   13242
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  0     4056   13242
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  1      131   13242
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              0     4955   13242
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              1      196   13242
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
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          [48-50) cm              0     2036    6052
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          [48-50) cm              1      214    6052
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 0     1006    2990
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 1      107    2990
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    <48 cm                  0      670    2990
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    <48 cm                  1       65    2990
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              0     1031    2990
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              1      111    2990
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 0     3464   25829
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 1      263   25829
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  0    15264   25829
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  1     1073   25829
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              0     5233   25829
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              1      532   25829
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 0     1174    4359
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 1       35    4359
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  0     2032    4359
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  1       61    4359
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              0     1027    4359
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              1       30    4359
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 0       26     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 1        2     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  0       97     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  1       27     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              0       69     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              1       13     234
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 0       29     171
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 1        1     171
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         <48 cm                  0       64     171
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         <48 cm                  1        4     171
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              0       72     171
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              1        1     171
6-24 months                   ki0047075b-MAL-ED          INDIA                          >=50 cm                 0       20     192
6-24 months                   ki0047075b-MAL-ED          INDIA                          >=50 cm                 1        4     192
6-24 months                   ki0047075b-MAL-ED          INDIA                          <48 cm                  0       67     192
6-24 months                   ki0047075b-MAL-ED          INDIA                          <48 cm                  1       33     192
6-24 months                   ki0047075b-MAL-ED          INDIA                          [48-50) cm              0       53     192
6-24 months                   ki0047075b-MAL-ED          INDIA                          [48-50) cm              1       15     192
6-24 months                   ki0047075b-MAL-ED          NEPAL                          >=50 cm                 0       36     170
6-24 months                   ki0047075b-MAL-ED          NEPAL                          >=50 cm                 1        2     170
6-24 months                   ki0047075b-MAL-ED          NEPAL                          <48 cm                  0       46     170
6-24 months                   ki0047075b-MAL-ED          NEPAL                          <48 cm                  1       20     170
6-24 months                   ki0047075b-MAL-ED          NEPAL                          [48-50) cm              0       60     170
6-24 months                   ki0047075b-MAL-ED          NEPAL                          [48-50) cm              1        6     170
6-24 months                   ki0047075b-MAL-ED          PERU                           >=50 cm                 0       29     258
6-24 months                   ki0047075b-MAL-ED          PERU                           >=50 cm                 1        1     258
6-24 months                   ki0047075b-MAL-ED          PERU                           <48 cm                  0      119     258
6-24 months                   ki0047075b-MAL-ED          PERU                           <48 cm                  1       12     258
6-24 months                   ki0047075b-MAL-ED          PERU                           [48-50) cm              0       93     258
6-24 months                   ki0047075b-MAL-ED          PERU                           [48-50) cm              1        4     258
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 0       37     220
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 1        3     220
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  0       77     220
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  1       14     220
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              0       75     220
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              1       14     220
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 0       14     117
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 1        0     117
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  0       44     117
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  1        9     117
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              0       47     117
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              1        3     117
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 0       15     104
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 1        0     104
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  0       37     104
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  1       12     104
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              0       32     104
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              1        8     104
6-24 months                   ki1000108-IRC              INDIA                          >=50 cm                 0       98     391
6-24 months                   ki1000108-IRC              INDIA                          >=50 cm                 1       44     391
6-24 months                   ki1000108-IRC              INDIA                          <48 cm                  0       70     391
6-24 months                   ki1000108-IRC              INDIA                          <48 cm                  1       41     391
6-24 months                   ki1000108-IRC              INDIA                          [48-50) cm              0      100     391
6-24 months                   ki1000108-IRC              INDIA                          [48-50) cm              1       38     391
6-24 months                   ki1000109-EE               PAKISTAN                       >=50 cm                 0       12      88
6-24 months                   ki1000109-EE               PAKISTAN                       >=50 cm                 1        8      88
6-24 months                   ki1000109-EE               PAKISTAN                       <48 cm                  0       26      88
6-24 months                   ki1000109-EE               PAKISTAN                       <48 cm                  1       17      88
6-24 months                   ki1000109-EE               PAKISTAN                       [48-50) cm              0       18      88
6-24 months                   ki1000109-EE               PAKISTAN                       [48-50) cm              1        7      88
6-24 months                   ki1000109-ResPak           PAKISTAN                       >=50 cm                 0        4      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       >=50 cm                 1        1      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       <48 cm                  0        5      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       <48 cm                  1        1      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       [48-50) cm              0        3      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       [48-50) cm              1        2      16
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 0      166    1376
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 1       44    1376
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  0      476    1376
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  1      251    1376
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              0      313    1376
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              1      126    1376
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 0       17     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 1        8     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  0       55     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  1       30     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              0       47     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              1       23     180
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
6-24 months                   ki1101329-Keneba           GAMBIA                         >=50 cm                 0      500    1487
6-24 months                   ki1101329-Keneba           GAMBIA                         >=50 cm                 1      243    1487
6-24 months                   ki1101329-Keneba           GAMBIA                         <48 cm                  0      173    1487
6-24 months                   ki1101329-Keneba           GAMBIA                         <48 cm                  1       95    1487
6-24 months                   ki1101329-Keneba           GAMBIA                         [48-50) cm              0      313    1487
6-24 months                   ki1101329-Keneba           GAMBIA                         [48-50) cm              1      163    1487
6-24 months                   ki1114097-CMIN             BANGLADESH                     >=50 cm                 0        0       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     >=50 cm                 1        0       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     <48 cm                  0        1       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     <48 cm                  1        0       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     [48-50) cm              0        0       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     [48-50) cm              1        0       1
6-24 months                   ki1114097-CMIN             BRAZIL                         >=50 cm                 0       61     115
6-24 months                   ki1114097-CMIN             BRAZIL                         >=50 cm                 1        2     115
6-24 months                   ki1114097-CMIN             BRAZIL                         <48 cm                  0       16     115
6-24 months                   ki1114097-CMIN             BRAZIL                         <48 cm                  1        0     115
6-24 months                   ki1114097-CMIN             BRAZIL                         [48-50) cm              0       34     115
6-24 months                   ki1114097-CMIN             BRAZIL                         [48-50) cm              1        2     115
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                 0        0       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                 1        0       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                  0        1       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                  1        0       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm              0        1       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm              1        0       2
6-24 months                   ki1114097-CMIN             PERU                           >=50 cm                 0       12      14
6-24 months                   ki1114097-CMIN             PERU                           >=50 cm                 1        0      14
6-24 months                   ki1114097-CMIN             PERU                           <48 cm                  0        0      14
6-24 months                   ki1114097-CMIN             PERU                           <48 cm                  1        1      14
6-24 months                   ki1114097-CMIN             PERU                           [48-50) cm              0        1      14
6-24 months                   ki1114097-CMIN             PERU                           [48-50) cm              1        0      14
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
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 0     2823   10570
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 1      212   10570
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  0     2984   10570
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  1      403   10570
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              0     3772   10570
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              1      376   10570
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
6-24 months                   ki1135781-COHORTS          INDIA                          [48-50) cm              0     2038    6169
6-24 months                   ki1135781-COHORTS          INDIA                          [48-50) cm              1      243    6169
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 0      829    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 1      208    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    <48 cm                  0      443    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    <48 cm                  1      256    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              0      783    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              1      283    2802
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 0     2176   16969
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 1      309   16969
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  0     8649   16969
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  1     1953   16969
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              0     3363   16969
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              1      519   16969
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
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
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
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
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
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/92b6c22a-6788-4a90-a7de-ab5c90447bff/675ac702-327b-4333-bbc7-450864203bc2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/92b6c22a-6788-4a90-a7de-ab5c90447bff/675ac702-327b-4333-bbc7-450864203bc2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/92b6c22a-6788-4a90-a7de-ab5c90447bff/675ac702-327b-4333-bbc7-450864203bc2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/92b6c22a-6788-4a90-a7de-ab5c90447bff/675ac702-327b-4333-bbc7-450864203bc2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     >=50 cm              NA                0.2068966   0.0591761   0.3546170
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     <48 cm               NA                0.2464789   0.1754571   0.3175006
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     [48-50) cm           NA                0.1764706   0.0952691   0.2576721
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          >=50 cm              NA                0.3200000   0.1366927   0.5033073
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          <48 cm               NA                0.3584906   0.2669723   0.4500089
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          [48-50) cm           NA                0.3333333   0.2241773   0.4424894
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          >=50 cm              NA                0.1315789   0.0237902   0.2393677
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          <48 cm               NA                0.3043478   0.1954640   0.4132317
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          [48-50) cm           NA                0.1212121   0.0422443   0.2001799
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                0.1111111   0.0191105   0.2031118
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   <48 cm               NA                0.1454545   0.0794415   0.2114676
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   [48-50) cm           NA                0.1666667   0.0942017   0.2391317
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                0.3333333   0.0935960   0.5730706
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               NA                0.5531915   0.4103557   0.6960273
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           NA                0.5500000   0.3950666   0.7049334
0-24 months (no birth wast)   ki1000108-IRC              INDIA          >=50 cm              NA                0.5455757   0.4621871   0.6289642
0-24 months (no birth wast)   ki1000108-IRC              INDIA          <48 cm               NA                0.5670928   0.4728594   0.6613263
0-24 months (no birth wast)   ki1000108-IRC              INDIA          [48-50) cm           NA                0.4794210   0.3947609   0.5640810
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       >=50 cm              NA                0.3636364   0.1615102   0.5657625
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       <48 cm               NA                0.4883721   0.3381389   0.6386053
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       [48-50) cm           NA                0.4615385   0.2688560   0.6542209
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                0.2553086   0.2119132   0.2987039
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          <48 cm               NA                0.4045175   0.3450158   0.4640191
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           NA                0.3441775   0.2754055   0.4129496
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                0.2758621   0.1128131   0.4389110
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     <48 cm               NA                0.3238095   0.2340986   0.4135204
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     [48-50) cm           NA                0.3580247   0.2533761   0.4626733
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                0.1028740   0.0558521   0.1498959
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     <48 cm               NA                0.2589165   0.2030040   0.3148291
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           NA                0.1547305   0.1124174   0.1970435
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                0.1132431   0.0651997   0.1612865
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               NA                0.1621697   0.1195838   0.2047557
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           NA                0.1425458   0.1025844   0.1825071
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         >=50 cm              NA                0.3716110   0.3372341   0.4059880
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         <48 cm               NA                0.4247964   0.3679486   0.4816443
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         [48-50) cm           NA                0.4093458   0.3656988   0.4529929
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        >=50 cm              NA                0.0687862   0.0563494   0.0812231
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        <48 cm               NA                0.1015110   0.0806908   0.1223312
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        [48-50) cm           NA                0.0969532   0.0821435   0.1117629
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.0748798   0.0666487   0.0831109
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               NA                0.1214828   0.1116092   0.1313565
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.1025086   0.0942090   0.1108081
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                0.0889752   0.0615109   0.1164394
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      <48 cm               NA                0.1643865   0.1063004   0.2224727
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      [48-50) cm           NA                0.1140197   0.0746687   0.1533708
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          >=50 cm              NA                0.1420950   0.1236824   0.1605075
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          <48 cm               NA                0.2322197   0.2160163   0.2484231
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          [48-50) cm           NA                0.1863756   0.1704974   0.2022537
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                0.2378380   0.2129683   0.2627078
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    <48 cm               NA                0.3860783   0.3511564   0.4210002
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    [48-50) cm           NA                0.3097727   0.2830188   0.3365267
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                0.1456878   0.1321323   0.1592434
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     <48 cm               NA                0.1762722   0.1697589   0.1827855
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           NA                0.1669623   0.1557257   0.1781989
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                0.2248054   0.1988118   0.2507989
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     <48 cm               NA                0.3108535   0.2875962   0.3341107
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           NA                0.2265034   0.1966365   0.2563703
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          >=50 cm              NA                0.2000000   0.0428133   0.3571867
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          <48 cm               NA                0.0754717   0.0250607   0.1258827
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          [48-50) cm           NA                0.2253521   0.1279251   0.3227792
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                0.3571429   0.1048721   0.6094136
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               NA                0.4222222   0.2771790   0.5672654
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           NA                0.5250000   0.3694575   0.6805425
0-6 months (no birth wast)    ki1000108-IRC              INDIA          >=50 cm              NA                0.3629548   0.2796895   0.4462201
0-6 months (no birth wast)    ki1000108-IRC              INDIA          <48 cm               NA                0.3079240   0.2202558   0.3955921
0-6 months (no birth wast)    ki1000108-IRC              INDIA          [48-50) cm           NA                0.3598842   0.2775417   0.4422267
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                0.0951832   0.0555614   0.1348050
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          <48 cm               NA                0.1365927   0.1032717   0.1699136
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           NA                0.1233237   0.0693453   0.1773020
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                0.0542169   0.0197442   0.0886896
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     <48 cm               NA                0.0632911   0.0322694   0.0943129
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           NA                0.0428571   0.0191168   0.0665975
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                0.0359281   0.0076825   0.0641738
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               NA                0.0208333   0.0043270   0.0373396
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           NA                0.0272109   0.0086009   0.0458208
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         >=50 cm              NA                0.1382544   0.1132538   0.1632550
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         <48 cm               NA                0.1432312   0.1029764   0.1834860
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         [48-50) cm           NA                0.1427170   0.1115581   0.1738759
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        >=50 cm              NA                0.0612012   0.0497364   0.0726660
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        <48 cm               NA                0.0846524   0.0642677   0.1050372
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        [48-50) cm           NA                0.0888296   0.0724069   0.1052523
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.0253032   0.0203139   0.0302925
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               NA                0.0331220   0.0275702   0.0386738
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.0373471   0.0321228   0.0425713
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                0.0148148   0.0030414   0.0265882
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      <48 cm               NA                0.0397351   0.0085594   0.0709108
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      [48-50) cm           NA                0.0253165   0.0053049   0.0453280
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          >=50 cm              NA                0.0799554   0.0652060   0.0947048
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          <48 cm               NA                0.0848378   0.0737809   0.0958947
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          [48-50) cm           NA                0.0954474   0.0831198   0.1077750
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                0.0936470   0.0765690   0.1107250
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    <48 cm               NA                0.0891211   0.0684914   0.1097509
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    [48-50) cm           NA                0.0979298   0.0806614   0.1151982
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                0.0735392   0.0634123   0.0836661
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     <48 cm               NA                0.0655317   0.0612736   0.0697899
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           NA                0.0911740   0.0824201   0.0999279
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                0.0284742   0.0177892   0.0391592
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     <48 cm               NA                0.0293850   0.0214760   0.0372940
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           NA                0.0279592   0.0175929   0.0383256
6-24 months                   ki1000108-IRC              INDIA          >=50 cm              NA                0.3163682   0.2397116   0.3930248
6-24 months                   ki1000108-IRC              INDIA          <48 cm               NA                0.3750741   0.2849818   0.4651665
6-24 months                   ki1000108-IRC              INDIA          [48-50) cm           NA                0.2787433   0.2039696   0.3535171
6-24 months                   ki1000109-EE               PAKISTAN       >=50 cm              NA                0.4000000   0.1840663   0.6159337
6-24 months                   ki1000109-EE               PAKISTAN       <48 cm               NA                0.3953488   0.2483756   0.5423221
6-24 months                   ki1000109-EE               PAKISTAN       [48-50) cm           NA                0.2800000   0.1029870   0.4570130
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                0.1994500   0.1274665   0.2714335
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          <48 cm               NA                0.3505070   0.3054701   0.3955439
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           NA                0.2858789   0.2232278   0.3485300
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                0.3200000   0.1366347   0.5033653
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     <48 cm               NA                0.3529412   0.2510653   0.4548171
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     [48-50) cm           NA                0.3285714   0.2182338   0.4389090
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                0.0676127   0.0262751   0.1089503
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     <48 cm               NA                0.2482529   0.1904835   0.3060223
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           NA                0.1415246   0.0974278   0.1856215
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                0.0850661   0.0423202   0.1278121
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               NA                0.1572155   0.1144752   0.1999559
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           NA                0.1343170   0.0945936   0.1740405
6-24 months                   ki1101329-Keneba           GAMBIA         >=50 cm              NA                0.3205343   0.2869374   0.3541313
6-24 months                   ki1101329-Keneba           GAMBIA         <48 cm               NA                0.3723628   0.3139268   0.4307988
6-24 months                   ki1101329-Keneba           GAMBIA         [48-50) cm           NA                0.3445293   0.3017349   0.3873237
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.0691723   0.0600917   0.0782528
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               NA                0.1218296   0.1107133   0.1329459
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.0903661   0.0815547   0.0991775
6-24 months                   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                0.0965517   0.0660205   0.1270829
6-24 months                   ki1135781-COHORTS          GUATEMALA      <48 cm               NA                0.1334073   0.0763823   0.1904323
6-24 months                   ki1135781-COHORTS          GUATEMALA      [48-50) cm           NA                0.1033086   0.0629325   0.1436848
6-24 months                   ki1135781-COHORTS          INDIA          >=50 cm              NA                0.0766528   0.0622402   0.0910655
6-24 months                   ki1135781-COHORTS          INDIA          <48 cm               NA                0.1674444   0.1528634   0.1820254
6-24 months                   ki1135781-COHORTS          INDIA          [48-50) cm           NA                0.1068447   0.0938639   0.1198256
6-24 months                   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                0.1955631   0.1714207   0.2197055
6-24 months                   ki1135781-COHORTS          PHILIPPINES    <48 cm               NA                0.3648692   0.3296664   0.4000719
6-24 months                   ki1135781-COHORTS          PHILIPPINES    [48-50) cm           NA                0.2663404   0.2398679   0.2928129
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                0.1234291   0.1077128   0.1391454
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     <48 cm               NA                0.1849638   0.1769102   0.1930174
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           NA                0.1305027   0.1189791   0.1420263
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                0.2116065   0.1861218   0.2370911
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     <48 cm               NA                0.2962108   0.2733269   0.3190947
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           NA                0.2095077   0.1803156   0.2386998


### Parameter: E(Y)


agecat                        studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     NA                   NA                0.2187500   0.1680104   0.2694896
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          NA                   NA                0.3448276   0.2792808   0.4103743
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          NA                   NA                0.1965318   0.1371457   0.2559179
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.1478599   0.1043780   0.1913419
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.5196078   0.4221710   0.6170447
0-24 months (no birth wast)   ki1000108-IRC              INDIA          NA                   NA                0.5307692   0.4811763   0.5803621
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       NA                   NA                0.4505495   0.3477567   0.5533422
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          NA                   NA                0.3626595   0.3120201   0.4132989
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.3302326   0.2672220   0.3932431
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         NA                   NA                0.3939198   0.3695556   0.4182840
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        NA                   NA                0.0716952   0.0597165   0.0836739
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.0997183   0.0946616   0.1047750
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      NA                   NA                0.1096224   0.0882390   0.1310059
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          NA                   NA                0.1948438   0.1851392   0.2045483
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.3035536   0.2871278   0.3199794
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.1700618   0.1646915   0.1754320
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.2663530   0.2512746   0.2814315
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          NA                   NA                0.1435644   0.0950890   0.1920397
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.4545455   0.3559622   0.5531287
0-6 months (no birth wast)    ki1000108-IRC              INDIA          NA                   NA                0.3494624   0.3009450   0.3979798
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          NA                   NA                0.1264525   0.0961151   0.1567899
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         NA                   NA                0.1402238   0.1227569   0.1576907
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        NA                   NA                0.0637570   0.0524446   0.0750694
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.0321704   0.0291649   0.0351759
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      NA                   NA                0.0226986   0.0123257   0.0330715
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          NA                   NA                0.0880701   0.0809295   0.0952106
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.0946488   0.0841546   0.1051431
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.0723218   0.0686288   0.0760148
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.0289057   0.0236101   0.0342013
6-24 months                   ki1000108-IRC              INDIA          NA                   NA                0.3145780   0.2684931   0.3606629
6-24 months                   ki1000109-EE               PAKISTAN       NA                   NA                0.3636364   0.2625541   0.4647186
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          NA                   NA                0.3059593   0.2629068   0.3490118
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.3388889   0.2695483   0.4082295
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1101329-Keneba           GAMBIA         NA                   NA                0.3369200   0.3128882   0.3609517
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.0937559   0.0881988   0.0993131
6-24 months                   ki1135781-COHORTS          GUATEMALA      NA                   NA                0.1059147   0.0835302   0.1282992
6-24 months                   ki1135781-COHORTS          INDIA          NA                   NA                0.1238450   0.1156244   0.1320657
6-24 months                   ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.2665953   0.2502200   0.2829706
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.1638871   0.1577133   0.1700609
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.2510058   0.2361044   0.2659072


### Parameter: RR


agecat                        studyid                    country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     <48 cm               >=50 cm           1.1913146   0.5516307   2.572791
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     [48-50) cm           >=50 cm           0.8529412   0.3647742   1.994408
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          <48 cm               >=50 cm           1.1202830   0.5983587   2.097461
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          [48-50) cm           >=50 cm           1.0416667   0.5384782   2.015067
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          <48 cm               >=50 cm           2.3130435   0.9461590   5.654620
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          [48-50) cm           >=50 cm           0.9212121   0.3234432   2.623743
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   <48 cm               >=50 cm           1.3090909   0.5092105   3.365443
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   [48-50) cm           >=50 cm           1.5000000   0.5887494   3.821660
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               >=50 cm           1.6595745   0.7729083   3.563408
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           >=50 cm           1.6500000   0.7621317   3.572217
0-24 months (no birth wast)   ki1000108-IRC              INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA          <48 cm               >=50 cm           1.0394394   0.8290452   1.303227
0-24 months (no birth wast)   ki1000108-IRC              INDIA          [48-50) cm           >=50 cm           0.8787433   0.6953288   1.110539
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       <48 cm               >=50 cm           1.3430233   0.7115078   2.535055
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       [48-50) cm           >=50 cm           1.2692308   0.6333362   2.543589
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          <48 cm               >=50 cm           1.5844259   1.3228216   1.897766
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           >=50 cm           1.3480845   1.0985599   1.654286
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     <48 cm               >=50 cm           1.1738095   0.6110918   2.254700
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     [48-50) cm           >=50 cm           1.2978395   0.6712075   2.509488
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     <48 cm               >=50 cm           2.5168311   1.5174441   4.174413
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           >=50 cm           1.5040774   0.8831099   2.561684
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               >=50 cm           1.4320496   0.8693213   2.359043
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           >=50 cm           1.2587589   0.7568692   2.093458
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         <48 cm               >=50 cm           1.1431211   0.9722183   1.344066
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         [48-50) cm           >=50 cm           1.1015438   0.9569467   1.267990
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        <48 cm               >=50 cm           1.4757459   1.0931153   1.992312
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        [48-50) cm           >=50 cm           1.4094855   1.1952016   1.662188
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm           1.6223709   1.4151373   1.859952
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm           1.3689747   1.1942871   1.569214
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      <48 cm               >=50 cm           1.8475554   1.1564624   2.951640
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      [48-50) cm           >=50 cm           1.2814781   0.8065197   2.036139
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          <48 cm               >=50 cm           1.6342570   1.4108728   1.893010
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          [48-50) cm           >=50 cm           1.3116265   1.1234142   1.531371
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    <48 cm               >=50 cm           1.6232824   1.4138545   1.863732
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    [48-50) cm           >=50 cm           1.3024524   1.1374229   1.491426
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     <48 cm               >=50 cm           1.2099308   1.0935200   1.338734
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           >=50 cm           1.1460278   1.0245205   1.281946
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     <48 cm               >=50 cm           1.3827672   1.2068104   1.584379
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           >=50 cm           1.0075534   0.8452725   1.200990
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          <48 cm               >=50 cm           0.3773585   0.1345275   1.058516
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          [48-50) cm           >=50 cm           1.1267606   0.4594847   2.763072
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               >=50 cm           1.1822222   0.5389860   2.593109
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           >=50 cm           1.4700000   0.6833739   3.162105
0-6 months (no birth wast)    ki1000108-IRC              INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA          <48 cm               >=50 cm           0.8483811   0.5886123   1.222792
0-6 months (no birth wast)    ki1000108-IRC              INDIA          [48-50) cm           >=50 cm           0.9915401   0.7169211   1.371353
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          <48 cm               >=50 cm           1.4350505   0.8072065   2.551230
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           >=50 cm           1.2956457   0.6640331   2.528033
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     <48 cm               >=50 cm           1.1673699   0.5230561   2.605366
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           >=50 cm           0.7904762   0.3401375   1.837059
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               >=50 cm           0.5798611   0.1899253   1.770375
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           >=50 cm           0.7573696   0.2671556   2.147096
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         <48 cm               >=50 cm           1.0359970   0.7420865   1.446314
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         [48-50) cm           >=50 cm           1.0322778   0.7777889   1.370034
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        <48 cm               >=50 cm           1.3831821   0.9950848   1.922643
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        [48-50) cm           >=50 cm           1.4514360   1.2340736   1.707083
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm           1.3090034   1.0105796   1.695552
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm           1.4759820   1.1589866   1.879679
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      <48 cm               >=50 cm           2.6821192   0.8779688   8.193643
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      [48-50) cm           >=50 cm           1.7088608   0.5570751   5.242031
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          <48 cm               >=50 cm           1.0610637   0.8464570   1.330081
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          [48-50) cm           >=50 cm           1.1937581   0.9530098   1.495324
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    <48 cm               >=50 cm           0.9516707   0.7087646   1.277825
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    [48-50) cm           >=50 cm           1.0457333   0.8115449   1.347502
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     <48 cm               >=50 cm           0.8911126   0.7654341   1.037427
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           >=50 cm           1.2398013   1.0467477   1.468460
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     <48 cm               >=50 cm           1.0319869   0.6465091   1.647304
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           >=50 cm           0.9819148   0.5770421   1.670860
6-24 months                   ki1000108-IRC              INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1000108-IRC              INDIA          <48 cm               >=50 cm           1.1855620   0.8424868   1.668343
6-24 months                   ki1000108-IRC              INDIA          [48-50) cm           >=50 cm           0.8810725   0.6134735   1.265399
6-24 months                   ki1000109-EE               PAKISTAN       >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE               PAKISTAN       <48 cm               >=50 cm           0.9883721   0.5131677   1.903626
6-24 months                   ki1000109-EE               PAKISTAN       [48-50) cm           >=50 cm           0.7000000   0.3048335   1.607435
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          <48 cm               >=50 cm           1.7573678   1.2756408   2.421012
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           >=50 cm           1.4333363   0.9743785   2.108475
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     <48 cm               >=50 cm           1.1029412   0.5806358   2.095082
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     [48-50) cm           >=50 cm           1.0267857   0.5284892   1.994911
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     <48 cm               >=50 cm           3.6716892   1.9096369   7.059615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           >=50 cm           2.0931652   1.0532675   4.159760
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               >=50 cm           1.8481566   1.0434428   3.273474
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           >=50 cm           1.5789720   0.8811298   2.829495
6-24 months                   ki1101329-Keneba           GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba           GAMBIA         <48 cm               >=50 cm           1.1616940   0.9624792   1.402142
6-24 months                   ki1101329-Keneba           GAMBIA         [48-50) cm           >=50 cm           1.0748592   0.9141472   1.263825
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm           1.7612485   1.5010334   2.066574
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm           1.3063916   1.1093196   1.538474
6-24 months                   ki1135781-COHORTS          GUATEMALA      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          GUATEMALA      <48 cm               >=50 cm           1.3817187   0.8118202   2.351687
6-24 months                   ki1135781-COHORTS          GUATEMALA      [48-50) cm           >=50 cm           1.0699824   0.6470794   1.769276
6-24 months                   ki1135781-COHORTS          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          INDIA          <48 cm               >=50 cm           2.1844517   1.7762942   2.686396
6-24 months                   ki1135781-COHORTS          INDIA          [48-50) cm           >=50 cm           1.3938784   1.1147084   1.742964
6-24 months                   ki1135781-COHORTS          PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES    <48 cm               >=50 cm           1.8657366   1.5956182   2.181583
6-24 months                   ki1135781-COHORTS          PHILIPPINES    [48-50) cm           >=50 cm           1.3619157   1.1624525   1.595604
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     <48 cm               >=50 cm           1.4985424   1.3114253   1.712358
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           >=50 cm           1.0573088   0.9086030   1.230352
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     <48 cm               >=50 cm           1.3998189   1.2160434   1.611368
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           >=50 cm           0.9900817   0.8234708   1.190403


### Parameter: PAR


agecat                        studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     >=50 cm              NA                 0.0118534   -0.1276167   0.1513236
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          >=50 cm              NA                 0.0248276   -0.1472820   0.1969372
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          >=50 cm              NA                 0.0649528   -0.0352523   0.1651580
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                 0.0367488   -0.0492204   0.1227180
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                 0.1862745   -0.0374749   0.4100239
0-24 months (no birth wast)   ki1000108-IRC              INDIA          >=50 cm              NA                -0.0148064   -0.0816068   0.0519940
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       >=50 cm              NA                 0.0869131   -0.0910399   0.2648661
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.1073509    0.0612281   0.1534738
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                 0.0543705   -0.0985463   0.2072873
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.0747097    0.0301675   0.1192518
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.0299930   -0.0137047   0.0736907
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0223088   -0.0023370   0.0469546
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0029090    0.0013586   0.0044594
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.0248385    0.0175087   0.0321682
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.0206472   -0.0003093   0.0416038
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.0527488    0.0358399   0.0696577
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.0657156    0.0451029   0.0863283
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.0243739    0.0115725   0.0371754
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.0415477    0.0186699   0.0644255
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          >=50 cm              NA                -0.0564356   -0.2011483   0.0882770
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                 0.0974026   -0.1378841   0.3326893
0-6 months (no birth wast)    ki1000108-IRC              INDIA          >=50 cm              NA                -0.0134924   -0.0800665   0.0530817
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.0312693   -0.0233813   0.0859199
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                -0.0015082   -0.0313738   0.0283573
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                -0.0092259   -0.0332159   0.0147641
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0019694   -0.0158781   0.0198169
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0025558    0.0012727   0.0038388
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.0068671    0.0024468   0.0112875
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.0078838   -0.0023448   0.0181124
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.0081146   -0.0051256   0.0213549
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.0010018   -0.0125007   0.0145043
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                -0.0012174   -0.0107424   0.0083077
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.0004315   -0.0085636   0.0094266
6-24 months                   ki1000108-IRC              INDIA          >=50 cm              NA                -0.0017902   -0.0634122   0.0598318
6-24 months                   ki1000109-EE               PAKISTAN       >=50 cm              NA                -0.0363636   -0.2251776   0.1524504
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.1065093    0.0473496   0.1656690
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                 0.0188889   -0.1516728   0.1894506
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.0933629    0.0515312   0.1351946
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.0464407    0.0063358   0.0865456
6-24 months                   ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0163857   -0.0075104   0.0402817
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.0245836    0.0164431   0.0327242
6-24 months                   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.0093630   -0.0131853   0.0319113
6-24 months                   ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.0471922    0.0335763   0.0608081
6-24 months                   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.0710322    0.0506344   0.0914301
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.0404580    0.0259929   0.0549231
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.0393993    0.0170649   0.0617338


### Parameter: PAF


agecat                        studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH     >=50 cm              NA                 0.0541872   -0.8558332   0.5179729
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA          >=50 cm              NA                 0.0720000   -0.5890148   0.4580390
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL          >=50 cm              NA                 0.3304954   -0.4197127   0.6842766
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                 0.2485380   -0.6216695   0.6517816
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                 0.3584906   -0.2592056   0.6731794
0-24 months (no birth wast)   ki1000108-IRC              INDIA          >=50 cm              NA                -0.0278962   -0.1617975   0.0905726
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN       >=50 cm              NA                 0.1929047   -0.3179000   0.5057266
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.2960103    0.1798369   0.3957281
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                 0.1646430   -0.4538312   0.5200122
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.4207012    0.1170063   0.6199440
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.2093954   -0.1605282   0.4614041
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0566328   -0.0080989   0.1172079
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0405741    0.0161245   0.0644162
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.2490863    0.1728418   0.3183029
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.1883488   -0.0242915   0.3568455
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.2707234    0.1792901   0.3519703
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.2164876    0.1458897   0.2812501
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.1433239    0.0648161   0.2152411
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.1559873    0.0661349   0.2371944
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA          >=50 cm              NA                -0.3931034   -1.8626455   0.3220477
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                 0.2142857   -0.5196227   0.5937499
0-6 months (no birth wast)    ki1000108-IRC              INDIA          >=50 cm              NA                -0.0386091   -0.2476479   0.1354060
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.2472812   -0.2681419   0.5532159
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                -0.0286144   -0.7842598   0.4070103
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                -0.3455090   -1.6009534   0.3039497
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0140446   -0.1218324   0.1334641
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0400861    0.0180766   0.0616023
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.2134619    0.0648967   0.3384238
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.3473251   -0.2471956   0.6584461
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.0921384   -0.0711743   0.2305521
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.0105843   -0.1428738   0.1434370
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                -0.0168329   -0.1574746   0.1067198
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.0149281   -0.3512459   0.2818727
6-24 months                   ki1000108-IRC              INDIA          >=50 cm              NA                -0.0056908   -0.2219676   0.1723070
6-24 months                   ki1000109-EE               PAKISTAN       >=50 cm              NA                -0.1000000   -0.7638855   0.3140144
6-24 months                   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.3481159    0.1169472   0.5187685
6-24 months                   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                 0.0557377   -0.6090591   0.4458679
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.5799815    0.2523288   0.7640467
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.3531430   -0.0272829   0.5926886
6-24 months                   ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0486337   -0.0250289   0.1170025
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.2622088    0.1713482   0.3431066
6-24 months                   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.0884014   -0.1506288   0.2777759
6-24 months                   ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.3810585    0.2633988   0.4799241
6-24 months                   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.2664422    0.1866141   0.3384356
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.2468649    0.1526934   0.3305700
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.1569658    0.0636909   0.2409487
