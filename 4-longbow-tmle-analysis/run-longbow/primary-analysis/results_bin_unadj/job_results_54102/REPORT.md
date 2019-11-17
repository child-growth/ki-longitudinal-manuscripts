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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        birthlen      wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  -----------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 0        6    113
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 1       12    113
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  0       21    113
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  1       39    113
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              0       14    113
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              1       21    113
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 0        0      8
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 1        1      8
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm                  0        1      8
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm                  1        3      8
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              0        1      8
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              1        2      8
0-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm                 0        1     40
0-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm                 1        4     40
0-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm                  0        8     40
0-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm                  1       12     40
0-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm              0        6     40
0-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm              1        9     40
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm                 0        1     13
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm                 1        2     13
0-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm                  0        1     13
0-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm                  1        6     13
0-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm              0        0     13
0-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm              1        3     13
0-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm                 0        0     32
0-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm                 1        6     32
0-24 months   ki0047075b-MAL-ED          PERU                           <48 cm                  0        4     32
0-24 months   ki0047075b-MAL-ED          PERU                           <48 cm                  1       13     32
0-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm              0        1     32
0-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm              1        8     32
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 0        2     37
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 1       11     37
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  0        2     37
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  1        5     37
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              0        6     37
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              1       11     37
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 0        0     28
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 1        2     28
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  0        2     28
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  1       13     28
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              0        2     28
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              1        9     28
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 0        3     88
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 1        3     88
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  0       19     88
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  1       27     88
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              0        9     88
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              1       27     88
0-24 months   ki1000108-IRC              INDIA                          >=50 cm                 0       62    387
0-24 months   ki1000108-IRC              INDIA                          >=50 cm                 1      100    387
0-24 months   ki1000108-IRC              INDIA                          <48 cm                  0       50    387
0-24 months   ki1000108-IRC              INDIA                          <48 cm                  1       57    387
0-24 months   ki1000108-IRC              INDIA                          [48-50) cm              0       47    387
0-24 months   ki1000108-IRC              INDIA                          [48-50) cm              1       71    387
0-24 months   ki1000109-EE               PAKISTAN                       >=50 cm                 0        8    220
0-24 months   ki1000109-EE               PAKISTAN                       >=50 cm                 1       14    220
0-24 months   ki1000109-EE               PAKISTAN                       <48 cm                  0       80    220
0-24 months   ki1000109-EE               PAKISTAN                       <48 cm                  1       77    220
0-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm              0       18    220
0-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm              1       23    220
0-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm                 0        2     23
0-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm                 1        5     23
0-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm                  0        5     23
0-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm                  1        5     23
0-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm              0        4     23
0-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm              1        2     23
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 0       49    809
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 1       42    809
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  0      309    809
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  1      166    809
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              0      141    809
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              1      102    809
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 0       32    408
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 1       53    408
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  0       92    408
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  1       81    408
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              0       73    408
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              1       77    408
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 0       19    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 1       41    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  0       63    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  1       80    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              0       47    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              1       58    308
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 0       14    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 1       53    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  0       59    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  1       62    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              0       44    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              1       78    310
0-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm                 0      181   1225
0-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm                 1      472   1225
0-24 months   ki1101329-Keneba           GAMBIA                         <48 cm                  0       92   1225
0-24 months   ki1101329-Keneba           GAMBIA                         <48 cm                  1      115   1225
0-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm              0      143   1225
0-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm              1      222   1225
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm                 0       34    641
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm                 1       63    641
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm                  0      164    641
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm                  1      180    641
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm              0       96    641
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm              1      104    641
0-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm                 0        1     12
0-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm                 1        0     12
0-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm                  0        4     12
0-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm                  1        3     12
0-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm              0        0     12
0-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm              1        4     12
0-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm                 0      562   4431
0-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm                 1     3595   4431
0-24 months   ki1119695-PROBIT           BELARUS                        <48 cm                  0        7   4431
0-24 months   ki1119695-PROBIT           BELARUS                        <48 cm                  1       18   4431
0-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm              0       46   4431
0-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm              1      203   4431
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 0      447   3595
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 1      879   3595
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  0      581   3595
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  1      377   3595
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              0      607   3595
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              1      704   3595
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 0      195   6353
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 1      227   6353
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  0     2686   6353
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  1     1752   6353
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              0      771   6353
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              1      722   6353
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 0      286   1770
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 1      125   1770
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  0      715   1770
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  1      249   1770
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              0      274   1770
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              1      121   1770
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 0        3     54
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 1        9     54
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  0        6     54
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  1       21     54
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              0        3     54
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              1       12     54
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 0        0      3
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 1        1      3
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm                  0        0      3
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm                  1        1      3
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              0        0      3
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              1        1      3
0-6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm                 0        1     14
0-6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm                 1        2     14
0-6 months    ki0047075b-MAL-ED          INDIA                          <48 cm                  0        0     14
0-6 months    ki0047075b-MAL-ED          INDIA                          <48 cm                  1        5     14
0-6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm              0        2     14
0-6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm              1        4     14
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm                 0        1      4
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm                 1        0      4
0-6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm                  0        0      4
0-6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm                  1        3      4
0-6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm              0        0      4
0-6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm              1        0      4
0-6 months    ki0047075b-MAL-ED          PERU                           >=50 cm                 0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           >=50 cm                 1        3     10
0-6 months    ki0047075b-MAL-ED          PERU                           <48 cm                  0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           <48 cm                  1        4     10
0-6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm              0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm              1        3     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 0        2     21
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 1        8     21
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  0        1     21
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  1        1     21
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              0        3     21
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              1        6     21
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 0        0      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 1        1      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  0        0      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  1        2      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              0        0      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              1        2      5
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 0        3     63
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                 1        3     63
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  0       11     63
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                  1       20     63
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              0        6     63
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm              1       20     63
0-6 months    ki1000108-IRC              INDIA                          >=50 cm                 0       38    236
0-6 months    ki1000108-IRC              INDIA                          >=50 cm                 1       76    236
0-6 months    ki1000108-IRC              INDIA                          <48 cm                  0       21    236
0-6 months    ki1000108-IRC              INDIA                          <48 cm                  1       31    236
0-6 months    ki1000108-IRC              INDIA                          [48-50) cm              0       26    236
0-6 months    ki1000108-IRC              INDIA                          [48-50) cm              1       44    236
0-6 months    ki1000109-EE               PAKISTAN                       >=50 cm                 0        4     84
0-6 months    ki1000109-EE               PAKISTAN                       >=50 cm                 1        9     84
0-6 months    ki1000109-EE               PAKISTAN                       <48 cm                  0       23     84
0-6 months    ki1000109-EE               PAKISTAN                       <48 cm                  1       28     84
0-6 months    ki1000109-EE               PAKISTAN                       [48-50) cm              0        9     84
0-6 months    ki1000109-EE               PAKISTAN                       [48-50) cm              1       11     84
0-6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm                 0        1     14
0-6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm                 1        5     14
0-6 months    ki1000109-ResPak           PAKISTAN                       <48 cm                  0        2     14
0-6 months    ki1000109-ResPak           PAKISTAN                       <48 cm                  1        3     14
0-6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm              0        1     14
0-6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm              1        2     14
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 0       20    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 1       24    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  0      102    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  1       93    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              0       43    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              1       58    340
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 0       14    217
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 1       40    217
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  0       27    217
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  1       57    217
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              0       21    217
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              1       58    217
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 0        8    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 1       38    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  0       20    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  1       58    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              0       12    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              1       49    185
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 0        3    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 1       48    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  0        9    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  1       58    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              0        9    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              1       70    197
0-6 months    ki1101329-Keneba           GAMBIA                         >=50 cm                 0       43    563
0-6 months    ki1101329-Keneba           GAMBIA                         >=50 cm                 1      292    563
0-6 months    ki1101329-Keneba           GAMBIA                         <48 cm                  0       17    563
0-6 months    ki1101329-Keneba           GAMBIA                         <48 cm                  1       61    563
0-6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm              0       38    563
0-6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm              1      112    563
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm                 0       18    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm                 1       31    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm                  0       51    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm                  1       72    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm              0       35    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm              1       56    263
0-6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm                 0        1      5
0-6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm                 1        0      5
0-6 months    ki1114097-CMIN             BANGLADESH                     <48 cm                  0        2      5
0-6 months    ki1114097-CMIN             BANGLADESH                     <48 cm                  1        2      5
0-6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm              0        0      5
0-6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm              1        0      5
0-6 months    ki1119695-PROBIT           BELARUS                        >=50 cm                 0      454   4263
0-6 months    ki1119695-PROBIT           BELARUS                        >=50 cm                 1     3566   4263
0-6 months    ki1119695-PROBIT           BELARUS                        <48 cm                  0        5   4263
0-6 months    ki1119695-PROBIT           BELARUS                        <48 cm                  1       16   4263
0-6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm              0       29   4263
0-6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm              1      193   4263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 0      228   2516
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 1      864   2516
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  0      170   2516
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  1      349   2516
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              0      238   2516
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              1      667   2516
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm                 0       28    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm                 1      114    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm                  0       11    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm                  1        9    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm              0       13    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm              1       37    212
0-6 months    ki1135781-COHORTS          INDIA                          >=50 cm                 0      230   1718
0-6 months    ki1135781-COHORTS          INDIA                          >=50 cm                 1      186   1718
0-6 months    ki1135781-COHORTS          INDIA                          <48 cm                  0      442   1718
0-6 months    ki1135781-COHORTS          INDIA                          <48 cm                  1      211   1718
0-6 months    ki1135781-COHORTS          INDIA                          [48-50) cm              0      402   1718
0-6 months    ki1135781-COHORTS          INDIA                          [48-50) cm              1      247   1718
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 0       82    751
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 1      276    751
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm                  0       45    751
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm                  1      109    751
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              0       71    751
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              1      168    751
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 0       96   3961
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 1      227   3961
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  0      824   3961
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  1     1752   3961
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              0      340   3961
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              1      722   3961
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 0       41    504
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                 1       85    504
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  0      109    504
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                  1      137    504
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              0       45    504
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm              1       87    504
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 0        3     59
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                 1        3     59
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  0       15     59
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                  1       18     59
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              0       11     59
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm              1        9     59
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 0        0      5
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                 1        0      5
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm                  0        1      5
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm                  1        2      5
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              0        1      5
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm              1        1      5
6-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm                 0        0     26
6-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm                 1        2     26
6-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm                  0        8     26
6-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm                  1        7     26
6-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm              0        4     26
6-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm              1        5     26
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm                 0        0      9
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm                 1        2      9
6-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm                  0        1      9
6-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm                  1        3      9
6-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm              0        0      9
6-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm              1        3      9
6-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm                 0        0     22
6-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm                 1        3     22
6-24 months   ki0047075b-MAL-ED          PERU                           <48 cm                  0        4     22
6-24 months   ki0047075b-MAL-ED          PERU                           <48 cm                  1        9     22
6-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm              0        1     22
6-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm              1        5     22
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 0        0     16
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                 1        3     16
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  0        1     16
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                  1        4     16
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              0        3     16
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm              1        5     16
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 0        0     23
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                 1        1     23
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  0        2     23
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                  1       11     23
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              0        2     23
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm              1        7     23
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
6-24 months   ki1000109-EE               PAKISTAN                       >=50 cm                 0        4    136
6-24 months   ki1000109-EE               PAKISTAN                       >=50 cm                 1        5    136
6-24 months   ki1000109-EE               PAKISTAN                       <48 cm                  0       57    136
6-24 months   ki1000109-EE               PAKISTAN                       <48 cm                  1       49    136
6-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm              0        9    136
6-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm              1       12    136
6-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm                 0        1      9
6-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm                 1        0      9
6-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm                  0        3      9
6-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm                  1        2      9
6-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm              0        3      9
6-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm              1        0      9
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 0       29    469
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                 1       18    469
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  0      207    469
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                  1       73    469
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              0       98    469
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm              1       44    469
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 0       18    191
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                 1       13    191
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  0       65    191
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                  1       24    191
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              0       52    191
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm              1       19    191
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 0       11    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                 1        3    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  0       43    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                  1       22    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              0       35    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm              1        9    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 0       11    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                 1        5    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  0       50    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                  1        4    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              0       35    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm              1        8    113
6-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm                 0      138    662
6-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm                 1      180    662
6-24 months   ki1101329-Keneba           GAMBIA                         <48 cm                  0       75    662
6-24 months   ki1101329-Keneba           GAMBIA                         <48 cm                  1       54    662
6-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm              0      105    662
6-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm              1      110    662
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm                 0       16    378
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm                 1       32    378
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm                  0      113    378
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm                  1      108    378
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm              0       61    378
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm              1       48    378
6-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm                 0        0      7
6-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm                 1        0      7
6-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm                  0        2      7
6-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm                  1        1      7
6-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm              0        0      7
6-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm              1        4      7
6-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm                 0      108    168
6-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm                 1       29    168
6-24 months   ki1119695-PROBIT           BELARUS                        <48 cm                  0        2    168
6-24 months   ki1119695-PROBIT           BELARUS                        <48 cm                  1        2    168
6-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm              0       17    168
6-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm              1       10    168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 0      219   1079
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                 1       15   1079
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  0      411   1079
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                  1       28   1079
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              0      369   1079
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm              1       37   1079
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm                 0       31     83
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm                 1        4     83
6-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm                  0       22     83
6-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm                  1        2     83
6-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm              0       22     83
6-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm              1        2     83
6-24 months   ki1135781-COHORTS          INDIA                          >=50 cm                 0      108    779
6-24 months   ki1135781-COHORTS          INDIA                          >=50 cm                 1        0    779
6-24 months   ki1135781-COHORTS          INDIA                          <48 cm                  0      420    779
6-24 months   ki1135781-COHORTS          INDIA                          <48 cm                  1        0    779
6-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm              0      251    779
6-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm              1        0    779
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 0      108    935
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                 1      147    935
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm                  0      173    935
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm                  1      150    935
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              0      184    935
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm              1      173    935
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 0       99   2392
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                 1        0   2392
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  0     1862   2392
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                  1        0   2392
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              0      431   2392
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm              1        0   2392
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
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/b8bc5b0b-f638-4730-85bb-b7e738c9cc87/feb941f3-f52a-4e21-99e2-e55b1c0494ea/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b8bc5b0b-f638-4730-85bb-b7e738c9cc87/feb941f3-f52a-4e21-99e2-e55b1c0494ea/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b8bc5b0b-f638-4730-85bb-b7e738c9cc87/feb941f3-f52a-4e21-99e2-e55b1c0494ea/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b8bc5b0b-f638-4730-85bb-b7e738c9cc87/feb941f3-f52a-4e21-99e2-e55b1c0494ea/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    >=50 cm              NA                0.6666667   0.4286826   0.9046507
0-24 months   ki0047075b-MAL-ED         BANGLADESH    <48 cm               NA                0.6500000   0.5293253   0.7706747
0-24 months   ki0047075b-MAL-ED         BANGLADESH    [48-50) cm           NA                0.6000000   0.4226014   0.7773986
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.6172840   0.5377766   0.6967913
0-24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.5327103   0.4316629   0.6337577
0-24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.6016949   0.5069499   0.6964399
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.6363636   0.4530706   0.8196567
0-24 months   ki1000109-EE              PAKISTAN      <48 cm               NA                0.4904459   0.4037290   0.5771627
0-24 months   ki1000109-EE              PAKISTAN      [48-50) cm           NA                0.5609756   0.4092507   0.7127005
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.4615385   0.3450685   0.5780084
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.3494737   0.3055803   0.3933671
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.4197531   0.3535674   0.4859388
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.6235294   0.5078497   0.7392092
0-24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               NA                0.4682081   0.3926592   0.5437570
0-24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           NA                0.5133333   0.4272279   0.5994388
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                0.6833333   0.5605905   0.8060762
0-24 months   ki1017093b-PROVIDE        BANGLADESH    <48 cm               NA                0.5594406   0.4794558   0.6394253
0-24 months   ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           NA                0.5523810   0.4504317   0.6543302
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              NA                0.7910448   0.6921824   0.8899071
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    <48 cm               NA                0.5123967   0.4249814   0.5998120
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    [48-50) cm           NA                0.6393443   0.5519347   0.7267539
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.7228178   0.6878370   0.7577986
0-24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.5555556   0.4818614   0.6292497
0-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.6082192   0.5552888   0.6611496
0-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                0.6494845   0.5446622   0.7543069
0-24 months   ki1113344-GMS-Nepal       NEPAL         <48 cm               NA                0.5232558   0.4650941   0.5814175
0-24 months   ki1113344-GMS-Nepal       NEPAL         [48-50) cm           NA                0.5200000   0.4460846   0.5939154
0-24 months   ki1119695-PROBIT          BELARUS       >=50 cm              NA                0.8648064   0.8544839   0.8751288
0-24 months   ki1119695-PROBIT          BELARUS       <48 cm               NA                0.7200000   0.6794039   0.7605961
0-24 months   ki1119695-PROBIT          BELARUS       [48-50) cm           NA                0.8152610   0.7681659   0.8623562
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.6628959   0.6370557   0.6887361
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.3935282   0.3623093   0.4247470
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.5369947   0.5101822   0.5638071
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.6666667   0.5971625   0.7361708
0-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.2500000   0.1204813   0.3795187
0-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.5270270   0.4094678   0.6445863
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.3549618   0.3125506   0.3973731
0-24 months   ki1135781-COHORTS         INDIA         <48 cm               NA                0.1966449   0.1732556   0.2200342
0-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.2744444   0.2452239   0.3036650
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.6900489   0.6512862   0.7288117
0-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.5429769   0.4977756   0.5881783
0-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.5721477   0.5298466   0.6144487
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.5379147   0.4900041   0.5858253
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.3947724   0.3804571   0.4090877
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.4835901   0.4581386   0.5090415
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.3041363   0.2556895   0.3525830
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.2582988   0.2303553   0.2862422
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.3063291   0.2600547   0.3526035
0-6 months    ki1000108-IRC             INDIA         >=50 cm              NA                0.6666667   0.5803443   0.7529890
0-6 months    ki1000108-IRC             INDIA         <48 cm               NA                0.5961538   0.4580076   0.7343001
0-6 months    ki1000108-IRC             INDIA         [48-50) cm           NA                0.6285714   0.5087880   0.7483549
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.5454545   0.3950888   0.6958203
0-6 months    ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.4769231   0.4069371   0.5469090
0-6 months    ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.5742574   0.4757778   0.6727371
0-6 months    ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.7407407   0.6262554   0.8552261
0-6 months    ki1017093-NIH-Birth       BANGLADESH    <48 cm               NA                0.6785714   0.5780029   0.7791400
0-6 months    ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           NA                0.7341772   0.6360827   0.8322717
0-6 months    ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                0.8260870   0.7138220   0.9383519
0-6 months    ki1017093b-PROVIDE        BANGLADESH    <48 cm               NA                0.7435897   0.6520652   0.8351143
0-6 months    ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           NA                0.8032787   0.7010346   0.9055228
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.8716418   0.8359343   0.9073493
0-6 months    ki1101329-Keneba          GAMBIA        <48 cm               NA                0.7820513   0.6951251   0.8689774
0-6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.7466667   0.6815974   0.8117359
0-6 months    ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                0.6326531   0.4947892   0.7705169
0-6 months    ki1113344-GMS-Nepal       NEPAL         <48 cm               NA                0.5853659   0.4966988   0.6740329
0-6 months    ki1113344-GMS-Nepal       NEPAL         [48-50) cm           NA                0.6153846   0.5164789   0.7142903
0-6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                0.8870647   0.8772095   0.8969198
0-6 months    ki1119695-PROBIT          BELARUS       <48 cm               NA                0.7619048   0.7256402   0.7981693
0-6 months    ki1119695-PROBIT          BELARUS       [48-50) cm           NA                0.8693694   0.8246128   0.9141259
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.7912088   0.7671585   0.8152591
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.6724470   0.6319198   0.7129742
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.7370166   0.7084022   0.7656309
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.8028169   0.7377837   0.8678501
0-6 months    ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.4500000   0.2304135   0.6695865
0-6 months    ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.7400000   0.6175523   0.8624477
0-6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                0.4471154   0.3993234   0.4949074
0-6 months    ki1135781-COHORTS         INDIA         <48 cm               NA                0.3231240   0.2872437   0.3590044
0-6 months    ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.3805855   0.3432202   0.4179509
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.7709497   0.7271071   0.8147924
0-6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.7077922   0.6351237   0.7804607
0-6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.7029289   0.6454474   0.7604104
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.7027864   0.6529258   0.7526470
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.6801242   0.6621140   0.6981344
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.6798493   0.6517799   0.7079188
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.6746032   0.5927143   0.7564921
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.5569106   0.4947736   0.6190476
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.6590909   0.5781470   0.7400349
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.5000000   0.3388723   0.6611277
6-24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.4727273   0.3442425   0.6012121
6-24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.5625000   0.4097185   0.7152815
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.3829787   0.2337195   0.5322379
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.2607143   0.2080041   0.3134244
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.3098592   0.2329053   0.3868130
6-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.4193548   0.2210667   0.6176430
6-24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               NA                0.2696629   0.1794201   0.3599057
6-24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           NA                0.2676056   0.1666004   0.3686108
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.5660377   0.5077361   0.6243394
6-24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.4186047   0.3293190   0.5078903
6-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.5116279   0.4387995   0.5844563
6-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                0.6666667   0.5372177   0.7961156
6-24 months   ki1113344-GMS-Nepal       NEPAL         <48 cm               NA                0.4886878   0.4177399   0.5596357
6-24 months   ki1113344-GMS-Nepal       NEPAL         [48-50) cm           NA                0.4403670   0.3348944   0.5458395
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0641026   0.0326965   0.0955087
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0637813   0.0407256   0.0868370
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0911330   0.0634759   0.1187901
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.5764706   0.5115805   0.6413607
6-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.4643963   0.4081152   0.5206774
6-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.4845938   0.4294915   0.5396962
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.1403509   0.0994593   0.1812425
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.1559889   0.1297719   0.1822058
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.1292776   0.0902425   0.1683126


