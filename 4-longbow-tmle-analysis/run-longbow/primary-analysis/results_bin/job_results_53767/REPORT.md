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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm               0       36     218
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm               1        3     218
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                0       95     218
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                1        7     218
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm            0       75     218
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm            1        2     218
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm               0       29      62
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm               1        0      62
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm                0       17      62
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm                1        0      62
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm            0       15      62
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm            1        1      62
0-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm               0        8      42
0-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm               1        0      42
0-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm                0       19      42
0-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm                1        0      42
0-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm            0       13      42
0-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm            1        2      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm               0        7      27
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm               1        1      27
0-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm                0       12      27
0-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm                1        0      27
0-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm            0        7      27
0-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm            1        0      27
0-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm               0       49     220
0-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm               1        0     220
0-24 months   ki0047075b-MAL-ED          PERU                           <48 cm                0       83     220
0-24 months   ki0047075b-MAL-ED          PERU                           <48 cm                1        1     220
0-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm            0       87     220
0-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm            1        0     220
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm               0       36     104
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm               1        0     104
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                0       26     104
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                1        0     104
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm            0       40     104
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm            1        2     104
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm               0       32     121
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm               1        0     121
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                0       39     121
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                1        0     121
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm            0       50     121
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm            1        0     121
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm               0       16     106
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm               1        0     106
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                0       45     106
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                1        5     106
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm            0       39     106
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm            1        1     106
0-24 months   ki1000108-IRC              INDIA                          >=50 cm               0      124     391
0-24 months   ki1000108-IRC              INDIA                          >=50 cm               1       18     391
0-24 months   ki1000108-IRC              INDIA                          <48 cm                0      100     391
0-24 months   ki1000108-IRC              INDIA                          <48 cm                1       11     391
0-24 months   ki1000108-IRC              INDIA                          [48-50) cm            0      121     391
0-24 months   ki1000108-IRC              INDIA                          [48-50) cm            1       17     391
0-24 months   ki1000109-EE               PAKISTAN                       >=50 cm               0       22     240
0-24 months   ki1000109-EE               PAKISTAN                       >=50 cm               1        2     240
0-24 months   ki1000109-EE               PAKISTAN                       <48 cm                0      147     240
0-24 months   ki1000109-EE               PAKISTAN                       <48 cm                1       15     240
0-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm            0       51     240
0-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm            1        3     240
0-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm               0       10      35
0-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm               1        1      35
0-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm                0       12      35
0-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm                1        1      35
0-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm            0       10      35
0-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm            1        1      35
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm               0      198    1353
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm               1        8    1353
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                0      634    1353
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                1       78    1353
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm            0      410    1353
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm            1       25    1353
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm               0      112     515
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm               1        8     515
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                0      174     515
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                1       24     515
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm            0      182     515
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm            1       15     515
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm               0      153     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm               1        2     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                0      219     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                1        8     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm            0      254     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm            1        5     641
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm               0      165     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm               1        0     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                0      268     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                1       12     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm            0      271     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm            1       14     730
0-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm               0      711    1509
0-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm               1       31    1509
0-24 months   ki1101329-Keneba           GAMBIA                         <48 cm                0      262    1509
0-24 months   ki1101329-Keneba           GAMBIA                         <48 cm                1       18    1509
0-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm            0      456    1509
0-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm            1       31    1509
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm               0       93     596
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm               1        8     596
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm                0      268     596
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm                1       48     596
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm            0      155     596
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm            1       24     596
0-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm               0        0      12
0-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm               1        0      12
0-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm                0        6      12
0-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm                1        0      12
0-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm            0        6      12
0-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm            1        0      12
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
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm               0     2667    9434
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm               1       34    9434
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                0     2929    9434
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                1       63    9434
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm            0     3672    9434
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm            1       69    9434
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm               0      779   13275
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm               1       51   13275
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                0     8633   13275
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                1      526   13275
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm            0     3137   13275
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm            1      149   13275
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm               0     1131    4410
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm               1       67    4410
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                0     1922    4410
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                1      218    4410
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm            0     1013    4410
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm            1       59    4410
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm               0       36     218
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm               1        3     218
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                0      100     218
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                1        2     218
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm            0       75     218
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm            1        2     218
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm               0       29      62
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm               1        0      62
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm                0       17      62
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm                1        0      62
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm            0       16      62
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm            1        0      62
0-6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm               0        6      42
0-6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm               1        2      42
0-6 months    ki0047075b-MAL-ED          INDIA                          <48 cm                0       19      42
0-6 months    ki0047075b-MAL-ED          INDIA                          <48 cm                1        0      42
0-6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm            0       15      42
0-6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm            1        0      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm               0        7      27
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm               1        1      27
0-6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm                0       12      27
0-6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm                1        0      27
0-6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm            0        7      27
0-6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm            1        0      27
0-6 months    ki0047075b-MAL-ED          PERU                           >=50 cm               0       49     220
0-6 months    ki0047075b-MAL-ED          PERU                           >=50 cm               1        0     220
0-6 months    ki0047075b-MAL-ED          PERU                           <48 cm                0       84     220
0-6 months    ki0047075b-MAL-ED          PERU                           <48 cm                1        0     220
0-6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm            0       87     220
0-6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm            1        0     220
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm               0       35     103
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm               1        1     103
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                0       25     103
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                1        0     103
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm            0       41     103
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm            1        1     103
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm               0       32     121
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm               1        0     121
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                0       39     121
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                1        0     121
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm            0       50     121
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm            1        0     121
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm               0       12     103
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm               1        3     103
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                0       40     103
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                1        8     103
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm            0       38     103
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm            1        2     103
0-6 months    ki1000108-IRC              INDIA                          >=50 cm               0      111     385
0-6 months    ki1000108-IRC              INDIA                          >=50 cm               1       28     385
0-6 months    ki1000108-IRC              INDIA                          <48 cm                0       94     385
0-6 months    ki1000108-IRC              INDIA                          <48 cm                1       14     385
0-6 months    ki1000108-IRC              INDIA                          [48-50) cm            0      117     385
0-6 months    ki1000108-IRC              INDIA                          [48-50) cm            1       21     385
0-6 months    ki1000109-EE               PAKISTAN                       >=50 cm               0       21     236
0-6 months    ki1000109-EE               PAKISTAN                       >=50 cm               1        2     236
0-6 months    ki1000109-EE               PAKISTAN                       <48 cm                0      151     236
0-6 months    ki1000109-EE               PAKISTAN                       <48 cm                1        8     236
0-6 months    ki1000109-EE               PAKISTAN                       [48-50) cm            0       50     236
0-6 months    ki1000109-EE               PAKISTAN                       [48-50) cm            1        4     236
0-6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm               0       10      34
0-6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm               1        0      34
0-6 months    ki1000109-ResPak           PAKISTAN                       <48 cm                0       11      34
0-6 months    ki1000109-ResPak           PAKISTAN                       <48 cm                1        2      34
0-6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm            0        9      34
0-6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm            1        2      34
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm               0       37     166
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm               1        2     166
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                0       67     166
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                1        5     166
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm            0       51     166
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm            1        4     166
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm               0      152     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm               1        3     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                0      220     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                1        5     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm            0      252     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm            1        6     638
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm               0       45     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm               1        0     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                0       95     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                1        1     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm            0      105     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm            1        4     250
0-6 months    ki1101329-Keneba           GAMBIA                         >=50 cm               0      687    1418
0-6 months    ki1101329-Keneba           GAMBIA                         >=50 cm               1       19    1418
0-6 months    ki1101329-Keneba           GAMBIA                         <48 cm                0      247    1418
0-6 months    ki1101329-Keneba           GAMBIA                         <48 cm                1        6    1418
0-6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm            0      440    1418
0-6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm            1       19    1418
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm               0       86     566
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm               1        8     566
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm                0      271     566
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm                1       31     566
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm            0      147     566
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm            1       23     566
0-6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm               0        0      12
0-6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm               1        0      12
0-6 months    ki1114097-CMIN             BANGLADESH                     <48 cm                0        6      12
0-6 months    ki1114097-CMIN             BANGLADESH                     <48 cm                1        0      12
0-6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm            0        6      12
0-6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm            1        0      12
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm               0      212     632
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm               1        3     632
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                0      163     632
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                1        6     632
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm            0      243     632
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm            1        5     632
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm               0      274     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm               1       19     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm                0      191     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm                1       15     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm            0      336     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm            1       18     853
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm               0        3      38
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm               1        1      38
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                0       19      38
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                1        1      38
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm            0       14      38
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm            1        0      38
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm               0       36     218
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm               1        3     218
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                0       95     218
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                1        7     218
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm            0       75     218
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm            1        2     218
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm               0       29      62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm               1        0      62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm                0       17      62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm                1        0      62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm            0       15      62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm            1        1      62
6-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm               0        8      42
6-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm               1        0      42
6-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm                0       19      42
6-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm                1        0      42
6-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm            0       13      42
6-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm            1        2      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm               0        7      27
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm               1        1      27
6-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm                0       12      27
6-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm                1        0      27
6-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm            0        7      27
6-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm            1        0      27
6-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm               0       49     220
6-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm               1        0     220
6-24 months   ki0047075b-MAL-ED          PERU                           <48 cm                0       83     220
6-24 months   ki0047075b-MAL-ED          PERU                           <48 cm                1        1     220
6-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm            0       87     220
6-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm            1        0     220
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm               0       36     104
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm               1        0     104
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                0       26     104
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                1        0     104
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm            0       40     104
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm            1        2     104
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm               0       32     121
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm               1        0     121
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                0       39     121
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                1        0     121
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm            0       50     121
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm            1        0     121
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm               0       16     106
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm               1        0     106
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                0       45     106
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                1        5     106
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm            0       39     106
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm            1        1     106
6-24 months   ki1000108-IRC              INDIA                          >=50 cm               0      124     391
6-24 months   ki1000108-IRC              INDIA                          >=50 cm               1       18     391
6-24 months   ki1000108-IRC              INDIA                          <48 cm                0      100     391
6-24 months   ki1000108-IRC              INDIA                          <48 cm                1       11     391
6-24 months   ki1000108-IRC              INDIA                          [48-50) cm            0      121     391
6-24 months   ki1000108-IRC              INDIA                          [48-50) cm            1       17     391
6-24 months   ki1000109-EE               PAKISTAN                       >=50 cm               0       22     240
6-24 months   ki1000109-EE               PAKISTAN                       >=50 cm               1        2     240
6-24 months   ki1000109-EE               PAKISTAN                       <48 cm                0      147     240
6-24 months   ki1000109-EE               PAKISTAN                       <48 cm                1       15     240
6-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm            0       51     240
6-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm            1        3     240
6-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm               0       10      35
6-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm               1        1      35
6-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm                0       12      35
6-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm                1        1      35
6-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm            0       10      35
6-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm            1        1      35
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm               0      198    1353
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm               1        8    1353
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                0      634    1353
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                1       78    1353
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm            0      410    1353
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm            1       25    1353
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm               0      112     515
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm               1        8     515
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                0      174     515
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                1       24     515
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm            0      182     515
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm            1       15     515
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm               0      153     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm               1        2     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                0      219     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                1        8     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm            0      254     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm            1        5     641
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm               0      165     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm               1        0     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                0      268     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                1       12     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm            0      271     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm            1       14     730
6-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm               0      711    1509
6-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm               1       31    1509
6-24 months   ki1101329-Keneba           GAMBIA                         <48 cm                0      262    1509
6-24 months   ki1101329-Keneba           GAMBIA                         <48 cm                1       18    1509
6-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm            0      456    1509
6-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm            1       31    1509
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm               0       93     596
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm               1        8     596
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm                0      268     596
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm                1       48     596
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm            0      155     596
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm            1       24     596
6-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm               0        0      12
6-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm               1        0      12
6-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm                0        6      12
6-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm                1        0      12
6-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm            0        6      12
6-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm            1        0      12
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
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm               0     2667    9434
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm               1       34    9434
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                0     2929    9434
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                1       63    9434
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm            0     3672    9434
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm            1       69    9434
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm               0      779   13275
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm               1       51   13275
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                0     8633   13275
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                1      526   13275
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm            0     3137   13275
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm            1      149   13275
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
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/13d40792-0c9d-4932-b0ff-afa22ccb4f25/95f381a7-cbdb-468e-a462-75d95cb3d19b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/13d40792-0c9d-4932-b0ff-afa22ccb4f25/95f381a7-cbdb-468e-a462-75d95cb3d19b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/13d40792-0c9d-4932-b0ff-afa22ccb4f25/95f381a7-cbdb-468e-a462-75d95cb3d19b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/13d40792-0c9d-4932-b0ff-afa22ccb4f25/95f381a7-cbdb-468e-a462-75d95cb3d19b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.1289688   0.0736496   0.1842880
0-24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.1001114   0.0446222   0.1556006
0-24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.1244727   0.0694549   0.1794904
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.0388350   0.0114714   0.0661985
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.1095506   0.0778598   0.1412413
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.0574713   0.0276190   0.0873235
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.0666667   0.0219929   0.1113404
0-24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               NA                0.1212121   0.0757078   0.1667164
0-24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           NA                0.0761421   0.0390696   0.1132147
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0412544   0.0268663   0.0556425
0-24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.0652254   0.0360705   0.0943803
0-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.0639497   0.0421596   0.0857397
0-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                0.0792079   0.0264950   0.1319208
0-24 months   ki1113344-GMS-Nepal       NEPAL         <48 cm               NA                0.1518987   0.1122919   0.1915056
0-24 months   ki1113344-GMS-Nepal       NEPAL         [48-50) cm           NA                0.1340782   0.0841203   0.1840362
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0122201   0.0080742   0.0163660
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0218978   0.0166954   0.0271003
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0184581   0.0141284   0.0227877
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0201729   0.0053698   0.0349760
0-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.0354610   0.0049129   0.0660091
0-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.0236967   0.0031589   0.0442345
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0652319   0.0508817   0.0795822
0-24 months   ki1135781-COHORTS         INDIA         <48 cm               NA                0.1201681   0.1062115   0.1341247
0-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.0902159   0.0773452   0.1030867
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0363485   0.0248869   0.0478101
0-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.0718432   0.0529644   0.0907219
0-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.0524220   0.0390098   0.0658342
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0640648   0.0439830   0.0841467
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.0574862   0.0522876   0.0626848
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0454693   0.0372454   0.0536932
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0546246   0.0394425   0.0698067
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.1035930   0.0884402   0.1187458
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0535592   0.0386546   0.0684638
0-6 months    ki1000108-IRC             INDIA         >=50 cm              NA                0.1995761   0.1319154   0.2672368
0-6 months    ki1000108-IRC             INDIA         <48 cm               NA                0.1270613   0.0625798   0.1915428
0-6 months    ki1000108-IRC             INDIA         [48-50) cm           NA                0.1483350   0.0878628   0.2088073
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0269122   0.0149709   0.0388534
0-6 months    ki1101329-Keneba          GAMBIA        <48 cm               NA                0.0237154   0.0049592   0.0424716
0-6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.0413943   0.0231644   0.0596243
0-6 months    ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                0.0851064   0.0286472   0.1415656
0-6 months    ki1113344-GMS-Nepal       NEPAL         <48 cm               NA                0.1026490   0.0683890   0.1369090
0-6 months    ki1113344-GMS-Nepal       NEPAL         [48-50) cm           NA                0.1352941   0.0838328   0.1867555
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0656880   0.0375019   0.0938740
0-6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.0723108   0.0369315   0.1076901
0-6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.0510961   0.0282881   0.0739041
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.1223815   0.0670922   0.1776708
6-24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.0935708   0.0369736   0.1501679
6-24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.1217882   0.0663769   0.1771995
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.0388350   0.0114714   0.0661985
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.1095506   0.0778598   0.1412413
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.0574713   0.0276190   0.0873235
6-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.0666667   0.0219929   0.1113404
6-24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               NA                0.1212121   0.0757078   0.1667164
6-24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           NA                0.0761421   0.0390696   0.1132147
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0411877   0.0268320   0.0555435
6-24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.0662537   0.0372301   0.0952773
6-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.0636909   0.0420149   0.0853670
6-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                0.0792079   0.0264950   0.1319208
6-24 months   ki1113344-GMS-Nepal       NEPAL         <48 cm               NA                0.1518987   0.1122919   0.1915056
6-24 months   ki1113344-GMS-Nepal       NEPAL         [48-50) cm           NA                0.1340782   0.0841203   0.1840362
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0123082   0.0081405   0.0164759
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0219752   0.0167772   0.0271733
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0184185   0.0140834   0.0227536
6-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0201729   0.0053698   0.0349760
6-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.0354610   0.0049129   0.0660091
6-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.0236967   0.0031589   0.0442345
6-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0650874   0.0508863   0.0792885
6-24 months   ki1135781-COHORTS         INDIA         <48 cm               NA                0.1206896   0.1067790   0.1346003
6-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.0901440   0.0773358   0.1029521
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0365410   0.0250559   0.0480260
6-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.0714245   0.0525447   0.0903043
6-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.0522951   0.0389009   0.0656893
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0649884   0.0452690   0.0847078
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.0576419   0.0524349   0.0628488
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0455637   0.0371577   0.0539697
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0549044   0.0397215   0.0700873
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.1035318   0.0884170   0.1186467
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0538616   0.0389278   0.0687953


