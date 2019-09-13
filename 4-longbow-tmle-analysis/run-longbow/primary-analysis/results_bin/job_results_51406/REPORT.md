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

**Outcome Variable:** ever_swasted

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

agecat                        studyid                    country                        birthlen      ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  -----------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  0       26     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  1        3     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   0      136     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   1        6     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               0       82     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               1        3     256
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  0       32     191
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  1        2     191
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         <48 cm                   0       80     191
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         <48 cm                   1        0     191
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               0       76     191
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               1        1     191
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          >=50 cm                  0       24     203
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          >=50 cm                  1        1     203
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          <48 cm                   0      103     203
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          <48 cm                   1        3     203
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          [48-50) cm               0       69     203
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          [48-50) cm               1        3     203
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          >=50 cm                  0       38     173
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          >=50 cm                  1        0     173
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          <48 cm                   0       69     173
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          <48 cm                   1        0     173
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          [48-50) cm               0       66     173
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          [48-50) cm               1        0     173
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           >=50 cm                  0       33     288
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           >=50 cm                  1        1     288
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           <48 cm                   0      140     288
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           <48 cm                   1        2     288
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           [48-50) cm               0      112     288
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           [48-50) cm               1        0     288
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  0       45     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  1        0     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   0      103     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   1        7     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               0       98     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               1        4     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  0       15     126
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  1        0     126
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   0       58     126
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   1        0     126
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               0       51     126
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               1        2     126
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  0       12     102
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  1        3     102
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   0       35     102
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   1       12     102
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               0       34     102
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               1        6     102
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          >=50 cm                  0      114     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          >=50 cm                  1       28     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          <48 cm                   0       91     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          <48 cm                   1       20     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          [48-50) cm               0      110     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          [48-50) cm               1       27     390
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       >=50 cm                  0       21      91
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       >=50 cm                  1        1      91
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       <48 cm                   0       36      91
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       <48 cm                   1        7      91
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       [48-50) cm               0       21      91
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       [48-50) cm               1        5      91
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       >=50 cm                  0        6      22
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       >=50 cm                  1        1      22
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       <48 cm                   0        7      22
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       <48 cm                   1        0      22
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       [48-50) cm               0        6      22
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       [48-50) cm               1        2      22
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  0      204    1489
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  1       15    1489
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   0      678    1489
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   1      117    1489
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               0      437    1489
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               1       38    1489
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  0       25     215
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  1        4     215
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   0       95     215
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   1       10     215
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               0       69     215
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               1       12     215
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  0      164     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  1        2     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   0      230     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   1        9     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               0      274     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               1        8     687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                  0      168     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                  1        0     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                   0      280     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                   1       10     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm               0      286     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm               1       10     754
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         >=50 cm                  0      657    1546
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         >=50 cm                  1      104    1546
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         <48 cm                   0      247    1546
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         <48 cm                   1       44    1546
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         [48-50) cm               0      414    1546
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         [48-50) cm               1       80    1546
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     >=50 cm                  0        1       6
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     >=50 cm                  1        0       6
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     <48 cm                   0        3       6
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     <48 cm                   1        0       6
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     [48-50) cm               0        2       6
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     [48-50) cm               1        0       6
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         >=50 cm                  0       63     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         >=50 cm                  1        0     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         <48 cm                   0       16     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         <48 cm                   1        0     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         [48-50) cm               0       36     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         [48-50) cm               1        0     115
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                  0        0       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                  1        0       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                   0        1       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                   1        0       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm               0        1       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm               1        0       2
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           >=50 cm                  0       15      17
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           >=50 cm                  1        0      17
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           <48 cm                   0        1      17
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           <48 cm                   1        0      17
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           [48-50) cm               0        1      17
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           [48-50) cm               1        0      17
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           >=50 cm                  0        1       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           >=50 cm                  1        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           <48 cm                   0        1       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           <48 cm                   1        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           [48-50) cm               0        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           [48-50) cm               1        0       2
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        >=50 cm                  0    15126   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        >=50 cm                  1      169   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        <48 cm                   0      185   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        <48 cm                   1        4   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        [48-50) cm               0     1362   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        [48-50) cm               1       31   16877
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  0     3882   13488
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  1      102   13488
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   0     4104   13488
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   1      173   13488
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               0     5035   13488
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               1      192   13488
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      >=50 cm                  0      418     821
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      >=50 cm                  1        2     821
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      <48 cm                   0      149     821
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      <48 cm                   1        6     821
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      [48-50) cm               0      243     821
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      [48-50) cm               1        3     821
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          >=50 cm                  0     1349    6400
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          >=50 cm                  1       40    6400
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          <48 cm                   0     2473    6400
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          <48 cm                   1      171    6400
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          [48-50) cm               0     2249    6400
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          [48-50) cm               1      118    6400
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                  0     1044    3011
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                  1       77    3011
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    <48 cm                   0      674    3011
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    <48 cm                   1       66    3011
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm               0     1044    3011
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm               1      106    3011
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  0     3672   26067
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  1       99   26067
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   0    15851   26067
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   1      630   26067
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               0     5606   26067
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               1      209   26067
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  0     1183    4464
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  1       47    4464
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   0     2036    4464
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   1      125    4464
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               0     1037    4464
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               1       36    4464
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  0       26     255
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  1        3     255
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   0      140     255
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   1        1     255
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               0       82     255
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               1        3     255
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  0       33     191
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  1        1     191
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         <48 cm                   0       80     191
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         <48 cm                   1        0     191
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               0       76     191
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               1        1     191
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          >=50 cm                  0       25     202
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          >=50 cm                  1        0     202
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          <48 cm                   0      105     202
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          <48 cm                   1        1     202
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          [48-50) cm               0       68     202
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          [48-50) cm               1        3     202
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          >=50 cm                  0       37     172
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          >=50 cm                  1        0     172
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          <48 cm                   0       69     172
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          <48 cm                   1        0     172
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          [48-50) cm               0       66     172
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          [48-50) cm               1        0     172
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           >=50 cm                  0       33     288
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           >=50 cm                  1        1     288
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           <48 cm                   0      142     288
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           <48 cm                   1        0     288
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           [48-50) cm               0      112     288
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           [48-50) cm               1        0     288
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  0       45     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  1        0     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   0      109     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   1        1     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               0       99     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               1        2     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  0       15     126
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  1        0     126
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   0       58     126
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   1        0     126
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               0       51     126
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               1        2     126
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  0       11      99
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  1        3      99
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   0       37      99
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   1        8      99
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               0       35      99
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               1        5      99
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          >=50 cm                  0      111     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          >=50 cm                  1       20     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          <48 cm                   0       97     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          <48 cm                   1       12     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          [48-50) cm               0      107     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          [48-50) cm               1       25     372
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       >=50 cm                  0       22      90
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       >=50 cm                  1        0      90
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       <48 cm                   0       39      90
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       <48 cm                   1        3      90
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       [48-50) cm               0       24      90
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       [48-50) cm               1        2      90
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       >=50 cm                  0        6      22
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       >=50 cm                  1        1      22
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       <48 cm                   0        7      22
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       <48 cm                   1        0      22
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       [48-50) cm               0        7      22
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       [48-50) cm               1        1      22
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  0      214    1463
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  1        2    1463
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   0      745    1463
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   1       33    1463
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               0      458    1463
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               1       11    1463
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  0       29     207
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  1        0     207
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   0       99     207
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   1        1     207
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               0       74     207
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               1        4     207
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  0      165     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  1        1     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   0      235     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   1        2     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               0      277     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               1        3     683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                  0      167     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                  1        0     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                   0      288     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                   1        0     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm               0      293     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm               1        1     749
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         >=50 cm                  0      718    1519
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         >=50 cm                  1       28    1519
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         <48 cm                   0      270    1519
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         <48 cm                   1       14    1519
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         [48-50) cm               0      461    1519
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         [48-50) cm               1       28    1519
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     >=50 cm                  0        1       6
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     >=50 cm                  1        0       6
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     <48 cm                   0        3       6
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     <48 cm                   1        0       6
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     [48-50) cm               0        2       6
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     [48-50) cm               1        0       6
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         >=50 cm                  0       62     113
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         >=50 cm                  1        0     113
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         <48 cm                   0       16     113
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         <48 cm                   1        0     113
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         [48-50) cm               0       35     113
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         [48-50) cm               1        0     113
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                  0        0       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                  1        0       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                   0        1       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                   1        0       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm               0        1       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm               1        0       2
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           >=50 cm                  0       15      17
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           >=50 cm                  1        0      17
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           <48 cm                   0        1      17
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           <48 cm                   1        0      17
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           [48-50) cm               0        1      17
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           [48-50) cm               1        0      17
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           >=50 cm                  0        1       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           >=50 cm                  1        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           <48 cm                   0        1       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           <48 cm                   1        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           [48-50) cm               0        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           [48-50) cm               1        0       2
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        >=50 cm                  0    14931   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        >=50 cm                  1      147   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        <48 cm                   0      186   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        <48 cm                   1        3   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        [48-50) cm               0     1361   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        [48-50) cm               1       29   16657
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  0     3870   13242
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  1       34   13242
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   0     4145   13242
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   1       42   13242
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               0     5096   13242
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               1       55   13242
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      >=50 cm                  0      405     793
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      >=50 cm                  1        0     793
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      <48 cm                   0      150     793
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      <48 cm                   1        1     793
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      [48-50) cm               0      236     793
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      [48-50) cm               1        1     793
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          >=50 cm                  0     1279    6052
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          >=50 cm                  1       17    6052
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          <48 cm                   0     2457    6052
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          <48 cm                   1       49    6052
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          [48-50) cm               0     2199    6052
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          [48-50) cm               1       51    6052
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm                  0     1086    2990
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm                  1       27    2990
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    <48 cm                   0      723    2990
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    <48 cm                   1       12    2990
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm               0     1115    2990
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm               1       27    2990
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  0     3679   25829
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  1       48   25829
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   0    16069   25829
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   1      268   25829
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               0     5649   25829
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               1      116   25829
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  0     1205    4359
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  1        4    4359
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   0     2082    4359
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   1       11    4359
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               0     1051    4359
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               1        6    4359
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  0       28     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  1        0     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   0      119     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   1        5     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               0       82     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               1        0     234
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  0       29     171
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  1        1     171
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         <48 cm                   0       68     171
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         <48 cm                   1        0     171
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               0       73     171
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               1        0     171
6-24 months                   ki0047075b-MAL-ED          INDIA                          >=50 cm                  0       23     192
6-24 months                   ki0047075b-MAL-ED          INDIA                          >=50 cm                  1        1     192
6-24 months                   ki0047075b-MAL-ED          INDIA                          <48 cm                   0       98     192
6-24 months                   ki0047075b-MAL-ED          INDIA                          <48 cm                   1        2     192
6-24 months                   ki0047075b-MAL-ED          INDIA                          [48-50) cm               0       68     192
6-24 months                   ki0047075b-MAL-ED          INDIA                          [48-50) cm               1        0     192
6-24 months                   ki0047075b-MAL-ED          NEPAL                          >=50 cm                  0       38     170
6-24 months                   ki0047075b-MAL-ED          NEPAL                          >=50 cm                  1        0     170
6-24 months                   ki0047075b-MAL-ED          NEPAL                          <48 cm                   0       66     170
6-24 months                   ki0047075b-MAL-ED          NEPAL                          <48 cm                   1        0     170
6-24 months                   ki0047075b-MAL-ED          NEPAL                          [48-50) cm               0       66     170
6-24 months                   ki0047075b-MAL-ED          NEPAL                          [48-50) cm               1        0     170
6-24 months                   ki0047075b-MAL-ED          PERU                           >=50 cm                  0       30     258
6-24 months                   ki0047075b-MAL-ED          PERU                           >=50 cm                  1        0     258
6-24 months                   ki0047075b-MAL-ED          PERU                           <48 cm                   0      129     258
6-24 months                   ki0047075b-MAL-ED          PERU                           <48 cm                   1        2     258
6-24 months                   ki0047075b-MAL-ED          PERU                           [48-50) cm               0       97     258
6-24 months                   ki0047075b-MAL-ED          PERU                           [48-50) cm               1        0     258
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  0       40     220
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  1        0     220
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   0       85     220
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   1        6     220
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               0       86     220
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               1        3     220
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  0       14     117
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  1        0     117
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   0       53     117
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   1        0     117
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               0       50     117
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               1        0     117
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  0       15     104
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  1        0     104
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   0       44     104
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   1        5     104
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               0       39     104
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               1        1     104
6-24 months                   ki1000108-IRC              INDIA                          >=50 cm                  0      133     391
6-24 months                   ki1000108-IRC              INDIA                          >=50 cm                  1        9     391
6-24 months                   ki1000108-IRC              INDIA                          <48 cm                   0      102     391
6-24 months                   ki1000108-IRC              INDIA                          <48 cm                   1        9     391
6-24 months                   ki1000108-IRC              INDIA                          [48-50) cm               0      133     391
6-24 months                   ki1000108-IRC              INDIA                          [48-50) cm               1        5     391
6-24 months                   ki1000109-EE               PAKISTAN                       >=50 cm                  0       19      88
6-24 months                   ki1000109-EE               PAKISTAN                       >=50 cm                  1        1      88
6-24 months                   ki1000109-EE               PAKISTAN                       <48 cm                   0       38      88
6-24 months                   ki1000109-EE               PAKISTAN                       <48 cm                   1        5      88
6-24 months                   ki1000109-EE               PAKISTAN                       [48-50) cm               0       22      88
6-24 months                   ki1000109-EE               PAKISTAN                       [48-50) cm               1        3      88
6-24 months                   ki1000109-ResPak           PAKISTAN                       >=50 cm                  0        5      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       >=50 cm                  1        0      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       <48 cm                   0        6      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       <48 cm                   1        0      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       [48-50) cm               0        4      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       [48-50) cm               1        1      16
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  0      196    1376
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  1       14    1376
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   0      638    1376
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   1       89    1376
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               0      411    1376
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               1       28    1376
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  0       21     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  1        4     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   0       76     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   1        9     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               0       62     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               1        8     180
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  0      148     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  1        1     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   0      213     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   1        7     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               0      241     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               1        5     615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                  0      165     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                  1        0     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                   0      270     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                   1       10     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm               0      275     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm               1       10     730
6-24 months                   ki1101329-Keneba           GAMBIA                         >=50 cm                  0      664    1487
6-24 months                   ki1101329-Keneba           GAMBIA                         >=50 cm                  1       79    1487
6-24 months                   ki1101329-Keneba           GAMBIA                         <48 cm                   0      235    1487
6-24 months                   ki1101329-Keneba           GAMBIA                         <48 cm                   1       33    1487
6-24 months                   ki1101329-Keneba           GAMBIA                         [48-50) cm               0      420    1487
6-24 months                   ki1101329-Keneba           GAMBIA                         [48-50) cm               1       56    1487
6-24 months                   ki1114097-CMIN             BANGLADESH                     >=50 cm                  0        0       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     >=50 cm                  1        0       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     <48 cm                   0        1       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     <48 cm                   1        0       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     [48-50) cm               0        0       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     [48-50) cm               1        0       1
6-24 months                   ki1114097-CMIN             BRAZIL                         >=50 cm                  0       63     115
6-24 months                   ki1114097-CMIN             BRAZIL                         >=50 cm                  1        0     115
6-24 months                   ki1114097-CMIN             BRAZIL                         <48 cm                   0       16     115
6-24 months                   ki1114097-CMIN             BRAZIL                         <48 cm                   1        0     115
6-24 months                   ki1114097-CMIN             BRAZIL                         [48-50) cm               0       36     115
6-24 months                   ki1114097-CMIN             BRAZIL                         [48-50) cm               1        0     115
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                  0        0       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                  1        0       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                   0        1       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                   1        0       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm               0        1       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm               1        0       2
6-24 months                   ki1114097-CMIN             PERU                           >=50 cm                  0       12      14
6-24 months                   ki1114097-CMIN             PERU                           >=50 cm                  1        0      14
6-24 months                   ki1114097-CMIN             PERU                           <48 cm                   0        1      14
6-24 months                   ki1114097-CMIN             PERU                           <48 cm                   1        0      14
6-24 months                   ki1114097-CMIN             PERU                           [48-50) cm               0        1      14
6-24 months                   ki1114097-CMIN             PERU                           [48-50) cm               1        0      14
6-24 months                   ki1114097-CONTENT          PERU                           >=50 cm                  0        1       2
6-24 months                   ki1114097-CONTENT          PERU                           >=50 cm                  1        0       2
6-24 months                   ki1114097-CONTENT          PERU                           <48 cm                   0        1       2
6-24 months                   ki1114097-CONTENT          PERU                           <48 cm                   1        0       2
6-24 months                   ki1114097-CONTENT          PERU                           [48-50) cm               0        0       2
6-24 months                   ki1114097-CONTENT          PERU                           [48-50) cm               1        0       2
6-24 months                   ki1119695-PROBIT           BELARUS                        >=50 cm                  0    15029   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        >=50 cm                  1       23   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        <48 cm                   0      178   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        <48 cm                   1        1   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        [48-50) cm               0     1365   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        [48-50) cm               1        2   16598
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  0     2965   10570
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  1       70   10570
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   0     3253   10570
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   1      134   10570
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               0     4006   10570
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               1      142   10570
6-24 months                   ki1135781-COHORTS          GUATEMALA                      >=50 cm                  0      360     727
6-24 months                   ki1135781-COHORTS          GUATEMALA                      >=50 cm                  1        2     727
6-24 months                   ki1135781-COHORTS          GUATEMALA                      <48 cm                   0      136     727
6-24 months                   ki1135781-COHORTS          GUATEMALA                      <48 cm                   1        6     727
6-24 months                   ki1135781-COHORTS          GUATEMALA                      [48-50) cm               0      221     727
6-24 months                   ki1135781-COHORTS          GUATEMALA                      [48-50) cm               1        2     727
6-24 months                   ki1135781-COHORTS          INDIA                          >=50 cm                  0     1319    6169
6-24 months                   ki1135781-COHORTS          INDIA                          >=50 cm                  1       23    6169
6-24 months                   ki1135781-COHORTS          INDIA                          <48 cm                   0     2407    6169
6-24 months                   ki1135781-COHORTS          INDIA                          <48 cm                   1      139    6169
6-24 months                   ki1135781-COHORTS          INDIA                          [48-50) cm               0     2209    6169
6-24 months                   ki1135781-COHORTS          INDIA                          [48-50) cm               1       72    6169
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                  0      986    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                  1       51    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    <48 cm                   0      644    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    <48 cm                   1       55    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm               0      984    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm               1       82    2802
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  0     2431   16969
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  1       54   16969
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   0    10214   16969
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   1      388   16969
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               0     3782   16969
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               1      100   16969
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  0     1180    4474
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  1       45    4474
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   0     2051    4474
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   1      121    4474
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               0     1045    4474
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               1       32    4474


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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/d1ebd5a8-3a93-42a0-90c3-e2a606f37a47/cc63b7ca-a530-49be-9f63-bb413ead3980/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d1ebd5a8-3a93-42a0-90c3-e2a606f37a47/cc63b7ca-a530-49be-9f63-bb413ead3980/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d1ebd5a8-3a93-42a0-90c3-e2a606f37a47/cc63b7ca-a530-49be-9f63-bb413ead3980/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d1ebd5a8-3a93-42a0-90c3-e2a606f37a47/cc63b7ca-a530-49be-9f63-bb413ead3980/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-IRC             INDIA         >=50 cm              NA                0.1951783   0.1292367   0.2611199
0-24 months (no birth wast)   ki1000108-IRC             INDIA         <48 cm               NA                0.1784774   0.1059371   0.2510177
0-24 months (no birth wast)   ki1000108-IRC             INDIA         [48-50) cm           NA                0.1971156   0.1299268   0.2643043
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.0685928   0.0283638   0.1088219
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.1471442   0.1097575   0.1845309
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.0802033   0.0592320   0.1011746
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.1337417   0.1094664   0.1580169
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.1553379   0.1137606   0.1969152
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.1620677   0.1294927   0.1946428
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0253638   0.0204524   0.0302753
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0425468   0.0363752   0.0487185
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0365026   0.0313587   0.0416465
0-24 months (no birth wast)   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0259449   0.0178542   0.0340356
0-24 months (no birth wast)   ki1135781-COHORTS         INDIA         <48 cm               NA                0.0657476   0.0562302   0.0752649
0-24 months (no birth wast)   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.0508448   0.0417505   0.0599391
0-24 months (no birth wast)   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0677436   0.0530076   0.0824796
0-24 months (no birth wast)   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.0902458   0.0697425   0.1107491
0-24 months (no birth wast)   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.0922627   0.0755212   0.1090042
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0250764   0.0191583   0.0309946
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.0384144   0.0351728   0.0416559
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0357524   0.0301298   0.0413750
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0376312   0.0257472   0.0495152
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.0586058   0.0480093   0.0692023
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0329368   0.0208930   0.0449807
0-6 months (no birth wast)    ki1000108-IRC             INDIA         >=50 cm              NA                0.1479209   0.0857197   0.2101222
0-6 months (no birth wast)    ki1000108-IRC             INDIA         <48 cm               NA                0.1060294   0.0465818   0.1654770
0-6 months (no birth wast)    ki1000108-IRC             INDIA         [48-50) cm           NA                0.1847561   0.1174066   0.2521057
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0368460   0.0232137   0.0504783
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA        <48 cm               NA                0.0504504   0.0252463   0.0756545
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.0565566   0.0358828   0.0772304
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0086352   0.0057242   0.0115461
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0101415   0.0071133   0.0131697
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0106903   0.0078842   0.0134964
0-6 months (no birth wast)    ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0130321   0.0068758   0.0191883
0-6 months (no birth wast)    ki1135781-COHORTS         INDIA         <48 cm               NA                0.0198120   0.0143465   0.0252775
0-6 months (no birth wast)    ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.0226850   0.0165220   0.0288480
0-6 months (no birth wast)    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0238049   0.0149130   0.0326969
0-6 months (no birth wast)    ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.0155748   0.0067108   0.0244389
0-6 months (no birth wast)    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.0237771   0.0149513   0.0326030
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0126705   0.0085399   0.0168011
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.0162928   0.0141229   0.0184626
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0197939   0.0153870   0.0242009
6-24 months                   ki1000108-IRC             INDIA         >=50 cm              NA                0.0633803   0.0232549   0.1035056
6-24 months                   ki1000108-IRC             INDIA         <48 cm               NA                0.0810811   0.0302369   0.1319252
6-24 months                   ki1000108-IRC             INDIA         [48-50) cm           NA                0.0362319   0.0050145   0.0674493
6-24 months                   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.0647868   0.0251855   0.1043881
6-24 months                   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.1235847   0.0850552   0.1621142
6-24 months                   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.0627962   0.0433150   0.0822775
6-24 months                   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.1040332   0.0820400   0.1260265
6-24 months                   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.1292218   0.0886723   0.1697712
6-24 months                   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.1165193   0.0877948   0.1452438
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0227732   0.0174181   0.0281282
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0409163   0.0341443   0.0476883
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0339054   0.0283508   0.0394600
6-24 months                   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0165752   0.0097975   0.0233528
6-24 months                   ki1135781-COHORTS         INDIA         <48 cm               NA                0.0544760   0.0456550   0.0632969
6-24 months                   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.0322867   0.0247914   0.0397819
6-24 months                   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0483165   0.0351760   0.0614569
6-24 months                   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.0809765   0.0609412   0.1010118
6-24 months                   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.0766083   0.0606868   0.0925297
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0206921   0.0140360   0.0273483
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.0370628   0.0331132   0.0410124
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0260097   0.0203447   0.0316747
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0359629   0.0242619   0.0476639
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.0563354   0.0454068   0.0672640
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0294185   0.0187673   0.0400697