### Parameter: E(Y)


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    NA                   NA                0.6371681   0.5446961   0.7296402
0-24 months   ki1000108-IRC             INDIA         NA                   NA                0.5891473   0.5364145   0.6418800
0-24 months   ki1000109-EE              PAKISTAN      NA                   NA                0.5181818   0.4466550   0.5897087
0-24 months   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.3831891   0.3479331   0.4184451
0-24 months   ki1017093-NIH-Birth       BANGLADESH    NA                   NA                0.5171569   0.4657250   0.5685888
0-24 months   ki1017093b-PROVIDE        BANGLADESH    NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.6604082   0.6324757   0.6883406
0-24 months   ki1113344-GMS-Nepal       NEPAL         NA                   NA                0.5413417   0.4990070   0.5836763
0-24 months   ki1119695-PROBIT          BELARUS       NA                   NA                0.8612051   0.8511051   0.8713052
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.5452017   0.5287719   0.5616314
0-24 months   ki1135781-COHORTS         GUATEMALA     NA                   NA                0.5694915   0.5120418   0.6269413
0-24 months   ki1135781-COHORTS         INDIA         NA                   NA                0.2579095   0.2406335   0.2751855
0-24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.6067616   0.5822457   0.6312775
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.4251535   0.4129986   0.4373083
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.2796610   0.2580570   0.3012650
0-6 months    ki1000108-IRC             INDIA         NA                   NA                0.6398305   0.5770134   0.7026476
0-6 months    ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.5147059   0.4610948   0.5683169
0-6 months    ki1017093-NIH-Birth       BANGLADESH    NA                   NA                0.7142857   0.6541352   0.7744362
0-6 months    ki1017093b-PROVIDE        BANGLADESH    NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    ki1101329-Keneba          GAMBIA        NA                   NA                0.8259325   0.7956783   0.8561867
0-6 months    ki1113344-GMS-Nepal       NEPAL         NA                   NA                0.6045627   0.5449300   0.6641955
0-6 months    ki1119695-PROBIT          BELARUS       NA                   NA                0.8855266   0.8758983   0.8951550
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.7472178   0.7302477   0.7641880
0-6 months    ki1135781-COHORTS         GUATEMALA     NA                   NA                0.7547170   0.6968087   0.8126253
0-6 months    ki1135781-COHORTS         INDIA         NA                   NA                0.3748545   0.3519572   0.3977518
0-6 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.7363515   0.7047428   0.7679603
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.6818985   0.6673935   0.6964035
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.6130952   0.5705324   0.6556580
6-24 months   ki1000108-IRC             INDIA         NA                   NA                0.5099338   0.4248374   0.5950302
6-24 months   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.2878465   0.2457514   0.3299415
6-24 months   ki1017093-NIH-Birth       BANGLADESH    NA                   NA                0.2931937   0.2273732   0.3590142
6-24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.5196375   0.4788178   0.5604571
6-24 months   ki1113344-GMS-Nepal       NEPAL         NA                   NA                0.4973545   0.4426760   0.5520330
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0741427   0.0585455   0.0897399
6-24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.5026738   0.4688037   0.5365439
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.1469194   0.1276367   0.1662021


