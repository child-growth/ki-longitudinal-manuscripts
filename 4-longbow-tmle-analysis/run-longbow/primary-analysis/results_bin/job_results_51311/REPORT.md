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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** birthlen

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        birthlen      wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  -----------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 0        4    119
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 1       12    119
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  0       25    119
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  1       43    119
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              0       15    119
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              1       20    119
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 0        0     22
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 1        6     22
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm                  0        3     22
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm                  1        6     22
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              0        2     22
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              1        5     22
0-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm                 0        3    144
0-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm                 1        9    144
0-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm                  0       35    144
0-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm                  1       45    144
0-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm              0       19    144
0-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm              1       33    144
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm                 0        4     72
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm                 1        8     72
0-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm                  0        8     72
0-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm                  1       38     72
0-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm              0        1     72
0-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm              1       13     72
0-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm                 0        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm                 1        4     34
0-24 months   ki0047075b-MAL-ED          PERU                           <48 cm                  0        5     34
0-24 months   ki0047075b-MAL-ED          PERU                           <48 cm                  1       17     34
0-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm              0        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm              1        7     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 0        1     72
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 1       10     72
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  0        8     72
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  1       25     72
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              0        5     72
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              1       23     72
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 0        0     24
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 1        1     24
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  0        2     24
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  1       14     24
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              0        1     24
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              1        6     24
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 0        3     87
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 1        3     87
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  0       19     87
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  1       26     87
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              0        9     87
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              1       27     87
0-24 months   ki1000108-IRC              INDIA                          >=50 cm                 0       62    387
0-24 months   ki1000108-IRC              INDIA                          >=50 cm                 1      100    387
0-24 months   ki1000108-IRC              INDIA                          <48 cm                  0       50    387
0-24 months   ki1000108-IRC              INDIA                          <48 cm                  1       57    387
0-24 months   ki1000108-IRC              INDIA                          [48-50) cm              0       47    387
0-24 months   ki1000108-IRC              INDIA                          [48-50) cm              1       71    387
0-24 months   ki1000109-EE               PAKISTAN                       >=50 cm                 0        6     63
0-24 months   ki1000109-EE               PAKISTAN                       >=50 cm                 1        8     63
0-24 months   ki1000109-EE               PAKISTAN                       <48 cm                  0       15     63
0-24 months   ki1000109-EE               PAKISTAN                       <48 cm                  1       16     63
0-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm              0       10     63
0-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm              1        8     63
0-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm                 0        2     10
0-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm                 1        3     10
0-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm                  0        0     10
0-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm                  1        2     10
0-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm              0        3     10
0-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm              1        0     10
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 0       49    809
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 1       42    809
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  0      309    809
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  1      166    809
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              0      141    809
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              1      102    809
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 0        7    170
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 1       18    170
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  0       43    170
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  1       39    170
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              0       33    170
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              1       30    170
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 0       18    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 1       41    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  0       63    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  1       80    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              0       47    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              1       58    307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 0       14    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 1       54    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  0       59    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  1       62    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              0       44    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              1       78    311
0-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm                 0      170    919
0-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm                 1      273    919
0-24 months   ki1101329-Keneba           GAMBIA                         <48 cm                  0       92    919
0-24 months   ki1101329-Keneba           GAMBIA                         <48 cm                  1       86    919
0-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm              0      143    919
0-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm              1      155    919
0-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm                 0        1      3
0-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm                 1        0      3
0-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm                  0        2      3
0-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm                  1        0      3
0-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm              0        0      3
0-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm              1        0      3
0-24 months   ki1114097-CMIN             BRAZIL                         >=50 cm                 0        4     13
0-24 months   ki1114097-CMIN             BRAZIL                         >=50 cm                 1        5     13
0-24 months   ki1114097-CMIN             BRAZIL                         <48 cm                  0        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         <48 cm                  1        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         [48-50) cm              0        3     13
0-24 months   ki1114097-CMIN             BRAZIL                         [48-50) cm              1        1     13
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                 0        0      1
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                 1        0      1
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                  0        0      1
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                  1        1      1
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm              0        0      1
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm              1        0      1
0-24 months   ki1114097-CMIN             PERU                           >=50 cm                 0        0      3
0-24 months   ki1114097-CMIN             PERU                           >=50 cm                 1        1      3
0-24 months   ki1114097-CMIN             PERU                           <48 cm                  0        1      3
0-24 months   ki1114097-CMIN             PERU                           <48 cm                  1        1      3
0-24 months   ki1114097-CMIN             PERU                           [48-50) cm              0        0      3
0-24 months   ki1114097-CMIN             PERU                           [48-50) cm              1        0      3
0-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm                 0      562   4431
0-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm                 1     3595   4431
0-24 months   ki1119695-PROBIT           BELARUS                        <48 cm                  0        7   4431
0-24 months   ki1119695-PROBIT           BELARUS                        <48 cm                  1       18   4431
0-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm              0       46   4431
0-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm              1      203   4431
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 0      440   3555
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 1      870   3555
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  0      570   3555
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  1      371   3555
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              0      604   3555
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              1      700   3555
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm                 0       59    295
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm                 1      118    295
0-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm                  0       33    295
0-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm                  1       11    295
0-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm              0       35    295
0-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm              1       39    295
0-24 months   ki1135781-COHORTS          INDIA                          >=50 cm                 0      338   2497
0-24 months   ki1135781-COHORTS          INDIA                          >=50 cm                 1      186   2497
0-24 months   ki1135781-COHORTS          INDIA                          <48 cm                  0      862   2497
0-24 months   ki1135781-COHORTS          INDIA                          <48 cm                  1      211   2497
0-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm              0      653   2497
0-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm              1      247   2497
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 0      190   1686
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 1      423   1686
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm                  0      218   1686
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm                  1      259   1686
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              0      255   1686
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              1      341   1686
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 0      540   7451
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 1      459   7451
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  0     2842   7451
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  1     1886   7451
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              0      903   7451
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              1      821   7451
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 0      286   1770
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 1      125   1770
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  0      715   1770
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  1      249   1770
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              0      274   1770
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              1      121   1770
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 0        3     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 1       11     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  0        6     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  1       22     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              0        4     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              1       14     60
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 0        0     13
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 1        5     13
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm                  0        0     13
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm                  1        3     13
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              0        0     13
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              1        5     13
0-6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm                 0        2     65
0-6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm                 1        6     65
0-6 months    ki0047075b-MAL-ED          INDIA                          <48 cm                  0        6     65
0-6 months    ki0047075b-MAL-ED          INDIA                          <48 cm                  1       21     65
0-6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm              0       11     65
0-6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm              1       19     65
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm                 0        3     31
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm                 1        6     31
0-6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm                  0        2     31
0-6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm                  1       14     31
0-6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm              0        0     31
0-6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm              1        6     31
0-6 months    ki0047075b-MAL-ED          PERU                           >=50 cm                 0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           >=50 cm                 1        3     11
0-6 months    ki0047075b-MAL-ED          PERU                           <48 cm                  0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           <48 cm                  1        5     11
0-6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm              0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm              1        3     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 0        1     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 1        7     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  0        2     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  1        8     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              0        3     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              1        8     29
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 0        0      8
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 1        1      8
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  0        0      8
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  1        4      8
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              0        0      8
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              1        3      8
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 0        3     62
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 1        3     62
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  0       11     62
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  1       19     62
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              0        6     62
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              1       20     62
0-6 months    ki1000108-IRC              INDIA                          >=50 cm                 0       38    236
0-6 months    ki1000108-IRC              INDIA                          >=50 cm                 1       76    236
0-6 months    ki1000108-IRC              INDIA                          <48 cm                  0       21    236
0-6 months    ki1000108-IRC              INDIA                          <48 cm                  1       31    236
0-6 months    ki1000108-IRC              INDIA                          [48-50) cm              0       26    236
0-6 months    ki1000108-IRC              INDIA                          [48-50) cm              1       44    236
0-6 months    ki1000109-EE               PAKISTAN                       >=50 cm                 0        1     27
0-6 months    ki1000109-EE               PAKISTAN                       >=50 cm                 1        4     27
0-6 months    ki1000109-EE               PAKISTAN                       <48 cm                  0        4     27
0-6 months    ki1000109-EE               PAKISTAN                       <48 cm                  1        8     27
0-6 months    ki1000109-EE               PAKISTAN                       [48-50) cm              0        4     27
0-6 months    ki1000109-EE               PAKISTAN                       [48-50) cm              1        6     27
0-6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm                 0        1      6
0-6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm                 1        3      6
0-6 months    ki1000109-ResPak           PAKISTAN                       <48 cm                  0        0      6
0-6 months    ki1000109-ResPak           PAKISTAN                       <48 cm                  1        1      6
0-6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm              0        1      6
0-6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm              1        0      6
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 0       20    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 1       24    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  0      102    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  1       93    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              0       43    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              1       58    340
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 0        4     91
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 1       12     91
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  0       15     91
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  1       27     91
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              0       11     91
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              1       22     91
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 0        8    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 1       38    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  0       19    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  1       58    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              0       12    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              1       49    184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 0        3    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 1       49    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  0        9    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  1       58    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              0        9    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              1       70    198
0-6 months    ki1101329-Keneba           GAMBIA                         >=50 cm                 0       30    255
0-6 months    ki1101329-Keneba           GAMBIA                         >=50 cm                 1       93    255
0-6 months    ki1101329-Keneba           GAMBIA                         <48 cm                  0       17    255
0-6 months    ki1101329-Keneba           GAMBIA                         <48 cm                  1       32    255
0-6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm              0       38    255
0-6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm              1       45    255
0-6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm                 0        1      3
0-6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm                 1        0      3
0-6 months    ki1114097-CMIN             BANGLADESH                     <48 cm                  0        2      3
0-6 months    ki1114097-CMIN             BANGLADESH                     <48 cm                  1        0      3
0-6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm              0        0      3
0-6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm              1        0      3
0-6 months    ki1114097-CMIN             BRAZIL                         >=50 cm                 0        2      9
0-6 months    ki1114097-CMIN             BRAZIL                         >=50 cm                 1        5      9
0-6 months    ki1114097-CMIN             BRAZIL                         <48 cm                  0        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         <48 cm                  1        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm              0        2      9
0-6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm              1        0      9
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                 0        0      1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                 1        0      1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                  0        0      1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                  1        1      1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm              0        0      1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm              1        0      1
0-6 months    ki1114097-CMIN             PERU                           >=50 cm                 0        0      2
0-6 months    ki1114097-CMIN             PERU                           >=50 cm                 1        1      2
0-6 months    ki1114097-CMIN             PERU                           <48 cm                  0        0      2
0-6 months    ki1114097-CMIN             PERU                           <48 cm                  1        1      2
0-6 months    ki1114097-CMIN             PERU                           [48-50) cm              0        0      2
0-6 months    ki1114097-CMIN             PERU                           [48-50) cm              1        0      2
0-6 months    ki1119695-PROBIT           BELARUS                        >=50 cm                 0      454   4263
0-6 months    ki1119695-PROBIT           BELARUS                        >=50 cm                 1     3566   4263
0-6 months    ki1119695-PROBIT           BELARUS                        <48 cm                  0        5   4263
0-6 months    ki1119695-PROBIT           BELARUS                        <48 cm                  1       16   4263
0-6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm              0       29   4263
0-6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm              1      193   4263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 0      235   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 1      856   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  0      171   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  1      347   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              0      240   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              1      665   2514
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm                 0       28    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm                 1      114    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm                  0       11    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm                  1        9    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm              0       13    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm              1       37    212
0-6 months    ki1135781-COHORTS          INDIA                          >=50 cm                 0      230   1717
0-6 months    ki1135781-COHORTS          INDIA                          >=50 cm                 1      186   1717
0-6 months    ki1135781-COHORTS          INDIA                          <48 cm                  0      442   1717
0-6 months    ki1135781-COHORTS          INDIA                          <48 cm                  1      211   1717
0-6 months    ki1135781-COHORTS          INDIA                          [48-50) cm              0      401   1717
0-6 months    ki1135781-COHORTS          INDIA                          [48-50) cm              1      247   1717
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 0       82    751
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 1      276    751
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm                  0       45    751
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm                  1      109    751
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              0       71    751
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              1      168    751
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 0      231   4670
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 1      459   4670
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  0      889   4670
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  1     1886   4670
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              0      384   4670
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              1      821   4670
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 0       41    504
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 1       85    504
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  0      109    504
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  1      137    504
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              0       45    504
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              1       87    504
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 0        1     59
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 1        1     59
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  0       19     59
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  1       21     59
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              0       11     59
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              1        6     59
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 1        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm                  0        3      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm                  1        3      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              0        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              1        0      9
6-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm                 0        1     79
6-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm                 1        3     79
6-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm                  0       29     79
6-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm                  1       24     79
6-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm              0        8     79
6-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm              1       14     79
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm                 0        1     41
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm                 1        2     41
6-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm                  0        6     41
6-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm                  1       24     41
6-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm              0        1     41
6-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm              1        7     41
6-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm                 0        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm                 1        1     23
6-24 months   ki0047075b-MAL-ED          PERU                           <48 cm                  0        5     23
6-24 months   ki0047075b-MAL-ED          PERU                           <48 cm                  1       12     23
6-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm              0        1     23
6-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm              1        4     23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 0        0     43
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 1        3     43
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  0        6     43
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  1       17     43
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              0        2     43
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              1       15     43
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 0        0     16
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 1        0     16
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  0        2     16
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  1       10     16
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              0        1     16
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              1        3     16
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 0        0     25
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 1        0     25
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  0        8     25
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  1        7     25
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              0        3     25
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              1        7     25
6-24 months   ki1000108-IRC              INDIA                          >=50 cm                 0       24    151
6-24 months   ki1000108-IRC              INDIA                          >=50 cm                 1       24    151
6-24 months   ki1000108-IRC              INDIA                          <48 cm                  0       29    151
6-24 months   ki1000108-IRC              INDIA                          <48 cm                  1       26    151
6-24 months   ki1000108-IRC              INDIA                          [48-50) cm              0       21    151
6-24 months   ki1000108-IRC              INDIA                          [48-50) cm              1       27    151
6-24 months   ki1000109-EE               PAKISTAN                       >=50 cm                 0        5     36
6-24 months   ki1000109-EE               PAKISTAN                       >=50 cm                 1        4     36
6-24 months   ki1000109-EE               PAKISTAN                       <48 cm                  0       11     36
6-24 months   ki1000109-EE               PAKISTAN                       <48 cm                  1        8     36
6-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm              0        6     36
6-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm              1        2     36
6-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm                 0        1      4
6-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm                 1        0      4
6-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm                  0        0      4
6-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm                  1        1      4
6-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm              0        2      4
6-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm              1        0      4
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 0       29    469
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 1       18    469
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  0      207    469
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  1       73    469
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              0       98    469
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              1       44    469
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 0        3     79
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 1        6     79
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  0       28     79
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  1       12     79
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              0       22     79
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              1        8     79
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 0       10    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 1        3    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  0       44    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  1       22    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              0       35    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              1        9    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 0       11    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 1        5    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  0       50    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  1        4    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              0       35    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              1        8    113
6-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm                 0      140    664
6-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm                 1      180    664
6-24 months   ki1101329-Keneba           GAMBIA                         <48 cm                  0       75    664
6-24 months   ki1101329-Keneba           GAMBIA                         <48 cm                  1       54    664
6-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm              0      105    664
6-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm              1      110    664
6-24 months   ki1114097-CMIN             BRAZIL                         >=50 cm                 0        2      4
6-24 months   ki1114097-CMIN             BRAZIL                         >=50 cm                 1        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         <48 cm                  0        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         <48 cm                  1        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         [48-50) cm              0        1      4
6-24 months   ki1114097-CMIN             BRAZIL                         [48-50) cm              1        1      4
6-24 months   ki1114097-CMIN             PERU                           >=50 cm                 0        0      1
6-24 months   ki1114097-CMIN             PERU                           >=50 cm                 1        0      1
6-24 months   ki1114097-CMIN             PERU                           <48 cm                  0        1      1
6-24 months   ki1114097-CMIN             PERU                           <48 cm                  1        0      1
6-24 months   ki1114097-CMIN             PERU                           [48-50) cm              0        0      1
6-24 months   ki1114097-CMIN             PERU                           [48-50) cm              1        0      1
6-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm                 0      108    168
6-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm                 1       29    168
6-24 months   ki1119695-PROBIT           BELARUS                        <48 cm                  0        2    168
6-24 months   ki1119695-PROBIT           BELARUS                        <48 cm                  1        2    168
6-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm              0       17    168
6-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm              1       10    168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 0      205   1041
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 1       14   1041
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  0      399   1041
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  1       24   1041
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              0      364   1041
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              1       35   1041
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm                 0       31     83
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm                 1        4     83
6-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm                  0       22     83
6-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm                  1        2     83
6-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm              0       22     83
6-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm              1        2     83
6-24 months   ki1135781-COHORTS          INDIA                          >=50 cm                 0      108    780
6-24 months   ki1135781-COHORTS          INDIA                          >=50 cm                 1        0    780
6-24 months   ki1135781-COHORTS          INDIA                          <48 cm                  0      420    780
6-24 months   ki1135781-COHORTS          INDIA                          <48 cm                  1        0    780
6-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm              0      252    780
6-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm              1        0    780
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 0      108    935
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 1      147    935
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm                  0      173    935
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm                  1      150    935
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              0      184    935
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              1      173    935
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 0      309   2781
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 1        0   2781
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  0     1953   2781
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  1        0   2781
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              0      519   2781
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              1        0   2781
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 0      245   1266
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 1       40   1266
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  0      606   1266
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  1      112   1266
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              0      229   1266
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              1       34   1266


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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/6f3ee7a8-0c64-4210-a19c-d0e6afd699ef/2b0c7693-267d-451f-8831-6e08941a325c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6f3ee7a8-0c64-4210-a19c-d0e6afd699ef/2b0c7693-267d-451f-8831-6e08941a325c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6f3ee7a8-0c64-4210-a19c-d0e6afd699ef/2b0c7693-267d-451f-8831-6e08941a325c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6f3ee7a8-0c64-4210-a19c-d0e6afd699ef/2b0c7693-267d-451f-8831-6e08941a325c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.6065706   0.5242196   0.6889215
0-24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.5340446   0.4321063   0.6359829
0-24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.6148643   0.5199939   0.7097347
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.5714286   0.3517642   0.7910929
0-24 months   ki1000109-EE              PAKISTAN      <48 cm               NA                0.5161290   0.3192140   0.7130441
0-24 months   ki1000109-EE              PAKISTAN      [48-50) cm           NA                0.4444444   0.1710271   0.7178618
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.4898797   0.3796229   0.6001365
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.3486865   0.3046439   0.3927291
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.4126462   0.3449765   0.4803159
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.7200000   0.5200875   0.9199125
0-24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               NA                0.4756098   0.3649515   0.5862680
0-24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           NA                0.4761905   0.3342656   0.6181153
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                0.7026209   0.5731540   0.8320877
0-24 months   ki1017093b-PROVIDE        BANGLADESH    <48 cm               NA                0.5605693   0.4802054   0.6409332
0-24 months   ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           NA                0.5523598   0.4502950   0.6544246
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              NA                0.8002721   0.7018632   0.8986809
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    <48 cm               NA                0.5079686   0.4176455   0.5982918
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    [48-50) cm           NA                0.6403474   0.5528654   0.7278293
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.6136181   0.5640674   0.6631688
0-24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.4838452   0.4000390   0.5676513
0-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.5217758   0.4580298   0.5855219
0-24 months   ki1119695-PROBIT          BELARUS       >=50 cm              NA                0.8648064   0.8544839   0.8751288
0-24 months   ki1119695-PROBIT          BELARUS       <48 cm               NA                0.7200000   0.6794039   0.7605961
0-24 months   ki1119695-PROBIT          BELARUS       [48-50) cm           NA                0.8152610   0.7681659   0.8623562
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.6665644   0.6405284   0.6926005
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.3916117   0.3601176   0.4231058
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.5364245   0.5095793   0.5632697
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.6666370   0.5966644   0.7366096
0-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.2642675   0.1299681   0.3985669
0-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.5355180   0.4148425   0.6561934
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.3565967   0.3144837   0.3987097
0-24 months   ki1135781-COHORTS         INDIA         <48 cm               NA                0.1961998   0.1728002   0.2195994
0-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.2752449   0.2458791   0.3046107
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.6953402   0.6565915   0.7340890
0-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.5394757   0.4937528   0.5851986
0-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.5746066   0.5318564   0.6173568
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.4666488   0.4352521   0.4980456
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.3984620   0.3845316   0.4123925
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.4808878   0.4570462   0.5047295
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.3020995   0.2535311   0.3506678
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.2577018   0.2297358   0.2856678
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.3048183   0.2584081   0.3512285
0-6 months    ki1000108-IRC             INDIA         >=50 cm              NA                0.6599802   0.5727190   0.7472414
0-6 months    ki1000108-IRC             INDIA         <48 cm               NA                0.6064164   0.4651061   0.7477266
0-6 months    ki1000108-IRC             INDIA         [48-50) cm           NA                0.6297369   0.5092637   0.7502100
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.5449349   0.3878140   0.7020557
0-6 months    ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.4785646   0.4083850   0.5487441
0-6 months    ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.5754390   0.4757845   0.6750934
0-6 months    ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                0.8260870   0.7144288   0.9377451
0-6 months    ki1017093b-PROVIDE        BANGLADESH    <48 cm               NA                0.7532468   0.6610826   0.8454109
0-6 months    ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           NA                0.8032787   0.7015873   0.9049701
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.7605551   0.6821416   0.8389686
0-6 months    ki1101329-Keneba          GAMBIA        <48 cm               NA                0.6629054   0.5222693   0.8035415
0-6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.5523630   0.4499951   0.6547308
0-6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                0.8870647   0.8772095   0.8969198
0-6 months    ki1119695-PROBIT          BELARUS       <48 cm               NA                0.7619048   0.7256402   0.7981693
0-6 months    ki1119695-PROBIT          BELARUS       [48-50) cm           NA                0.8693694   0.8246128   0.9141259
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.7856685   0.7612957   0.8100412
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.6687708   0.6280773   0.7094642
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.7348493   0.7061416   0.7635570
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.8028169   0.7377837   0.8678501
0-6 months    ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.4500000   0.2304135   0.6695865
0-6 months    ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.7400000   0.6175523   0.8624477
0-6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                0.4448915   0.3970281   0.4927549
0-6 months    ki1135781-COHORTS         INDIA         <48 cm               NA                0.3251248   0.2888773   0.3613723
0-6 months    ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.3818995   0.3441953   0.4196037
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.7726399   0.7288424   0.8164375
0-6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.7039977   0.6315643   0.7764312
0-6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.7002158   0.6426745   0.7577572
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.6771787   0.6425679   0.7117896
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.6799968   0.6625772   0.6974165
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.6819804   0.6552236   0.7087373
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.6853841   0.6044349   0.7663332
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.5636016   0.5010154   0.6261879
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.6712204   0.5905058   0.7519350
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.4884306   0.3191862   0.6576750
6-24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.4707894   0.3384769   0.6031018
6-24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.5721282   0.4174991   0.7267572
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.3836696   0.2331199   0.5342193
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.2630039   0.2100495   0.3159582
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.3175025   0.2398589   0.3951460
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.5570256   0.4990137   0.6150376
6-24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.4274618   0.3373091   0.5176145
6-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.5067576   0.4333325   0.5801827
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0603322   0.0278361   0.0928284
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0553171   0.0333044   0.0773297
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0858087   0.0581623   0.1134552
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.5825747   0.5156204   0.6495289
6-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.4646640   0.4083491   0.5209789
6-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.4881554   0.4317781   0.5445327
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.1408606   0.0997940   0.1819273
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.1558382   0.1296090   0.1820675
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.1301716   0.0909595   0.1693837