### Parameter: E(Y)


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC             INDIA         NA                   NA                0.1176471   0.0856708   0.1496233
0-24 months   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0820399   0.0573937   0.1066861
0-24 months   ki1017093-NIH-Birth       BANGLADESH    NA                   NA                0.0912621   0.0663660   0.1161582
0-24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.0530152   0.0417064   0.0643241
0-24 months   ki1113344-GMS-Nepal       NEPAL         NA                   NA                0.1342282   0.1068369   0.1616195
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0175959   0.0149427   0.0202492
0-24 months   ki1135781-COHORTS         GUATEMALA     NA                   NA                0.0243205   0.0128927   0.0357482
0-24 months   ki1135781-COHORTS         INDIA         NA                   NA                0.0962597   0.0882935   0.1042259
0-24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0509986   0.0428544   0.0591428
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0546893   0.0503788   0.0589997
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0780045   0.0689447   0.0870643
0-6 months    ki1000108-IRC             INDIA         NA                   NA                0.1636364   0.1266348   0.2006379
0-6 months    ki1101329-Keneba          GAMBIA        NA                   NA                0.0310296   0.0220013   0.0400579
0-6 months    ki1113344-GMS-Nepal       NEPAL         NA                   NA                0.1095406   0.0837882   0.1352931
0-6 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0609613   0.0448957   0.0770269
6-24 months   ki1000108-IRC             INDIA         NA                   NA                0.1176471   0.0856708   0.1496233
6-24 months   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0820399   0.0573937   0.1066861
6-24 months   ki1017093-NIH-Birth       BANGLADESH    NA                   NA                0.0912621   0.0663660   0.1161582
6-24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.0530152   0.0417064   0.0643241
6-24 months   ki1113344-GMS-Nepal       NEPAL         NA                   NA                0.1342282   0.1068369   0.1616195
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0175959   0.0149427   0.0202492
6-24 months   ki1135781-COHORTS         GUATEMALA     NA                   NA                0.0243205   0.0128927   0.0357482
6-24 months   ki1135781-COHORTS         INDIA         NA                   NA                0.0962597   0.0882935   0.1042259
6-24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0509986   0.0428544   0.0591428
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0546893   0.0503788   0.0589997
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0780045   0.0689447   0.0870643