### Parameter: RR


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH    <48 cm               >=50 cm           0.9750000   0.6519879   1.4580409
0-24 months   ki0047075b-MAL-ED         BANGLADESH    [48-50) cm           >=50 cm           0.9000000   0.5660784   1.4308972
0-24 months   ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.8629907   0.6863366   1.0851131
0-24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           0.9747458   0.7951915   1.1948434
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN      <48 cm               >=50 cm           0.7707006   0.5499261   1.0801077
0-24 months   ki1000109-EE              PAKISTAN      [48-50) cm           >=50 cm           0.8815331   0.5935933   1.3091465
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           0.7571930   0.5711794   1.0037848
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           0.9094650   0.6753900   1.2246652
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               >=50 cm           0.7508998   0.5872208   0.9602018
0-24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           >=50 cm           0.8232704   0.6411057   1.0571957
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH    <48 cm               >=50 cm           0.8186935   0.6506847   1.0300826
0-24 months   ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           >=50 cm           0.8083624   0.6246420   1.0461187
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    <48 cm               >=50 cm           0.6477468   0.5241587   0.8004750
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    [48-50) cm           >=50 cm           0.8082277   0.6714659   0.9728445
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           0.7685970   0.6673859   0.8851570
0-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           0.8414558   0.7616573   0.9296147
0-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL         <48 cm               >=50 cm           0.8056478   0.6623210   0.9799907
0-24 months   ki1113344-GMS-Nepal       NEPAL         [48-50) cm           >=50 cm           0.8006349   0.6457546   0.9926624
0-24 months   ki1119695-PROBIT          BELARUS       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT          BELARUS       <48 cm               >=50 cm           0.8325563   0.7859301   0.8819487
0-24 months   ki1119695-PROBIT          BELARUS       [48-50) cm           >=50 cm           0.9427094   0.8887094   0.9999905
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           0.5936500   0.5434269   0.6485147
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           0.8100739   0.7603435   0.8630569
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm           0.3750000   0.2210576   0.6361464
0-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm           0.7905405   0.6179243   1.0113769
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           0.5539889   0.4680435   0.6557162
0-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm           0.7731661   0.6588258   0.9073503
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           0.7868673   0.7116838   0.8699932
0-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           0.8291407   0.7555974   0.9098421
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           0.7338941   0.6666067   0.8079736
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           0.8990089   0.8106504   0.9969981
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           0.8492863   0.7005305   1.0296300
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           1.0072101   0.8086853   1.2544710
0-6 months    ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.8942308   0.6857330   1.1661225
0-6 months    ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           0.9428571   0.7488343   1.1871513
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           0.8743590   0.6398145   1.1948833
0-6 months    ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           1.0528053   0.7609410   1.4566161
0-6 months    ki1017093-NIH-Birth       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth       BANGLADESH    <48 cm               >=50 cm           0.9160714   0.7394913   1.1348164
0-6 months    ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           >=50 cm           0.9911392   0.8079926   1.2157995
0-6 months    ki1017093b-PROVIDE        BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH    <48 cm               >=50 cm           0.9001350   0.7493386   1.0812774
0-6 months    ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           >=50 cm           0.9723900   0.8071896   1.1714004
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           0.8972164   0.7969792   1.0100604
0-6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           0.8566210   0.7779722   0.9432207
0-6 months    ki1113344-GMS-Nepal       NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL         <48 cm               >=50 cm           0.9252557   0.7095868   1.2064742
0-6 months    ki1113344-GMS-Nepal       NEPAL         [48-50) cm           >=50 cm           0.9727047   0.7419692   1.2751937
0-6 months    ki1119695-PROBIT          BELARUS       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT          BELARUS       <48 cm               >=50 cm           0.8589055   0.8179345   0.9019288
0-6 months    ki1119695-PROBIT          BELARUS       [48-50) cm           >=50 cm           0.9800518   0.9297714   1.0330514
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           0.8498983   0.7944237   0.9092468
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           0.9315071   0.8866899   0.9785895
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm           0.5605263   0.3418008   0.9192189
0-6 months    ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm           0.9217544   0.7666608   1.1082230
0-6 months    ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           0.7226860   0.6194586   0.8431154
0-6 months    ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm           0.8512020   0.7362087   0.9841569
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           0.9180783   0.8164091   1.0324086
0-6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           0.9117701   0.8253299   1.0072634
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           0.9677539   0.8971741   1.0438860
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           0.9673627   0.8911273   1.0501201
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           0.8255380   0.7000556   0.9735127
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           0.9770053   0.8220604   1.1611548
6-24 months   ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.9454545   0.6203762   1.4408745
6-24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           1.1250000   0.7381509   1.7145883
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           0.6807540   0.4388413   1.0560217
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           0.8090767   0.5096727   1.2843636
6-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               >=50 cm           0.6430424   0.3603243   1.1475869
6-24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           >=50 cm           0.6381365   0.3485018   1.1684825
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           0.7395349   0.5835434   0.9372257
6-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           0.9038760   0.7581872   1.0775594
6-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL         <48 cm               >=50 cm           0.7330317   0.5752012   0.9341695
6-24 months   ki1113344-GMS-Nepal       NEPAL         [48-50) cm           >=50 cm           0.6605505   0.4852730   0.8991371
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           0.9949886   0.5412463   1.8291160
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           1.4216749   0.7989306   2.5298309
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           0.8055854   0.6827748   0.9504859
6-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           0.8406220   0.7163304   0.9864796
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           1.1114206   0.7939482   1.5558392
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           0.9211027   0.6054434   1.4013368


