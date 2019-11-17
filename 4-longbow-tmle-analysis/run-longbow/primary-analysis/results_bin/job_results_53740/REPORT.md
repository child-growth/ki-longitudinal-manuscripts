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
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  0       36     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  1        3     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   0      106     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   1        5     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               0       75     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               1        4     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  0       29      65
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  1        1      65
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         <48 cm                   0       17      65
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         <48 cm                   1        0      65
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               0       18      65
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               1        0      65
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          >=50 cm                  0        8      47
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          >=50 cm                  1        1      47
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          <48 cm                   0       19      47
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          <48 cm                   1        1      47
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          [48-50) cm               0       16      47
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          [48-50) cm               1        2      47
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          >=50 cm                  0        8      27
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          >=50 cm                  1        0      27
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          <48 cm                   0       12      27
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          <48 cm                   1        0      27
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          [48-50) cm               0        7      27
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          [48-50) cm               1        0      27
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           >=50 cm                  0       51     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           >=50 cm                  1        1     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           <48 cm                   0       87     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           <48 cm                   1        1     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           [48-50) cm               0       91     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           [48-50) cm               1        2     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  0       41     119
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  1        1     119
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   0       28     119
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   1        3     119
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               0       41     119
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               1        5     119
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  0       32     124
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  1        0     124
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   0       38     124
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   1        3     124
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               0       49     124
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               1        2     124
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  0       13     104
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  1        3     104
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   0       36     104
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   1       12     104
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               0       34     104
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               1        6     104
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          >=50 cm                  0      114     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          >=50 cm                  1       28     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          <48 cm                   0       91     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          <48 cm                   1       20     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          [48-50) cm               0      110     390
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          [48-50) cm               1       27     390
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       >=50 cm                  0       19     240
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       >=50 cm                  1        5     240
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       <48 cm                   0      128     240
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       <48 cm                   1       34     240
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       [48-50) cm               0       49     240
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       [48-50) cm               1        5     240
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       >=50 cm                  0       11      41
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       >=50 cm                  1        1      41
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       <48 cm                   0       15      41
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       <48 cm                   1        0      41
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       [48-50) cm               0       12      41
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       [48-50) cm               1        2      41
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  0      204    1489
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  1       15    1489
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   0      678    1489
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   1      117    1489
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               0      437    1489
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               1       38    1489
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  0      120     581
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  1       10     581
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   0      204     581
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   1       24     581
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               0      204     581
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               1       19     581
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
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         >=50 cm                  0      658    1547
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         >=50 cm                  1      101    1547
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         <48 cm                   0      247    1547
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         <48 cm                   1       46    1547
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         [48-50) cm               0      416    1547
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         [48-50) cm               1       79    1547
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          >=50 cm                  0       93     659
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          >=50 cm                  1       15     659
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          <48 cm                   0      278     659
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          <48 cm                   1       72     659
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm               0      157     659
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm               1       44     659
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     >=50 cm                  0        1      17
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     >=50 cm                  1        0      17
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     <48 cm                   0        8      17
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     <48 cm                   1        0      17
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     [48-50) cm               0        8      17
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     [48-50) cm               1        0      17
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
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  0     3885   13501
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  1      103   13501
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   0     4106   13501
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   1      179   13501
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               0     5034   13501
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               1      194   13501
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
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  0     1191   21905
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  1       43   21905
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   0    15062   21905
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   1      599   21905
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               0     4824   21905
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               1      186   21905
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  0     1183    4464
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  1       47    4464
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   0     2036    4464
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   1      125    4464
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               0     1037    4464
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               1       36    4464
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  0       36     228
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  1        3     228
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   0      109     228
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   1        1     228
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               0       76     228
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               1        3     228
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  0       29      65
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  1        1      65
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         <48 cm                   0       17      65
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         <48 cm                   1        0      65
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               0       18      65
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               1        0      65
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          >=50 cm                  0        9      47
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          >=50 cm                  1        0      47
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          <48 cm                   0       20      47
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          <48 cm                   1        0      47
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          [48-50) cm               0       16      47
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          [48-50) cm               1        2      47
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          >=50 cm                  0        8      27
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          >=50 cm                  1        0      27
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          <48 cm                   0       12      27
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          <48 cm                   1        0      27
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          [48-50) cm               0        7      27
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          [48-50) cm               1        0      27
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           >=50 cm                  0       51     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           >=50 cm                  1        1     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           <48 cm                   0       88     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           <48 cm                   1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           [48-50) cm               0       93     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           [48-50) cm               1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  0       41     118
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  1        1     118
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   0       30     118
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   1        1     118
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               0       45     118
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               1        0     118
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  0       32     124
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  1        0     124
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   0       40     124
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   1        1     124
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               0       50     124
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               1        1     124
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  0       12     101
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  1        3     101
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   0       38     101
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   1        8     101
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               0       35     101
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               1        5     101
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          >=50 cm                  0      111     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          >=50 cm                  1       20     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          <48 cm                   0       97     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          <48 cm                   1       12     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          [48-50) cm               0      107     372
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          [48-50) cm               1       25     372
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       >=50 cm                  0       22     238
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       >=50 cm                  1        2     238
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       <48 cm                   0      153     238
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       <48 cm                   1        8     238
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       [48-50) cm               0       53     238
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       [48-50) cm               1        0     238
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       >=50 cm                  0       11      41
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       >=50 cm                  1        1      41
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       <48 cm                   0       15      41
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       <48 cm                   1        0      41
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       [48-50) cm               0       13      41
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       [48-50) cm               1        1      41
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  0      214    1463
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  1        2    1463
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   0      745    1463
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   1       33    1463
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               0      458    1463
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               1       11    1463
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  0      126     564
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  1        2     564
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   0      217     564
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   1        1     564
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               0      213     564
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               1        5     564
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
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         >=50 cm                  0      726    1533
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         >=50 cm                  1       25    1533
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         <48 cm                   0      278    1533
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         <48 cm                   1       14    1533
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         [48-50) cm               0      463    1533
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         [48-50) cm               1       27    1533
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          >=50 cm                  0       99     641
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          >=50 cm                  1        4     641
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          <48 cm                   0      328     641
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          <48 cm                   1       15     641
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm               0      183     641
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm               1       12     641
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     >=50 cm                  0        1      17
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     >=50 cm                  1        0      17
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     <48 cm                   0        8      17
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     <48 cm                   1        0      17
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     [48-50) cm               0        8      17
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     [48-50) cm               1        0      17
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
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  0     3875   13254
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  1       34   13254
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   0     4150   13254
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   1       43   13254
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               0     5097   13254
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               1       55   13254
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
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          [48-50) cm               0     2198    6052
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          [48-50) cm               1       52    6052
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm                  0     1086    2990
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm                  1       27    2990
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    <48 cm                   0      723    2990
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    <48 cm                   1       12    2990
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm               0     1115    2990
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm               1       27    2990
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  0     1194   21725
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  1       26   21725
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   0    15283   21725
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   1      248   21725
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               0     4863   21725
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               1      111   21725
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  0     1205    4359
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  1        4    4359
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   0     2082    4359
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   1       11    4359
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               0     1051    4359
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               1        6    4359
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  0       39     212
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  1        0     212
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   0       95     212
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   1        4     212
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               0       73     212
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               1        1     212
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  0       27      58
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  1        0      58
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         <48 cm                   0       15      58
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         <48 cm                   1        0      58
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               0       16      58
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               1        0      58
6-24 months                   ki0047075b-MAL-ED          INDIA                          >=50 cm                  0        7      41
6-24 months                   ki0047075b-MAL-ED          INDIA                          >=50 cm                  1        1      41
6-24 months                   ki0047075b-MAL-ED          INDIA                          <48 cm                   0       17      41
6-24 months                   ki0047075b-MAL-ED          INDIA                          <48 cm                   1        1      41
6-24 months                   ki0047075b-MAL-ED          INDIA                          [48-50) cm               0       15      41
6-24 months                   ki0047075b-MAL-ED          INDIA                          [48-50) cm               1        0      41
6-24 months                   ki0047075b-MAL-ED          NEPAL                          >=50 cm                  0        8      26
6-24 months                   ki0047075b-MAL-ED          NEPAL                          >=50 cm                  1        0      26
6-24 months                   ki0047075b-MAL-ED          NEPAL                          <48 cm                   0       11      26
6-24 months                   ki0047075b-MAL-ED          NEPAL                          <48 cm                   1        0      26
6-24 months                   ki0047075b-MAL-ED          NEPAL                          [48-50) cm               0        7      26
6-24 months                   ki0047075b-MAL-ED          NEPAL                          [48-50) cm               1        0      26
6-24 months                   ki0047075b-MAL-ED          PERU                           >=50 cm                  0       48     213
6-24 months                   ki0047075b-MAL-ED          PERU                           >=50 cm                  1        0     213
6-24 months                   ki0047075b-MAL-ED          PERU                           <48 cm                   0       83     213
6-24 months                   ki0047075b-MAL-ED          PERU                           <48 cm                   1        1     213
6-24 months                   ki0047075b-MAL-ED          PERU                           [48-50) cm               0       79     213
6-24 months                   ki0047075b-MAL-ED          PERU                           [48-50) cm               1        2     213
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  0       35      97
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  1        0      97
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   0       21      97
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   1        2      97
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               0       33      97
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               1        6      97
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  0       32     120
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  1        0     120
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   0       37     120
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   1        2     120
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               0       48     120
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               1        1     120
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  0       16     106
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  1        0     106
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   0       45     106
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   1        5     106
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               0       39     106
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               1        1     106
6-24 months                   ki1000108-IRC              INDIA                          >=50 cm                  0      133     391
6-24 months                   ki1000108-IRC              INDIA                          >=50 cm                  1        9     391
6-24 months                   ki1000108-IRC              INDIA                          <48 cm                   0      102     391
6-24 months                   ki1000108-IRC              INDIA                          <48 cm                   1        9     391
6-24 months                   ki1000108-IRC              INDIA                          [48-50) cm               0      133     391
6-24 months                   ki1000108-IRC              INDIA                          [48-50) cm               1        5     391
6-24 months                   ki1000109-EE               PAKISTAN                       >=50 cm                  0       21     237
6-24 months                   ki1000109-EE               PAKISTAN                       >=50 cm                  1        3     237
6-24 months                   ki1000109-EE               PAKISTAN                       <48 cm                   0      132     237
6-24 months                   ki1000109-EE               PAKISTAN                       <48 cm                   1       28     237
6-24 months                   ki1000109-EE               PAKISTAN                       [48-50) cm               0       48     237
6-24 months                   ki1000109-EE               PAKISTAN                       [48-50) cm               1        5     237
6-24 months                   ki1000109-ResPak           PAKISTAN                       >=50 cm                  0       11      32
6-24 months                   ki1000109-ResPak           PAKISTAN                       >=50 cm                  1        0      32
6-24 months                   ki1000109-ResPak           PAKISTAN                       <48 cm                   0       12      32
6-24 months                   ki1000109-ResPak           PAKISTAN                       <48 cm                   1        0      32
6-24 months                   ki1000109-ResPak           PAKISTAN                       [48-50) cm               0        8      32
6-24 months                   ki1000109-ResPak           PAKISTAN                       [48-50) cm               1        1      32
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  0      196    1376
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  1       14    1376
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   0      638    1376
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   1       89    1376
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               0      411    1376
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               1       28    1376
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  0      112     522
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  1        9     522
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   0      179     522
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   1       23     522
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               0      183     522
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               1       16     522
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
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          >=50 cm                  0       87     589
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          >=50 cm                  1       13     589
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          <48 cm                   0      248     589
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          <48 cm                   1       63     589
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm               0      142     589
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm               1       36     589
6-24 months                   ki1114097-CMIN             BANGLADESH                     >=50 cm                  0        0      12
6-24 months                   ki1114097-CMIN             BANGLADESH                     >=50 cm                  1        0      12
6-24 months                   ki1114097-CMIN             BANGLADESH                     <48 cm                   0        6      12
6-24 months                   ki1114097-CMIN             BANGLADESH                     <48 cm                   1        0      12
6-24 months                   ki1114097-CMIN             BANGLADESH                     [48-50) cm               0        6      12
6-24 months                   ki1114097-CMIN             BANGLADESH                     [48-50) cm               1        0      12
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
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  0     3001   10690
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  1       71   10690
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   0     3285   10690
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   1      139   10690
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               0     4050   10690
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               1      144   10690
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
6-24 months                   ki1135781-COHORTS          INDIA                          [48-50) cm               0     2210    6169
6-24 months                   ki1135781-COHORTS          INDIA                          [48-50) cm               1       71    6169
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                  0      986    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                  1       51    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    <48 cm                   0      644    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    <48 cm                   1       55    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm               0      984    2802
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm               1       82    2802
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  0      830   14310
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  1       18   14310
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   0     9731   14310
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   1      375   14310
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               0     3275   14310
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               1       81   14310
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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

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
![](/tmp/aaaa5994-bde5-43f1-b85e-6bcf6523abe5/c0206819-b39f-49ed-9cd1-1967a95f8c72/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/aaaa5994-bde5-43f1-b85e-6bcf6523abe5/c0206819-b39f-49ed-9cd1-1967a95f8c72/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/aaaa5994-bde5-43f1-b85e-6bcf6523abe5/c0206819-b39f-49ed-9cd1-1967a95f8c72/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/aaaa5994-bde5-43f1-b85e-6bcf6523abe5/c0206819-b39f-49ed-9cd1-1967a95f8c72/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-IRC             INDIA         >=50 cm              NA                0.1924698   0.1266313   0.2583083
0-24 months (no birth wast)   ki1000108-IRC             INDIA         <48 cm               NA                0.1673905   0.0948642   0.2399167
0-24 months (no birth wast)   ki1000108-IRC             INDIA         [48-50) cm           NA                0.1922769   0.1253173   0.2592364
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.2083333   0.0455164   0.3711503
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN      <48 cm               NA                0.2098765   0.1470379   0.2727152
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN      [48-50) cm           NA                0.0925926   0.0151202   0.1700650
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.0685928   0.0283638   0.1088219
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.1471442   0.1097575   0.1845309
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.0802033   0.0592320   0.1011746
0-24 months (no birth wast)   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.0773603   0.0313122   0.1234084
0-24 months (no birth wast)   ki1017093-NIH-Birth       BANGLADESH    <48 cm               NA                0.1068828   0.0668158   0.1469497
0-24 months (no birth wast)   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           NA                0.0867262   0.0498145   0.1236378
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.1304163   0.1063258   0.1545068
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.1661351   0.1238506   0.2084196
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.1587851   0.1265346   0.1910355
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                0.1383347   0.0718702   0.2047992
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL         <48 cm               NA                0.2073762   0.1649032   0.2498492
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL         [48-50) cm           NA                0.2171471   0.1593905   0.2749036
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0256059   0.0206291   0.0305827
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0435897   0.0373668   0.0498125
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0367967   0.0316183   0.0419751
0-24 months (no birth wast)   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0263221   0.0181005   0.0345437
0-24 months (no birth wast)   ki1135781-COHORTS         INDIA         <48 cm               NA                0.0657285   0.0562059   0.0752512
0-24 months (no birth wast)   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.0506445   0.0416018   0.0596872
0-24 months (no birth wast)   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0674202   0.0527052   0.0821353
0-24 months (no birth wast)   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.0904471   0.0699322   0.1109620
0-24 months (no birth wast)   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.0923804   0.0756206   0.1091401
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0383248   0.0251676   0.0514820
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.0385722   0.0352053   0.0419390
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0366492   0.0302402   0.0430582
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0379573   0.0259107   0.0500039
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.0586402   0.0480314   0.0692491
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0327754   0.0206612   0.0448897
0-6 months (no birth wast)    ki1000108-IRC             INDIA         >=50 cm              NA                0.1513523   0.0893474   0.2133572
0-6 months (no birth wast)    ki1000108-IRC             INDIA         <48 cm               NA                0.1137962   0.0541396   0.1734528
0-6 months (no birth wast)    ki1000108-IRC             INDIA         [48-50) cm           NA                0.1873958   0.1196526   0.2551390
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0329369   0.0200750   0.0457989
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA        <48 cm               NA                0.0478437   0.0228666   0.0728209
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.0554047   0.0350626   0.0757468
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0086179   0.0057099   0.0115258
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0103686   0.0073126   0.0134245
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0106978   0.0078933   0.0135024
0-6 months (no birth wast)    ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0128642   0.0067517   0.0189768
0-6 months (no birth wast)    ki1135781-COHORTS         INDIA         <48 cm               NA                0.0198085   0.0143411   0.0252760
0-6 months (no birth wast)    ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.0230467   0.0168360   0.0292574
0-6 months (no birth wast)    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0239549   0.0150208   0.0328889
0-6 months (no birth wast)    ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.0156971   0.0068660   0.0245282
0-6 months (no birth wast)    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.0235757   0.0147915   0.0323599
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0217976   0.0116671   0.0319282
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.0160206   0.0138275   0.0182136
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0221902   0.0171811   0.0271992
6-24 months                   ki1000108-IRC             INDIA         >=50 cm              NA                0.0633803   0.0232549   0.1035056
6-24 months                   ki1000108-IRC             INDIA         <48 cm               NA                0.0810811   0.0302369   0.1319252
6-24 months                   ki1000108-IRC             INDIA         [48-50) cm           NA                0.0362319   0.0050145   0.0674493
6-24 months                   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.0647868   0.0251855   0.1043881
6-24 months                   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.1235847   0.0850552   0.1621142
6-24 months                   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.0627962   0.0433150   0.0822775
6-24 months                   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.0743802   0.0275833   0.1211770
6-24 months                   ki1017093-NIH-Birth       BANGLADESH    <48 cm               NA                0.1138614   0.0700156   0.1577072
6-24 months                   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           NA                0.0804020   0.0425865   0.1182176
6-24 months                   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.1036553   0.0817178   0.1255928
6-24 months                   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.1298030   0.0892306   0.1703755
6-24 months                   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.1168585   0.0880232   0.1456938
6-24 months                   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                0.1334628   0.0656165   0.2013090
6-24 months                   ki1113344-GMS-Nepal       NEPAL         <48 cm               NA                0.2018039   0.1572290   0.2463789
6-24 months                   ki1113344-GMS-Nepal       NEPAL         [48-50) cm           NA                0.2014925   0.1418093   0.2611758
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0229517   0.0176306   0.0282727
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0416970   0.0349941   0.0483999
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0341433   0.0286070   0.0396795
6-24 months                   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0165202   0.0097871   0.0232533
6-24 months                   ki1135781-COHORTS         INDIA         <48 cm               NA                0.0542826   0.0454873   0.0630780
6-24 months                   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.0319943   0.0245651   0.0394235
6-24 months                   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0484451   0.0352706   0.0616197
6-24 months                   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.0808633   0.0608848   0.1008417
6-24 months                   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.0765566   0.0606198   0.0924935
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0221942   0.0129690   0.0314194
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.0370705   0.0330983   0.0410428
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0243244   0.0185233   0.0301255
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0359466   0.0239766   0.0479167
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.0563699   0.0454425   0.0672973
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0292874   0.0186435   0.0399312


### Parameter: E(Y)


agecat                        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-IRC             INDIA         NA                   NA                0.1923077   0.1531430   0.2314724
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN      NA                   NA                0.1833333   0.1342773   0.2323894
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.1141706   0.0903032   0.1380379
0-24 months (no birth wast)   ki1017093-NIH-Birth       BANGLADESH    NA                   NA                0.0912220   0.0677898   0.1146542
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA        NA                   NA                0.1460892   0.1284833   0.1636951
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL         NA                   NA                0.1987860   0.1682929   0.2292792
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0352566   0.0321456   0.0383677
0-24 months (no birth wast)   ki1135781-COHORTS         INDIA         NA                   NA                0.0514063   0.0459957   0.0568168
0-24 months (no birth wast)   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0826968   0.0728574   0.0925361
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0377996   0.0348944   0.0407048
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0465950   0.0398949   0.0532951
0-6 months (no birth wast)    ki1000108-IRC             INDIA         NA                   NA                0.1532258   0.1165727   0.1898789
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA        NA                   NA                0.0430528   0.0328889   0.0532168
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0099593   0.0082687   0.0116498
0-6 months (no birth wast)    ki1135781-COHORTS         INDIA         NA                   NA                0.0194977   0.0160139   0.0229815
0-6 months (no birth wast)    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0220736   0.0168064   0.0273407
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0177215   0.0156439   0.0197992
6-24 months                   ki1000108-IRC             INDIA         NA                   NA                0.0588235   0.0354714   0.0821757
6-24 months                   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0952035   0.0698704   0.1205365
6-24 months                   ki1017093-NIH-Birth       BANGLADESH    NA                   NA                0.0919540   0.0671416   0.1167664
6-24 months                   ki1101329-Keneba          GAMBIA        NA                   NA                0.1129792   0.0968836   0.1290747
6-24 months                   ki1113344-GMS-Nepal       NEPAL         NA                   NA                0.1901528   0.1584343   0.2218713
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0331151   0.0297229   0.0365072
6-24 months                   ki1135781-COHORTS         INDIA         NA                   NA                0.0377695   0.0330119   0.0425271
6-24 months                   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0670949   0.0578297   0.0763601
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0331237   0.0300503   0.0361971
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0442557   0.0375111   0.0510003


### Parameter: RR


agecat                        studyid                   country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.8696972   0.5011327   1.509327
0-24 months (no birth wast)   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           0.9989975   0.6126751   1.628916
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN      <48 cm               >=50 cm           1.0074074   0.4362537   2.326329
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN      [48-50) cm           >=50 cm           0.4444445   0.1414439   1.396532
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           2.1451830   1.0986057   4.188773
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           1.1692657   0.6196455   2.206394
0-24 months (no birth wast)   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093-NIH-Birth       BANGLADESH    <48 cm               >=50 cm           1.3816229   0.6834316   2.793084
0-24 months (no birth wast)   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           >=50 cm           1.1210677   0.5392440   2.330657
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           1.2738831   0.9309751   1.743095
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           1.2175249   0.9253781   1.601904
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL         <48 cm               >=50 cm           1.4990902   0.8895103   2.526414
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL         [48-50) cm           >=50 cm           1.5697222   0.9063894   2.718509
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           1.7023299   1.3375201   2.166642
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           1.4370401   1.1304105   1.826845
0-24 months (no birth wast)   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           2.4970868   1.7698947   3.523059
0-24 months (no birth wast)   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm           1.9240307   1.3428559   2.756732
0-24 months (no birth wast)   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           1.3415419   0.9795312   1.837343
0-24 months (no birth wast)   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           1.3702167   1.0320192   1.819243
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           1.0064546   0.7076872   1.431354
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           0.9562791   0.6580512   1.389663
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           1.5448997   1.0670030   2.236840
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           0.8634813   0.5297564   1.407439
0-6 months (no birth wast)    ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.7518630   0.3865713   1.462338
0-6 months (no birth wast)    ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           1.2381429   0.7165100   2.139535
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           1.4525870   0.7566510   2.788616
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           1.6821448   0.9846447   2.873738
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           1.2031458   0.7687050   1.883115
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           1.2413529   0.8097641   1.902970
0-6 months (no birth wast)    ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           1.5398144   0.8888590   2.667497
0-6 months (no birth wast)    ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm           1.7915316   1.0375082   3.093552
0-6 months (no birth wast)    ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           0.6552765   0.3335716   1.287242
0-6 months (no birth wast)    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           0.9841698   0.5808849   1.667439
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           0.7349681   0.4564313   1.183482
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           1.0180070   0.6121159   1.693042
6-24 months                   ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1000108-IRC             INDIA         <48 cm               >=50 cm           1.2792793   0.5247750   3.118585
6-24 months                   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           0.5716586   0.1962438   1.665243
6-24 months                   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           1.9075598   0.9242290   3.937103
6-24 months                   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           0.9692751   0.5544781   1.694376
6-24 months                   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1017093-NIH-Birth       BANGLADESH    <48 cm               >=50 cm           1.5308031   0.7320864   3.200931
6-24 months                   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           >=50 cm           1.0809604   0.4927882   2.371151
6-24 months                   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           1.2522566   0.8590935   1.825351
6-24 months                   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           1.1273761   0.8147130   1.560030
6-24 months                   ki1113344-GMS-Nepal       NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal       NEPAL         <48 cm               >=50 cm           1.5120619   0.8687455   2.631762
6-24 months                   ki1113344-GMS-Nepal       NEPAL         [48-50) cm           >=50 cm           1.5097286   0.8382461   2.719106
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           1.8167316   1.3701333   2.408900
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           1.4876174   1.1210139   1.974111
6-24 months                   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           3.2858310   2.1195089   5.093956
6-24 months                   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm           1.9366764   1.2116599   3.095518
6-24 months                   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           1.6691733   1.1563342   2.409459
6-24 months                   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           1.5802762   1.1224677   2.224806
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           1.6702811   1.0858038   2.569377
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           1.0959790   0.6802026   1.765900
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           1.5681547   1.0602494   2.319369
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           0.8147457   0.4968616   1.336007


### Parameter: PAR


agecat                        studyid                   country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0001621   -0.0524568   0.0521325
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN      >=50 cm              NA                -0.0250000   -0.1786684   0.1286684
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                 0.0455777    0.0019169   0.0892386
0-24 months (no birth wast)   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                 0.0138617   -0.0276719   0.0553953
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.0156729   -0.0021899   0.0335358
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                 0.0604513   -0.0022291   0.1231318
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.0096508    0.0051711   0.0141304
0-24 months (no birth wast)   ki1135781-COHORTS         INDIA         >=50 cm              NA                 0.0250842    0.0169745   0.0331938
0-24 months (no birth wast)   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                 0.0152765    0.0029935   0.0275596
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                -0.0005252   -0.0131957   0.0121453
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.0086377   -0.0020217   0.0192971
0-6 months (no birth wast)    ki1000108-IRC             INDIA         >=50 cm              NA                 0.0018735   -0.0481387   0.0518856
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.0101159   -0.0002348   0.0204666
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.0013414   -0.0011725   0.0038552
0-6 months (no birth wast)    ki1135781-COHORTS         INDIA         >=50 cm              NA                 0.0066334    0.0008643   0.0124026
0-6 months (no birth wast)    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0018813   -0.0087726   0.0050099
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                -0.0040761   -0.0136985   0.0055462
6-24 months                   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0045568   -0.0359562   0.0268427
6-24 months                   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                 0.0304167   -0.0112531   0.0720865
6-24 months                   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                 0.0175739   -0.0247385   0.0598862
6-24 months                   ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.0093239   -0.0066229   0.0252707
6-24 months                   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                 0.0566900   -0.0072787   0.1206587
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.0101634    0.0053062   0.0150207
6-24 months                   ki1135781-COHORTS         INDIA         >=50 cm              NA                 0.0212493    0.0143461   0.0281524
6-24 months                   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                 0.0186498    0.0072218   0.0300779
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                 0.0109295    0.0017069   0.0201521
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.0083090   -0.0024087   0.0190268


### Parameter: PAF


agecat                        studyid                   country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0008430   -0.3133000   0.2372750
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN      >=50 cm              NA                -0.1363636   -1.3752423   0.4563408
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                 0.3992074   -0.0871215   0.6679748
0-24 months (no birth wast)   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                 0.1519558   -0.4483118   0.5034364
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.1072832   -0.0233955   0.2212754
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                 0.3041025   -0.0917351   0.5564187
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.2737286    0.1372971   0.3885842
0-24 months (no birth wast)   ki1135781-COHORTS         INDIA         >=50 cm              NA                 0.4879594    0.3138696   0.6178779
0-24 months (no birth wast)   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                 0.1847295    0.0232602   0.3195055
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                -0.0138948   -0.4110724   0.2714884
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.1853776   -0.0774865   0.3841133
0-6 months (no birth wast)    ki1000108-IRC             INDIA         >=50 cm              NA                 0.0122269   -0.3745773   0.2901849
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.2349652   -0.0399723   0.4372174
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.1346873   -0.1571834   0.3529409
0-6 months (no birth wast)    ki1135781-COHORTS         INDIA         >=50 cm              NA                 0.3402172   -0.0238060   0.5748088
0-6 months (no birth wast)    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0852293   -0.4461338   0.1856060
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                -0.2300099   -0.9076269   0.2069076
6-24 months                   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0774648   -0.7670506   0.3430124
6-24 months                   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                 0.3194913   -0.2478521   0.6288886
6-24 months                   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                 0.1911157   -0.4244304   0.5406628
6-24 months                   ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.0825272   -0.0697704   0.2131431
6-24 months                   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                 0.2981289   -0.1296158   0.5639021
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.3069119    0.1474276   0.4365627
6-24 months                   ki1135781-COHORTS         INDIA         >=50 cm              NA                 0.5626044    0.3562024   0.7028338
6-24 months                   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                 0.2779618    0.0902659   0.4269324
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                 0.3299601   -0.0100792   0.5555264
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.1877510   -0.0921193   0.3959007
