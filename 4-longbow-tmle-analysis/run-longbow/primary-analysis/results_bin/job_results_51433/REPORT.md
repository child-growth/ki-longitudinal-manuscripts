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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        birthlen      pers_wast   n_cell       n
------------  -------------------------  -----------------------------  -----------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm               0       26     241
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm               1        3     241
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                0      120     241
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                1        8     241
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm            0       83     241
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm            1        1     241
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm               0       33     180
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm               1        0     180
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm                0       72     180
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm                1        1     180
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm            0       74     180
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm            1        0     180
0-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm               0       23     197
0-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm               1        1     197
0-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm                0       97     197
0-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm                1        7     197
0-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm            0       61     197
0-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm            1        8     197
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm               0       37     172
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm               1        1     172
0-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm                0       68     172
0-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm                1        0     172
0-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm            0       66     172
0-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm            1        0     172
0-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm               0       32     271
0-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm               1        0     271
0-24 months   ki0047075b-MAL-ED          PERU                           <48 cm                0      135     271
0-24 months   ki0047075b-MAL-ED          PERU                           <48 cm                1        1     271
0-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm            0      103     271
0-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm            1        0     271
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm               0       41     232
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm               1        0     232
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                0       96     232
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                1        1     232
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm            0       93     232
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm            1        1     232
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm               0       15     121
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm               1        0     121
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                0       54     121
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                1        0     121
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm            0       52     121
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm            1        0     121
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm               0       15     104
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm               1        0     104
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                0       44     104
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                1        5     104
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm            0       39     104
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm            1        1     104
0-24 months   ki1000108-IRC              INDIA                          >=50 cm               0      124     391
0-24 months   ki1000108-IRC              INDIA                          >=50 cm               1       18     391
0-24 months   ki1000108-IRC              INDIA                          <48 cm                0      100     391
0-24 months   ki1000108-IRC              INDIA                          <48 cm                1       11     391
0-24 months   ki1000108-IRC              INDIA                          [48-50) cm            0      121     391
0-24 months   ki1000108-IRC              INDIA                          [48-50) cm            1       17     391
0-24 months   ki1000109-EE               PAKISTAN                       >=50 cm               0       20      90
0-24 months   ki1000109-EE               PAKISTAN                       >=50 cm               1        2      90
0-24 months   ki1000109-EE               PAKISTAN                       <48 cm                0       41      90
0-24 months   ki1000109-EE               PAKISTAN                       <48 cm                1        2      90
0-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm            0       24      90
0-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm            1        1      90
0-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm               0        4      18
0-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm               1        1      18
0-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm                0        6      18
0-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm                1        0      18
0-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm            0        6      18
0-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm            1        1      18
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm               0      198    1353
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm               1        8    1353
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                0      634    1353
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                1       78    1353
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm            0      410    1353
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm            1       25    1353
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm               0       22     179
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm               1        3     179
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                0       73     179
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                1       11     179
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm            0       65     179
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm            1        5     179
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm               0      153     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm               1        2     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                0      218     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                1        8     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm            0      254     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm            1        5     640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm               0      165     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm               1        0     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                0      268     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                1       12     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm            0      271     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm            1       14     730
0-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm               0      717    1506
0-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm               1       24    1506
0-24 months   ki1101329-Keneba           GAMBIA                         <48 cm                0      264    1506
0-24 months   ki1101329-Keneba           GAMBIA                         <48 cm                1       15    1506
0-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm            0      458    1506
0-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm            1       28    1506
0-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm               0        0       1
0-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm               1        0       1
0-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm                0        1       1
0-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm                1        0       1
0-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm            0        0       1
0-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm            1        0       1
0-24 months   ki1114097-CMIN             BRAZIL                         >=50 cm               0       63     115
0-24 months   ki1114097-CMIN             BRAZIL                         >=50 cm               1        0     115
0-24 months   ki1114097-CMIN             BRAZIL                         <48 cm                0       16     115
0-24 months   ki1114097-CMIN             BRAZIL                         <48 cm                1        0     115
0-24 months   ki1114097-CMIN             BRAZIL                         [48-50) cm            0       36     115
0-24 months   ki1114097-CMIN             BRAZIL                         [48-50) cm            1        0     115
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm               0        0       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm               1        0       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                0        1       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                1        0       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm            0        1       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm            1        0       2
0-24 months   ki1114097-CMIN             PERU                           >=50 cm               0       12      15
0-24 months   ki1114097-CMIN             PERU                           >=50 cm               1        1      15
0-24 months   ki1114097-CMIN             PERU                           <48 cm                0        1      15
0-24 months   ki1114097-CMIN             PERU                           <48 cm                1        0      15
0-24 months   ki1114097-CMIN             PERU                           [48-50) cm            0        1      15
0-24 months   ki1114097-CMIN             PERU                           [48-50) cm            1        0      15
0-24 months   ki1114097-CONTENT          PERU                           >=50 cm               0        1       2
0-24 months   ki1114097-CONTENT          PERU                           >=50 cm               1        0       2
0-24 months   ki1114097-CONTENT          PERU                           <48 cm                0        1       2
0-24 months   ki1114097-CONTENT          PERU                           <48 cm                1        0       2
0-24 months   ki1114097-CONTENT          PERU                           [48-50) cm            0        0       2
0-24 months   ki1114097-CONTENT          PERU                           [48-50) cm            1        0       2
0-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm               0    14883   16581
0-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm               1      156   16581
0-24 months   ki1119695-PROBIT           BELARUS                        <48 cm                0      180   16581
0-24 months   ki1119695-PROBIT           BELARUS                        <48 cm                1        0   16581
0-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm            0     1359   16581
0-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm            1        3   16581
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm               0     2609    9245
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm               1       31    9245
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                0     2881    9245
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                1       65    9245
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm            0     3590    9245
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm            1       69    9245
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm               0      340     699
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm               1        7     699
0-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm                0      136     699
0-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm                1        5     699
0-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm            0      206     699
0-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm            1        5     699
0-24 months   ki1135781-COHORTS          INDIA                          >=50 cm               0     1096    5267
0-24 months   ki1135781-COHORTS          INDIA                          >=50 cm               1       76    5267
0-24 months   ki1135781-COHORTS          INDIA                          <48 cm                0     1865    5267
0-24 months   ki1135781-COHORTS          INDIA                          <48 cm                1      253    5267
0-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm            0     1799    5267
0-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm            1      178    5267
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm               0      998    2804
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm               1       39    2804
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm                0      653    2804
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm                1       48    2804
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm            0     1010    2804
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm            1       56    2804
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm               0     1995   15490
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm               1      124   15490
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                0     9032   15490
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                1      565   15490
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm            0     3590   15490
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm            1      184   15490
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm               0     1131    4410
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm               1       67    4410
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                0     1922    4410
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                1      218    4410
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm            0     1013    4410
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm            1       59    4410
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm               0       26     241
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm               1        3     241
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                0      126     241
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                1        2     241
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm            0       82     241
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm            1        2     241
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm               0       33     180
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm               1        0     180
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm                0       73     180
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm                1        0     180
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm            0       74     180
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm            1        0     180
0-6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm               0       23     196
0-6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm               1        1     196
0-6 months    ki0047075b-MAL-ED          INDIA                          <48 cm                0       97     196
0-6 months    ki0047075b-MAL-ED          INDIA                          <48 cm                1        6     196
0-6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm            0       63     196
0-6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm            1        6     196
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm               0       36     172
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm               1        2     172
0-6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm                0       67     172
0-6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm                1        1     172
0-6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm            0       66     172
0-6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm            1        0     172
0-6 months    ki0047075b-MAL-ED          PERU                           >=50 cm               0       32     271
0-6 months    ki0047075b-MAL-ED          PERU                           >=50 cm               1        0     271
0-6 months    ki0047075b-MAL-ED          PERU                           <48 cm                0      136     271
0-6 months    ki0047075b-MAL-ED          PERU                           <48 cm                1        0     271
0-6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm            0      103     271
0-6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm            1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm               0       41     231
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm               1        0     231
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                0       96     231
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                1        0     231
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm            0       92     231
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm            1        2     231
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm               0       15     121
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm               1        0     121
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                0       54     121
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                1        0     121
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm            0       52     121
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm            1        0     121
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm               0       11     101
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm               1        3     101
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                0       39     101
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                1        8     101
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm            0       38     101
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm            1        2     101
0-6 months    ki1000108-IRC              INDIA                          >=50 cm               0      111     385
0-6 months    ki1000108-IRC              INDIA                          >=50 cm               1       28     385
0-6 months    ki1000108-IRC              INDIA                          <48 cm                0       94     385
0-6 months    ki1000108-IRC              INDIA                          <48 cm                1       14     385
0-6 months    ki1000108-IRC              INDIA                          [48-50) cm            0      117     385
0-6 months    ki1000108-IRC              INDIA                          [48-50) cm            1       21     385
0-6 months    ki1000109-EE               PAKISTAN                       >=50 cm               0       21      88
0-6 months    ki1000109-EE               PAKISTAN                       >=50 cm               1        1      88
0-6 months    ki1000109-EE               PAKISTAN                       <48 cm                0       37      88
0-6 months    ki1000109-EE               PAKISTAN                       <48 cm                1        4      88
0-6 months    ki1000109-EE               PAKISTAN                       [48-50) cm            0       24      88
0-6 months    ki1000109-EE               PAKISTAN                       [48-50) cm            1        1      88
0-6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm               0        4      17
0-6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm               1        0      17
0-6 months    ki1000109-ResPak           PAKISTAN                       <48 cm                0        6      17
0-6 months    ki1000109-ResPak           PAKISTAN                       <48 cm                1        0      17
0-6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm            0        6      17
0-6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm            1        1      17
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm               0        8      68
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm               1        1      68
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                0       31      68
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                1        2      68
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm            0       25      68
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm            1        1      68
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm               0      152     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm               1        3     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                0      219     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                1        5     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm            0      252     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm            1        6     637
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm               0       45     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm               1        0     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                0       95     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                1        1     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm            0      105     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm            1        4     250
0-6 months    ki1101329-Keneba           GAMBIA                         >=50 cm               0      689    1410
0-6 months    ki1101329-Keneba           GAMBIA                         >=50 cm               1       11    1410
0-6 months    ki1101329-Keneba           GAMBIA                         <48 cm                0      247    1410
0-6 months    ki1101329-Keneba           GAMBIA                         <48 cm                1        7    1410
0-6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm            0      442    1410
0-6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm            1       14    1410
0-6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm               0        0       1
0-6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm               1        0       1
0-6 months    ki1114097-CMIN             BANGLADESH                     <48 cm                0        1       1
0-6 months    ki1114097-CMIN             BANGLADESH                     <48 cm                1        0       1
0-6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm            0        0       1
0-6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm            1        0       1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm               0        0       1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm               1        0       1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                0        0       1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                1        0       1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm            0        1       1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm            1        0       1
0-6 months    ki1114097-CMIN             PERU                           >=50 cm               0       12      15
0-6 months    ki1114097-CMIN             PERU                           >=50 cm               1        1      15
0-6 months    ki1114097-CMIN             PERU                           <48 cm                0        1      15
0-6 months    ki1114097-CMIN             PERU                           <48 cm                1        0      15
0-6 months    ki1114097-CMIN             PERU                           [48-50) cm            0        1      15
0-6 months    ki1114097-CMIN             PERU                           [48-50) cm            1        0      15
0-6 months    ki1114097-CONTENT          PERU                           >=50 cm               0        1       2
0-6 months    ki1114097-CONTENT          PERU                           >=50 cm               1        0       2
0-6 months    ki1114097-CONTENT          PERU                           <48 cm                0        1       2
0-6 months    ki1114097-CONTENT          PERU                           <48 cm                1        0       2
0-6 months    ki1114097-CONTENT          PERU                           [48-50) cm            0        0       2
0-6 months    ki1114097-CONTENT          PERU                           [48-50) cm            1        0       2
0-6 months    ki1119695-PROBIT           BELARUS                        >=50 cm               0    11213   13545
0-6 months    ki1119695-PROBIT           BELARUS                        >=50 cm               1     1106   13545
0-6 months    ki1119695-PROBIT           BELARUS                        <48 cm                0      142   13545
0-6 months    ki1119695-PROBIT           BELARUS                        <48 cm                1        2   13545
0-6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm            0     1044   13545
0-6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm            1       38   13545
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm               0      207     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm               1        3     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                0      156     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                1        6     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm            0      233     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm            1        5     610
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm               0      274     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm               1       19     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm                0      191     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm                1       15     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm            0      336     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm            1       18     853
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm               0        4      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm               1        1      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                0       22      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                1        1      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm            0       18      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm            1        0      46
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm               0       26     241
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm               1        3     241
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                0      120     241
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                1        8     241
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm            0       83     241
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm            1        1     241
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm               0       33     180
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm               1        0     180
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm                0       72     180
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm                1        1     180
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm            0       74     180
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm            1        0     180
6-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm               0       23     197
6-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm               1        1     197
6-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm                0       97     197
6-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm                1        7     197
6-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm            0       61     197
6-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm            1        8     197
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm               0       37     172
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm               1        1     172
6-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm                0       68     172
6-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm                1        0     172
6-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm            0       66     172
6-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm            1        0     172
6-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm               0       32     271
6-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm               1        0     271
6-24 months   ki0047075b-MAL-ED          PERU                           <48 cm                0      135     271
6-24 months   ki0047075b-MAL-ED          PERU                           <48 cm                1        1     271
6-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm            0      103     271
6-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm            1        0     271
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm               0       41     232
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm               1        0     232
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                0       96     232
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                1        1     232
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm            0       93     232
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm            1        1     232
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm               0       15     121
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm               1        0     121
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                0       54     121
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                1        0     121
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm            0       52     121
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm            1        0     121
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm               0       15     104
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm               1        0     104
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                0       44     104
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                1        5     104
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm            0       39     104
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm            1        1     104
6-24 months   ki1000108-IRC              INDIA                          >=50 cm               0      124     391
6-24 months   ki1000108-IRC              INDIA                          >=50 cm               1       18     391
6-24 months   ki1000108-IRC              INDIA                          <48 cm                0      100     391
6-24 months   ki1000108-IRC              INDIA                          <48 cm                1       11     391
6-24 months   ki1000108-IRC              INDIA                          [48-50) cm            0      121     391
6-24 months   ki1000108-IRC              INDIA                          [48-50) cm            1       17     391
6-24 months   ki1000109-EE               PAKISTAN                       >=50 cm               0       20      90
6-24 months   ki1000109-EE               PAKISTAN                       >=50 cm               1        2      90
6-24 months   ki1000109-EE               PAKISTAN                       <48 cm                0       41      90
6-24 months   ki1000109-EE               PAKISTAN                       <48 cm                1        2      90
6-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm            0       24      90
6-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm            1        1      90
6-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm               0        4      18
6-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm               1        1      18
6-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm                0        6      18
6-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm                1        0      18
6-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm            0        6      18
6-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm            1        1      18
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm               0      198    1353
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm               1        8    1353
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                0      634    1353
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                1       78    1353
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm            0      410    1353
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm            1       25    1353
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm               0       22     179
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm               1        3     179
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                0       73     179
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                1       11     179
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm            0       65     179
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm            1        5     179
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm               0      153     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm               1        2     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                0      218     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                1        8     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm            0      254     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm            1        5     640
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm               0      165     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm               1        0     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                0      268     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                1       12     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm            0      271     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm            1       14     730
6-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm               0      717    1506
6-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm               1       24    1506
6-24 months   ki1101329-Keneba           GAMBIA                         <48 cm                0      264    1506
6-24 months   ki1101329-Keneba           GAMBIA                         <48 cm                1       15    1506
6-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm            0      458    1506
6-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm            1       28    1506
6-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm               0        0       1
6-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm               1        0       1
6-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm                0        1       1
6-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm                1        0       1
6-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm            0        0       1
6-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm            1        0       1
6-24 months   ki1114097-CMIN             BRAZIL                         >=50 cm               0       63     115
6-24 months   ki1114097-CMIN             BRAZIL                         >=50 cm               1        0     115
6-24 months   ki1114097-CMIN             BRAZIL                         <48 cm                0       16     115
6-24 months   ki1114097-CMIN             BRAZIL                         <48 cm                1        0     115
6-24 months   ki1114097-CMIN             BRAZIL                         [48-50) cm            0       36     115
6-24 months   ki1114097-CMIN             BRAZIL                         [48-50) cm            1        0     115
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm               0        0       2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm               1        0       2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                0        1       2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                1        0       2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm            0        1       2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm            1        0       2
6-24 months   ki1114097-CMIN             PERU                           >=50 cm               0       12      15
6-24 months   ki1114097-CMIN             PERU                           >=50 cm               1        1      15
6-24 months   ki1114097-CMIN             PERU                           <48 cm                0        1      15
6-24 months   ki1114097-CMIN             PERU                           <48 cm                1        0      15
6-24 months   ki1114097-CMIN             PERU                           [48-50) cm            0        1      15
6-24 months   ki1114097-CMIN             PERU                           [48-50) cm            1        0      15
6-24 months   ki1114097-CONTENT          PERU                           >=50 cm               0        1       2
6-24 months   ki1114097-CONTENT          PERU                           >=50 cm               1        0       2
6-24 months   ki1114097-CONTENT          PERU                           <48 cm                0        1       2
6-24 months   ki1114097-CONTENT          PERU                           <48 cm                1        0       2
6-24 months   ki1114097-CONTENT          PERU                           [48-50) cm            0        0       2
6-24 months   ki1114097-CONTENT          PERU                           [48-50) cm            1        0       2
6-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm               0    14883   16581
6-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm               1      156   16581
6-24 months   ki1119695-PROBIT           BELARUS                        <48 cm                0      180   16581
6-24 months   ki1119695-PROBIT           BELARUS                        <48 cm                1        0   16581
6-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm            0     1359   16581
6-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm            1        3   16581
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm               0     2609    9245
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm               1       31    9245
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                0     2881    9245
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                1       65    9245
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm            0     3590    9245
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm            1       69    9245
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm               0      340     699
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm               1        7     699
6-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm                0      136     699
6-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm                1        5     699
6-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm            0      206     699
6-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm            1        5     699
6-24 months   ki1135781-COHORTS          INDIA                          >=50 cm               0     1096    5267
6-24 months   ki1135781-COHORTS          INDIA                          >=50 cm               1       76    5267
6-24 months   ki1135781-COHORTS          INDIA                          <48 cm                0     1865    5267
6-24 months   ki1135781-COHORTS          INDIA                          <48 cm                1      253    5267
6-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm            0     1799    5267
6-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm            1      178    5267
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm               0      998    2804
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm               1       39    2804
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm                0      653    2804
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm                1       48    2804
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm            0     1010    2804
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm            1       56    2804
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm               0     1995   15490
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm               1      124   15490
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                0     9032   15490
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                1      565   15490
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm            0     3590   15490
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm            1      184   15490
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm               0     1131    4410
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm               1       67    4410
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                0     1922    4410
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                1      218    4410
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm            0     1013    4410
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm            1       59    4410


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/eb3e1818-204c-4dba-adf4-e976a5db9c2d/51a6df98-ebb1-42b4-9fa9-7e69169919e4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/eb3e1818-204c-4dba-adf4-e976a5db9c2d/51a6df98-ebb1-42b4-9fa9-7e69169919e4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/eb3e1818-204c-4dba-adf4-e976a5db9c2d/51a6df98-ebb1-42b4-9fa9-7e69169919e4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/eb3e1818-204c-4dba-adf4-e976a5db9c2d/51a6df98-ebb1-42b4-9fa9-7e69169919e4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.1246240   0.0697545   0.1794935
0-24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.0933969   0.0367392   0.1500547
0-24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.1201923   0.0646593   0.1757253
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.0388350   0.0114714   0.0661985
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.1095506   0.0778598   0.1412413
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.0574713   0.0276190   0.0873235
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0318308   0.0191148   0.0445468
0-24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.0554172   0.0286653   0.0821691
0-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.0578336   0.0369835   0.0786837
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0114871   0.0074046   0.0155695
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0229044   0.0175531   0.0282557
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0187957   0.0143645   0.0232269
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0201729   0.0053698   0.0349760
0-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.0354610   0.0049129   0.0660091
0-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.0236967   0.0031589   0.0442345
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0653185   0.0509534   0.0796836
0-24 months   ki1135781-COHORTS         INDIA         <48 cm               NA                0.1200249   0.1060681   0.1339816
0-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.0903153   0.0774445   0.1031861
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0361304   0.0247399   0.0475208
0-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.0717404   0.0527710   0.0907097
0-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.0523251   0.0389540   0.0656961
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0563556   0.0448044   0.0679069
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.0589134   0.0538376   0.0639892
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0494289   0.0416540   0.0572038
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0550406   0.0401128   0.0699684
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.1029094   0.0878043   0.1180144
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0535988   0.0387536   0.0684440
0-6 months    ki1000108-IRC             INDIA         >=50 cm              NA                0.2012791   0.1341614   0.2683969
0-6 months    ki1000108-IRC             INDIA         <48 cm               NA                0.1323170   0.0676560   0.1969780
0-6 months    ki1000108-IRC             INDIA         [48-50) cm           NA                0.1524804   0.0921703   0.2127904
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0157143   0.0064979   0.0249307
0-6 months    ki1101329-Keneba          GAMBIA        <48 cm               NA                0.0275591   0.0074195   0.0476986
0-6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.0307018   0.0148627   0.0465408
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0651968   0.0369827   0.0934108
0-6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.0722729   0.0370548   0.1074911
0-6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.0517258   0.0288282   0.0746235
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.1282099   0.0730756   0.1833441
6-24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.1035617   0.0469614   0.1601619
6-24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.1234998   0.0688750   0.1781245
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.0388350   0.0114714   0.0661985
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.1095506   0.0778598   0.1412413
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.0574713   0.0276190   0.0873235
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0320729   0.0193198   0.0448260
6-24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.0550458   0.0284591   0.0816326
6-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.0576299   0.0369180   0.0783417
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0114894   0.0074164   0.0155623
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0230105   0.0176371   0.0283840
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0187525   0.0143381   0.0231670
6-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0201729   0.0053698   0.0349760
6-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.0354610   0.0049129   0.0660091
6-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.0236967   0.0031589   0.0442345
6-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0653582   0.0509344   0.0797819
6-24 months   ki1135781-COHORTS         INDIA         <48 cm               NA                0.1197661   0.1058663   0.1336660
6-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.0900977   0.0772459   0.1029495
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0364366   0.0249753   0.0478979
6-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.0710441   0.0522664   0.0898217
6-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.0523565   0.0389758   0.0657371
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0560194   0.0445341   0.0675048
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.0591339   0.0540445   0.0642234
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0491167   0.0412705   0.0569629
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0550695   0.0401258   0.0700131
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.1030442   0.0879367   0.1181517
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0538665   0.0389984   0.0687346