### Parameter: E(Y)


agecat                        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-IRC             INDIA         NA                   NA                0.1923077   0.1531430   0.2314724
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.1141706   0.0903032   0.1380379
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA        NA                   NA                0.1474774   0.1297967   0.1651581
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0346234   0.0315379   0.0377089
0-24 months (no birth wast)   ki1135781-COHORTS         INDIA         NA                   NA                0.0514063   0.0459957   0.0568168
0-24 months (no birth wast)   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0826968   0.0728574   0.0925361
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0359842   0.0333710   0.0385974
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0465950   0.0398949   0.0532951
0-6 months (no birth wast)    ki1000108-IRC             INDIA         NA                   NA                0.1532258   0.1165727   0.1898789
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA        NA                   NA                0.0460829   0.0355357   0.0566302
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0098928   0.0082070   0.0115785
0-6 months (no birth wast)    ki1135781-COHORTS         INDIA         NA                   NA                0.0193325   0.0158632   0.0228017
0-6 months (no birth wast)    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0220736   0.0168064   0.0273407
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0167254   0.0148982   0.0185526
6-24 months                   ki1000108-IRC             INDIA         NA                   NA                0.0588235   0.0354714   0.0821757
6-24 months                   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0952035   0.0698704   0.1205365
6-24 months                   ki1101329-Keneba          GAMBIA        NA                   NA                0.1129792   0.0968836   0.1290747
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0327342   0.0293418   0.0361265
6-24 months                   ki1135781-COHORTS         INDIA         NA                   NA                0.0379316   0.0331642   0.0426990
6-24 months                   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0670949   0.0578297   0.0763601
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0319406   0.0290104   0.0348708
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0442557   0.0375111   0.0510003


