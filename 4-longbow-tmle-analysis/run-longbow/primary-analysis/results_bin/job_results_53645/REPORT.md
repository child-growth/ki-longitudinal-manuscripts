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




# Results Detail

## Results Plots
![](/tmp/a892e787-cc6b-424c-870a-684cb9d0134e/6529c564-205c-4d55-b0da-97990e297414/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a892e787-cc6b-424c-870a-684cb9d0134e/6529c564-205c-4d55-b0da-97990e297414/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a892e787-cc6b-424c-870a-684cb9d0134e/6529c564-205c-4d55-b0da-97990e297414/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a892e787-cc6b-424c-870a-684cb9d0134e/6529c564-205c-4d55-b0da-97990e297414/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    >=50 cm              NA                0.6666667   0.4286826   0.9046507
0-24 months   ki0047075b-MAL-ED         BANGLADESH    <48 cm               NA                0.6500000   0.5293253   0.7706747
0-24 months   ki0047075b-MAL-ED         BANGLADESH    [48-50) cm           NA                0.6000000   0.4226014   0.7773986
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.6154636   0.5343827   0.6965444
0-24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.5316601   0.4296037   0.6337164
0-24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.6057837   0.5110483   0.7005190
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.6363636   0.4530706   0.8196567
0-24 months   ki1000109-EE              PAKISTAN      <48 cm               NA                0.4904459   0.4037290   0.5771627
0-24 months   ki1000109-EE              PAKISTAN      [48-50) cm           NA                0.5609756   0.4092507   0.7127005
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.4976049   0.3864421   0.6087677
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.3483104   0.3043602   0.3922606
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.4112123   0.3434454   0.4789792
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.6259839   0.5064106   0.7455571
0-24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               NA                0.4709597   0.3949066   0.5470129
0-24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           NA                0.5127875   0.4256205   0.5999544
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                0.6922019   0.5670674   0.8173364
0-24 months   ki1017093b-PROVIDE        BANGLADESH    <48 cm               NA                0.5590573   0.4788765   0.6392381
0-24 months   ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           NA                0.5475421   0.4462830   0.6488011
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              NA                0.7909337   0.6888051   0.8930623
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    <48 cm               NA                0.5100134   0.4197546   0.6002723
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    [48-50) cm           NA                0.6401304   0.5520248   0.7282361
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.7219887   0.6868459   0.7571315
0-24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.5622511   0.4894026   0.6350996
0-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.6066698   0.5535534   0.6597862
0-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                0.6531679   0.5437512   0.7625846
0-24 months   ki1113344-GMS-Nepal       NEPAL         <48 cm               NA                0.5188120   0.4607605   0.5768636
0-24 months   ki1113344-GMS-Nepal       NEPAL         [48-50) cm           NA                0.5249141   0.4484696   0.6013586
0-24 months   ki1119695-PROBIT          BELARUS       >=50 cm              NA                0.8648064   0.8544839   0.8751288
0-24 months   ki1119695-PROBIT          BELARUS       <48 cm               NA                0.7200000   0.6794039   0.7605961
0-24 months   ki1119695-PROBIT          BELARUS       [48-50) cm           NA                0.8152610   0.7681659   0.8623562
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.6650610   0.6391933   0.6909287
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.3916381   0.3603589   0.4229172
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.5360113   0.5092527   0.5627699
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.6635955   0.5934582   0.7337328
0-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.2573060   0.1224116   0.3922004
0-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.5077218   0.3855273   0.6299163
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.3574736   0.3152282   0.3997190
0-24 months   ki1135781-COHORTS         INDIA         <48 cm               NA                0.1966640   0.1732128   0.2201152
0-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.2748294   0.2455271   0.3041317
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.6938530   0.6551792   0.7325268
0-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.5412369   0.4955610   0.5869128
0-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.5724401   0.5297363   0.6151438
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.5410160   0.4938971   0.5881350
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.3932356   0.3788826   0.4075886
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.4894911   0.4636098   0.5153724
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.3052535   0.2567274   0.3537797
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.2583736   0.2304212   0.2863260
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.3072944   0.2608351   0.3537538
0-6 months    ki1000108-IRC             INDIA         >=50 cm              NA                0.6582307   0.5690480   0.7474134
0-6 months    ki1000108-IRC             INDIA         <48 cm               NA                0.5955350   0.4553913   0.7356787
0-6 months    ki1000108-IRC             INDIA         [48-50) cm           NA                0.6415103   0.5217322   0.7612883
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.5327131   0.3769549   0.6884713
0-6 months    ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.4770863   0.4069310   0.5472416
0-6 months    ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.5707898   0.4711429   0.6704368
0-6 months    ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.7323813   0.6157614   0.8490012
0-6 months    ki1017093-NIH-Birth       BANGLADESH    <48 cm               NA                0.6688216   0.5670173   0.7706258
0-6 months    ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           NA                0.7283291   0.6299152   0.8267430
0-6 months    ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                0.8260870   0.7138220   0.9383519
0-6 months    ki1017093b-PROVIDE        BANGLADESH    <48 cm               NA                0.7435897   0.6520652   0.8351143
0-6 months    ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           NA                0.8032787   0.7010346   0.9055228
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.8714178   0.8355991   0.9072366
0-6 months    ki1101329-Keneba          GAMBIA        <48 cm               NA                0.7713678   0.6878011   0.8549345
0-6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.7437866   0.6798786   0.8076946
0-6 months    ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                0.6502223   0.5064037   0.7940409
0-6 months    ki1113344-GMS-Nepal       NEPAL         <48 cm               NA                0.5868045   0.4976092   0.6759999
0-6 months    ki1113344-GMS-Nepal       NEPAL         [48-50) cm           NA                0.6141078   0.5138326   0.7143830
0-6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                0.8870647   0.8772095   0.8969198
0-6 months    ki1119695-PROBIT          BELARUS       <48 cm               NA                0.7619048   0.7256402   0.7981693
0-6 months    ki1119695-PROBIT          BELARUS       [48-50) cm           NA                0.8693694   0.8246128   0.9141259
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.7920661   0.7679762   0.8161560
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.6726132   0.6321033   0.7131232
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.7369196   0.7082232   0.7656160
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.8028169   0.7377837   0.8678501
0-6 months    ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.4500000   0.2304135   0.6695865
0-6 months    ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.7400000   0.6175523   0.8624477
0-6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                0.4488868   0.4009233   0.4968502
0-6 months    ki1135781-COHORTS         INDIA         <48 cm               NA                0.3245022   0.2883765   0.3606280
0-6 months    ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.3822179   0.3445596   0.4198762
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.7727176   0.7287141   0.8167210
0-6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.7046553   0.6316879   0.7776228
0-6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.7037204   0.6461136   0.7613272
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.7064471   0.6563943   0.7565000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.6784255   0.6602863   0.6965647
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.6800031   0.6513762   0.7086300
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.6734123   0.5909963   0.7558283
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.5552102   0.4928572   0.6175632
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.6546277   0.5730213   0.7362342
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.4811119   0.3139147   0.6483092
6-24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.4687868   0.3374412   0.6001324
6-24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.5667442   0.4102434   0.7232450
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.3948623   0.2436746   0.5460501
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.2598936   0.2072263   0.3125608
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.3111543   0.2334437   0.3888649
6-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.3762164   0.1714789   0.5809540
6-24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               NA                0.2579960   0.1661846   0.3498075
6-24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           NA                0.2586120   0.1553069   0.3619171
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.5603385   0.5015676   0.6191093
6-24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.4214090   0.3311541   0.5116638
6-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.5101477   0.4362868   0.5840087
6-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                0.6595647   0.5278729   0.7912565
6-24 months   ki1113344-GMS-Nepal       NEPAL         <48 cm               NA                0.4910531   0.4202395   0.5618667
6-24 months   ki1113344-GMS-Nepal       NEPAL         [48-50) cm           NA                0.4413070   0.3338596   0.5487544
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0628942   0.0313242   0.0944642
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0632764   0.0402061   0.0863468
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0908637   0.0631157   0.1186117
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.5762813   0.5091232   0.6434393
6-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.4670250   0.4107517   0.5232983
6-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.4860104   0.4298485   0.5421723
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.1405681   0.0996174   0.1815189
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.1562365   0.1299846   0.1824885
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.1289441   0.0899389   0.1679494


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
0-24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.8638368   0.6842949   1.0904859
0-24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           0.9842722   0.8020011   1.2079680
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN      <48 cm               >=50 cm           0.7707006   0.5499261   1.0801077
0-24 months   ki1000109-EE              PAKISTAN      [48-50) cm           >=50 cm           0.8815331   0.5935933   1.3091465
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           0.6999739   0.5417291   0.9044436
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           0.8263831   0.6263030   1.0903812
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               >=50 cm           0.7523512   0.5854771   0.9667883
0-24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           >=50 cm           0.8191704   0.6339055   1.0585807
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH    <48 cm               >=50 cm           0.8076507   0.6409972   1.0176324
0-24 months   ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           >=50 cm           0.7910150   0.6101414   1.0255078
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    <48 cm               >=50 cm           0.6448245   0.5178568   0.8029219
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    [48-50) cm           >=50 cm           0.8093351   0.6699171   0.9777677
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           0.7787533   0.6783020   0.8940807
0-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           0.8402760   0.7602002   0.9287866
0-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL         <48 cm               >=50 cm           0.7943011   0.6495211   0.9713530
0-24 months   ki1113344-GMS-Nepal       NEPAL         [48-50) cm           >=50 cm           0.8036434   0.6437931   1.0031837
0-24 months   ki1119695-PROBIT          BELARUS       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT          BELARUS       <48 cm               >=50 cm           0.8325563   0.7859301   0.8819487
0-24 months   ki1119695-PROBIT          BELARUS       [48-50) cm           >=50 cm           0.9427094   0.8887094   0.9999905
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           0.5888754   0.5388267   0.6435728
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           0.8059580   0.7565589   0.8585826
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm           0.3877453   0.2270563   0.6621547
0-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm           0.7651073   0.5884020   0.9948798
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           0.5501496   0.4651700   0.6506537
0-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm           0.7688102   0.6557629   0.9013458
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           0.7800455   0.7050840   0.8629766
0-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           0.8250164   0.7517328   0.9054441
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           0.7268465   0.6613788   0.7987945
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           0.9047627   0.8171903   1.0017196
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           0.8464230   0.6983268   1.0259263
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           1.0066859   0.8083419   1.2536979
0-6 months    ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.9047512   0.6893414   1.1874736
0-6 months    ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           0.9745979   0.7732050   1.2284467
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           0.8955784   0.6458085   1.2419481
0-6 months    ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           1.0714770   0.7620224   1.5066000
0-6 months    ki1017093-NIH-Birth       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth       BANGLADESH    <48 cm               >=50 cm           0.9132150   0.7321031   1.1391313
0-6 months    ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           >=50 cm           0.9944671   0.8069374   1.2255781
0-6 months    ki1017093b-PROVIDE        BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH    <48 cm               >=50 cm           0.9001350   0.7493386   1.0812774
0-6 months    ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           >=50 cm           0.9723900   0.8071896   1.1714004
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           0.8851871   0.7888073   0.9933430
0-6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           0.8535361   0.7763747   0.9383664
0-6 months    ki1113344-GMS-Nepal       NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL         <48 cm               >=50 cm           0.9024676   0.6900428   1.1802859
0-6 months    ki1113344-GMS-Nepal       NEPAL         [48-50) cm           >=50 cm           0.9444582   0.7173059   1.2435438
0-6 months    ki1119695-PROBIT          BELARUS       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT          BELARUS       <48 cm               >=50 cm           0.8589055   0.8179345   0.9019288
0-6 months    ki1119695-PROBIT          BELARUS       [48-50) cm           >=50 cm           0.9800518   0.9297714   1.0330514
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           0.8491883   0.7937842   0.9084594
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           0.9303764   0.8854588   0.9775726
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm           0.5605263   0.3418008   0.9192189
0-6 months    ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm           0.9217544   0.7666608   1.1082230
0-6 months    ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           0.7229045   0.6194614   0.8436214
0-6 months    ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm           0.8514796   0.7362825   0.9847001
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           0.9119183   0.8102854   1.0262989
0-6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           0.9107084   0.8242533   1.0062316
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           0.9603344   0.8903096   1.0358668
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           0.9625675   0.8864622   1.0452068
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           0.8244729   0.6981762   0.9736160
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           0.9721054   0.8163137   1.1576295
6-24 months   ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.9743820   0.6224943   1.5251869
6-24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           1.1779882   0.7553871   1.8370133
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           0.6581878   0.4268006   1.0150201
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           0.7880071   0.4984044   1.2458862
6-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               >=50 cm           0.6857649   0.3581218   1.3131667
6-24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           >=50 cm           0.6874022   0.3503492   1.3487167
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           0.7520615   0.5925473   0.9545170
6-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           0.9104279   0.7617402   1.0881386
6-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL         <48 cm               >=50 cm           0.7445109   0.5815320   0.9531659
6-24 months   ki1113344-GMS-Nepal       NEPAL         [48-50) cm           >=50 cm           0.6690883   0.4884743   0.9164844
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           1.0060775   0.5408892   1.8713479
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           1.4447079   0.8025663   2.6006337
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           0.8104115   0.6853305   0.9583213
6-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           0.8433563   0.7156253   0.9938858
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           1.1114646   0.7940079   1.5558454
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           0.9173072   0.6026855   1.3961717


### Parameter: PAR


agecat        studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    >=50 cm              NA                -0.0294985   -0.2465936    0.1875965
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0263163   -0.0892079    0.0365753
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                -0.1181818   -0.2958163    0.0594526
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.1144158   -0.2181028   -0.0107288
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                -0.1088270   -0.2147359   -0.0029181
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                -0.1110330   -0.2244171    0.0023510
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              NA                -0.1683531   -0.2627826   -0.0739235
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0615805   -0.0876579   -0.0355032
0-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                -0.1118262   -0.2131720   -0.0104805
0-24 months   ki1119695-PROBIT          BELARUS       >=50 cm              NA                -0.0036012   -0.0065370   -0.0006654
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                -0.1198593   -0.1408631   -0.0988556
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                -0.0941040   -0.1418641   -0.0463438
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                -0.0995641   -0.1360431   -0.0630852
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0870914   -0.1187189   -0.0554639
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                -0.1158626   -0.1614264   -0.0702987
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                -0.0255925   -0.0671943    0.0160093
0-6 months    ki1000108-IRC             INDIA         >=50 cm              NA                -0.0184002   -0.0858624    0.0490620
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.0180072   -0.1632260    0.1272116
0-6 months    ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                -0.0180956   -0.1211336    0.0849424
0-6 months    ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                -0.0423032   -0.1410844    0.0564780
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0454853   -0.0709682   -0.0200024
0-6 months    ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                -0.0456595   -0.1756308    0.0843117
0-6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                -0.0015381   -0.0041179    0.0010418
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                -0.0448483   -0.0639900   -0.0257066
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                -0.0480999   -0.0918402   -0.0043596
0-6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                -0.0740323   -0.1155552   -0.0325094
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0363661   -0.0694469   -0.0032852
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                -0.0245486   -0.0727533    0.0236560
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                -0.0603171   -0.1326618    0.0120276
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                 0.0288218   -0.1063940    0.1640377
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.1070159   -0.2490043    0.0349726
6-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                -0.0830227   -0.2648169    0.0987715
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0407010   -0.0836108    0.0022088
6-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                -0.1622102   -0.2890377   -0.0353827
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.0112485   -0.0172231    0.0397202
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0736075   -0.1312807   -0.0159342
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.0063513   -0.0296394    0.0423420


### Parameter: PAF


agecat        studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    >=50 cm              NA                -0.0462963   -0.4489074    0.2444404
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                -0.0446684   -0.1572544    0.0569644
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                -0.2280702   -0.6304066    0.0749814
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.2985883   -0.5994709   -0.0543059
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                -0.2104333   -0.4338425   -0.0218338
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                -0.1910513   -0.4047658   -0.0098502
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              NA                -0.2704117   -0.4371527   -0.1230162
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0932462   -0.1342830   -0.0536940
0-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                -0.2065724   -0.4101022   -0.0324194
0-24 months   ki1119695-PROBIT          BELARUS       >=50 cm              NA                -0.0041816   -0.0076001   -0.0007747
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                -0.2198440   -0.2599752   -0.1809911
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                -0.1652421   -0.2560638   -0.0809874
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                -0.3860430   -0.5340349   -0.2523281
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.1435348   -0.1976126   -0.0918989
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                -0.2725194   -0.3846673   -0.1694545
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                -0.0915126   -0.2503667    0.0471597
0-6 months    ki1000108-IRC             INDIA         >=50 cm              NA                -0.0287579   -0.1400303    0.0716538
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.0349854   -0.3592662    0.2119315
0-6 months    ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                -0.0253338   -0.1803714    0.1093402
0-6 months    ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                -0.0539730   -0.1881476    0.0650496
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0550715   -0.0868249   -0.0242458
0-6 months    ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                -0.0755249   -0.3135208    0.1193487
0-6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                -0.0017369   -0.0046554    0.0011731
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                -0.0600204   -0.0861454   -0.0345237
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                -0.0637324   -0.1245591   -0.0061958
0-6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                -0.1974961   -0.3139097   -0.0913969
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0493868   -0.0955056   -0.0052095
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                -0.0360004   -0.1091812    0.0323521
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                -0.0983813   -0.2234834    0.0139291
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                 0.0565207   -0.2511943    0.2885572
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.3717810   -0.9636714    0.0417016
6-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                -0.2831668   -1.0660702    0.2030682
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0783258   -0.1644944    0.0014667
6-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                -0.3261460   -0.6157091   -0.0884777
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.1517146   -0.3328120    0.4600978
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.1464319   -0.2674680   -0.0369540
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.0432298   -0.2360935    0.2594338