### Parameter: RR


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.7762451   0.3850877   1.5647253
0-24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           0.9651377   0.5213140   1.7868131
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           2.8209264   1.5294182   5.2030411
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           1.4798847   0.6628767   3.3038707
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               >=50 cm           1.8181818   0.8434443   3.9193878
0-24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           >=50 cm           1.1421320   0.4988675   2.6148537
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           1.5810535   0.8972227   2.7860755
0-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           1.5501294   0.9520816   2.5238396
0-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL         <48 cm               >=50 cm           1.9177215   0.9383612   3.9192327
0-24 months   ki1113344-GMS-Nepal       NEPAL         [48-50) cm           >=50 cm           1.6927374   0.7894952   3.6293571
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           1.7919567   1.1843515   2.7112803
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           1.5104712   0.9999604   2.2816135
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm           1.7578521   0.5669193   5.4505889
0-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm           1.1746784   0.3773324   3.6569067
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           1.8421676   1.4366174   2.3622026
0-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm           1.3830030   1.0641349   1.7974200
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           1.9765091   1.3117418   2.9781685
0-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           1.4422041   0.9612892   2.1637116
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           0.8973131   0.6529094   1.2332046
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           0.7097393   0.4959924   1.0155999
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           1.8964530   1.3842931   2.5981015
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           0.9804959   0.6576035   1.4619330
0-6 months    ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.6366560   0.3456093   1.1728009
0-6 months    ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           0.7432504   0.4368706   1.2644961
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           0.8812149   0.3558288   2.1823409
0-6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           1.5381264   0.8231651   2.8740681
0-6 months    ki1113344-GMS-Nepal       NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL         <48 cm               >=50 cm           1.2061258   0.5739523   2.5346001
0-6 months    ki1113344-GMS-Nepal       NEPAL         [48-50) cm           >=50 cm           1.5897059   0.7399632   3.4152576
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           1.1008224   0.5739519   2.1113439
0-6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           0.7778612   0.4185866   1.4455028
6-24 months   ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.7645827   0.3592934   1.6270458
6-24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           0.9951520   0.5229597   1.8936975
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           2.8209264   1.5294182   5.2030411
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           1.4798847   0.6628767   3.3038707
6-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               >=50 cm           1.8181818   0.8434443   3.9193878
6-24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           >=50 cm           1.1421320   0.4988675   2.6148537
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           1.6085791   0.9191873   2.8150156
6-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           1.5463569   0.9503475   2.5161531
6-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL         <48 cm               >=50 cm           1.9177215   0.9383612   3.9192327
6-24 months   ki1113344-GMS-Nepal       NEPAL         [48-50) cm           >=50 cm           1.6927374   0.7894952   3.6293571
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           1.7854167   1.1813207   2.6984313
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           1.4964464   0.9907212   2.2603248
6-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm           1.7578521   0.5669193   5.4505889
6-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm           1.1746784   0.3773324   3.6569067
6-24 months   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           1.8542700   1.4489541   2.3729647
6-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm           1.3849681   1.0675609   1.7967470
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           1.9546413   1.2970078   2.9457206
6-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           1.4311362   0.9544326   2.1459356
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           0.8869567   0.6514417   1.2076174
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           0.7011058   0.4952366   0.9925546
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           1.8856743   1.3787695   2.5789428
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           0.9810059   0.6590823   1.4601706


