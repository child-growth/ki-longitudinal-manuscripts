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

**Outcome Variable:** sstunted

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
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        birthlen      sstunted   n_cell       n
----------  -------------------------  -----------------------------  -----------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              0       29     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              1        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm               0      135     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm               1        9     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           0       84     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           1        0     257
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              0       34     191
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm               0       72     191
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm               1        8     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           0       77     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           1        0     191
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              0       25     206
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm               0      100     206
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm               1        7     206
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm           0       74     206
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm           1        0     206
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              0       38     173
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm               0       63     173
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm               1        6     173
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm           0       66     173
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm           1        0     173
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              0       34     287
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              1        0     287
Birth       ki0047075b-MAL-ED          PERU                           <48 cm               0      134     287
Birth       ki0047075b-MAL-ED          PERU                           <48 cm               1        8     287
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm           0      111     287
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm           1        0     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              0       47     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               0      110     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               1        2     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           0      103     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           1        0     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              0       15     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               0       51     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               1        6     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           0       51     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           1        0     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              0       13      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               0       34      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               1        3      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           0       40      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           1        0      90
Birth       ki1000108-IRC              INDIA                          >=50 cm              0      142     388
Birth       ki1000108-IRC              INDIA                          >=50 cm              1        0     388
Birth       ki1000108-IRC              INDIA                          <48 cm               0       92     388
Birth       ki1000108-IRC              INDIA                          <48 cm               1       16     388
Birth       ki1000108-IRC              INDIA                          [48-50) cm           0      138     388
Birth       ki1000108-IRC              INDIA                          [48-50) cm           1        0     388
Birth       ki1000109-EE               PAKISTAN                       >=50 cm              0        1       2
Birth       ki1000109-EE               PAKISTAN                       >=50 cm              1        0       2
Birth       ki1000109-EE               PAKISTAN                       <48 cm               0        1       2
Birth       ki1000109-EE               PAKISTAN                       <48 cm               1        0       2
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm           0        0       2
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm           1        0       2
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm              0        3       7
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm              1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm               0        2       7
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm               1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm           0        2       7
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm           1        0       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              0        9     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm               0      113     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm               1       11     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           0       54     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           1        0     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              0        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm               0       11      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           0       10      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              0        3      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               0       13      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           0       10      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           1        0      27
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              0      763    1541
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              1        0    1541
Birth       ki1101329-Keneba           GAMBIA                         <48 cm               0      254    1541
Birth       ki1101329-Keneba           GAMBIA                         <48 cm               1       29    1541
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm           0      495    1541
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm           1        0    1541
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm              0        2      13
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm              1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm               0        4      13
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm               1        5      13
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm           0        2      13
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm           1        0      13
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm              0       63     115
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm              1        0     115
Birth       ki1114097-CMIN             BRAZIL                         <48 cm               0       13     115
Birth       ki1114097-CMIN             BRAZIL                         <48 cm               1        3     115
Birth       ki1114097-CMIN             BRAZIL                         [48-50) cm           0       36     115
Birth       ki1114097-CMIN             BRAZIL                         [48-50) cm           1        0     115
Birth       ki1114097-CMIN             PERU                           >=50 cm              0       10      10
Birth       ki1114097-CMIN             PERU                           >=50 cm              1        0      10
Birth       ki1114097-CMIN             PERU                           <48 cm               0        0      10
Birth       ki1114097-CMIN             PERU                           <48 cm               1        0      10
Birth       ki1114097-CMIN             PERU                           [48-50) cm           0        0      10
Birth       ki1114097-CMIN             PERU                           [48-50) cm           1        0      10
Birth       ki1114097-CONTENT          PERU                           >=50 cm              0        1       2
Birth       ki1114097-CONTENT          PERU                           >=50 cm              1        0       2
Birth       ki1114097-CONTENT          PERU                           <48 cm               0        1       2
Birth       ki1114097-CONTENT          PERU                           <48 cm               1        0       2
Birth       ki1114097-CONTENT          PERU                           [48-50) cm           0        0       2
Birth       ki1114097-CONTENT          PERU                           [48-50) cm           1        0       2
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              0    12617   13884
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        <48 cm               0      142   13884
Birth       ki1119695-PROBIT           BELARUS                        <48 cm               1        5   13884
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm           0     1120   13884
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm           1        0   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              0     4107   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              1        0   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               0     3955   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               1      441   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           0     5327   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           1        0   13830
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              0      437     852
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              1        0     852
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm               0      152     852
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm               1       11     852
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm           0      252     852
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm           1        0     852
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              0     1426    6640
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              1        0    6640
Birth       ki1135781-COHORTS          INDIA                          <48 cm               0     2568    6640
Birth       ki1135781-COHORTS          INDIA                          <48 cm               1      206    6640
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm           0     2440    6640
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm           1        0    6640
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              0     1129    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              1        0    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm               0      716    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm               1       46    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           0     1159    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           1        0    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              0      957   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              1        0   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               0    12264   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               1     2041   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           0     4351   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           1        0   19613
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              0       36     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              1        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               0      535     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               1       64     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           0      187     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           1        0     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              0       29     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              1        0     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               0      114     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               1        8     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           0       83     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           1        0     234
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              0       30     173
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              1        0     173
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               0       69     173
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               1        0     173
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           0       74     173
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           1        0     173
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              0       24     193
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              1        0     193
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm               0       94     193
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm               1        7     193
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           0       68     193
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           1        0     193
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              0       38     171
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              1        0     171
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               0       66     171
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               1        1     171
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           0       66     171
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           1        0     171
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              0       30     261
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              1        0     261
6 months    ki0047075b-MAL-ED          PERU                           <48 cm               0      122     261
6 months    ki0047075b-MAL-ED          PERU                           <48 cm               1       10     261
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           0       98     261
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           1        1     261
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              0       39     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              1        0     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               0       81     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               1        5     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           0       89     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           1        0     214
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              0       14     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              1        0     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               0       49     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               1        5     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           0       51     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           1        0     119
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              0       14     102
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              1        1     102
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               0       43     102
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               1        4     102
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           0       37     102
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           1        3     102
6 months    ki1000108-IRC              INDIA                          >=50 cm              0      140     389
6 months    ki1000108-IRC              INDIA                          >=50 cm              1        2     389
6 months    ki1000108-IRC              INDIA                          <48 cm               0       91     389
6 months    ki1000108-IRC              INDIA                          <48 cm               1       18     389
6 months    ki1000108-IRC              INDIA                          [48-50) cm           0      130     389
6 months    ki1000108-IRC              INDIA                          [48-50) cm           1        8     389
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              0       21      89
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              1        1      89
6 months    ki1000109-EE               PAKISTAN                       <48 cm               0       22      89
6 months    ki1000109-EE               PAKISTAN                       <48 cm               1       20      89
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm           0       21      89
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm           1        4      89
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              0        4      17
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              1        0      17
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm               0        4      17
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm               1        2      17
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm           0        6      17
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm           1        1      17
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              0      191    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              1        5    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               0      600    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               1      109    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           0      407    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           1       12    1324
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              0       24     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              1        1     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               0       72     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               1       11     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           0       69     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           1        1     178
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              0      140     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              1        0     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               0      195     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               1       11     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           0      234     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           1        3     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              0      164     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               0      253     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               1       17     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           0      275     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           1        6     715
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              0      666    1347
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              1       11    1347
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               0      219    1347
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               1       15    1347
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           0      428    1347
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           1        8    1347
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm              0        0       1
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm              1        0       1
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm               0        1       1
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm               1        0       1
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm           0        0       1
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm           1        0       1
6 months    ki1114097-CMIN             BRAZIL                         >=50 cm              0       58     104
6 months    ki1114097-CMIN             BRAZIL                         >=50 cm              1        0     104
6 months    ki1114097-CMIN             BRAZIL                         <48 cm               0       12     104
6 months    ki1114097-CMIN             BRAZIL                         <48 cm               1        1     104
6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm           0       31     104
6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm           1        2     104
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm              0        0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm              1        0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm               0        1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm               1        0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm           0        1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm           1        0       2
6 months    ki1114097-CMIN             PERU                           >=50 cm              0       12      14
6 months    ki1114097-CMIN             PERU                           >=50 cm              1        0      14
6 months    ki1114097-CMIN             PERU                           <48 cm               0        1      14
6 months    ki1114097-CMIN             PERU                           <48 cm               1        0      14
6 months    ki1114097-CMIN             PERU                           [48-50) cm           0        1      14
6 months    ki1114097-CMIN             PERU                           [48-50) cm           1        0      14
6 months    ki1114097-CONTENT          PERU                           >=50 cm              0        1       2
6 months    ki1114097-CONTENT          PERU                           >=50 cm              1        0       2
6 months    ki1114097-CONTENT          PERU                           <48 cm               0        1       2
6 months    ki1114097-CONTENT          PERU                           <48 cm               1        0       2
6 months    ki1114097-CONTENT          PERU                           [48-50) cm           0        0       2
6 months    ki1114097-CONTENT          PERU                           [48-50) cm           1        0       2
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              0    14134   15761
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              1      162   15761
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               0      156   15761
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               1       16   15761
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           0     1228   15761
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           1       65   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              0     2370    8206
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              1       35    8206
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               0     2392    8206
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               1      191    8206
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           0     3102    8206
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           1      116    8206
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              0      341     688
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              1       10     688
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               0       90     688
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               1       43     688
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           0      180     688
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           1       24     688
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              0     1324    6135
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              1        6    6135
6 months    ki1135781-COHORTS          INDIA                          <48 cm               0     2302    6135
6 months    ki1135781-COHORTS          INDIA                          <48 cm               1      228    6135
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           0     2238    6135
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           1       37    6135
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              0      977    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              1       13    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               0      593    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               1       84    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           0      999    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           1       35    2701
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              0     2382   16508
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              1       44   16508
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               0     9388   16508
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               1      905   16508
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           0     3749   16508
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           1       40   16508
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              0     1073    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              1       28    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               0     1751    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               1      172    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           0      982    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           1       14    4020
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              0       28     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              1        0     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               0       85     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               1       17     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           0       70     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           1        7     207
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              0       21     139
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              1        0     139
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               0       56     139
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               1        1     139
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           0       61     139
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           1        0     139
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              0       23     184
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              1        0     184
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               0       74     184
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               1       21     184
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           0       64     184
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           1        2     184
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              0       36     165
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              1        0     165
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               0       63     165
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               1        2     165
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           0       63     165
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           1        1     165
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              0       22     191
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              1        1     191
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               0       88     191
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               1       12     191
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           0       68     191
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           1        0     191
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              0       35     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               0       74     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               1        9     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           0       71     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           1       12     201
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              0       12     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              1        0     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               0       28     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               1       21     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           0       33     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           1        9     103
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              0       13     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              1        2     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               0       32     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               1       17     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           0       28     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           1       12     104
24 months   ki1000108-IRC              INDIA                          >=50 cm              0      130     390
24 months   ki1000108-IRC              INDIA                          >=50 cm              1       12     390
24 months   ki1000108-IRC              INDIA                          <48 cm               0       91     390
24 months   ki1000108-IRC              INDIA                          <48 cm               1       19     390
24 months   ki1000108-IRC              INDIA                          [48-50) cm           0      130     390
24 months   ki1000108-IRC              INDIA                          [48-50) cm           1        8     390
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              0       19     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              1        1     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               0       38     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               1       24     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           0       49     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           1        6     137
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              0      137     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              1        2     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               0      166     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               1       40     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           0      225     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           1        7     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              0      128     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              1        0     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               0      173     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               1       27     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           0      178     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           1        8     514
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              0      514    1065
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              1       21    1065
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               0      172    1065
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               1       24    1065
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           0      297    1065
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           1       37    1065
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm              0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm              1        0       1
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm               0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm               1        1       1
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm           0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm           1        0       1
24 months   ki1114097-CMIN             PERU                           >=50 cm              0        3       4
24 months   ki1114097-CMIN             PERU                           >=50 cm              1        0       4
24 months   ki1114097-CMIN             PERU                           <48 cm               0        0       4
24 months   ki1114097-CMIN             PERU                           <48 cm               1        1       4
24 months   ki1114097-CMIN             PERU                           [48-50) cm           0        0       4
24 months   ki1114097-CMIN             PERU                           [48-50) cm           1        0       4
24 months   ki1114097-CONTENT          PERU                           >=50 cm              0        1       2
24 months   ki1114097-CONTENT          PERU                           >=50 cm              1        0       2
24 months   ki1114097-CONTENT          PERU                           <48 cm               0        1       2
24 months   ki1114097-CONTENT          PERU                           <48 cm               1        0       2
24 months   ki1114097-CONTENT          PERU                           [48-50) cm           0        0       2
24 months   ki1114097-CONTENT          PERU                           [48-50) cm           1        0       2
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              0     3628    4035
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              1       55    4035
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               0       41    4035
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               1        3    4035
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           0      301    4035
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           1        7    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              0       43     449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              1        9     449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               0      176     449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               1       84     449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           0      101     449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           1       36     449
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              0      193     562
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              1       71     562
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               0       44     562
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               1       77     562
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           0       91     562
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           1       86     562
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              0      992    4761
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              1       55    4761
24 months   ki1135781-COHORTS          INDIA                          <48 cm               0     1352    4761
24 months   ki1135781-COHORTS          INDIA                          <48 cm               1      585    4761
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           0     1549    4761
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           1      228    4761
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              0      756    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              1      141    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               0      335    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               1      269    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           0      663    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           1      278    2442
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              0     1105    8444
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              1       66    8444
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               0     4155    8444
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               1     1138    8444
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           0     1880    8444
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           1      100    8444
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              0     1031    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              1       46    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               0     1681    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               1      263    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           0      916    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           1       50    3987


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/2a24326d-143c-4498-83ca-2f59e4c933c1/0010127b-dc6c-4442-b476-a9ac90471d8e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2a24326d-143c-4498-83ca-2f59e4c933c1/0010127b-dc6c-4442-b476-a9ac90471d8e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2a24326d-143c-4498-83ca-2f59e4c933c1/0010127b-dc6c-4442-b476-a9ac90471d8e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2a24326d-143c-4498-83ca-2f59e4c933c1/0010127b-dc6c-4442-b476-a9ac90471d8e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.0255102   0.0084713   0.0425492
6 months    ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.1537377   0.1251875   0.1822879
6 months    ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.0286396   0.0129545   0.0443247
6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0162482   0.0067211   0.0257752
6 months    ki1101329-Keneba          GAMBIA        <48 cm               NA                0.0641026   0.0327081   0.0954970
6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.0183486   0.0057464   0.0309508
6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                0.0115699   0.0065729   0.0165668
6 months    ki1119695-PROBIT          BELARUS       <48 cm               NA                0.0843865   0.0634929   0.1052800
6 months    ki1119695-PROBIT          BELARUS       [48-50) cm           NA                0.0415575   0.0258297   0.0572854
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0140377   0.0092564   0.0188190
6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0769828   0.0668051   0.0871605
6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0361580   0.0296783   0.0426377
6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0284570   0.0109211   0.0459928
6 months    ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.3214250   0.2415098   0.4013403
6 months    ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.1152139   0.0706079   0.1598200
6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0045113   0.0009094   0.0081131
6 months    ki1135781-COHORTS         INDIA         <48 cm               NA                0.0901186   0.0789596   0.1012775
6 months    ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.0162637   0.0110657   0.0214618
6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0126154   0.0056800   0.0195509
6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.1263093   0.1010374   0.1515812
6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.0339556   0.0228806   0.0450306
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0168176   0.0119980   0.0216371
6 months    kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.0893984   0.0836161   0.0951807
6 months    kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0111553   0.0070721   0.0152386
6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0247338   0.0157740   0.0336935
6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.0927683   0.0767328   0.1088039
6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0136543   0.0062710   0.0210377
24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.0845070   0.0386997   0.1303144
24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.1727273   0.1019956   0.2434590
24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.0579710   0.0189316   0.0970105
24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0387322   0.0221074   0.0553569
24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.1309566   0.0846959   0.1772173
24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.1088303   0.0763275   0.1413331
24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.1730769   0.0701373   0.2760166
24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.3230769   0.2661696   0.3799843
24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.2627737   0.1889895   0.3365579
24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.2457239   0.1932480   0.2981997
24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.6711884   0.5870202   0.7553566
24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.5029592   0.4301718   0.5757467
24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0532070   0.0394643   0.0669496
24 months   ki1135781-COHORTS         INDIA         <48 cm               NA                0.3060835   0.2857972   0.3263699
24 months   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.1278350   0.1122705   0.1433995
24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.1567179   0.1329996   0.1804363
24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.4430476   0.4040081   0.4820871
24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.2941379   0.2654026   0.3228732
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0573691   0.0425479   0.0721903
24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.2153993   0.2028479   0.2279508
24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0502204   0.0401925   0.0602484
24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0419749   0.0269747   0.0569750
24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.1369888   0.1194182   0.1545594
24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0521445   0.0358302   0.0684589