### Parameter: E(Y)


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC             INDIA         NA                   NA                0.5891473   0.5364145   0.6418800
0-24 months   ki1000109-EE              PAKISTAN      NA                   NA                0.5079365   0.3724516   0.6434214
0-24 months   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.3831891   0.3479331   0.4184451
0-24 months   ki1017093-NIH-Birth       BANGLADESH    NA                   NA                0.5117647   0.4302715   0.5932579
0-24 months   ki1017093b-PROVIDE        BANGLADESH    NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.5593036   0.5241177   0.5944895
0-24 months   ki1119695-PROBIT          BELARUS       NA                   NA                0.8612051   0.8511051   0.8713052
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.5459916   0.5294878   0.5624953
0-24 months   ki1135781-COHORTS         GUATEMALA     NA                   NA                0.5694915   0.5120418   0.6269413
0-24 months   ki1135781-COHORTS         INDIA         NA                   NA                0.2579095   0.2406335   0.2751855
0-24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.6067616   0.5822457   0.6312775
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.4249094   0.4136873   0.4361315
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.2796610   0.2580570   0.3012650
0-6 months    ki1000108-IRC             INDIA         NA                   NA                0.6398305   0.5770134   0.7026476
0-6 months    ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.5147059   0.4610948   0.5683169
0-6 months    ki1017093b-PROVIDE        BANGLADESH    NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1101329-Keneba          GAMBIA        NA                   NA                0.6666667   0.6089363   0.7243970
0-6 months    ki1119695-PROBIT          BELARUS       NA                   NA                0.8855266   0.8758983   0.8951550
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.7430390   0.7259692   0.7601088
0-6 months    ki1135781-COHORTS         GUATEMALA     NA                   NA                0.7547170   0.6968087   0.8126253
0-6 months    ki1135781-COHORTS         INDIA         NA                   NA                0.3750728   0.3521661   0.3979795
0-6 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.7363515   0.7047428   0.7679603
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.6779443   0.6645427   0.6913460
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.6130952   0.5705324   0.6556580
6-24 months   ki1000108-IRC             INDIA         NA                   NA                0.5099338   0.4248374   0.5950302
6-24 months   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.2878465   0.2457514   0.3299415
6-24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.5180723   0.4773341   0.5588105
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0701249   0.0547060   0.0855437
6-24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.5026738   0.4688037   0.5365439
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.1469194   0.1276367   0.1662021