### Parameter: RR


agecat                        studyid                   country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.9144325   0.5385398   1.552693
0-24 months (no birth wast)   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           1.0099255   0.6245765   1.633026
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           2.1451830   1.0986057   4.188773
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           1.1692657   0.6196455   2.206394
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           1.1614772   0.8410583   1.603966
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           1.2117970   0.9247651   1.587919
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           1.6774628   1.3169942   2.136594
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           1.4391612   1.1326630   1.828598
0-24 months (no birth wast)   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           2.5341233   1.7970933   3.573427
0-24 months (no birth wast)   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm           1.9597226   1.3681566   2.807071
0-24 months (no birth wast)   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           1.3321663   0.9728412   1.824210
0-24 months (no birth wast)   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           1.3619390   1.0262169   1.807491
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           1.5318898   1.1956818   1.962635
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           1.4257360   1.0798714   1.882375
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           1.5573719   1.0767658   2.252493
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           0.8752530   0.5395948   1.419709
0-6 months (no birth wast)    ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.7167978   0.3552635   1.446248
0-6 months (no birth wast)    ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           1.2490195   0.7159944   2.178857
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           1.3692222   0.7360479   2.547075
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           1.5349457   0.9128527   2.580984
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           1.1744428   0.7486353   1.842440
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           1.2379993   0.8076501   1.897656
0-6 months (no birth wast)    ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           1.5202512   0.8797730   2.627000
0-6 months (no birth wast)    ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm           1.7407077   1.0094277   3.001764
0-6 months (no birth wast)    ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           0.6542693   0.3311502   1.292671
0-6 months (no birth wast)    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           0.9988324   0.5898774   1.691311
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           1.2858815   0.9113837   1.814265
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           1.5622066   1.0482002   2.328266
6-24 months                   ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1000108-IRC             INDIA         <48 cm               >=50 cm           1.2792793   0.5247750   3.118585
6-24 months                   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           0.5716586   0.1962438   1.665243
6-24 months                   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           1.9075598   0.9242290   3.937103
6-24 months                   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           0.9692751   0.5544781   1.694376
6-24 months                   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           1.2421199   0.8512294   1.812510
6-24 months                   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           1.1200200   0.8095654   1.549529
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           1.7966897   1.3477021   2.395258
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           1.4888330   1.1178300   1.982970
6-24 months                   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           3.2865998   2.1173375   5.101566
6-24 months                   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm           1.9478935   1.2174024   3.116709
6-24 months                   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           1.6759604   1.1607329   2.419888
6-24 months                   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           1.5855521   1.1265745   2.231522
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           1.7911534   1.2810619   2.504352
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           1.2569825   0.8663675   1.823712
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           1.5664851   1.0662839   2.301334
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           0.8180232   0.5019847   1.333033