### Parameter: E(Y)


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0951662   0.0766361   0.1136962
6 months    ki1101329-Keneba          GAMBIA        NA                   NA                0.0252413   0.0168616   0.0336210
6 months    ki1119695-PROBIT          BELARUS       NA                   NA                0.0154178   0.0100323   0.0208033
6 months    ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0416768   0.0373526   0.0460011
6 months    ki1135781-COHORTS         GUATEMALA     NA                   NA                0.1119186   0.0883438   0.1354934
6 months    ki1135781-COHORTS         INDIA         NA                   NA                0.0441728   0.0390306   0.0493149
6 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0488708   0.0407385   0.0570030
6 months    kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0599103   0.0560579   0.0637628
6 months    kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0532338   0.0448583   0.0616093
24 months   ki1000108-IRC             INDIA         NA                   NA                0.1000000   0.0701878   0.1298122
24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.0769953   0.0609772   0.0930134
24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.2873051   0.2454033   0.3292069
24 months   ki1135781-COHORTS         GUATEMALA     NA                   NA                0.4163701   0.3755781   0.4571621
24 months   ki1135781-COHORTS         INDIA         NA                   NA                0.1823146   0.1713461   0.1932832
24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.2817363   0.2638908   0.2995817
24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.1544292   0.1455642   0.1632942
24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0900426   0.0798078   0.1002775