### Parameter: E(Y)


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC             INDIA         NA                   NA                0.1176471   0.0856708   0.1496233
0-24 months   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0820399   0.0573937   0.1066861
0-24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.0444887   0.0340722   0.0549052
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0178475   0.0151485   0.0205464
0-24 months   ki1135781-COHORTS         GUATEMALA     NA                   NA                0.0243205   0.0128927   0.0357482
0-24 months   ki1135781-COHORTS         INDIA         NA                   NA                0.0962597   0.0882935   0.1042259
0-24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0509986   0.0428544   0.0591428
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0563589   0.0522997   0.0604181
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0780045   0.0689447   0.0870643
0-6 months    ki1000108-IRC             INDIA         NA                   NA                0.1636364   0.1266348   0.2006379
0-6 months    ki1101329-Keneba          GAMBIA        NA                   NA                0.0226950   0.0149187   0.0304713
0-6 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0609613   0.0448957   0.0770269
6-24 months   ki1000108-IRC             INDIA         NA                   NA                0.1176471   0.0856708   0.1496233
6-24 months   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0820399   0.0573937   0.1066861
6-24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.0444887   0.0340722   0.0549052
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0178475   0.0151485   0.0205464
6-24 months   ki1135781-COHORTS         GUATEMALA     NA                   NA                0.0243205   0.0128927   0.0357482
6-24 months   ki1135781-COHORTS         INDIA         NA                   NA                0.0962597   0.0882935   0.1042259
6-24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0509986   0.0428544   0.0591428
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0563589   0.0522997   0.0604181
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0780045   0.0689447   0.0870643


