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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        birthlen      stunted   n_cell       n
----------  -------------------------  -----------------------------  -----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       29     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0       97     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1       47     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       84     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1        0     257
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       34     191
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm              0       59     191
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm              1       21     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       77     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        0     191
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm             0       25     206
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm             1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm              0       74     206
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm              1       33     206
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm          0       74     206
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm          1        0     206
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm             0       38     173
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm              0       51     173
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm              1       18     173
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0       66     173
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1        0     173
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm             0       34     287
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm             1        0     287
Birth       ki0047075b-MAL-ED          PERU                           <48 cm              0      108     287
Birth       ki0047075b-MAL-ED          PERU                           <48 cm              1       34     287
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm          0      111     287
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm          1        0     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       47     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0       84     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1       28     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0      103     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1        0     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       15     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0       39     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1       18     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       51     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        0     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0       13      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       21      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1       16      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       40      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1        0      90
Birth       ki1000108-IRC              INDIA                          >=50 cm             0      142     388
Birth       ki1000108-IRC              INDIA                          >=50 cm             1        0     388
Birth       ki1000108-IRC              INDIA                          <48 cm              0       63     388
Birth       ki1000108-IRC              INDIA                          <48 cm              1       45     388
Birth       ki1000108-IRC              INDIA                          [48-50) cm          0      138     388
Birth       ki1000108-IRC              INDIA                          [48-50) cm          1        0     388
Birth       ki1000109-EE               PAKISTAN                       >=50 cm             0        1       2
Birth       ki1000109-EE               PAKISTAN                       >=50 cm             1        0       2
Birth       ki1000109-EE               PAKISTAN                       <48 cm              0        0       2
Birth       ki1000109-EE               PAKISTAN                       <48 cm              1        1       2
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm          0        0       2
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm          1        0       2
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm             0        3       7
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm             1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm              0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm              1        2       7
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm          0        2       7
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm          1        0       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             0        9     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm              0       78     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm              1       46     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          0       54     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          1        0     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0       10      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0       10      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             0        3      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              0        9      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              1        5      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          0       10      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          1        0      27
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm             0      763    1541
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm             1        0    1541
Birth       ki1101329-Keneba           GAMBIA                         <48 cm              0      201    1541
Birth       ki1101329-Keneba           GAMBIA                         <48 cm              1       82    1541
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm          0      495    1541
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm          1        0    1541
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm             0        2      13
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm              0        3      13
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm              1        6      13
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        2      13
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        0      13
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm             0       63     115
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm             1        0     115
Birth       ki1114097-CMIN             BRAZIL                         <48 cm              0       11     115
Birth       ki1114097-CMIN             BRAZIL                         <48 cm              1        5     115
Birth       ki1114097-CMIN             BRAZIL                         [48-50) cm          0       36     115
Birth       ki1114097-CMIN             BRAZIL                         [48-50) cm          1        0     115
Birth       ki1114097-CMIN             PERU                           >=50 cm             0       10      10
Birth       ki1114097-CMIN             PERU                           >=50 cm             1        0      10
Birth       ki1114097-CMIN             PERU                           <48 cm              0        0      10
Birth       ki1114097-CMIN             PERU                           <48 cm              1        0      10
Birth       ki1114097-CMIN             PERU                           [48-50) cm          0        0      10
Birth       ki1114097-CMIN             PERU                           [48-50) cm          1        0      10
Birth       ki1114097-CONTENT          PERU                           >=50 cm             0        1       2
Birth       ki1114097-CONTENT          PERU                           >=50 cm             1        0       2
Birth       ki1114097-CONTENT          PERU                           <48 cm              0        1       2
Birth       ki1114097-CONTENT          PERU                           <48 cm              1        0       2
Birth       ki1114097-CONTENT          PERU                           [48-50) cm          0        0       2
Birth       ki1114097-CONTENT          PERU                           [48-50) cm          1        0       2
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm             0    12617   13884
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm             1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        <48 cm              0      114   13884
Birth       ki1119695-PROBIT           BELARUS                        <48 cm              1       33   13884
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm          0     1120   13884
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm          1        0   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0     4107   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1        0   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0     2964   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1     1432   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0     5327   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1        0   13830
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm             0      437     852
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm             1        0     852
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm              0      113     852
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm              1       50     852
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm          0      252     852
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm          1        0     852
Birth       ki1135781-COHORTS          INDIA                          >=50 cm             0     1426    6640
Birth       ki1135781-COHORTS          INDIA                          >=50 cm             1        0    6640
Birth       ki1135781-COHORTS          INDIA                          <48 cm              0     1982    6640
Birth       ki1135781-COHORTS          INDIA                          <48 cm              1      792    6640
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm          0     2440    6640
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm          1        0    6640
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm             0     1129    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm             1        0    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm              0      575    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm              1      187    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          0     1159    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          1        0    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0      957   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1        0   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0     7967   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1     6338   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     4351   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1        0   19613
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0       36     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0      352     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1      247     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0      187     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1        0     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       29     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        0     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0       86     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1       36     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       76     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1        7     234
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       30     173
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0     173
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm              0       66     173
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm              1        3     173
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       73     173
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        1     173
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm             0       24     193
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm             1        0     193
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm              0       67     193
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm              1       34     193
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm          0       64     193
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm          1        4     193
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm             0       38     171
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        0     171
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm              0       59     171
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm              1        8     171
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0       66     171
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1        0     171
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm             0       29     261
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm             1        1     261
6 months    ki0047075b-MAL-ED          PERU                           <48 cm              0       86     261
6 months    ki0047075b-MAL-ED          PERU                           <48 cm              1       46     261
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm          0       90     261
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm          1        9     261
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       36     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1        3     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0       64     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1       22     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0       72     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1       17     214
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       14     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        0     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0       34     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1       20     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       50     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        1     119
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0       10     102
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1        5     102
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       31     102
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1       16     102
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       32     102
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1        8     102
6 months    ki1000108-IRC              INDIA                          >=50 cm             0      123     389
6 months    ki1000108-IRC              INDIA                          >=50 cm             1       19     389
6 months    ki1000108-IRC              INDIA                          <48 cm              0       62     389
6 months    ki1000108-IRC              INDIA                          <48 cm              1       47     389
6 months    ki1000108-IRC              INDIA                          [48-50) cm          0      109     389
6 months    ki1000108-IRC              INDIA                          [48-50) cm          1       29     389
6 months    ki1000109-EE               PAKISTAN                       >=50 cm             0       20      89
6 months    ki1000109-EE               PAKISTAN                       >=50 cm             1        2      89
6 months    ki1000109-EE               PAKISTAN                       <48 cm              0       11      89
6 months    ki1000109-EE               PAKISTAN                       <48 cm              1       31      89
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm          0       15      89
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm          1       10      89
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm             0        3      17
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm             1        1      17
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm              0        3      17
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm              1        3      17
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm          0        4      17
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm          1        3      17
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             0      184    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             1       12    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm              0      405    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm              1      304    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          0      359    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          1       60    1324
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0       23     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1        2     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0       49     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1       34     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0       61     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1        9     178
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             0      138     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             1        2     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm              0      130     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm              1       76     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          0      221     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          1       16     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             0      162     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             1        2     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              0      162     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              1      108     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          0      241     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          1       40     715
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm             0      629    1347
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm             1       48    1347
6 months    ki1101329-Keneba           GAMBIA                         <48 cm              0      176    1347
6 months    ki1101329-Keneba           GAMBIA                         <48 cm              1       58    1347
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm          0      362    1347
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm          1       74    1347
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm             0        0       1
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0       1
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm              0        0       1
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm              1        1       1
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        0       1
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        0       1
6 months    ki1114097-CMIN             BRAZIL                         >=50 cm             0       54     104
6 months    ki1114097-CMIN             BRAZIL                         >=50 cm             1        4     104
6 months    ki1114097-CMIN             BRAZIL                         <48 cm              0       12     104
6 months    ki1114097-CMIN             BRAZIL                         <48 cm              1        1     104
6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm          0       28     104
6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm          1        5     104
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm             0        0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm             1        0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm              0        1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm              1        0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm          0        1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm          1        0       2
6 months    ki1114097-CMIN             PERU                           >=50 cm             0       12      14
6 months    ki1114097-CMIN             PERU                           >=50 cm             1        0      14
6 months    ki1114097-CMIN             PERU                           <48 cm              0        1      14
6 months    ki1114097-CMIN             PERU                           <48 cm              1        0      14
6 months    ki1114097-CMIN             PERU                           [48-50) cm          0        0      14
6 months    ki1114097-CMIN             PERU                           [48-50) cm          1        1      14
6 months    ki1114097-CONTENT          PERU                           >=50 cm             0        1       2
6 months    ki1114097-CONTENT          PERU                           >=50 cm             1        0       2
6 months    ki1114097-CONTENT          PERU                           <48 cm              0        1       2
6 months    ki1114097-CONTENT          PERU                           <48 cm              1        0       2
6 months    ki1114097-CONTENT          PERU                           [48-50) cm          0        0       2
6 months    ki1114097-CONTENT          PERU                           [48-50) cm          1        0       2
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm             0    13615   15761
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm             1      681   15761
6 months    ki1119695-PROBIT           BELARUS                        <48 cm              0      112   15761
6 months    ki1119695-PROBIT           BELARUS                        <48 cm              1       60   15761
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm          0     1046   15761
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm          1      247   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0     2202    8206
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1      203    8206
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0     1886    8206
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1      697    8206
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0     2758    8206
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1      460    8206
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm             0      289     688
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm             1       62     688
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm              0       28     688
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm              1      105     688
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm          0      104     688
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm          1      100     688
6 months    ki1135781-COHORTS          INDIA                          >=50 cm             0     1282    6135
6 months    ki1135781-COHORTS          INDIA                          >=50 cm             1       48    6135
6 months    ki1135781-COHORTS          INDIA                          <48 cm              0     1678    6135
6 months    ki1135781-COHORTS          INDIA                          <48 cm              1      852    6135
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm          0     2031    6135
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm          1      244    6135
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm             0      913    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm             1       77    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm              0      394    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm              1      283    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          0      822    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          1      212    2701
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0     2200   16508
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1      226   16508
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0     6686   16508
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1     3607   16508
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     3484   16508
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1      305   16508
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0      959    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1      142    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0     1200    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1      723    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0      861    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1      135    4020
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       24     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        4     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0       41     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1       61     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       48     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1       29     207
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       21     139
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0     139
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm              0       53     139
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm              1        4     139
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       59     139
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        2     139
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm             0       21     184
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm             1        2     184
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm              0       45     184
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm              1       50     184
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm          0       45     184
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm          1       21     184
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm             0       36     165
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        0     165
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm              0       43     165
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm              1       22     165
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0       50     165
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1       14     165
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm             0       16     191
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm             1        7     191
24 months   ki0047075b-MAL-ED          PERU                           <48 cm              0       53     191
24 months   ki0047075b-MAL-ED          PERU                           <48 cm              1       47     191
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm          0       52     191
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm          1       16     191
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       24     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1       11     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0       51     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1       32     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0       54     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1       29     201
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       10     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        2     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0       12     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1       37     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       17     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1       25     103
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0        5     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1       10     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       13     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1       36     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       10     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1       30     104
24 months   ki1000108-IRC              INDIA                          >=50 cm             0       95     390
24 months   ki1000108-IRC              INDIA                          >=50 cm             1       47     390
24 months   ki1000108-IRC              INDIA                          <48 cm              0       52     390
24 months   ki1000108-IRC              INDIA                          <48 cm              1       58     390
24 months   ki1000108-IRC              INDIA                          [48-50) cm          0       85     390
24 months   ki1000108-IRC              INDIA                          [48-50) cm          1       53     390
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0       17     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1        3     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0       10     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1       52     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0       28     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1       27     137
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             0      119     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             1       20     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm              0       95     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm              1      111     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          0      173     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          1       59     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             0      120     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             1        8     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              0      124     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              1       76     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          0      138     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          1       48     514
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm             0      409    1065
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm             1      126    1065
24 months   ki1101329-Keneba           GAMBIA                         <48 cm              0      103    1065
24 months   ki1101329-Keneba           GAMBIA                         <48 cm              1       93    1065
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm          0      212    1065
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm          1      122    1065
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm             0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0       1
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm              0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm              1        1       1
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        0       1
24 months   ki1114097-CMIN             PERU                           >=50 cm             0        3       4
24 months   ki1114097-CMIN             PERU                           >=50 cm             1        0       4
24 months   ki1114097-CMIN             PERU                           <48 cm              0        0       4
24 months   ki1114097-CMIN             PERU                           <48 cm              1        1       4
24 months   ki1114097-CMIN             PERU                           [48-50) cm          0        0       4
24 months   ki1114097-CMIN             PERU                           [48-50) cm          1        0       4
24 months   ki1114097-CONTENT          PERU                           >=50 cm             0        1       2
24 months   ki1114097-CONTENT          PERU                           >=50 cm             1        0       2
24 months   ki1114097-CONTENT          PERU                           <48 cm              0        1       2
24 months   ki1114097-CONTENT          PERU                           <48 cm              1        0       2
24 months   ki1114097-CONTENT          PERU                           [48-50) cm          0        0       2
24 months   ki1114097-CONTENT          PERU                           [48-50) cm          1        0       2
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm             0     3385    4035
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm             1      298    4035
24 months   ki1119695-PROBIT           BELARUS                        <48 cm              0       37    4035
24 months   ki1119695-PROBIT           BELARUS                        <48 cm              1        7    4035
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm          0      269    4035
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm          1       39    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0       27     449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1       25     449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0       64     449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1      196     449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0       64     449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1       73     449
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm             0       84     562
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm             1      180     562
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm              0        8     562
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm              1      113     562
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm          0       25     562
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm          1      152     562
24 months   ki1135781-COHORTS          INDIA                          >=50 cm             0      809    4761
24 months   ki1135781-COHORTS          INDIA                          >=50 cm             1      238    4761
24 months   ki1135781-COHORTS          INDIA                          <48 cm              0      710    4761
24 months   ki1135781-COHORTS          INDIA                          <48 cm              1     1227    4761
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm          0     1039    4761
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm          1      738    4761
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm             0      494    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm             1      403    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm              0      120    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm              1      484    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          0      321    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          1      620    2442
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0      825    8444
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1      346    8444
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0     2104    8444
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1     3189    8444
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     1381    8444
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1      599    8444
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0      783    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1      294    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0      955    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1      989    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0      695    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1      271    3987


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
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

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
![](/tmp/3aa05861-60ef-4f5e-85c5-4e329b3029e7/c2b64a27-81d8-472d-9cb3-90e7e505e79f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3aa05861-60ef-4f5e-85c5-4e329b3029e7/c2b64a27-81d8-472d-9cb3-90e7e505e79f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3aa05861-60ef-4f5e-85c5-4e329b3029e7/c2b64a27-81d8-472d-9cb3-90e7e505e79f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3aa05861-60ef-4f5e-85c5-4e329b3029e7/c2b64a27-81d8-472d-9cb3-90e7e505e79f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                0.3333333   0.0935960   0.5730706
6 months    ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               NA                0.3404255   0.2042869   0.4765642
6 months    ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           NA                0.2000000   0.0754288   0.3245712
6 months    ki1000108-IRC              INDIA          >=50 cm              NA                0.1308078   0.0746838   0.1869319
6 months    ki1000108-IRC              INDIA          <48 cm               NA                0.4195096   0.3246718   0.5143474
6 months    ki1000108-IRC              INDIA          [48-50) cm           NA                0.2244507   0.1552483   0.2936530
6 months    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                0.0601029   0.0243827   0.0958232
6 months    ki1000304b-SAS-CompFeed    INDIA          <48 cm               NA                0.4303615   0.4101815   0.4505416
6 months    ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           NA                0.1445683   0.1178334   0.1713031
6 months    ki1101329-Keneba           GAMBIA         >=50 cm              NA                0.0681176   0.0488505   0.0873847
6 months    ki1101329-Keneba           GAMBIA         <48 cm               NA                0.2482438   0.1942091   0.3022785
6 months    ki1101329-Keneba           GAMBIA         [48-50) cm           NA                0.1739585   0.1388962   0.2090207
6 months    ki1119695-PROBIT           BELARUS        >=50 cm              NA                0.0486000   0.0348825   0.0623175
6 months    ki1119695-PROBIT           BELARUS        <48 cm               NA                0.3199160   0.2791734   0.3606587
6 months    ki1119695-PROBIT           BELARUS        [48-50) cm           NA                0.1637847   0.1282166   0.1993529
6 months    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.0821021   0.0710116   0.0931925
6 months    ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               NA                0.2763626   0.2590087   0.2937164
6 months    ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.1438048   0.1316163   0.1559933
6 months    ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                0.1701466   0.1301652   0.2101280
6 months    ki1135781-COHORTS          GUATEMALA      <48 cm               NA                0.7965044   0.7268415   0.8661674
6 months    ki1135781-COHORTS          GUATEMALA      [48-50) cm           NA                0.4961587   0.4273055   0.5650118
6 months    ki1135781-COHORTS          INDIA          >=50 cm              NA                0.0346528   0.0245126   0.0447930
6 months    ki1135781-COHORTS          INDIA          <48 cm               NA                0.3460292   0.3274535   0.3646050
6 months    ki1135781-COHORTS          INDIA          [48-50) cm           NA                0.1072969   0.0944321   0.1201617
6 months    ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                0.0731559   0.0567862   0.0895256
6 months    ki1135781-COHORTS          PHILIPPINES    <48 cm               NA                0.4308320   0.3941781   0.4674860
6 months    ki1135781-COHORTS          PHILIPPINES    [48-50) cm           NA                0.2091449   0.1844748   0.2338150
6 months    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                0.0867061   0.0747023   0.0987099
6 months    kiGH5241-JiVitA-3          BANGLADESH     <48 cm               NA                0.3538120   0.3433201   0.3643039
6 months    kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           NA                0.0833776   0.0740174   0.0927378
6 months    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                0.1266392   0.1031598   0.1501186
6 months    kiGH5241-JiVitA-4          BANGLADESH     <48 cm               NA                0.3828412   0.3568310   0.4088514
6 months    kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           NA                0.1331850   0.1076944   0.1586755
24 months   ki0047075b-MAL-ED          PERU           >=50 cm              NA                0.3043478   0.1158071   0.4928886
24 months   ki0047075b-MAL-ED          PERU           <48 cm               NA                0.4700000   0.3719213   0.5680787
24 months   ki0047075b-MAL-ED          PERU           [48-50) cm           NA                0.2352941   0.1342092   0.3363790
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                0.2603021   0.1052211   0.4153831
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   <48 cm               NA                0.4192781   0.3125437   0.5260124
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   [48-50) cm           NA                0.3508918   0.2446241   0.4571596
24 months   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                0.6666667   0.4269522   0.9063811
24 months   ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               NA                0.7346939   0.6104786   0.8589091
24 months   ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           NA                0.7500000   0.6151606   0.8848394
24 months   ki1000108-IRC              INDIA          >=50 cm              NA                0.3334993   0.2556371   0.4113615
24 months   ki1000108-IRC              INDIA          <48 cm               NA                0.5465392   0.4518932   0.6411852
24 months   ki1000108-IRC              INDIA          [48-50) cm           NA                0.3963093   0.3139632   0.4786553
24 months   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                0.1389310   0.0803052   0.1975567
24 months   ki1017093b-PROVIDE         BANGLADESH     <48 cm               NA                0.5437320   0.4754783   0.6119857
24 months   ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           NA                0.2531594   0.1967139   0.3096050
24 months   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                0.0625000   0.0205249   0.1044751
24 months   ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               NA                0.3800000   0.3126646   0.4473354
24 months   ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           NA                0.2580645   0.1951194   0.3210096
24 months   ki1101329-Keneba           GAMBIA         >=50 cm              NA                0.2309278   0.1949449   0.2669107
24 months   ki1101329-Keneba           GAMBIA         <48 cm               NA                0.4811297   0.4120054   0.5502541
24 months   ki1101329-Keneba           GAMBIA         [48-50) cm           NA                0.3680613   0.3176274   0.4184952
24 months   ki1119695-PROBIT           BELARUS        >=50 cm              NA                0.0809123   0.0513729   0.1104517
24 months   ki1119695-PROBIT           BELARUS        <48 cm               NA                0.1590909   0.0327881   0.2853937
24 months   ki1119695-PROBIT           BELARUS        [48-50) cm           NA                0.1266234   0.0879311   0.1653157
24 months   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.4853918   0.3417666   0.6290171
24 months   ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               NA                0.7535851   0.7008701   0.8063000
24 months   ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.5398520   0.4552117   0.6244922
24 months   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                0.6818182   0.6255834   0.7380529
24 months   ki1135781-COHORTS          GUATEMALA      <48 cm               NA                0.9338843   0.8895703   0.9781983
24 months   ki1135781-COHORTS          GUATEMALA      [48-50) cm           NA                0.8587571   0.8074040   0.9101102
24 months   ki1135781-COHORTS          INDIA          >=50 cm              NA                0.2283638   0.2033650   0.2533627
24 months   ki1135781-COHORTS          INDIA          <48 cm               NA                0.6352253   0.6139155   0.6565351
24 months   ki1135781-COHORTS          INDIA          [48-50) cm           NA                0.4157715   0.3931454   0.4383976
24 months   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                0.4483621   0.4163512   0.4803730
24 months   ki1135781-COHORTS          PHILIPPINES    <48 cm               NA                0.7974388   0.7658152   0.8290624
24 months   ki1135781-COHORTS          PHILIPPINES    [48-50) cm           NA                0.6577028   0.6277746   0.6876311
24 months   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                0.2906581   0.2579787   0.3233374
24 months   kiGH5241-JiVitA-3          BANGLADESH     <48 cm               NA                0.6025896   0.5871196   0.6180596
24 months   kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           NA                0.2992214   0.2771578   0.3212849
24 months   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                0.2724273   0.2387941   0.3060605
24 months   kiGH5241-JiVitA-4          BANGLADESH     <48 cm               NA                0.5106369   0.4835301   0.5377436
24 months   kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           NA                0.2793539   0.2427309   0.3159768


### Parameter: E(Y)


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.2843137   0.1963411   0.3722864
6 months    ki1000108-IRC              INDIA          NA                   NA                0.2442159   0.2014677   0.2869642
6 months    ki1000304b-SAS-CompFeed    INDIA          NA                   NA                0.2839879   0.2652870   0.3026888
6 months    ki1101329-Keneba           GAMBIA         NA                   NA                0.1336303   0.1154530   0.1518076
6 months    ki1119695-PROBIT           BELARUS        NA                   NA                0.0626864   0.0488489   0.0765238
6 months    ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.1657324   0.1576867   0.1737781
6 months    ki1135781-COHORTS          GUATEMALA      NA                   NA                0.3880814   0.3516414   0.4245214
6 months    ki1135781-COHORTS          INDIA          NA                   NA                0.1864711   0.1767241   0.1962180
6 months    ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.2117734   0.1963625   0.2271843
6 months    kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.2506663   0.2425523   0.2587804
6 months    kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.2487562   0.2326103   0.2649022
24 months   ki0047075b-MAL-ED          PERU           NA                   NA                0.3664921   0.2979781   0.4350062
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.3582090   0.2917585   0.4246594
24 months   ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.7307692   0.6451085   0.8164300
24 months   ki1000108-IRC              INDIA          NA                   NA                0.4051282   0.3563438   0.4539126
24 months   ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1101329-Keneba           GAMBIA         NA                   NA                0.3201878   0.2921545   0.3482211
24 months   ki1119695-PROBIT           BELARUS        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.6547884   0.6107631   0.6988137
24 months   ki1135781-COHORTS          GUATEMALA      NA                   NA                0.7918149   0.7582177   0.8254122
24 months   ki1135781-COHORTS          INDIA          NA                   NA                0.4627179   0.4485533   0.4768825
24 months   ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.6171171   0.5978338   0.6364004
24 months   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.4895784   0.4764028   0.5027539
24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.3897667   0.3711087   0.4084248


### Parameter: RR


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               >=50 cm           1.0212766   0.4484926    2.325581
6 months    ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           >=50 cm           0.6000000   0.2317135    1.553643
6 months    ki1000108-IRC              INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    ki1000108-IRC              INDIA          <48 cm               >=50 cm           3.2070677   1.9702081    5.220404
6 months    ki1000108-IRC              INDIA          [48-50) cm           >=50 cm           1.7158807   1.0123054    2.908457
6 months    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA          <48 cm               >=50 cm           7.1604072   3.8347754   13.370126
6 months    ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           >=50 cm           2.4053449   1.1378268    5.084855
6 months    ki1101329-Keneba           GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA         <48 cm               >=50 cm           3.6443413   2.5524605    5.203302
6 months    ki1101329-Keneba           GAMBIA         [48-50) cm           >=50 cm           2.5537959   1.8060174    3.611191
6 months    ki1119695-PROBIT           BELARUS        >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS        <48 cm               >=50 cm           6.5826283   5.0201542    8.631407
6 months    ki1119695-PROBIT           BELARUS        [48-50) cm           >=50 cm           3.3700528   2.6241123    4.328037
6 months    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm           3.3660859   2.9006250    3.906239
6 months    ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm           1.7515369   1.4936141    2.053999
6 months    ki1135781-COHORTS          GUATEMALA      >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA      <48 cm               >=50 cm           4.6812826   3.6425268    6.016265
6 months    ki1135781-COHORTS          GUATEMALA      [48-50) cm           >=50 cm           2.9160653   2.2208686    3.828879
6 months    ki1135781-COHORTS          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA          <48 cm               >=50 cm           9.9856081   7.4171035   13.443573
6 months    ki1135781-COHORTS          INDIA          [48-50) cm           >=50 cm           3.0963406   2.2573527    4.247154
6 months    ki1135781-COHORTS          PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES    <48 cm               >=50 cm           5.8892306   4.6384853    7.477233
6 months    ki1135781-COHORTS          PHILIPPINES    [48-50) cm           >=50 cm           2.8588929   2.2221459    3.678097
6 months    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH     <48 cm               >=50 cm           4.0805905   3.5492182    4.691517
6 months    kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           >=50 cm           0.9616121   0.8055152    1.147958
6 months    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH     <48 cm               >=50 cm           3.0230864   2.4812410    3.683258
6 months    kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           >=50 cm           1.0516885   0.8104428    1.364746
24 months   ki0047075b-MAL-ED          PERU           >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          PERU           <48 cm               >=50 cm           1.5442857   0.8032154    2.969090
24 months   ki0047075b-MAL-ED          PERU           [48-50) cm           >=50 cm           0.7731092   0.3637769    1.643034
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   <48 cm               >=50 cm           1.6107365   0.8463596    3.065449
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   [48-50) cm           >=50 cm           1.3480177   0.6931501    2.621585
24 months   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               >=50 cm           1.1020408   0.7406898    1.639679
24 months   ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           >=50 cm           1.1250000   0.7525933    1.681685
24 months   ki1000108-IRC              INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA          <48 cm               >=50 cm           1.6388015   1.2242747    2.193683
24 months   ki1000108-IRC              INDIA          [48-50) cm           >=50 cm           1.1883361   0.8687676    1.625455
24 months   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH     <48 cm               >=50 cm           3.9136848   2.5194303    6.079521
24 months   ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           >=50 cm           1.8221960   1.1307949    2.936340
24 months   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               >=50 cm           6.0800000   3.0356333   12.177492
24 months   ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           >=50 cm           4.1290323   2.0208559    8.436479
24 months   ki1101329-Keneba           GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA         <48 cm               >=50 cm           2.0834639   1.6858163    2.574908
24 months   ki1101329-Keneba           GAMBIA         [48-50) cm           >=50 cm           1.5938372   1.2971269    1.958418
24 months   ki1119695-PROBIT           BELARUS        >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1119695-PROBIT           BELARUS        <48 cm               >=50 cm           1.9662142   0.9709023    3.981861
24 months   ki1119695-PROBIT           BELARUS        [48-50) cm           >=50 cm           1.5649460   1.0753775    2.277392
24 months   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm           1.5525293   1.1449993    2.105108
24 months   ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm           1.1121983   0.7953553    1.555261
24 months   ki1135781-COHORTS          GUATEMALA      >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA      <48 cm               >=50 cm           1.3696970   1.2453742    1.506431
24 months   ki1135781-COHORTS          GUATEMALA      [48-50) cm           >=50 cm           1.2595104   1.1375172    1.394587
24 months   ki1135781-COHORTS          INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA          <48 cm               >=50 cm           2.7816369   2.4817750    3.117730
24 months   ki1135781-COHORTS          INDIA          [48-50) cm           >=50 cm           1.8206537   1.6124258    2.055772
24 months   ki1135781-COHORTS          PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES    <48 cm               >=50 cm           1.7785598   1.6400600    1.928756
24 months   ki1135781-COHORTS          PHILIPPINES    [48-50) cm           >=50 cm           1.4669011   1.3489508    1.595165
24 months   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH     <48 cm               >=50 cm           2.0731907   1.8490715    2.324474
24 months   kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           >=50 cm           1.0294618   0.9005813    1.176786
24 months   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH     <48 cm               >=50 cm           1.8743968   1.6402375    2.141985
24 months   kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           >=50 cm           1.0254255   0.8580080    1.225510


### Parameter: PAR


agecat      studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                -0.0490196   -0.2688128   0.1707736
6 months    ki1000108-IRC              INDIA          >=50 cm              NA                 0.1134081    0.0613248   0.1654913
6 months    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.2238850    0.1786904   0.2690795
6 months    ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0655127    0.0475491   0.0834763
6 months    ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0140863    0.0103911   0.0177815
6 months    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.0836303    0.0728719   0.0943888
6 months    ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.2179348    0.1817446   0.2541249
6 months    ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.1518183    0.1393872   0.1642494
6 months    ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.1386175    0.1211940   0.1560410
6 months    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.1639603    0.1516224   0.1762981
6 months    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.1221170    0.1000023   0.1442318
24 months   ki0047075b-MAL-ED          PERU           >=50 cm              NA                 0.0621443   -0.1158461   0.2401347
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                 0.0979069   -0.0453962   0.2412099
24 months   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                 0.0641026   -0.1554992   0.2837043
24 months   ki1000108-IRC              INDIA          >=50 cm              NA                 0.0716289    0.0077219   0.1355359
24 months   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.1903585    0.1332298   0.2474871
24 months   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.1943093    0.1462097   0.2424089
24 months   ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0892600    0.0616764   0.1168435
24 months   ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0043417   -0.0002862   0.0089697
24 months   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.1693966    0.0349944   0.3037988
24 months   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.1099968    0.0736637   0.1463298
24 months   ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.2343541    0.2110813   0.2576269
24 months   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.1687550    0.1437425   0.1937675
24 months   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.1989203    0.1683871   0.2294535
24 months   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.1173394    0.0883051   0.1463738


### Parameter: PAF


agecat      studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                -0.1724138   -1.2667265   0.3935951
6 months    ki1000108-IRC              INDIA          >=50 cm              NA                 0.4643763    0.2173446   0.6334367
6 months    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.7883609    0.6073484   0.8859266
6 months    ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.4902533    0.3529630   0.5984129
6 months    ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.2247112    0.1509442   0.2920693
6 months    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.5046107    0.4393535   0.5622722
6 months    ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.5615697    0.4651039   0.6406384
6 months    ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.8141653    0.7526957   0.8603561
6 months    ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.6545557    0.5756383   0.7187971
6 months    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.6540977    0.6050863   0.6970264
6 months    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.4909105    0.3975770   0.5697838
24 months   ki0047075b-MAL-ED          PERU           >=50 cm              NA                 0.1695652   -0.4902903   0.5372567
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                 0.2733233   -0.2615874   0.5814329
24 months   ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                 0.0877193   -0.2691613   0.3442472
24 months   ki1000108-IRC              INDIA          >=50 cm              NA                 0.1768055    0.0028532   0.3204118
24 months   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.5780886    0.3740073   0.7156369
24 months   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.7566288    0.5354111   0.8725119
24 months   ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.2787739    0.1878558   0.3595139
24 months   ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0509269   -0.0054685   0.1041592
24 months   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.2587043    0.0200316   0.4392479
24 months   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.1389173    0.0896167   0.1855481
24 months   ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.5064729    0.4539350   0.5539560
24 months   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.2734570    0.2305822   0.3139427
24 months   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.4063095    0.3400591   0.4659091
24 months   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.3010504    0.2217828   0.3722440