### Parameter: RR


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.8804328   0.6967318   1.1125685
0-24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           1.0136732   0.8249735   1.2455349
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN      <48 cm               >=50 cm           0.9032258   0.5263327   1.5500023
0-24 months   ki1000109-EE              PAKISTAN      [48-50) cm           >=50 cm           0.7777778   0.3767474   1.6056865
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           0.7117798   0.5501659   0.9208688
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           0.8423419   0.6378700   1.1123582
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               >=50 cm           0.6605691   0.4598630   0.9488729
0-24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           >=50 cm           0.6613757   0.4401309   0.9938357
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH    <48 cm               >=50 cm           0.7978261   0.6313469   1.0082041
0-24 months   ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           >=50 cm           0.7861421   0.6053105   1.0209956
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    <48 cm               >=50 cm           0.6347449   0.5110586   0.7883657
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    [48-50) cm           >=50 cm           0.8001621   0.6654933   0.9620824
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           0.7885119   0.6514680   0.9543845
0-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           0.8503267   0.7344522   0.9844828
0-24 months   ki1119695-PROBIT          BELARUS       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT          BELARUS       <48 cm               >=50 cm           0.8325563   0.7859301   0.8819487
0-24 months   ki1119695-PROBIT          BELARUS       [48-50) cm           >=50 cm           0.9427094   0.8887094   0.9999905
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           0.5875076   0.5372407   0.6424779
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           0.8047602   0.7552405   0.8575268
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm           0.3964189   0.2359454   0.6660350
0-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm           0.8033127   0.6261151   1.0306593
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           0.5502007   0.4652596   0.6506494
0-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm           0.7718661   0.6583217   0.9049941
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           0.7758442   0.7010350   0.8586366
0-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           0.8263675   0.7530725   0.9067962
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           0.8538799   0.7915241   0.9211480
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           1.0305133   0.9479069   1.1203186
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           0.8530362   0.7026266   1.0356437
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           1.0089998   0.8085265   1.2591801
0-6 months    ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.9188402   0.7021170   1.2024597
0-6 months    ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           0.9541754   0.7553370   1.2053569
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           0.8782051   0.6355004   1.2136014
0-6 months    ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           1.0559775   0.7543298   1.4782507
0-6 months    ki1017093b-PROVIDE        BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH    <48 cm               >=50 cm           0.9118250   0.7598554   1.0941883
0-6 months    ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           >=50 cm           0.9723900   0.8080025   1.1702220
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           0.8716073   0.6886912   1.1031060
0-6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           0.7262629   0.5873719   0.8979964
0-6 months    ki1119695-PROBIT          BELARUS       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT          BELARUS       <48 cm               >=50 cm           0.8589055   0.8179345   0.9019288
0-6 months    ki1119695-PROBIT          BELARUS       [48-50) cm           >=50 cm           0.9800518   0.9297714   1.0330514
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           0.8512124   0.7950107   0.9113872
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           0.9353173   0.8897642   0.9832025
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm           0.5605263   0.3418008   0.9192189
0-6 months    ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm           0.9217544   0.7666608   1.1082230
0-6 months    ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           0.7307957   0.6258773   0.8533019
0-6 months    ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm           0.8584105   0.7417734   0.9933876
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           0.9111589   0.8102778   1.0245999
0-6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           0.9062641   0.8202137   1.0013422
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           1.0041615   0.9483540   1.0632531
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           1.0070908   0.9442469   1.0741172
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           0.8223150   0.6992733   0.9670067
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           0.9793347   0.8270842   1.1596115
6-24 months   ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.9638817   0.6169436   1.5059204
6-24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           1.1713601   0.7545041   1.8185250
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           0.6854957   0.4410944   1.0653148
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           0.8275414   0.5207765   1.3150070
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           0.7674006   0.6065839   0.9708528
6-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           0.9097563   0.7614736   1.0869143
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           0.9168742   0.4692164   1.7916217
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           1.4222707   0.7588815   2.6655730
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           0.7976043   0.6748542   0.9426815
6-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           0.8379275   0.7117881   0.9864207
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           1.1063294   0.7900427   1.5492386
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           0.9241165   0.6076192   1.4054713


