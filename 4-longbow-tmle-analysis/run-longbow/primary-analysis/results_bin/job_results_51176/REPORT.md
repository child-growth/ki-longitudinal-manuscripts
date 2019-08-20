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
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  0       23     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  1        6     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   0       33     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   1       64     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               0       45     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               1       40     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  0       33     170
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  1        1     170
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         <48 cm                   0       38     170
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         <48 cm                   1       21     170
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               0       73     170
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               1        4     170
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          >=50 cm                  0       21     174
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          >=50 cm                  1        4     174
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          <48 cm                   0       28     174
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          <48 cm                   1       47     174
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          [48-50) cm               0       39     174
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          [48-50) cm               1       35     174
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          >=50 cm                  0       37     155
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          >=50 cm                  1        1     155
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          <48 cm                   0       30     155
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          <48 cm                   1       21     155
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          [48-50) cm               0       48     155
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          [48-50) cm               1       18     155
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           >=50 cm                  0       21     255
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           >=50 cm                  1       13     255
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           <48 cm                   0       31     255
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           <48 cm                   1       78     255
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           [48-50) cm               0       58     255
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           [48-50) cm               1       54     255
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  0       30     234
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  1       17     234
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   0       35     234
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   1       49     234
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               0       53     234
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               1       50     234
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  0        7     108
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  1        8     108
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   0        7     108
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   1       33     108
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               0       12     108
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               1       41     108
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  0        4      85
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  1       11      85
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   0        2      85
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   1       28      85
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               0        5      85
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               1       35      85
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          >=50 cm                  0       70     345
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          >=50 cm                  1       72     345
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          <48 cm                   0       19     345
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          <48 cm                   1       46     345
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          [48-50) cm               0       52     345
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          [48-50) cm               1       86     345
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       >=50 cm                  0        4      71
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       >=50 cm                  1       18      71
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       <48 cm                   0        1      71
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       <48 cm                   1       21      71
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       [48-50) cm               0        5      71
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       [48-50) cm               1       22      71
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       >=50 cm                  0        2      16
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       >=50 cm                  1        5      16
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       <48 cm                   0        0      16
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       <48 cm                   1        1      16
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       [48-50) cm               0        3      16
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       [48-50) cm               1        5      16
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  0      129    1080
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  1       83    1080
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   0      124    1080
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   1      279    1080
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               0      216    1080
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               1      249    1080
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  0       24     182
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  1        9     182
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   0       23     182
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   1       43     182
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               0       34     182
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               1       49     182
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  0      140     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  1       29     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   0       71     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   1      111     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               0      185     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               1       98     634
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
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     >=50 cm                  0        2       7
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     >=50 cm                  1        0       7
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     <48 cm                   0        3       7
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     <48 cm                   1        0       7
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     [48-50) cm               0        2       7
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     [48-50) cm               1        0       7
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         >=50 cm                  0       47     110
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         >=50 cm                  1       16     110
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         <48 cm                   0        6     110
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         <48 cm                   1        5     110
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         [48-50) cm               0       22     110
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         [48-50) cm               1       14     110
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                  0        0       2
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                  1        0       2
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                   0        1       2
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                   1        0       2
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm               0        0       2
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm               1        1       2
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           >=50 cm                  0       14      17
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           >=50 cm                  1        1      17
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           <48 cm                   0        0      17
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           <48 cm                   1        1      17
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           [48-50) cm               0        0      17
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           [48-50) cm               1        1      17
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
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  0     3196   12480
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  1      926   12480
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   0     1688   12480
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   1     1330   12480
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               0     3527   12480
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               1     1813   12480
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
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  0     3095   18156
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  1      395   18156
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   0     5685   18156
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   1     3313   18156
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               0     4756   18156
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               1      912   18156
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  0      737    3180
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  1      348    3180
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   0      495    3180
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   1      616    3180
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               0      589    3180
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               1      395    3180
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  0       28     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  1        1     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   0       63     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   1       34     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               0       76     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               1        9     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  0       34     170
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  1        0     170
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         <48 cm                   0       43     170
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         <48 cm                   1       16     170
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               0       75     170
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               1        2     170
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          >=50 cm                  0       24     174
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          >=50 cm                  1        1     174
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          <48 cm                   0       46     174
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          <48 cm                   1       29     174
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          [48-50) cm               0       66     174
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          [48-50) cm               1        8     174
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          >=50 cm                  0       38     155
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          >=50 cm                  1        0     155
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          <48 cm                   0       41     155
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          <48 cm                   1       10     155
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          [48-50) cm               0       66     155
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          [48-50) cm               1        0     155
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           >=50 cm                  0       31     255
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           >=50 cm                  1        3     255
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           <48 cm                   0       51     255
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           <48 cm                   1       58     255
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           [48-50) cm               0       85     255
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           [48-50) cm               1       27     255
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  0       41     234
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  1        6     234
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   0       51     234
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   1       33     234
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               0       78     234
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               1       25     234
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  0       14     108
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  1        1     108
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   0       24     108
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   1       16     108
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               0       44     108
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               1        9     108
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  0        7      84
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  1        7      84
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   0       18      84
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   1       12      84
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               0       23      84
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               1       17      84
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          >=50 cm                  0      109     345
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          >=50 cm                  1       33     345
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          <48 cm                   0       29     345
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          <48 cm                   1       36     345
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          [48-50) cm               0       87     345
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          [48-50) cm               1       51     345
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       >=50 cm                  0       14      71
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       >=50 cm                  1        8      71
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       <48 cm                   0        3      71
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       <48 cm                   1       19      71
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       [48-50) cm               0        9      71
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       [48-50) cm               1       18      71
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       >=50 cm                  0        3      16
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       >=50 cm                  1        4      16
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       <48 cm                   0        0      16
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       <48 cm                   1        1      16
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       [48-50) cm               0        3      16
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       [48-50) cm               1        5      16
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  0      195    1079
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  1       16    1079
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   0      276    1079
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   1      127    1079
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               0      398    1079
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               1       67    1079
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  0       30     182
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  1        3     182
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   0       38     182
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   1       28     182
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               0       71     182
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               1       12     182
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  0      165     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  1        4     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   0      111     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   1       71     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               0      257     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               1       26     634
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
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     >=50 cm                  0        2       7
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     >=50 cm                  1        0       7
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     <48 cm                   0        3       7
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     <48 cm                   1        0       7
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     [48-50) cm               0        2       7
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     [48-50) cm               1        0       7
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         >=50 cm                  0       59     110
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         >=50 cm                  1        4     110
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         <48 cm                   0       10     110
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         <48 cm                   1        1     110
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         [48-50) cm               0       31     110
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         [48-50) cm               1        5     110
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                  0        0       2
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                  1        0       2
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                   0        1       2
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                   1        0       2
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm               0        1       2
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm               1        0       2
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           >=50 cm                  0       15      17
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           >=50 cm                  1        0      17
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           <48 cm                   0        1      17
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           <48 cm                   1        0      17
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           [48-50) cm               0        0      17
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           [48-50) cm               1        1      17
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
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  0     3706   12476
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  1      416   12476
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   0     2247   12476
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   1      768   12476
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               0     4381   12476
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               1      958   12476
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
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  0     3344   18154
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  1      144   18154
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   0     7058   18154
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   1     1940   18154
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               0     5353   18154
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               1      315   18154
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  0     1027    3180
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm                  1       58    3180
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   0      939    3180
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm                   1      172    3180
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               0      901    3180
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm               1       83    3180
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  0       22     156
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     >=50 cm                  1        5     156
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   0       26     156
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     <48 cm                   1       30     156
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               0       42     156
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm               1       31     156
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  0       29     138
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         >=50 cm                  1        1     138
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         <48 cm                   0       32     138
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         <48 cm                   1        5     138
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               0       69     138
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         [48-50) cm               1        2     138
6-24 months                  ki0047075b-MAL-ED          INDIA                          >=50 cm                  0       20     127
6-24 months                  ki0047075b-MAL-ED          INDIA                          >=50 cm                  1        3     127
6-24 months                  ki0047075b-MAL-ED          INDIA                          <48 cm                   0       26     127
6-24 months                  ki0047075b-MAL-ED          INDIA                          <48 cm                   1       18     127
6-24 months                  ki0047075b-MAL-ED          INDIA                          [48-50) cm               0       33     127
6-24 months                  ki0047075b-MAL-ED          INDIA                          [48-50) cm               1       27     127
6-24 months                  ki0047075b-MAL-ED          NEPAL                          >=50 cm                  0       37     143
6-24 months                  ki0047075b-MAL-ED          NEPAL                          >=50 cm                  1        1     143
6-24 months                  ki0047075b-MAL-ED          NEPAL                          <48 cm                   0       28     143
6-24 months                  ki0047075b-MAL-ED          NEPAL                          <48 cm                   1       11     143
6-24 months                  ki0047075b-MAL-ED          NEPAL                          [48-50) cm               0       48     143
6-24 months                  ki0047075b-MAL-ED          NEPAL                          [48-50) cm               1       18     143
6-24 months                  ki0047075b-MAL-ED          PERU                           >=50 cm                  0       18     144
6-24 months                  ki0047075b-MAL-ED          PERU                           >=50 cm                  1       10     144
6-24 months                  ki0047075b-MAL-ED          PERU                           <48 cm                   0       25     144
6-24 months                  ki0047075b-MAL-ED          PERU                           <48 cm                   1       20     144
6-24 months                  ki0047075b-MAL-ED          PERU                           [48-50) cm               0       44     144
6-24 months                  ki0047075b-MAL-ED          PERU                           [48-50) cm               1       27     144
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  0       23     137
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm                  1       11     137
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   0       21     137
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm                   1       16     137
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               0       41     137
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm               1       25     137
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  0        6      75
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm                  1        7      75
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   0        4      75
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm                   1       17      75
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               0        9      75
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm               1       32      75
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  0        4      49
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm                  1        4      49
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   0        2      49
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm                   1       16      49
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               0        5      49
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm               1       18      49
6-24 months                  ki1000108-IRC              INDIA                          >=50 cm                  0       70     225
6-24 months                  ki1000108-IRC              INDIA                          >=50 cm                  1       39     225
6-24 months                  ki1000108-IRC              INDIA                          <48 cm                   0       19     225
6-24 months                  ki1000108-IRC              INDIA                          <48 cm                   1       10     225
6-24 months                  ki1000108-IRC              INDIA                          [48-50) cm               0       52     225
6-24 months                  ki1000108-IRC              INDIA                          [48-50) cm               1       35     225
6-24 months                  ki1000109-EE               PAKISTAN                       >=50 cm                  0        3      24
6-24 months                  ki1000109-EE               PAKISTAN                       >=50 cm                  1       10      24
6-24 months                  ki1000109-EE               PAKISTAN                       <48 cm                   0        1      24
6-24 months                  ki1000109-EE               PAKISTAN                       <48 cm                   1        2      24
6-24 months                  ki1000109-EE               PAKISTAN                       [48-50) cm               0        4      24
6-24 months                  ki1000109-EE               PAKISTAN                       [48-50) cm               1        4      24
6-24 months                  ki1000109-ResPak           PAKISTAN                       >=50 cm                  0        1       3
6-24 months                  ki1000109-ResPak           PAKISTAN                       >=50 cm                  1        1       3
6-24 months                  ki1000109-ResPak           PAKISTAN                       <48 cm                   0        0       3
6-24 months                  ki1000109-ResPak           PAKISTAN                       <48 cm                   1        0       3
6-24 months                  ki1000109-ResPak           PAKISTAN                       [48-50) cm               0        1       3
6-24 months                  ki1000109-ResPak           PAKISTAN                       [48-50) cm               1        0       3
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  0      118     801
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          >=50 cm                  1       67     801
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   0       98     801
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          <48 cm                   1      152     801
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               0      184     801
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm               1      182     801
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  0       16     106
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     >=50 cm                  1        6     106
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   0        8     106
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     <48 cm                   1       15     106
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               0       24     106
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm               1       37     106
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  0      121     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     >=50 cm                  1       25     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   0       51     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     <48 cm                   1       40     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               0      148     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm               1       72     457
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
6-24 months                  ki1114097-CMIN             BRAZIL                         >=50 cm                  0       47     100
6-24 months                  ki1114097-CMIN             BRAZIL                         >=50 cm                  1       12     100
6-24 months                  ki1114097-CMIN             BRAZIL                         <48 cm                   0        6     100
6-24 months                  ki1114097-CMIN             BRAZIL                         <48 cm                   1        4     100
6-24 months                  ki1114097-CMIN             BRAZIL                         [48-50) cm               0       22     100
6-24 months                  ki1114097-CMIN             BRAZIL                         [48-50) cm               1        9     100
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                  0        0       2
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm                  1        0       2
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                   0        1       2
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  <48 cm                   1        0       2
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm               0        0       2
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm               1        1       2
6-24 months                  ki1114097-CMIN             PERU                           >=50 cm                  0       11      13
6-24 months                  ki1114097-CMIN             PERU                           >=50 cm                  1        1      13
6-24 months                  ki1114097-CMIN             PERU                           <48 cm                   0        0      13
6-24 months                  ki1114097-CMIN             PERU                           <48 cm                   1        1      13
6-24 months                  ki1114097-CMIN             PERU                           [48-50) cm               0        0      13
6-24 months                  ki1114097-CMIN             PERU                           [48-50) cm               1        0      13
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
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  0     2253    7860
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm                  1      510    7860
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   0     1141    7860
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm                   1      563    7860
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               0     2538    7860
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm               1      855    7860
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
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  0     1940   10309
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm                  1      251   10309
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   0     3187   10309
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     <48 cm                   1     1379   10309
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               0     2955   10309
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm               1      597   10309
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
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
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
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
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

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/7e4c66a4-1f59-4503-98e8-eff0dce62498/284737ef-6a5a-4f85-b24e-42c2488b6f22/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7e4c66a4-1f59-4503-98e8-eff0dce62498/284737ef-6a5a-4f85-b24e-42c2488b6f22/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7e4c66a4-1f59-4503-98e8-eff0dce62498/284737ef-6a5a-4f85-b24e-42c2488b6f22/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7e4c66a4-1f59-4503-98e8-eff0dce62498/284737ef-6a5a-4f85-b24e-42c2488b6f22/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                0.2068966   0.0591143   0.3546788
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                0.6597938   0.5652857   0.7543019
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                0.4705882   0.3642260   0.5769505
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                0.3674182   0.1976490   0.5371874
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           <48 cm               NA                0.7183635   0.6316659   0.8050611
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                0.4861872   0.3926824   0.5796920
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                0.4170637   0.2708539   0.5632734
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                0.5973134   0.4894170   0.7052098
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                0.4877923   0.3910150   0.5845697
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                0.5333333   0.2796890   0.7869777
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                0.8250000   0.7067002   0.9432998
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                0.7735849   0.6603874   0.8867824
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          >=50 cm              NA                0.5049895   0.4222169   0.5877620
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          <48 cm               NA                0.6998059   0.5874684   0.8121433
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          [48-50) cm           NA                0.6234297   0.5419056   0.7049538
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                0.3852466   0.3203236   0.4501696
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                0.6897223   0.6299946   0.7494500
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                0.5386179   0.4737854   0.6034504
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                0.2727273   0.1203569   0.4250976
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                0.6515152   0.5362424   0.7667879
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                0.5903614   0.4842738   0.6964491
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                0.1714582   0.1142024   0.2287140
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                0.6154449   0.5439598   0.6869301
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                0.3451746   0.2894925   0.4008567
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                0.1136521   0.0653649   0.1619394
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                0.5994833   0.5286475   0.6703191
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                0.4235376   0.3672375   0.4798377
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                0.4156397   0.3807067   0.4505728
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         <48 cm               NA                0.7299389   0.6693499   0.7905279
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                0.6199892   0.5778280   0.6621505
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         >=50 cm              NA                0.2539683   0.1459917   0.3619448
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         <48 cm               NA                0.4545455   0.1589466   0.7501443
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         [48-50) cm           NA                0.3888889   0.2289136   0.5488641
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                0.1294570   0.1104597   0.1484543
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        <48 cm               NA                0.6054938   0.5649588   0.6460287
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                0.4590943   0.3969303   0.5212583
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.2246482   0.2119071   0.2373893
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.4404801   0.4228188   0.4581414
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.3398542   0.3271543   0.3525540
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                0.6021071   0.5560409   0.6481734
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                0.8910058   0.8315409   0.9504708
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                0.8163764   0.7677753   0.8649775
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          >=50 cm              NA                0.1117146   0.0953979   0.1280312
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          <48 cm               NA                0.4550670   0.4332218   0.4769122
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          [48-50) cm           NA                0.2532483   0.2360714   0.2704251
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                0.5242672   0.4952911   0.5532432
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                0.8475827   0.8185885   0.8765770
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                0.7172153   0.6914790   0.7429516
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                0.1141981   0.1024895   0.1259067
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                0.3665461   0.3551594   0.3779329
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                0.1611002   0.1501325   0.1720680
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                0.3212014   0.2874112   0.3549915
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                0.5531899   0.5166599   0.5897199
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                0.4020384   0.3657293   0.4383475
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                0.1276596   0.0320506   0.2232686
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                0.3928571   0.2881922   0.4975221
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                0.2427184   0.1597449   0.3256920
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                0.5000000   0.2365157   0.7634843
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                0.4000000   0.2236426   0.5763574
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                0.4250000   0.2708842   0.5791158
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          >=50 cm              NA                0.2307115   0.1602072   0.3012157
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          <48 cm               NA                0.5480292   0.4235382   0.6725202
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          [48-50) cm           NA                0.3758768   0.2945439   0.4572096
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                0.0741560   0.0504098   0.0979023
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                0.3148322   0.2642311   0.3654332
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                0.1451452   0.1192895   0.1710010
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                0.1522393   0.1266114   0.1778671
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         <48 cm               NA                0.5160089   0.4472003   0.5848175
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                0.3039770   0.2634503   0.3445036
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                0.0628015   0.0506281   0.0749749
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        <48 cm               NA                0.5527799   0.5087763   0.5967836
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                0.3663066   0.3023263   0.4302868
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.1006646   0.0914573   0.1098720
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.2547335   0.2392005   0.2702666
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.1797117   0.1694028   0.1900206
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                0.0940378   0.0665991   0.1214764
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                0.6535243   0.5627437   0.7443049
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                0.3861813   0.3261175   0.4462452
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          >=50 cm              NA                0.0132748   0.0073269   0.0192228
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          <48 cm               NA                0.1653219   0.1489946   0.1816492
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          [48-50) cm           NA                0.0472456   0.0388205   0.0556706
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                0.0698637   0.0549589   0.0847685
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                0.4057221   0.3659497   0.4454946
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                0.1974721   0.1744916   0.2204526
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                0.0405272   0.0334778   0.0475766
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                0.2153914   0.2059848   0.2247980
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                0.0567970   0.0499537   0.0636404
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                0.0537262   0.0356698   0.0717826
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                0.1549811   0.1284381   0.1815241
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                0.0841767   0.0638278   0.1045257
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                0.1851852   0.0381927   0.3321777
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                0.5357143   0.4046725   0.6667561
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                0.4246575   0.3109038   0.5384113
6-24 months                  ki0047075b-MAL-ED          PERU                           >=50 cm              NA                0.3627465   0.1801797   0.5453134
6-24 months                  ki0047075b-MAL-ED          PERU                           <48 cm               NA                0.4357601   0.2860817   0.5854385
6-24 months                  ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                0.3831801   0.2681890   0.4981713
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                0.3113219   0.1544851   0.4681586
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                0.4113316   0.2516434   0.5710199
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                0.3646907   0.2458544   0.4835270
6-24 months                  ki1000108-IRC              INDIA                          >=50 cm              NA                0.3488914   0.2582953   0.4394876
6-24 months                  ki1000108-IRC              INDIA                          <48 cm               NA                0.2881246   0.1081290   0.4681203
6-24 months                  ki1000108-IRC              INDIA                          [48-50) cm           NA                0.3817582   0.2772084   0.4863079
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                0.3526451   0.2895987   0.4156915
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                0.6105717   0.5612587   0.6598847
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                0.5021661   0.4521777   0.5521545
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                0.2727273   0.0857418   0.4597128
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                0.6521739   0.4566026   0.8477453
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                0.6065574   0.4833836   0.7297311
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                0.1670492   0.1058512   0.2282472
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                0.4457320   0.3426699   0.5487941
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                0.3304688   0.2679136   0.3930240
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                0.1107797   0.0629426   0.1586167
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                0.3731629   0.2808191   0.4655066
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                0.3247176   0.2648058   0.3846294
6-24 months                  ki1101329-Keneba           GAMBIA                         >=50 cm              NA                0.3176948   0.2812588   0.3541308
6-24 months                  ki1101329-Keneba           GAMBIA                         <48 cm               NA                0.4712712   0.3732815   0.5692609
6-24 months                  ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                0.4764950   0.4232801   0.5297100
6-24 months                  ki1119695-PROBIT           BELARUS                        >=50 cm              NA                0.0722960   0.0585717   0.0860203
6-24 months                  ki1119695-PROBIT           BELARUS                        <48 cm               NA                0.1296296   0.1108322   0.1484271
6-24 months                  ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                0.1519608   0.1079464   0.1959751
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.1845175   0.1700479   0.1989870
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.3304366   0.3080617   0.3528114
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.2522393   0.2376141   0.2668644
6-24 months                  ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                0.6737805   0.6229925   0.7245685
6-24 months                  ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                0.8285714   0.7035869   0.9535560
6-24 months                  ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                0.8161765   0.7510126   0.8813403
6-24 months                  ki1135781-COHORTS          INDIA                          >=50 cm              NA                0.1056814   0.0891436   0.1222193
6-24 months                  ki1135781-COHORTS          INDIA                          <48 cm               NA                0.3779883   0.3536939   0.4022827
6-24 months                  ki1135781-COHORTS          INDIA                          [48-50) cm           NA                0.2313151   0.2136328   0.2489974
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                0.5338901   0.5025870   0.5651931
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                0.8127090   0.7705170   0.8549009
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                0.7131872   0.6829234   0.7434510
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                0.1154683   0.1005087   0.1304278
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                0.2990061   0.2842305   0.3137816
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                0.1663113   0.1532718   0.1793508
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                0.2837152   0.2505696   0.3168608
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                0.4735545   0.4356364   0.5114725
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                0.3476685   0.3092644   0.3860726


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5213270   0.4537634   0.5888907
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           NA                   NA                0.5686275   0.5077199   0.6295350
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4957265   0.4315281   0.5599249
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7592593   0.6782516   0.8402669
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          NA                   NA                0.5913043   0.5393557   0.6432530
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5657407   0.5074689   0.6240126
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5549451   0.4825447   0.6273454
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5296120   0.5040796   0.5551444
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         NA                   NA                0.3181818   0.2307425   0.4056211
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1597778   0.1408215   0.1787342
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3260417   0.3178171   0.3342662
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7082294   0.6767491   0.7397098
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          NA                   NA                0.2867647   0.2751726   0.2983568
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6671324   0.6498678   0.6843969
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2544613   0.2465893   0.2623333
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4273585   0.4069266   0.4477904
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2735043   0.2162683   0.3307402
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4285714   0.3221077   0.5350351
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          NA                   NA                0.3478261   0.2974955   0.3981566
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1946247   0.1703263   0.2189230
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.2552757   0.2329715   0.2775799
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0912784   0.0781588   0.1043979
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1716896   0.1650721   0.1783072
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2581047   0.2278007   0.2884088
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0790014   0.0720874   0.0859154
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1893119   0.1749594   0.2036645
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1321472   0.1264309   0.1378635
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0984277   0.0855770   0.1112784
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4230769   0.3453000   0.5008539
6-24 months                  ki0047075b-MAL-ED          PERU                           NA                   NA                0.3958333   0.3156813   0.4759854
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3795620   0.2980035   0.4611205
6-24 months                  ki1000108-IRC              INDIA                          NA                   NA                0.3733333   0.3099915   0.4366752
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5006242   0.4555100   0.5457384
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5471698   0.4519599   0.6423797
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1101329-Keneba           GAMBIA                         NA                   NA                0.3816288   0.3523153   0.4109422
6-24 months                  ki1119695-PROBIT           BELARUS                        NA                   NA                0.0768510   0.0628857   0.0908164
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2452926   0.2357801   0.2548051
6-24 months                  ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7234469   0.6841620   0.7627318
6-24 months                  ki1135781-COHORTS          INDIA                          NA                   NA                0.2424242   0.2305635   0.2542850
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6465028   0.6261291   0.6668766
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2160248   0.2065944   0.2254552
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3663989   0.3454886   0.3873091


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            3.1890034   1.5391141    6.607530
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            2.2745098   1.0752756    4.811227
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            1.9551659   1.2132704    3.150719
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            1.3232529   0.8023198    2.182419
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            1.4321875   0.9644092    2.126858
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            1.1695872   0.7813367    1.750761
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            1.5468750   0.9412997    2.542041
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            1.4504717   0.8818823    2.385657
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          <48 cm               >=50 cm            1.3857831   1.1019271    1.742760
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            1.2345401   1.0014438    1.521892
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            1.7903397   1.4872876    2.155142
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            1.3981121   1.1750065    1.663580
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            2.3888889   1.3294836    4.292486
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            2.1646586   1.2036793    3.892854
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            3.5894749   2.5199973    5.112835
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            2.0131703   1.3886013    2.918660
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            5.2747213   3.3939000    8.197850
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            3.7266138   2.3883577    5.814728
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            1.7561816   1.5611614    1.975564
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            1.4916505   1.3398985    1.660589
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         <48 cm               >=50 cm            1.7897727   0.8229379    3.892501
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         [48-50) cm           >=50 cm            1.5312500   0.8474642    2.766756
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            4.6771803   4.0369088    5.419002
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            3.5463070   3.0972453    4.060477
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            1.9607554   1.8292660    2.101696
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            1.5128287   1.4135169    1.619118
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            1.4798128   1.3368978    1.638006
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            1.3558658   1.2306353    1.493840
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            4.0734790   3.4937207    4.749444
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            2.2669223   1.9304800    2.662000
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm            1.6167000   1.5154516    1.724713
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm            1.3680340   1.2813168    1.460620
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            3.2097389   2.8956021    3.557956
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            1.4107085   1.2514647    1.590215
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            1.7222527   1.5213751    1.949654
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            1.2516710   1.0891422    1.438453
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            3.0773810   1.3898085    6.814085
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            1.9012945   0.8346587    4.331016
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.8000000   0.4024331    1.590326
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.8500000   0.4483411    1.611496
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          <48 cm               >=50 cm            2.3753879   1.6230689    3.476419
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            1.6292071   1.1189198    2.372213
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            4.2455374   2.9403508    6.130081
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            1.9572952   1.3279854    2.884824
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            3.3894600   2.7340838    4.201934
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            1.9967055   1.6114205    2.474111
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            8.8020209   7.2948275   10.620618
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            5.8327694   4.8659640    6.991667
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            2.5305165   2.2670495    2.824603
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            1.7852514   1.6025054    1.988837
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            6.9495921   5.0267807    9.607905
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            4.1066608   2.9506556    5.715565
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm           12.4537912   7.8722262   19.701786
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            3.5590334   2.1977028    5.763618
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm            5.8073407   4.5928389    7.342998
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm            2.8265351   2.2172812    3.603197
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            5.3147351   4.4530782    6.343120
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            1.4014538   1.1496724    1.708376
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            2.8846454   1.9838982    4.194358
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            1.5667722   1.0349899    2.371786
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            2.8928571   1.2606772    6.638196
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            2.2931507   0.9922164    5.299792
6-24 months                  ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            1.2012798   0.6525788    2.211339
6-24 months                  ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            1.0563302   0.5875111    1.899255
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            1.3212422   0.6970012    2.504560
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            1.1714265   0.6396157    2.145413
6-24 months                  ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1000108-IRC              INDIA                          <48 cm               >=50 cm            0.8258289   0.4199579    1.623957
6-24 months                  ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            1.0942033   0.7488797    1.598763
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            1.7314055   1.4163001    2.116617
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            1.4239985   1.1827027    1.714524
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            2.3913043   1.1314648    5.053923
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            2.2240437   1.0879249    4.546610
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            2.6682675   1.7305413    4.114118
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            1.9782723   1.3085956    2.990658
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            3.3685137   2.0475568    5.541670
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            2.9312016   1.8347782    4.682824
6-24 months                  ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            1.4834087   1.1711245    1.878964
6-24 months                  ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            1.4998516   1.2795297    1.758111
6-24 months                  ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            1.7930401   1.3957032    2.303493
6-24 months                  ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            2.1019252   1.6162855    2.733483
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            1.7908146   1.6146226    1.986233
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            1.3670212   1.2400373    1.507009
6-24 months                  ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            1.2297350   1.0389082    1.455613
6-24 months                  ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            1.2113388   1.0853745    1.351922
6-24 months                  ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            3.5766769   3.0206414    4.235067
6-24 months                  ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            2.1887964   1.8395939    2.604287
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm            1.5222402   1.4085396    1.645119
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm            1.3358315   1.2431039    1.435476
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            2.5895084   2.2628435    2.963331
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            1.4403203   1.2396461    1.673480
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            1.6691191   1.4500593    1.921272
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            1.2254138   1.0411475    1.442292


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.3144305    0.1715979   0.4572630
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.2012093    0.0416946   0.3607239
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.0786628   -0.0540710   0.2113966
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.2259259   -0.0043494   0.4562013
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0863149    0.0235768   0.1490529
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.1804942    0.1116845   0.2493039
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.2822178    0.1406576   0.4237780
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.2039361    0.1494537   0.2584185
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.2799160    0.2294385   0.3303936
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.1139722    0.0896173   0.1383272
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         >=50 cm              NA                 0.0642136   -0.0129213   0.1413485
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0303208    0.0233063   0.0373353
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.1013935    0.0903250   0.1124620
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.1061223    0.0776746   0.1345700
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.1750501    0.1586399   0.1914603
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.1428652    0.1212304   0.1645000
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.1402632    0.1291364   0.1513900
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.1061571    0.0776118   0.1347024
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.1458447    0.0523301   0.2393593
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0714286   -0.3114643   0.1686072
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          >=50 cm              NA                 0.1171146    0.0580901   0.1761391
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.1204686    0.0868480   0.1540892
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.1030364    0.0813208   0.1247521
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0284769    0.0224498   0.0345040
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0710250    0.0625045   0.0795455
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.1640669    0.1349243   0.1932096
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.0657265    0.0576126   0.0738405
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.1194482    0.1035648   0.1353317
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.0916200    0.0842121   0.0990279
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.0447015    0.0283119   0.0610910
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.2378917    0.0958468   0.3799367
6-24 months                  ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0330868   -0.1320921   0.1982657
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.0682402   -0.0710266   0.2075069
6-24 months                  ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0244419   -0.0414069   0.0902907
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.1479791    0.0896063   0.2063519
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.2744425    0.1026423   0.4462428
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.1327320    0.0767866   0.1886773
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.1520662    0.1044379   0.1996945
6-24 months                  ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.0639340    0.0396848   0.0881832
6-24 months                  ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0045550    0.0017845   0.0073256
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0607752    0.0484220   0.0731284
6-24 months                  ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0496664    0.0226156   0.0767172
6-24 months                  ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.1367428    0.1203549   0.1531308
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.1126128    0.0904044   0.1348212
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.1005566    0.0865024   0.1146107
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.0826837    0.0545470   0.1108204


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.6031348    0.2114978   0.8002517
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.3538508   -0.0003726   0.5826467
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.1586819   -0.1570691   0.3882680
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.2975610   -0.0904717   0.5475164
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          >=50 cm              NA                 0.1459737    0.0316468   0.2468028
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.3190404    0.2003522   0.4201123
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.5085509    0.1708856   0.7086985
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.5432584    0.3786894   0.6642374
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.7112263    0.5675943   0.8071481
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.2151995    0.1668270   0.2607636
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         >=50 cm              NA                 0.2018141   -0.0792552   0.4096848
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.1897685    0.1428530   0.2341161
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.3109832    0.2764932   0.3438291
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.1498417    0.1069133   0.1907066
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.6104312    0.5530710   0.6604297
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.2141482    0.1799941   0.2468798
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.5512163    0.5068703   0.5915743
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.2484030    0.1784038   0.3124383
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.5332447    0.0536809   0.7697811
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.1666667   -0.8874089   0.2788467
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          >=50 cm              NA                 0.3367045    0.1453802   0.4851969
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.6189793    0.4640030   0.7291463
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.4036281    0.3169752   0.4792876
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.3119785    0.2447501   0.3732226
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.4136825    0.3640096   0.4594758
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.6356603    0.5298023   0.7176860
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.8319671    0.7396047   0.8915685
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.6309600    0.5515703   0.6962946
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.6933176    0.6385551   0.7397831
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.4541554    0.2657628   0.5942096
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.5622896    0.0697324   0.7940480
6-24 months                  ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0835877   -0.4450998   0.4188557
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.1797866   -0.2822596   0.4753402
6-24 months                  ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0654694   -0.1288510   0.2263395
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.2955892    0.1740374   0.3992530
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.5015674    0.0595478   0.7358345
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.4427629    0.2279805   0.5977910
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.5785375    0.3740107   0.7162401
6-24 months                  ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.1675293    0.1012636   0.2289091
6-24 months                  ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0592711    0.0229256   0.0942645
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.2477659    0.1961770   0.2960439
6-24 months                  ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.0686525    0.0297578   0.1059879
6-24 months                  ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.5640641    0.4957400   0.6231307
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.1741876    0.1382124   0.2086609
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.4654861    0.3981652   0.5252765
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.2256658    0.1453191   0.2984592