### Parameter: RR


agecat      studyid                   country       intervention_level   baseline_level      estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  -----------  ----------  ----------
6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm            6.0265162   3.2342085   11.229609
6 months    ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm            1.1226730   0.4128721    3.052748
6 months    ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm            3.9452214   1.8377214    8.469604
6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm            1.1292744   0.4577236    2.786093
6 months    ki1119695-PROBIT          BELARUS       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT          BELARUS       <48 cm               >=50 cm            7.2936369   4.9796713   10.682862
6 months    ki1119695-PROBIT          BELARUS       [48-50) cm           >=50 cm            3.5918733   2.3544058    5.479749
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm            5.4839990   3.8060195    7.901758
6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm            2.5757783   1.7530455    3.784633
6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm           11.2951316   5.8133722   21.945954
6 months    ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm            4.0487096   1.9558148    8.381187
6 months    ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           19.9762846   8.9048026   44.813115
6 months    ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm            3.6051282   1.5255447    8.519547
6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           10.0122737   5.5814704   17.960433
6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm            2.6915889   1.4208051    5.098976
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm            5.3157769   3.9658807    7.125147
6 months    kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm            0.6633145   0.4200838    1.047377
6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm            3.7506772   2.5171003    5.588804
6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm            0.5520530   0.2861895    1.064898
24 months   ki1000108-IRC             INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm            2.0439394   1.0361710    4.031852
24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm            0.6859903   0.2889866    1.628389
24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm            3.3810797   1.9387710    5.896364
24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm            2.8098156   1.6673726    4.735033
24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm            1.8666667   1.0038648    3.471030
24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm            1.5182482   0.7865059    2.930782
24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm            2.7314745   2.1369280    3.491439
24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm            2.0468474   1.5862205    2.641237
24 months   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm            5.7526979   4.4075147    7.508434
24 months   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm            2.4026003   1.8067709    3.194920
24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm            2.8270380   2.3746959    3.365544
24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm            1.8768617   1.5692490    2.244774
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm            3.7546237   2.8777866    4.898626
24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm            0.8753917   0.6314899    1.213496
24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm            3.2635901   2.2370456    4.761200
24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm            1.2422799   0.7698431    2.004641