### Parameter: PAR


agecat        studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0174233   -0.0813492    0.0465027
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                -0.0634921   -0.2726645    0.1456804
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.1066906   -0.2094645   -0.0039167
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                -0.2082353   -0.3952402   -0.0212304
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                -0.1195590   -0.2365200   -0.0025979
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              NA                -0.1764779   -0.2680592   -0.0848965
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0543145   -0.0913344   -0.0172946
0-24 months   ki1119695-PROBIT          BELARUS       >=50 cm              NA                -0.0036012   -0.0065370   -0.0006654
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                -0.1205729   -0.1417283   -0.0994174
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                -0.0971455   -0.1450349   -0.0492560
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                -0.0986873   -0.1350410   -0.0623335
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0885787   -0.1203164   -0.0568409
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                -0.0417394   -0.0709653   -0.0125135
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                -0.0224385   -0.0640853    0.0192084
0-6 months    ki1000108-IRC             INDIA         >=50 cm              NA                -0.0201497   -0.0861324    0.0458330
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.0302290   -0.1767468    0.1162887
0-6 months    ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                -0.0380435   -0.1362822    0.0601952
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0938884   -0.1537886   -0.0339883
0-6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                -0.0015381   -0.0041179    0.0010418
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                -0.0426295   -0.0618935   -0.0233655
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                -0.0480999   -0.0918402   -0.0043596
0-6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                -0.0698187   -0.1112353   -0.0284021
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0362884   -0.0691469   -0.0034299
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                 0.0007656   -0.0312679    0.0327991
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                -0.0722888   -0.1434600   -0.0011177
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                 0.0215031   -0.1153458    0.1583521
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.0958231   -0.2371701    0.0455239
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0389534   -0.0812621    0.0033554
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.0097927   -0.0194717    0.0390570
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0799009   -0.1374451   -0.0223566
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.0060588   -0.0300350    0.0421527


