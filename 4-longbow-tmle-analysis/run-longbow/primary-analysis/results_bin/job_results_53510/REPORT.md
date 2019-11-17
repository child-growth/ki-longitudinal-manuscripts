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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** birthlen

**Adjustment Set:**

* arm
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

agecat                       studyid                    country                        birthlen      ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  -----------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  0       27     187
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  1       12     187
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   0       24     187
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   1       45     187
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               0       37     187
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               1       42     187
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  0       30      56
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  1        0      56
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         <48 cm                   0        6      56
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         <48 cm                   1        2      56
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               0       13      56
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               1        5      56
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          >=50 cm                  0        8      37
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          >=50 cm                  1        1      37
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          <48 cm                   0        2      37
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          <48 cm                   1        8      37
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          [48-50) cm               0        7      37
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          [48-50) cm               1       11      37
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          >=50 cm                  0        8      25
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          >=50 cm                  1        0      25
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          <48 cm                   0        5      25
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          <48 cm                   1        5      25
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          [48-50) cm               0        3      25
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          [48-50) cm               1        4      25
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           >=50 cm                  0       31     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           >=50 cm                  1       21     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           <48 cm                   0       15     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           <48 cm                   1       47     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           [48-50) cm               0       45     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           [48-50) cm               1       48     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  0       26     113
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  1       18     113
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   0       12     113
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   1       11     113
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               0       22     113
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               1       24     113
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  0       10     102
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  1       22     102
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   0        2     102
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   1       17     102
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               0        8     102
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               1       43     102
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  0        4      86
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  1       12      86
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   0        2      86
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   1       28      86
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               0        5      86
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               1       35      86
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          >=50 cm                  0       70     345
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          >=50 cm                  1       72     345
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          <48 cm                   0       19     345
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          <48 cm                   1       46     345
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          [48-50) cm               0       52     345
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          [48-50) cm               1       86     345
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       >=50 cm                  0        7     140
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       >=50 cm                  1       17     140
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       <48 cm                   0        6     140
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       <48 cm                   1       56     140
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       [48-50) cm               0       11     140
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       [48-50) cm               1       43     140
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       >=50 cm                  0        3      28
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       >=50 cm                  1        9      28
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       <48 cm                   0        1      28
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       <48 cm                   1        1      28
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       [48-50) cm               0        7      28
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       [48-50) cm               1        7      28
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  0      129    1080
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  1       83    1080
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   0      124    1080
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   1      279    1080
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               0      216    1080
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               1      249    1080
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  0       78     511
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  1       61     511
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   0       35     511
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   1      108     511
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               0       91     511
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               1      138     511
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  0      140     633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  1       29     633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   0       70     633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   1      111     633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               0      185     633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               1       98     633
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                  0      149     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                  1       19     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                   0       75     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                   1      112     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm               0      172     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm               1      126     653
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         >=50 cm                  0      441    1469
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         >=50 cm                  1      323    1469
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         <48 cm                   0       60    1469
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         <48 cm                   1      150    1469
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         [48-50) cm               0      190    1469
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         [48-50) cm               1      305    1469
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          >=50 cm                  0       72     575
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          >=50 cm                  1       43     575
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          <48 cm                   0       77     575
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          <48 cm                   1      175     575
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm               0      103     575
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm               1      105     575
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     >=50 cm                  0        2      17
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     >=50 cm                  1        0      17
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     <48 cm                   0        4      17
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     <48 cm                   1        3      17
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     [48-50) cm               0        4      17
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     [48-50) cm               1        4      17
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           >=50 cm                  0        1       2
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           >=50 cm                  1        0       2
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           <48 cm                   0        1       2
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           <48 cm                   1        0       2
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           [48-50) cm               0        0       2
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           [48-50) cm               1        0       2
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        >=50 cm                  0    13303   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        >=50 cm                  1     1973   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        <48 cm                   0       53   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        <48 cm                   1       84   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        [48-50) cm               0      711   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        [48-50) cm               1      618   16742
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  0     3100   12487
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  1     1026   12487
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   0     1623   12487
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   1     1397   12487
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               0     3401   12487
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               1     1940   12487
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      >=50 cm                  0      174     802
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      >=50 cm                  1      263     802
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      <48 cm                   0       13     802
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      <48 cm                   1      100     802
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      [48-50) cm               0       47     802
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      [48-50) cm               1      205     802
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          >=50 cm                  0     1267    5848
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          >=50 cm                  1      159    5848
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          <48 cm                   0     1082    5848
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          <48 cm                   1      900    5848
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          [48-50) cm               0     1822    5848
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          [48-50) cm               1      618    5848
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                  0      538    2863
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    >=50 cm                  1      591    2863
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    <48 cm                   0       88    2863
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    <48 cm                   1      487    2863
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm               0      327    2863
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm               1      832    2863
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  0     1188   15071
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  1       70   15071
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   0     5535   15071
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   1     3190   15071
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               0     4345   15071
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               1      743   15071
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  0      737    3180
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  1      348    3180
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   0      495    3180
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   1      616    3180
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               0      589    3180
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               1      395    3180
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  0       37     187
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  1        2     187
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   0       46     187
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   1       23     187
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               0       64     187
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               1       15     187
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  0       30      56
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  1        0      56
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         <48 cm                   0        6      56
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         <48 cm                   1        2      56
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               0       14      56
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               1        4      56
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          >=50 cm                  0        9      37
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          >=50 cm                  1        0      37
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          <48 cm                   0        5      37
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          <48 cm                   1        5      37
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          [48-50) cm               0       13      37
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          [48-50) cm               1        5      37
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          >=50 cm                  0        8      25
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          >=50 cm                  1        0      25
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          <48 cm                   0        7      25
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          <48 cm                   1        3      25
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          [48-50) cm               0        7      25
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          [48-50) cm               1        0      25
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           >=50 cm                  0       47     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           >=50 cm                  1        5     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           <48 cm                   0       26     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           <48 cm                   1       36     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           [48-50) cm               0       65     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           [48-50) cm               1       28     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  0       38     113
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  1        6     113
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   0       14     113
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   1        9     113
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               0       32     113
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               1       14     113
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  0       31     102
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  1        1     102
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   0        9     102
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   1       10     102
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               0       35     102
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               1       16     102
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  0        8      85
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  1        7      85
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   0       18      85
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   1       12      85
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               0       23      85
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               1       17      85
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          >=50 cm                  0      109     345
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          >=50 cm                  1       33     345
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          <48 cm                   0       29     345
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          <48 cm                   1       36     345
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          [48-50) cm               0       87     345
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          [48-50) cm               1       51     345
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       >=50 cm                  0       22     140
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       >=50 cm                  1        2     140
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       <48 cm                   0       15     140
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       <48 cm                   1       47     140
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       [48-50) cm               0       23     140
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       [48-50) cm               1       31     140
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       >=50 cm                  0        5      28
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       >=50 cm                  1        7      28
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       <48 cm                   0        1      28
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       <48 cm                   1        1      28
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       [48-50) cm               0        7      28
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       [48-50) cm               1        7      28
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  0      195    1079
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  1       16    1079
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   0      276    1079
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   1      127    1079
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               0      398    1079
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               1       67    1079
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  0      127     511
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  1       12     511
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   0       79     511
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   1       64     511
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               0      187     511
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               1       42     511
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  0      165     633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  1        4     633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   0      110     633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   1       71     633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               0      257     633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               1       26     633
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                  0      167     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                  1        1     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                   0      115     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                   1       72     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm               0      247     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm               1       51     653
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         >=50 cm                  0      646    1469
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         >=50 cm                  1      118    1469
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         <48 cm                   0      103    1469
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         <48 cm                   1      107    1469
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         [48-50) cm               0      345    1469
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         [48-50) cm               1      150    1469
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          >=50 cm                  0      109     575
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          >=50 cm                  1        6     575
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          <48 cm                   0      180     575
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          <48 cm                   1       72     575
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm               0      186     575
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm               1       22     575
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     >=50 cm                  0        2      17
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     >=50 cm                  1        0      17
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     <48 cm                   0        5      17
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     <48 cm                   1        2      17
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     [48-50) cm               0        7      17
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     [48-50) cm               1        1      17
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           >=50 cm                  0        1       2
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           >=50 cm                  1        0       2
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           <48 cm                   0        1       2
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           <48 cm                   1        0       2
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           [48-50) cm               0        0       2
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           [48-50) cm               1        0       2
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        >=50 cm                  0    14317   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        >=50 cm                  1      957   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        <48 cm                   0       60   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        <48 cm                   1       77   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        [48-50) cm               0      835   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        [48-50) cm               1      494   16740
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  0     3704   12486
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  1      422   12486
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   0     2245   12486
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   1      774   12486
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               0     4378   12486
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               1      963   12486
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      >=50 cm                  0      395     802
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      >=50 cm                  1       42     802
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      <48 cm                   0       42     802
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      <48 cm                   1       71     802
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      [48-50) cm               0      158     802
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      [48-50) cm               1       94     802
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          >=50 cm                  0     1407    5848
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          >=50 cm                  1       19    5848
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          <48 cm                   0     1654    5848
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          <48 cm                   1      328    5848
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          [48-50) cm               0     2325    5848
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          [48-50) cm               1      115    5848
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm                  0     1049    2863
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm                  1       80    2863
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    <48 cm                   0      342    2863
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    <48 cm                   1      233    2863
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm               0      930    2863
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm               1      229    2863
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  0     1233   15071
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  1       25   15071
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   0     6863   15071
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   1     1862   15071
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               0     4862   15071
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               1      226   15071
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  0     1027    3180
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  1       58    3180
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   0      939    3180
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   1      172    3180
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               0      901    3180
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               1       83    3180
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  0       27     138
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  1       10     138
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   0       18     138
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   1       22     138
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               0       34     138
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               1       27     138
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  0       27      43
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  1        0      43
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         <48 cm                   0        4      43
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         <48 cm                   1        0      43
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               0       11      43
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               1        1      43
6-24 months                  ki0047075b-MAL-ED          INDIA                          >=50 cm                  0        7      23
6-24 months                  ki0047075b-MAL-ED          INDIA                          >=50 cm                  1        1      23
6-24 months                  ki0047075b-MAL-ED          INDIA                          <48 cm                   0        2      23
6-24 months                  ki0047075b-MAL-ED          INDIA                          <48 cm                   1        3      23
6-24 months                  ki0047075b-MAL-ED          INDIA                          [48-50) cm               0        4      23
6-24 months                  ki0047075b-MAL-ED          INDIA                          [48-50) cm               1        6      23
6-24 months                  ki0047075b-MAL-ED          NEPAL                          >=50 cm                  0        8      22
6-24 months                  ki0047075b-MAL-ED          NEPAL                          >=50 cm                  1        0      22
6-24 months                  ki0047075b-MAL-ED          NEPAL                          <48 cm                   0        5      22
6-24 months                  ki0047075b-MAL-ED          NEPAL                          <48 cm                   1        2      22
6-24 months                  ki0047075b-MAL-ED          NEPAL                          [48-50) cm               0        3      22
6-24 months                  ki0047075b-MAL-ED          NEPAL                          [48-50) cm               1        4      22
6-24 months                  ki0047075b-MAL-ED          PERU                           >=50 cm                  0       27     121
6-24 months                  ki0047075b-MAL-ED          PERU                           >=50 cm                  1       16     121
6-24 months                  ki0047075b-MAL-ED          PERU                           <48 cm                   0       12     121
6-24 months                  ki0047075b-MAL-ED          PERU                           <48 cm                   1       11     121
6-24 months                  ki0047075b-MAL-ED          PERU                           [48-50) cm               0       35     121
6-24 months                  ki0047075b-MAL-ED          PERU                           [48-50) cm               1       20     121
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  0       17      62
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  1       12      62
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   0        4      62
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   1        2      62
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               0       17      62
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               1       10      62
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  0       10      72
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  1       21      72
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   0        1      72
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   1        7      72
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               0        6      72
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               1       27      72
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  0        4      50
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  1        5      50
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   0        2      50
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   1       16      50
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               0        5      50
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               1       18      50
6-24 months                  ki1000108-IRC              INDIA                          >=50 cm                  0       70     225
6-24 months                  ki1000108-IRC              INDIA                          >=50 cm                  1       39     225
6-24 months                  ki1000108-IRC              INDIA                          <48 cm                   0       19     225
6-24 months                  ki1000108-IRC              INDIA                          <48 cm                   1       10     225
6-24 months                  ki1000108-IRC              INDIA                          [48-50) cm               0       52     225
6-24 months                  ki1000108-IRC              INDIA                          [48-50) cm               1       35     225
6-24 months                  ki1000109-EE               PAKISTAN                       >=50 cm                  0        7      58
6-24 months                  ki1000109-EE               PAKISTAN                       >=50 cm                  1       15      58
6-24 months                  ki1000109-EE               PAKISTAN                       <48 cm                   0        5      58
6-24 months                  ki1000109-EE               PAKISTAN                       <48 cm                   1        9      58
6-24 months                  ki1000109-EE               PAKISTAN                       [48-50) cm               0       10      58
6-24 months                  ki1000109-EE               PAKISTAN                       [48-50) cm               1       12      58
6-24 months                  ki1000109-ResPak           PAKISTAN                       >=50 cm                  0        3       8
6-24 months                  ki1000109-ResPak           PAKISTAN                       >=50 cm                  1        2       8
6-24 months                  ki1000109-ResPak           PAKISTAN                       <48 cm                   0        0       8
6-24 months                  ki1000109-ResPak           PAKISTAN                       <48 cm                   1        0       8
6-24 months                  ki1000109-ResPak           PAKISTAN                       [48-50) cm               0        3       8
6-24 months                  ki1000109-ResPak           PAKISTAN                       [48-50) cm               1        0       8
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  0      118     801
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  1       67     801
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   0       98     801
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   1      152     801
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               0      184     801
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               1      182     801
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  0       60     330
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  1       49     330
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   0       16     330
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   1       44     330
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               0       65     330
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               1       96     330
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  0      121     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  1       25     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   0       50     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   1       40     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               0      148     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               1       72     456
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                  0      146     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm                  1       18     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                   0       67     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm                   1       40     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm               0      160     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm               1       75     506
6-24 months                  ki1101329-Keneba           GAMBIA                         >=50 cm                  0      423    1056
6-24 months                  ki1101329-Keneba           GAMBIA                         >=50 cm                  1      205    1056
6-24 months                  ki1101329-Keneba           GAMBIA                         <48 cm                   0       53    1056
6-24 months                  ki1101329-Keneba           GAMBIA                         <48 cm                   1       43    1056
6-24 months                  ki1101329-Keneba           GAMBIA                         [48-50) cm               0      177    1056
6-24 months                  ki1101329-Keneba           GAMBIA                         [48-50) cm               1      155    1056
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          >=50 cm                  0       57     396
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          >=50 cm                  1       37     396
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          <48 cm                   0       43     396
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          <48 cm                   1      103     396
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          [48-50) cm               0       73     396
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          [48-50) cm               1       83     396
6-24 months                  ki1114097-CMIN             BANGLADESH                     >=50 cm                  0        0       7
6-24 months                  ki1114097-CMIN             BANGLADESH                     >=50 cm                  1        0       7
6-24 months                  ki1114097-CMIN             BANGLADESH                     <48 cm                   0        1       7
6-24 months                  ki1114097-CMIN             BANGLADESH                     <48 cm                   1        1       7
6-24 months                  ki1114097-CMIN             BANGLADESH                     [48-50) cm               0        2       7
6-24 months                  ki1114097-CMIN             BANGLADESH                     [48-50) cm               1        3       7
6-24 months                  ki1114097-CONTENT          PERU                           >=50 cm                  0        1       2
6-24 months                  ki1114097-CONTENT          PERU                           >=50 cm                  1        0       2
6-24 months                  ki1114097-CONTENT          PERU                           <48 cm                   0        1       2
6-24 months                  ki1114097-CONTENT          PERU                           <48 cm                   1        0       2
6-24 months                  ki1114097-CONTENT          PERU                           [48-50) cm               0        0       2
6-24 months                  ki1114097-CONTENT          PERU                           [48-50) cm               1        0       2
6-24 months                  ki1119695-PROBIT           BELARUS                        >=50 cm                  0    13063   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        >=50 cm                  1     1018   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        <48 cm                   0       47   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        <48 cm                   1        7   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        [48-50) cm               0      692   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        [48-50) cm               1      124   14951
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  0     2415    8393
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  1      604    8393
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   0     1169    8393
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   1      624    8393
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               0     2604    8393
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               1      977    8393
6-24 months                  ki1135781-COHORTS          GUATEMALA                      >=50 cm                  0      107     499
6-24 months                  ki1135781-COHORTS          GUATEMALA                      >=50 cm                  1      221     499
6-24 months                  ki1135781-COHORTS          GUATEMALA                      <48 cm                   0        6     499
6-24 months                  ki1135781-COHORTS          GUATEMALA                      <48 cm                   1       29     499
6-24 months                  ki1135781-COHORTS          GUATEMALA                      [48-50) cm               0       25     499
6-24 months                  ki1135781-COHORTS          GUATEMALA                      [48-50) cm               1      111     499
6-24 months                  ki1135781-COHORTS          INDIA                          >=50 cm                  0     1184    5016
6-24 months                  ki1135781-COHORTS          INDIA                          >=50 cm                  1      140    5016
6-24 months                  ki1135781-COHORTS          INDIA                          <48 cm                   0      950    5016
6-24 months                  ki1135781-COHORTS          INDIA                          <48 cm                   1      573    5016
6-24 months                  ki1135781-COHORTS          INDIA                          [48-50) cm               0     1666    5016
6-24 months                  ki1135781-COHORTS          INDIA                          [48-50) cm               1      503    5016
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    >=50 cm                  0      448    2116
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    >=50 cm                  1      511    2116
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    <48 cm                   0       60    2116
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    <48 cm                   1      254    2116
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    [48-50) cm               0      240    2116
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    [48-50) cm               1      603    2116
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  0      790    8511
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  1       45    8511
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   0     3110    8511
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   1     1333    8511
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               0     2716    8511
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               1      517    8511
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  0      730    2863
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  1      290    2863
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   0      495    2863
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   1      447    2863
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               0      589    2863
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               1      312    2863


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

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
![](/tmp/aae80835-df9c-4c8a-8317-4a4c37acabb3/a79bd992-3999-4641-9b9a-db5a3eb3d85e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/aae80835-df9c-4c8a-8317-4a4c37acabb3/a79bd992-3999-4641-9b9a-db5a3eb3d85e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/aae80835-df9c-4c8a-8317-4a4c37acabb3/a79bd992-3999-4641-9b9a-db5a3eb3d85e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/aae80835-df9c-4c8a-8317-4a4c37acabb3/a79bd992-3999-4641-9b9a-db5a3eb3d85e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH     >=50 cm              NA                0.3044598   0.1547885   0.4541311
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH     <48 cm               NA                0.6462883   0.5310448   0.7615318
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH     [48-50) cm           NA                0.5177325   0.4069297   0.6285353
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           >=50 cm              NA                0.3939899   0.2531126   0.5348672
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           <48 cm               NA                0.7705297   0.6632358   0.8778236
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           [48-50) cm           NA                0.5309553   0.4308561   0.6310545
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                0.4117796   0.2636171   0.5599422
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   <48 cm               NA                0.4437843   0.2224060   0.6651627
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   [48-50) cm           NA                0.5305073   0.3845191   0.6764956
0-24 months (no birth st.)   ki1000108-IRC              INDIA          >=50 cm              NA                0.5018491   0.4189771   0.5847210
0-24 months (no birth st.)   ki1000108-IRC              INDIA          <48 cm               NA                0.6909140   0.5771346   0.8046934
0-24 months (no birth st.)   ki1000108-IRC              INDIA          [48-50) cm           NA                0.6224831   0.5410898   0.7038763
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN       >=50 cm              NA                0.7083333   0.5258340   0.8908327
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN       <48 cm               NA                0.9032258   0.8293696   0.9770820
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN       [48-50) cm           NA                0.7962963   0.6884899   0.9041027
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                0.3852466   0.3203236   0.4501696
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA          <48 cm               NA                0.6897223   0.6299946   0.7494500
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           NA                0.5386179   0.4737854   0.6034504
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                0.4357162   0.3534001   0.5180324
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH     <48 cm               NA                0.7576110   0.6871793   0.8280427
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH     [48-50) cm           NA                0.6023162   0.5384408   0.6661916
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                0.1615229   0.1036386   0.2194072
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     <48 cm               NA                0.6076804   0.5362833   0.6790775
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           NA                0.3406467   0.2849131   0.3963802
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                0.1136832   0.0653715   0.1619949
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               NA                0.5995493   0.5286244   0.6704741
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           NA                0.4233991   0.3670970   0.4797012
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA         >=50 cm              NA                0.4158547   0.3809760   0.4507335
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA         <48 cm               NA                0.7262188   0.6651399   0.7872977
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA         [48-50) cm           NA                0.6180820   0.5757159   0.6604480
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          >=50 cm              NA                0.3565950   0.2658250   0.4473650
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          <48 cm               NA                0.6987496   0.6417500   0.7557492
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          [48-50) cm           NA                0.4976957   0.4304375   0.5649538
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS        >=50 cm              NA                0.1292799   0.1103292   0.1482306
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS        <48 cm               NA                0.6043406   0.5624639   0.6462173
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS        [48-50) cm           NA                0.4632918   0.4006588   0.5259248
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.2483018   0.2351059   0.2614977
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               NA                0.4620306   0.4443059   0.4797552
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.3638342   0.3509355   0.3767328
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                0.6008996   0.5547941   0.6470050
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA      <48 cm               NA                0.8897605   0.8306957   0.9488253
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA      [48-50) cm           NA                0.8126910   0.7640997   0.8612823
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA          >=50 cm              NA                0.1125687   0.0962520   0.1288855
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA          <48 cm               NA                0.4547445   0.4329039   0.4765851
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA          [48-50) cm           NA                0.2532867   0.2361270   0.2704463
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                0.5257323   0.4968707   0.5545939
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES    <48 cm               NA                0.8490126   0.8201213   0.8779039
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES    [48-50) cm           NA                0.7172976   0.6915777   0.7430176
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                0.0558339   0.0423649   0.0693030
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH     <48 cm               NA                0.3650150   0.3537761   0.3762540
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           NA                0.1458317   0.1350622   0.1566013
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                0.3203192   0.2866557   0.3539827
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH     <48 cm               NA                0.5546236   0.5179275   0.5913197
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           NA                0.4008205   0.3645988   0.4370422
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           >=50 cm              NA                0.0961538   0.0158329   0.1764747
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           <48 cm               NA                0.5806452   0.4575191   0.7037712
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           [48-50) cm           NA                0.3010753   0.2076185   0.3945321
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                0.1363636   0.0345123   0.2382150
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   <48 cm               NA                0.3913043   0.1909624   0.5916463
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   [48-50) cm           NA                0.3043478   0.1707865   0.4379091
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                0.4666667   0.2127010   0.7206323
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               NA                0.4000000   0.2236551   0.5763449
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           NA                0.4250000   0.2708952   0.5791048
0-6 months (no birth st.)    ki1000108-IRC              INDIA          >=50 cm              NA                0.2281076   0.1579135   0.2983017
0-6 months (no birth st.)    ki1000108-IRC              INDIA          <48 cm               NA                0.5529156   0.4309380   0.6748933
0-6 months (no birth st.)    ki1000108-IRC              INDIA          [48-50) cm           NA                0.3692144   0.2880363   0.4503925
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                0.0741560   0.0504098   0.0979023
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA          <48 cm               NA                0.3148322   0.2642311   0.3654332
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           NA                0.1451452   0.1192895   0.1710010
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                0.0854605   0.0382039   0.1327172
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH     <48 cm               NA                0.4477585   0.3656621   0.5298549
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH     [48-50) cm           NA                0.1826515   0.1321943   0.2331087
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA         >=50 cm              NA                0.1529424   0.1273136   0.1785712
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA         <48 cm               NA                0.5175381   0.4486010   0.5864752
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA         [48-50) cm           NA                0.3032210   0.2627328   0.3437093
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          >=50 cm              NA                0.0521739   0.0114951   0.0928527
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          <48 cm               NA                0.2857143   0.2298894   0.3415392
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          [48-50) cm           NA                0.1057692   0.0639382   0.1476003
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS        >=50 cm              NA                0.0628010   0.0506497   0.0749523
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS        <48 cm               NA                0.5402079   0.4941589   0.5862569
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS        [48-50) cm           NA                0.3770588   0.3169477   0.4371699
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.1021764   0.0929211   0.1114317
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               NA                0.2562888   0.2407055   0.2718721
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.1804118   0.1700910   0.1907327
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                0.0934826   0.0659965   0.1209688
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA      <48 cm               NA                0.6309542   0.5399654   0.7219430
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA      [48-50) cm           NA                0.3818898   0.3221020   0.4416775
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA          >=50 cm              NA                0.0133998   0.0074286   0.0193710
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA          <48 cm               NA                0.1652063   0.1488796   0.1815330
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA          [48-50) cm           NA                0.0472722   0.0388440   0.0557004
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                0.0698902   0.0549767   0.0848038
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES    <48 cm               NA                0.4067119   0.3667840   0.4466398
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES    [48-50) cm           NA                0.1977556   0.1747262   0.2207849
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                0.0196350   0.0114100   0.0278600
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH     <48 cm               NA                0.2129094   0.2034987   0.2223201
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           NA                0.0449951   0.0386537   0.0513364
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                0.0536618   0.0357560   0.0715676
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH     <48 cm               NA                0.1542519   0.1279292   0.1805746
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           NA                0.0847397   0.0645675   0.1049119
6-24 months                  ki0047075b-MAL-ED          BANGLADESH     >=50 cm              NA                0.2785186   0.1270083   0.4300289
6-24 months                  ki0047075b-MAL-ED          BANGLADESH     <48 cm               NA                0.5543207   0.3958708   0.7127707
6-24 months                  ki0047075b-MAL-ED          BANGLADESH     [48-50) cm           NA                0.4425314   0.3133484   0.5717143
6-24 months                  ki0047075b-MAL-ED          PERU           >=50 cm              NA                0.3633324   0.2145315   0.5121333
6-24 months                  ki0047075b-MAL-ED          PERU           <48 cm               NA                0.4343406   0.2142779   0.6544034
6-24 months                  ki0047075b-MAL-ED          PERU           [48-50) cm           NA                0.3710357   0.2453474   0.4967240
6-24 months                  ki1000108-IRC              INDIA          >=50 cm              NA                0.3542625   0.2635005   0.4450245
6-24 months                  ki1000108-IRC              INDIA          <48 cm               NA                0.3307696   0.1495346   0.5120046
6-24 months                  ki1000108-IRC              INDIA          [48-50) cm           NA                0.4066183   0.3018186   0.5114179
6-24 months                  ki1000109-EE               PAKISTAN       >=50 cm              NA                0.6818182   0.4854888   0.8781476
6-24 months                  ki1000109-EE               PAKISTAN       <48 cm               NA                0.6428571   0.3896716   0.8960427
6-24 months                  ki1000109-EE               PAKISTAN       [48-50) cm           NA                0.5454545   0.3355696   0.7553395
6-24 months                  ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                0.3526451   0.2895987   0.4156915
6-24 months                  ki1000304b-SAS-CompFeed    INDIA          <48 cm               NA                0.6105717   0.5612587   0.6598847
6-24 months                  ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           NA                0.5021661   0.4521777   0.5521545
6-24 months                  ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                0.4479468   0.3527956   0.5430980
6-24 months                  ki1017093-NIH-Birth        BANGLADESH     <48 cm               NA                0.7372004   0.6213944   0.8530064
6-24 months                  ki1017093-NIH-Birth        BANGLADESH     [48-50) cm           NA                0.6000539   0.5239230   0.6761849
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                0.1683651   0.1067167   0.2300136
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     <48 cm               NA                0.4473199   0.3435005   0.5511392
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           NA                0.3278913   0.2654129   0.3903696
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                0.1059938   0.0573641   0.1546235
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               NA                0.3454015   0.2515888   0.4392142
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           NA                0.3195284   0.2597116   0.3793453
6-24 months                  ki1101329-Keneba           GAMBIA         >=50 cm              NA                0.3183264   0.2818747   0.3547781
6-24 months                  ki1101329-Keneba           GAMBIA         <48 cm               NA                0.4720679   0.3736942   0.5704417
6-24 months                  ki1101329-Keneba           GAMBIA         [48-50) cm           NA                0.4763134   0.4230199   0.5296069
6-24 months                  ki1113344-GMS-Nepal        NEPAL          >=50 cm              NA                0.3831636   0.2830824   0.4832447
6-24 months                  ki1113344-GMS-Nepal        NEPAL          <48 cm               NA                0.7150907   0.6395913   0.7905901
6-24 months                  ki1113344-GMS-Nepal        NEPAL          [48-50) cm           NA                0.5242834   0.4467849   0.6017820
6-24 months                  ki1119695-PROBIT           BELARUS        >=50 cm              NA                0.0722960   0.0585717   0.0860203
6-24 months                  ki1119695-PROBIT           BELARUS        <48 cm               NA                0.1296296   0.1108322   0.1484271
6-24 months                  ki1119695-PROBIT           BELARUS        [48-50) cm           NA                0.1519608   0.1079464   0.1959751
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                0.2002646   0.1859801   0.2145492
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               NA                0.3488589   0.3267845   0.3709332
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           NA                0.2729110   0.2583047   0.2875173
6-24 months                  ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                0.6737805   0.6229925   0.7245685
6-24 months                  ki1135781-COHORTS          GUATEMALA      <48 cm               NA                0.8285714   0.7035869   0.9535560
6-24 months                  ki1135781-COHORTS          GUATEMALA      [48-50) cm           NA                0.8161765   0.7510126   0.8813403
6-24 months                  ki1135781-COHORTS          INDIA          >=50 cm              NA                0.1061562   0.0896160   0.1226963
6-24 months                  ki1135781-COHORTS          INDIA          <48 cm               NA                0.3783654   0.3540392   0.4026917
6-24 months                  ki1135781-COHORTS          INDIA          [48-50) cm           NA                0.2312818   0.2136119   0.2489516
6-24 months                  ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                0.5336813   0.5023283   0.5650344
6-24 months                  ki1135781-COHORTS          PHILIPPINES    <48 cm               NA                0.8131523   0.7709117   0.8553928
6-24 months                  ki1135781-COHORTS          PHILIPPINES    [48-50) cm           NA                0.7137288   0.6835239   0.7439336
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                0.0523808   0.0360522   0.0687094
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH     <48 cm               NA                0.3010655   0.2862586   0.3158725
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           NA                0.1591610   0.1453186   0.1730034
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                0.2836187   0.2507079   0.3165295
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH     <48 cm               NA                0.4751190   0.4369278   0.5133102
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           NA                0.3457627   0.3075866   0.3839387


### Parameter: E(Y)


agecat                       studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH     NA                   NA                0.5294118   0.4576804   0.6011431
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           NA                   NA                0.5603865   0.4926077   0.6281653
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.4690265   0.3766048   0.5614483
0-24 months (no birth st.)   ki1000108-IRC              INDIA          NA                   NA                0.5913043   0.5393557   0.6432530
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN       NA                   NA                0.8285714   0.7659176   0.8912252
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA          NA                   NA                0.5657407   0.5074689   0.6240126
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.6007828   0.5582791   0.6432864
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.3759874   0.3382238   0.4137509
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA         NA                   NA                0.5296120   0.5040796   0.5551444
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.5617391   0.5211485   0.6023298
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS        NA                   NA                0.1597778   0.1408215   0.1787342
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.3494034   0.3410405   0.3577663
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA      NA                   NA                0.7082294   0.6767491   0.7397098
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA          NA                   NA                0.2867647   0.2751726   0.2983568
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.6671324   0.6498678   0.6843969
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.2656094   0.2573816   0.2738373
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.4273585   0.4069266   0.4477904
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           NA                   NA                0.3333333   0.2689597   0.3977070
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.2566372   0.1757463   0.3375280
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.4235294   0.3178625   0.5291963
0-6 months (no birth st.)    ki1000108-IRC              INDIA          NA                   NA                0.3478261   0.2974955   0.3981566
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA          NA                   NA                0.1946247   0.1703263   0.2189230
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.2309198   0.1943452   0.2674943
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA         NA                   NA                0.2552757   0.2329715   0.2775799
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.1739130   0.1429052   0.2049209
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS        NA                   NA                0.0912784   0.0781588   0.1043979
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.1729137   0.1662801   0.1795472
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA      NA                   NA                0.2581047   0.2278007   0.2884088
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA          NA                   NA                0.0790014   0.0720874   0.0859154
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.1893119   0.1749594   0.2036645
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.1402030   0.1340165   0.1463895
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.0984277   0.0855770   0.1112784
6-24 months                  ki0047075b-MAL-ED          BANGLADESH     NA                   NA                0.4275362   0.3446947   0.5103778
6-24 months                  ki0047075b-MAL-ED          PERU           NA                   NA                0.3884298   0.3012257   0.4756338
6-24 months                  ki1000108-IRC              INDIA          NA                   NA                0.3733333   0.3099915   0.4366752
6-24 months                  ki1000109-EE               PAKISTAN       NA                   NA                0.6206897   0.4947260   0.7466533
6-24 months                  ki1000304b-SAS-CompFeed    INDIA          NA                   NA                0.5006242   0.4555100   0.5457384
6-24 months                  ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.5727273   0.5192737   0.6261808
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1101329-Keneba           GAMBIA         NA                   NA                0.3816288   0.3523153   0.4109422
6-24 months                  ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.5631313   0.5142177   0.6120449
6-24 months                  ki1119695-PROBIT           BELARUS        NA                   NA                0.0768510   0.0628857   0.0908164
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.2627189   0.2533027   0.2721352
6-24 months                  ki1135781-COHORTS          GUATEMALA      NA                   NA                0.7234469   0.6841620   0.7627318
6-24 months                  ki1135781-COHORTS          INDIA          NA                   NA                0.2424242   0.2305635   0.2542850
6-24 months                  ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.6465028   0.6261291   0.6668766
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.2226530   0.2124032   0.2329029
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.3663989   0.3454886   0.3873091


### Parameter: RR


agecat                       studyid                    country        intervention_level   baseline_level      estimate    ci_lower    ci_upper
---------------------------  -------------------------  -------------  -------------------  ---------------  -----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH     <48 cm               >=50 cm            2.1227376   1.2564731    3.586241
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH     [48-50) cm           >=50 cm            1.7004954   0.9943651    2.908071
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           <48 cm               >=50 cm            1.9557094   1.3317235    2.872067
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           [48-50) cm           >=50 cm            1.3476370   0.8997627    2.018449
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   <48 cm               >=50 cm            1.0777229   0.5815066    1.997375
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   [48-50) cm           >=50 cm            1.2883283   0.8153674    2.035634
0-24 months (no birth st.)   ki1000108-IRC              INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA          <48 cm               >=50 cm            1.3767366   1.0911041    1.737143
0-24 months (no birth st.)   ki1000108-IRC              INDIA          [48-50) cm           >=50 cm            1.2403790   1.0050907    1.530747
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN       <48 cm               >=50 cm            1.2751423   0.9731153    1.670910
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN       [48-50) cm           >=50 cm            1.1241830   0.8403017    1.503969
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA          <48 cm               >=50 cm            1.7903397   1.4872876    2.155142
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           >=50 cm            1.3981121   1.1750065    1.663580
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH     <48 cm               >=50 cm            1.7387716   1.4090192    2.145696
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH     [48-50) cm           >=50 cm            1.3823590   1.1131242    1.716714
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     <48 cm               >=50 cm            3.7621938   2.5785897    5.489087
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           >=50 cm            2.1089685   1.4209442    3.130136
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               >=50 cm            5.2738599   3.3927183    8.198028
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           >=50 cm            3.7243769   2.3868975    5.811303
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA         <48 cm               >=50 cm            1.7463280   1.5515003    1.965621
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA         [48-50) cm           >=50 cm            1.4862929   1.3348820    1.654878
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          <48 cm               >=50 cm            1.9595049   1.4998474    2.560033
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          [48-50) cm           >=50 cm            1.3956889   1.0470416    1.860430
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS        <48 cm               >=50 cm            4.6746676   4.0287624    5.424127
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS        [48-50) cm           >=50 cm            3.5836334   3.1336918    4.098178
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm            1.8607621   1.7427735    1.986739
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm            1.4652901   1.3746275    1.561932
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA      <48 cm               >=50 cm            1.4807141   1.3377215    1.638992
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA      [48-50) cm           >=50 cm            1.3524573   1.2271112    1.490607
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA          <48 cm               >=50 cm            4.0397056   3.4684624    4.705030
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA          [48-50) cm           >=50 cm            2.2500626   1.9181048    2.639471
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES    <48 cm               >=50 cm            1.6149142   1.5144005    1.722099
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES    [48-50) cm           >=50 cm            1.3643780   1.2783061    1.456245
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH     <48 cm               >=50 cm            6.5375120   5.1410476    8.313299
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           >=50 cm            2.6118834   2.0380619    3.347266
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH     <48 cm               >=50 cm            1.7314715   1.5291198    1.960601
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           >=50 cm            1.2513158   1.0890205    1.437798
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           <48 cm               >=50 cm            6.0387095   2.5506765   14.296604
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           [48-50) cm           >=50 cm            3.1311827   1.2843642    7.633586
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   <48 cm               >=50 cm            2.8695652   1.1602326    7.097201
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   [48-50) cm           >=50 cm            2.2318841   0.9385267    5.307581
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          <48 cm               >=50 cm            0.8571429   0.4254846    1.726723
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          [48-50) cm           >=50 cm            0.9107143   0.4735622    1.751408
0-6 months (no birth st.)    ki1000108-IRC              INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA          <48 cm               >=50 cm            2.4239247   1.6610084    3.537256
0-6 months (no birth st.)    ki1000108-IRC              INDIA          [48-50) cm           >=50 cm            1.6185975   1.1081723    2.364125
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA          <48 cm               >=50 cm            4.2455374   2.9403508    6.130081
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           >=50 cm            1.9572952   1.3279854    2.884824
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH     <48 cm               >=50 cm            5.2393598   2.9258541    9.382180
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH     [48-50) cm           >=50 cm            2.1372618   1.1511605    3.968072
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA         <48 cm               >=50 cm            3.3838758   2.7313122    4.192349
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA         [48-50) cm           >=50 cm            1.9825831   1.6010818    2.454987
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          <48 cm               >=50 cm            5.4761905   2.4513119   12.233719
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          [48-50) cm           >=50 cm            2.0272436   0.8457156    4.859455
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS        <48 cm               >=50 cm            8.6018991   7.1346436   10.370899
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS        [48-50) cm           >=50 cm            6.0040249   5.0430617    7.148101
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm            2.5082978   2.2489877    2.797506
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm            1.7656900   1.5862780    1.965394
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA      <48 cm               >=50 cm            6.7494259   4.8616571    9.370211
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA      [48-50) cm           >=50 cm            4.0851410   2.9305369    5.694648
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA          <48 cm               >=50 cm           12.3289883   7.8118527   19.458118
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA          [48-50) cm           >=50 cm            3.5278225   2.1832454    5.700473
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES    <48 cm               >=50 cm            5.8192940   4.6017468    7.358985
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES    [48-50) cm           >=50 cm            2.8295159   2.2193025    3.607512
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH     <48 cm               >=50 cm           10.8433575   7.1446802   16.456776
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           >=50 cm            2.2915741   1.4978900    3.505806
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH     <48 cm               >=50 cm            2.8745196   1.9813768    4.170263
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           >=50 cm            1.5791437   1.0475597    2.380480
6-24 months                  ki0047075b-MAL-ED          BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki0047075b-MAL-ED          BANGLADESH     <48 cm               >=50 cm            1.9902469   1.0759276    3.681551
6-24 months                  ki0047075b-MAL-ED          BANGLADESH     [48-50) cm           >=50 cm            1.5888755   0.8573038    2.944727
6-24 months                  ki0047075b-MAL-ED          PERU           >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki0047075b-MAL-ED          PERU           <48 cm               >=50 cm            1.1954361   0.6218694    2.298019
6-24 months                  ki0047075b-MAL-ED          PERU           [48-50) cm           >=50 cm            1.0212019   0.6008424    1.735652
6-24 months                  ki1000108-IRC              INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1000108-IRC              INDIA          <48 cm               >=50 cm            0.9336849   0.5097275    1.710262
6-24 months                  ki1000108-IRC              INDIA          [48-50) cm           >=50 cm            1.1477879   0.7977728    1.651369
6-24 months                  ki1000109-EE               PAKISTAN       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1000109-EE               PAKISTAN       <48 cm               >=50 cm            0.9428571   0.5788442    1.535784
6-24 months                  ki1000109-EE               PAKISTAN       [48-50) cm           >=50 cm            0.8000000   0.4947291    1.293637
6-24 months                  ki1000304b-SAS-CompFeed    INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1000304b-SAS-CompFeed    INDIA          <48 cm               >=50 cm            1.7314055   1.4163001    2.116617
6-24 months                  ki1000304b-SAS-CompFeed    INDIA          [48-50) cm           >=50 cm            1.4239985   1.1827027    1.714524
6-24 months                  ki1017093-NIH-Birth        BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1017093-NIH-Birth        BANGLADESH     <48 cm               >=50 cm            1.6457321   1.2640892    2.142597
6-24 months                  ki1017093-NIH-Birth        BANGLADESH     [48-50) cm           >=50 cm            1.3395652   1.0463132    1.715008
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     <48 cm               >=50 cm            2.6568437   1.7216594    4.100009
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     [48-50) cm           >=50 cm            1.9475009   1.2883190    2.943960
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     <48 cm               >=50 cm            3.2586942   1.9130728    5.550802
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     [48-50) cm           >=50 cm            3.0145946   1.8363722    4.948768
6-24 months                  ki1101329-Keneba           GAMBIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1101329-Keneba           GAMBIA         <48 cm               >=50 cm            1.4829682   1.1704970    1.878855
6-24 months                  ki1101329-Keneba           GAMBIA         [48-50) cm           >=50 cm            1.4963050   1.2765930    1.753831
6-24 months                  ki1113344-GMS-Nepal        NEPAL          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1113344-GMS-Nepal        NEPAL          <48 cm               >=50 cm            1.8662806   1.4082566    2.473273
6-24 months                  ki1113344-GMS-Nepal        NEPAL          [48-50) cm           >=50 cm            1.3683019   1.0140419    1.846324
6-24 months                  ki1119695-PROBIT           BELARUS        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1119695-PROBIT           BELARUS        <48 cm               >=50 cm            1.7930401   1.3957032    2.303493
6-24 months                  ki1119695-PROBIT           BELARUS        [48-50) cm           >=50 cm            2.1019252   1.6162855    2.733483
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE       <48 cm               >=50 cm            1.7419895   1.5836433    1.916169
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE       [48-50) cm           >=50 cm            1.3627519   1.2464950    1.489852
6-24 months                  ki1135781-COHORTS          GUATEMALA      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1135781-COHORTS          GUATEMALA      <48 cm               >=50 cm            1.2297350   1.0389082    1.455613
6-24 months                  ki1135781-COHORTS          GUATEMALA      [48-50) cm           >=50 cm            1.2113388   1.0853745    1.351922
6-24 months                  ki1135781-COHORTS          INDIA          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1135781-COHORTS          INDIA          <48 cm               >=50 cm            3.5642337   3.0121035    4.217572
6-24 months                  ki1135781-COHORTS          INDIA          [48-50) cm           >=50 cm            2.1786932   1.8322899    2.590586
6-24 months                  ki1135781-COHORTS          PHILIPPINES    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1135781-COHORTS          PHILIPPINES    <48 cm               >=50 cm            1.5236664   1.4095868    1.646979
6-24 months                  ki1135781-COHORTS          PHILIPPINES    [48-50) cm           >=50 cm            1.3373688   1.2446082    1.437043
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH     <48 cm               >=50 cm            5.7476306   4.2057280    7.854825
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH     [48-50) cm           >=50 cm            3.0385360   2.2018806    4.193098
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH     <48 cm               >=50 cm            1.6752035   1.4563673    1.926922
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH     [48-50) cm           >=50 cm            1.2191111   1.0361053    1.434441


### Parameter: PAR


agecat                       studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH     >=50 cm              NA                 0.2249520    0.0885596   0.3613443
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           >=50 cm              NA                 0.1663966    0.0428757   0.2899175
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                 0.0572469   -0.0619325   0.1764264
0-24 months (no birth st.)   ki1000108-IRC              INDIA          >=50 cm              NA                 0.0894553    0.0266952   0.1522153
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN       >=50 cm              NA                 0.1202381   -0.0404240   0.2809002
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.1804942    0.1116845   0.2493039
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                 0.1650666    0.0952019   0.2349312
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.2144645    0.1591641   0.2697648
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.2798849    0.2294012   0.3303687
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.1137572    0.0894408   0.1380737
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          >=50 cm              NA                 0.2051442    0.1235821   0.2867062
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0304979    0.0234498   0.0375460
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.1011016    0.0897505   0.1124527
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.1073298    0.0788188   0.1358409
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.1741960    0.1577919   0.1906000
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.1414001    0.1198506   0.1629495
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.2097755    0.1957471   0.2238039
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.1070393    0.0786025   0.1354760
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           >=50 cm              NA                 0.2371795    0.1514234   0.3229356
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                 0.1202735    0.0262608   0.2142862
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                -0.0431373   -0.2731369   0.1868624
0-6 months (no birth st.)    ki1000108-IRC              INDIA          >=50 cm              NA                 0.1197185    0.0610390   0.1783980
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.1204686    0.0868480   0.1540892
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                 0.1454592    0.0967949   0.1941236
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.1023333    0.0806487   0.1240179
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          >=50 cm              NA                 0.1217391    0.0775312   0.1659471
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0284774    0.0225094   0.0344453
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.0707373    0.0621863   0.0792883
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.1646221    0.1354901   0.1937541
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.0656015    0.0574746   0.0737285
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.1194217    0.1035310   0.1353123
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.1205680    0.1114821   0.1296540
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.0447659    0.0284727   0.0610591
6-24 months                  ki0047075b-MAL-ED          BANGLADESH     >=50 cm              NA                 0.1490177    0.0138737   0.2841616
6-24 months                  ki0047075b-MAL-ED          PERU           >=50 cm              NA                 0.0250974   -0.0942379   0.1444327
6-24 months                  ki1000108-IRC              INDIA          >=50 cm              NA                 0.0190708   -0.0469123   0.0850539
6-24 months                  ki1000109-EE               PAKISTAN       >=50 cm              NA                -0.0611285   -0.2197818   0.0975248
6-24 months                  ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.1479791    0.0896063   0.2063519
6-24 months                  ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                 0.1247805    0.0470824   0.2024785
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.1320735    0.0758082   0.1883387
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.1568520    0.1085321   0.2051719
6-24 months                  ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.0633024    0.0390707   0.0875341
6-24 months                  ki1113344-GMS-Nepal        NEPAL          >=50 cm              NA                 0.1799678    0.0919713   0.2679642
6-24 months                  ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0045550    0.0017845   0.0073256
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.0624543    0.0503696   0.0745391
6-24 months                  ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.0496664    0.0226156   0.0767172
6-24 months                  ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.1362681    0.1198838   0.1526523
6-24 months                  ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.1128215    0.0905969   0.1350462
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.1702722    0.1529012   0.1876433
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.0827802    0.0548957   0.1106647


### Parameter: PAF


agecat                       studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH     >=50 cm              NA                 0.4249092    0.0960407   0.6341324
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           >=50 cm              NA                 0.2969319    0.0340752   0.4882575
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                 0.1220548   -0.1729992   0.3428915
0-24 months (no birth st.)   ki1000108-IRC              INDIA          >=50 cm              NA                 0.1512847    0.0367570   0.2521952
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN       >=50 cm              NA                 0.1451149   -0.0753561   0.3203847
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.3190404    0.2003522   0.4201123
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                 0.2747525    0.1463898   0.3838124
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.5704034    0.4012557   0.6917662
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.7111474    0.5674479   0.8071080
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.2147935    0.1665182   0.2602728
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          >=50 cm              NA                 0.3651947    0.1993578   0.4966818
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.1908769    0.1438942   0.2352811
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.2893549    0.2562830   0.3209562
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.1515467    0.1084996   0.1925153
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.6074527    0.5501432   0.6574612
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.2119520    0.1779668   0.2445321
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.7897893    0.7338762   0.8339550
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.2504672    0.1807520   0.3142498
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           >=50 cm              NA                 0.7115385    0.3604435   0.8698941
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   >=50 cm              NA                 0.4686520   -0.0208523   0.7234363
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          >=50 cm              NA                -0.1018519   -0.8043179   0.3271266
0-6 months (no birth st.)    ki1000108-IRC              INDIA          >=50 cm              NA                 0.3441907    0.1537417   0.4917794
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.6189793    0.4640030   0.7291463
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                 0.6299124    0.3777937   0.7798723
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.4008736    0.3143602   0.4764709
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          >=50 cm              NA                 0.7000000    0.3631065   0.8586891
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.3119838    0.2454317   0.3726660
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.4090901    0.3595704   0.4547809
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.6378112    0.5316848   0.7198880
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.8303849    0.7377815   0.8902850
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.6308196    0.5513746   0.6961960
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.8599530    0.7887607   0.9071520
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.4548099    0.2681693   0.5938511
6-24 months                  ki0047075b-MAL-ED          BANGLADESH     >=50 cm              NA                 0.3485498   -0.0593874   0.5994030
6-24 months                  ki0047075b-MAL-ED          PERU           >=50 cm              NA                 0.0646124   -0.2998368   0.3268771
6-24 months                  ki1000108-IRC              INDIA          >=50 cm              NA                 0.0510825   -0.1432845   0.2124057
6-24 months                  ki1000109-EE               PAKISTAN       >=50 cm              NA                -0.0984848   -0.3888305   0.1311618
6-24 months                  ki1000304b-SAS-CompFeed    INDIA          >=50 cm              NA                 0.2955892    0.1740374   0.3992530
6-24 months                  ki1017093-NIH-Birth        BANGLADESH     >=50 cm              NA                 0.2178707    0.0674672   0.3440164
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     >=50 cm              NA                 0.4396022    0.2238227   0.5953944
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     >=50 cm              NA                 0.5967453    0.3852056   0.7354979
6-24 months                  ki1101329-Keneba           GAMBIA         >=50 cm              NA                 0.1658742    0.0996599   0.2272189
6-24 months                  ki1113344-GMS-Nepal        NEPAL          >=50 cm              NA                 0.3195840    0.1413181   0.4608412
6-24 months                  ki1119695-PROBIT           BELARUS        >=50 cm              NA                 0.0592711    0.0229256   0.0942645
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE       >=50 cm              NA                 0.2377229    0.1906904   0.2820222
6-24 months                  ki1135781-COHORTS          GUATEMALA      >=50 cm              NA                 0.0686525    0.0297578   0.1059879
6-24 months                  ki1135781-COHORTS          INDIA          >=50 cm              NA                 0.5621058    0.4938128   0.6211849
6-24 months                  ki1135781-COHORTS          PHILIPPINES    >=50 cm              NA                 0.1745105    0.1384921   0.2090230
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH     >=50 cm              NA                 0.7647424    0.6807007   0.8266638
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH     >=50 cm              NA                 0.2259292    0.1463601   0.2980815