### Parameter: PAR


agecat      studyid                   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.0696560    0.0518817   0.0874302
6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0089931    0.0006416   0.0173447
6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                0.0038479    0.0024763   0.0052196
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0276391    0.0223365   0.0329417
6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0834617    0.0599923   0.1069310
6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0396615    0.0338486   0.0454744
6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0362553    0.0274162   0.0450944
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0430928    0.0376101   0.0485755
6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0285001    0.0183828   0.0386173
24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.0154930   -0.0227050   0.0536909
24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0382631    0.0223452   0.0541810
24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.1142282    0.0147400   0.2137164
24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.1706463    0.1285925   0.2127000
24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.1291077    0.1140610   0.1441544
24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.1250183    0.1035965   0.1464402
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0970601    0.0812935   0.1128266
24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0480678    0.0338326   0.0623029


### Parameter: PAF


agecat      studyid                   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.7319404    0.5143576   0.8520394
6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.3562864   -0.0415418   0.6021598
6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                0.2495770    0.1466480   0.3400910
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.6631770    0.5351391   0.7559490
6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.7457353    0.5499618   0.8563443
6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                0.8978720    0.7751591   0.9536111
6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.7418613    0.5654007   0.8466735
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.7192879    0.6286395   0.7878093
6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.5353753    0.3435303   0.6711560
24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.1549296   -0.3244291   0.4607910
24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.4969539    0.2748218   0.6510439
24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.3975850   -0.0659346   0.6595440
24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.4098427    0.2996400   0.5027049
24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.7081586    0.6257944   0.7723941
24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.4437424    0.3654120   0.5124041
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.6285088    0.5211629   0.7117898
24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.5338334    0.3534558   0.6638880