### Parameter: PAR


agecat        studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    >=50 cm              NA                -0.0294985   -0.2465936    0.1875965
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0281367   -0.0896721    0.0333988
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                -0.1181818   -0.2958163    0.0594526
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.0783493   -0.1868688    0.0301701
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                -0.1063725   -0.2086407   -0.0041044
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                -0.1021645   -0.2129687    0.0086397
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              NA                -0.1684641   -0.2599633   -0.0769649
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0624096   -0.0885435   -0.0362757
0-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                -0.1081429   -0.2051291   -0.0111566
0-24 months   ki1119695-PROBIT          BELARUS       >=50 cm              NA                -0.0036012   -0.0065370   -0.0006654
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                -0.1176943   -0.1386864   -0.0967021
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                -0.0971751   -0.1447216   -0.0496286
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                -0.0970523   -0.1336540   -0.0604507
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0832874   -0.1149303   -0.0516444
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                -0.1127612   -0.1589864   -0.0665360
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                -0.0244752   -0.0659980    0.0170475
0-6 months    ki1000108-IRC             INDIA         >=50 cm              NA                -0.0268362   -0.0916900    0.0380177
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.0307487   -0.1708954    0.1093981
0-6 months    ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                -0.0264550   -0.1274376    0.0745275
0-6 months    ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                -0.0423032   -0.1410844    0.0564780
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0457093   -0.0715930   -0.0198256
0-6 months    ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                -0.0280903   -0.1525100    0.0963293
0-6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                -0.0015381   -0.0041179    0.0010418
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                -0.0439910   -0.0630741   -0.0249078
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                -0.0480999   -0.0918402   -0.0043596
0-6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                -0.0722609   -0.1135189   -0.0310029
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0345982   -0.0675883   -0.0016081
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                -0.0208879   -0.0687525    0.0269767
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                -0.0615079   -0.1333723    0.0103564
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                 0.0099338   -0.1192355    0.1391031
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.0951322   -0.2349847    0.0447202
6-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                -0.1261611   -0.3017554    0.0494331
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0464003   -0.0890292   -0.0037714
6-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                -0.1693122   -0.2938796   -0.0447448
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.0100402   -0.0182741    0.0383544
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0737968   -0.1291270   -0.0184666
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.0065686   -0.0293629    0.0425000