### Parameter: PAR


agecat        studyid                   country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0113217   -0.0547231   0.0320796
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                 0.0432050    0.0181178   0.0682921
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                 0.0245955   -0.0164594   0.0656503
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.0117608    0.0003183   0.0232034
0-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                 0.0550203    0.0041559   0.1058846
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.0053759    0.0016004   0.0091513
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                 0.0041475   -0.0073486   0.0156437
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                 0.0310278    0.0175845   0.0444711
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                 0.0146501    0.0046807   0.0246194
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                -0.0093756   -0.0283041   0.0095530
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.0233799    0.0096112   0.0371487
0-6 months    ki1000108-IRC             INDIA         >=50 cm              NA                -0.0359397   -0.0878488   0.0159693
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.0041174   -0.0049442   0.0131791
0-6 months    ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                 0.0244343   -0.0284055   0.0772740
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0047266   -0.0272610   0.0178077
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0047344   -0.0482590   0.0387901
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                 0.0432050    0.0181178   0.0682921
6-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                 0.0245955   -0.0164594   0.0656503
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.0118275    0.0004075   0.0232475
6-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                 0.0550203    0.0041559   0.1058846
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.0052878    0.0014959   0.0090797
6-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                 0.0041475   -0.0073486   0.0156437
6-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                 0.0311723    0.0178825   0.0444621
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                 0.0144576    0.0044679   0.0244473
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                -0.0102991   -0.0288609   0.0082627
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.0231001    0.0093554   0.0368449