### Parameter: PAR


agecat                        studyid                   country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0028706   -0.0552807   0.0495394
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                 0.0455777    0.0019169   0.0892386
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.0137357   -0.0041357   0.0316071
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.0092596    0.0048453   0.0136739
0-24 months (no birth wast)   ki1135781-COHORTS         INDIA         >=50 cm              NA                 0.0254614    0.0174546   0.0334681
0-24 months (no birth wast)   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                 0.0149532    0.0026501   0.0272562
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                 0.0109077    0.0054188   0.0163967
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.0089638   -0.0015609   0.0194885
0-6 months (no birth wast)    ki1000108-IRC             INDIA         >=50 cm              NA                 0.0053049   -0.0448727   0.0554824
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.0092369   -0.0014462   0.0199200
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.0012576   -0.0012545   0.0037697
0-6 months (no birth wast)    ki1135781-COHORTS         INDIA         >=50 cm              NA                 0.0063004    0.0005038   0.0120970
0-6 months (no birth wast)    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0017314   -0.0085902   0.0051275
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                 0.0040549    0.0001928   0.0079170
6-24 months                   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0045568   -0.0359562   0.0268427
6-24 months                   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                 0.0304167   -0.0112531   0.0720865
6-24 months                   ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.0089459   -0.0070512   0.0249430
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.0099610    0.0050791   0.0148429
6-24 months                   ki1135781-COHORTS         INDIA         >=50 cm              NA                 0.0213564    0.0144114   0.0283014
6-24 months                   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                 0.0187785    0.0073732   0.0301837
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                 0.0112485    0.0051356   0.0173613
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.0082928   -0.0021898   0.0187753