### Parameter: PAF


agecat        studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0295737   -0.1440767    0.0734694
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                -0.1250000   -0.6358867    0.2263370
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.2784280   -0.5768219   -0.0365014
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                -0.4068966   -0.8360307   -0.0780636
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                -0.2050536   -0.4247384   -0.0192427
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              NA                -0.2829104   -0.4451096   -0.1389164
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0971109   -0.1660156   -0.0322781
0-24 months   ki1119695-PROBIT          BELARUS       >=50 cm              NA                -0.0041816   -0.0076001   -0.0007747
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                -0.2208328   -0.2611974   -0.1817601
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                -0.1705828   -0.2619169   -0.0858592
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                -0.3826430   -0.5301451   -0.2493597
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.1459860   -0.2002718   -0.0941554
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                -0.0982313   -0.1692407   -0.0315345
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                -0.0802345   -0.2394309    0.0585142
0-6 months    ki1000108-IRC             INDIA         >=50 cm              NA                -0.0314922   -0.1402820    0.0669184
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.0587306   -0.3852461    0.1908220
0-6 months    ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                -0.0482759   -0.1809211    0.0694702
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.1408326   -0.2366585   -0.0524322
0-6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                -0.0017369   -0.0046554    0.0011731
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                -0.0573718   -0.0837927   -0.0315951
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                -0.0637324   -0.1245591   -0.0061958
0-6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                -0.1861470   -0.3021807   -0.0804528
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0492814   -0.0950897   -0.0053892
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                 0.0011293   -0.0472568    0.0472798
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                -0.1179080   -0.2410382   -0.0069942
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                 0.0421685   -0.2687548    0.2768964
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.3328966   -0.9246916    0.0769361
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0751890   -0.1604223    0.0037838
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.1396461   -0.3971666    0.4702072
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.1589517   -0.2797511   -0.0495549
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.0412391   -0.2389135    0.2580414