### Parameter: PAF


agecat        studyid                   country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0962349   -0.5340768   0.2166423
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                 0.5266333    0.1384809   0.7399060
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                 0.2695035   -0.3427697   0.6025938
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.2218389   -0.0212035   0.4070382
0-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                 0.4099010   -0.1071456   0.6854823
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.3055170    0.0602802   0.4867549
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                 0.1705374   -0.4549860   0.5271375
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                 0.3223343    0.1699867   0.4467188
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                 0.2872641    0.0680757   0.4548995
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                -0.1714333   -0.5715165   0.1267951
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.2997252    0.1019616   0.4539377
0-6 months    ki1000108-IRC             INDIA         >=50 cm              NA                -0.2196317   -0.5783361   0.0575509
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.1326938   -0.2111358   0.3789135
0-6 months    ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                 0.2230611   -0.4412322   0.5811681
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0775351   -0.5181674   0.2352083
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0402428   -0.4839791   0.2708084
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                 0.5266333    0.1384809   0.7399060
6-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                 0.2695035   -0.3427697   0.6025938
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.2230963   -0.0193363   0.4078702
6-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                 0.4099010   -0.1071456   0.6854823
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.3005102    0.0540932   0.4827334
6-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                 0.1705374   -0.4549860   0.5271375
6-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                 0.3238355    0.1734587   0.4468535
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                 0.2834905    0.0638989   0.4515700
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                -0.1883204   -0.5784094   0.1053617
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.2961382    0.0987991   0.4502653