### Parameter: PAF


agecat        studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    >=50 cm              NA                -0.0462963   -0.4489074    0.2444404
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0477583   -0.1578654    0.0518782
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                -0.2280702   -0.6304066    0.0749814
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.2044665   -0.5228236    0.0473358
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                -0.2056872   -0.4211888   -0.0228632
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                -0.1757914   -0.3843485    0.0013458
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              NA                -0.2705901   -0.4324830   -0.1269936
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0945016   -0.1356781   -0.0548179
0-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                -0.1997683   -0.3942488   -0.0324154
0-24 months   ki1119695-PROBIT          BELARUS       >=50 cm              NA                -0.0041816   -0.0076001   -0.0007747
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                -0.2158729   -0.2559658   -0.1770598
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                -0.1706349   -0.2614559   -0.0863528
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                -0.3763039   -0.5247261   -0.2423296
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.1372654   -0.1913082   -0.0856742
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                -0.2652247   -0.3789667   -0.1608646
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                -0.0875175   -0.2461068    0.0508884
0-6 months    ki1000108-IRC             INDIA         >=50 cm              NA                -0.0419426   -0.1488791    0.0550403
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.0597403   -0.3702451    0.1804026
0-6 months    ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                -0.0370370   -0.1887503    0.0953139
0-6 months    ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                -0.0539730   -0.1881476    0.0650496
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0553426   -0.0876291   -0.0240146
0-6 months    ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                -0.0464639   -0.2739696    0.1404138
0-6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                -0.0017369   -0.0046554    0.0011731
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                -0.0588730   -0.0849136   -0.0334575
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                -0.0637324   -0.1245591   -0.0061958
0-6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                -0.1927705   -0.3083695   -0.0873852
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0469860   -0.0929742   -0.0029328
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                -0.0306319   -0.1032815    0.0372338
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                -0.1003236   -0.2245818    0.0113261
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                 0.0194805   -0.2699708    0.2429602
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.3304965   -0.9147822    0.0754976
6-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                -0.4302995   -1.1594821    0.0526632
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0892935   -0.1750029   -0.0098362
6-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                -0.3404255   -0.6248688   -0.1057758
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.1354167   -0.3434422    0.4435903
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.1468085   -0.2628181   -0.0414562
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.0447085   -0.2341560    0.2605621