### Parameter: RR


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.7494299   0.3542923   1.585259
0-24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           0.9644395   0.5087777   1.828192
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           2.8209264   1.5294182   5.203041
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           1.4798847   0.6628767   3.303871
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           1.7409935   0.9307435   3.256599
0-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           1.8169073   1.0612306   3.110683
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           1.9939332   1.3031625   3.050863
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           1.6362512   1.0680539   2.506726
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm           1.7578521   0.5669193   5.450589
0-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm           1.1746784   0.3773324   3.656907
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           1.8375317   1.4328974   2.356430
0-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm           1.3826900   1.0639745   1.796877
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           1.9855958   1.3162818   2.995248
0-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           1.4482284   0.9654420   2.172441
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           1.0453861   0.8408298   1.299707
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           0.8770888   0.6809447   1.129732
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           1.8696988   1.3730634   2.545967
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           0.9738047   0.6567216   1.443984
0-6 months    ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.6573806   0.3635452   1.188708
0-6 months    ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           0.7575567   0.4512455   1.271796
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           1.7537581   0.6871083   4.476248
0-6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           1.9537480   0.8946155   4.266784
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           1.1085353   0.5777691   2.126889
0-6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           0.7933801   0.4271310   1.473675
6-24 months   ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.8077513   0.4028060   1.619792
6-24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           0.9632626   0.5191575   1.787271
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           2.8209264   1.5294182   5.203041
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           1.4798847   0.6628767   3.303871
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           1.7162717   0.9181476   3.208186
6-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           1.7968392   1.0517710   3.069709
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           2.0027665   1.3100475   3.061777
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           1.6321631   1.0664980   2.497854
6-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm           1.7578521   0.5669193   5.450589
6-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm           1.1746784   0.3773324   3.656907
6-24 months   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           1.8324581   1.4281993   2.351144
6-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm           1.3785223   1.0600200   1.792725
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           1.9497989   1.2934485   2.939209
6-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           1.4369193   0.9584800   2.154179
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           1.0555961   0.8493284   1.311958
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           0.8767796   0.6802339   1.130115
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           1.8711681   1.3739869   2.548256
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           0.9781557   0.6601346   1.449384