### Parameter: PAF


agecat                        studyid                   country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0149273   -0.3275147   0.2240557
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                 0.3992074   -0.0871215   0.6679748
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.0931376   -0.0362381   0.2063606
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.2674366    0.1306251   0.3827185
0-24 months (no birth wast)   ki1135781-COHORTS         INDIA         >=50 cm              NA                 0.4952969    0.3240380   0.6231664
0-24 months (no birth wast)   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                 0.1808190    0.0191257   0.3158578
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                 0.3031261    0.1324740   0.4402089
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.1923765   -0.0667424   0.3885537
0-6 months (no birth wast)    ki1000108-IRC             INDIA         >=50 cm              NA                 0.0346212   -0.3554187   0.3124219
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.2004415   -0.0637731   0.3990319
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.1271237   -0.1665218   0.3468506
0-6 months (no birth wast)    ki1135781-COHORTS         INDIA         >=50 cm              NA                 0.3258973   -0.0430179   0.5643273
0-6 months (no birth wast)    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0784357   -0.4378275   0.1911244
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                 0.2424394   -0.0265546   0.4409474
6-24 months                   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0774648   -0.7670506   0.3430124
6-24 months                   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                 0.3194913   -0.2478521   0.6288886
6-24 months                   ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.0791820   -0.0736028   0.2102239
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.3042997    0.1417315   0.4360751
6-24 months                   ki1135781-COHORTS         INDIA         >=50 cm              NA                 0.5630246    0.3559204   0.7035344
6-24 months                   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                 0.2798792    0.0926412   0.4284797
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                 0.3521679    0.1278516   0.5187902
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.1873833   -0.0849200   0.3913413