### Parameter: PAR


agecat        studyid                   country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0069769   -0.0500608   0.0361069
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                 0.0432050    0.0181178   0.0682921
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.0126579    0.0021478   0.0231680
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.0063604    0.0025687   0.0101522
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                 0.0041475   -0.0073486   0.0156437
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                 0.0309412    0.0174827   0.0443997
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                 0.0148682    0.0049477   0.0247887
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                 0.0000033   -0.0103695   0.0103761
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.0229639    0.0094067   0.0365212
0-6 months    ki1000108-IRC             INDIA         >=50 cm              NA                -0.0376428   -0.0891102   0.0138247
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.0069807   -0.0008342   0.0147957
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0042355   -0.0267653   0.0182944
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0105628   -0.0538521   0.0327265
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                 0.0432050    0.0181178   0.0682921
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.0124158    0.0018813   0.0229503
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.0063581    0.0025742   0.0101421
6-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                 0.0041475   -0.0073486   0.0156437
6-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                 0.0309016    0.0173982   0.0444049
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                 0.0145620    0.0045942   0.0245297
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                 0.0003395   -0.0099548   0.0106338
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.0229351    0.0093543   0.0365159


### Parameter: PAF


agecat        studyid                   country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0593040   -0.4961999   0.2500167
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                 0.5266333    0.1384809   0.7399060
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.2845200    0.0159101   0.4798122
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.3563767    0.1135384   0.5326917
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                 0.1705374   -0.4549860   0.5271375
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                 0.3214346    0.1689099   0.4459674
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                 0.2915411    0.0736790   0.4581641
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                 0.0000587   -0.2020171   0.1681628
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.2943922    0.1006955   0.4463696
0-6 months    ki1000108-IRC             INDIA         >=50 cm              NA                -0.2300392   -0.5853940   0.0456654
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.3075893   -0.1125539   0.5690702
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0694781   -0.5105057   0.2427812
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0897839   -0.5268496   0.2221702
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                 0.5266333    0.1384809   0.7399060
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.2790775    0.0098776   0.4750859
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.3562473    0.1141066   0.5322038
6-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                 0.1705374   -0.4549860   0.5271375
6-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                 0.3210227    0.1678550   0.4459977
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                 0.2855368    0.0664642   0.4531997
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                 0.0060239   -0.1945512   0.1729207
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.2940223    0.0999795   0.4462298
