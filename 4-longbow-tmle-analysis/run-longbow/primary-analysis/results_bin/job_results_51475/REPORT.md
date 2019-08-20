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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        birthlen      ever_co   n_cell       n
------------  -------------------------  -----------------------------  -----------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       26     256
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        3     256
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0      117     256
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1       25     256
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       76     256
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1        9     256
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       34     191
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0     191
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm              0       79     191
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm              1        1     191
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       76     191
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        1     191
0-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm             0       24     207
0-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm             1        1     207
0-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm              0       75     207
0-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm              1       33     207
0-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm          0       65     207
0-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm          1        9     207
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm             0       38     173
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        0     173
0-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm              0       54     173
0-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm              1       15     173
0-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0       66     173
0-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1        0     173
0-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm             0       34     288
0-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm             1        0     288
0-24 months   ki0047075b-MAL-ED          PERU                           <48 cm              0      132     288
0-24 months   ki0047075b-MAL-ED          PERU                           <48 cm              1       10     288
0-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm          0      110     288
0-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm          1        2     288
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       45     260
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1        1     260
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0      100     260
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1       11     260
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0       97     260
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1        6     260
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       15     126
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        0     126
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0       50     126
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1        8     126
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       52     126
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        1     126
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0       14     104
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1        1     104
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       37     104
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1       12     104
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       36     104
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1        4     104
0-24 months   ki1000108-IRC              INDIA                          >=50 cm             0      119     391
0-24 months   ki1000108-IRC              INDIA                          >=50 cm             1       23     391
0-24 months   ki1000108-IRC              INDIA                          <48 cm              0       76     391
0-24 months   ki1000108-IRC              INDIA                          <48 cm              1       35     391
0-24 months   ki1000108-IRC              INDIA                          [48-50) cm          0      123     391
0-24 months   ki1000108-IRC              INDIA                          [48-50) cm          1       15     391
0-24 months   ki1000109-EE               PAKISTAN                       >=50 cm             0       16      92
0-24 months   ki1000109-EE               PAKISTAN                       >=50 cm             1        6      92
0-24 months   ki1000109-EE               PAKISTAN                       <48 cm              0       22      92
0-24 months   ki1000109-EE               PAKISTAN                       <48 cm              1       21      92
0-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm          0       17      92
0-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm          1       10      92
0-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm             0        6      22
0-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm             1        1      22
0-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm              0        7      22
0-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm              1        0      22
0-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm          0        8      22
0-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm          1        0      22
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             0      207    1500
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             1       16    1500
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm              0      544    1500
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm              1      256    1500
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          0      401    1500
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          1       76    1500
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0       32     225
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1        1     225
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0       77     225
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1       32     225
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0       68     225
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1       15     225
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             0      164     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             1        5     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm              0      190     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm              1       58     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          0      256     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          1       27     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             0      167     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             1        1     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              0      245     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              1       47     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          0      275     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          1       23     758
0-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm             0      677    1551
0-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm             1       86    1551
0-24 months   ki1101329-Keneba           GAMBIA                         <48 cm              0      220    1551
0-24 months   ki1101329-Keneba           GAMBIA                         <48 cm              1       73    1551
0-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm          0      397    1551
0-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm          1       98    1551
0-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm             0        2       9
0-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0       9
0-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm              0        4       9
0-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm              1        1       9
0-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        2       9
0-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        0       9
0-24 months   ki1114097-CMIN             BRAZIL                         >=50 cm             0       63     115
0-24 months   ki1114097-CMIN             BRAZIL                         >=50 cm             1        0     115
0-24 months   ki1114097-CMIN             BRAZIL                         <48 cm              0       16     115
0-24 months   ki1114097-CMIN             BRAZIL                         <48 cm              1        0     115
0-24 months   ki1114097-CMIN             BRAZIL                         [48-50) cm          0       35     115
0-24 months   ki1114097-CMIN             BRAZIL                         [48-50) cm          1        1     115
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm             0        0       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm             1        0       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm              0        1       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm              1        0       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm          0        1       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm          1        0       2
0-24 months   ki1114097-CMIN             PERU                           >=50 cm             0       15      17
0-24 months   ki1114097-CMIN             PERU                           >=50 cm             1        0      17
0-24 months   ki1114097-CMIN             PERU                           <48 cm              0        1      17
0-24 months   ki1114097-CMIN             PERU                           <48 cm              1        0      17
0-24 months   ki1114097-CMIN             PERU                           [48-50) cm          0        1      17
0-24 months   ki1114097-CMIN             PERU                           [48-50) cm          1        0      17
0-24 months   ki1114097-CONTENT          PERU                           >=50 cm             0        1       2
0-24 months   ki1114097-CONTENT          PERU                           >=50 cm             1        0       2
0-24 months   ki1114097-CONTENT          PERU                           <48 cm              0        1       2
0-24 months   ki1114097-CONTENT          PERU                           <48 cm              1        0       2
0-24 months   ki1114097-CONTENT          PERU                           [48-50) cm          0        0       2
0-24 months   ki1114097-CONTENT          PERU                           [48-50) cm          1        0       2
0-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm             0    15297   16897
0-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm             1       14   16897
0-24 months   ki1119695-PROBIT           BELARUS                        <48 cm              0      189   16897
0-24 months   ki1119695-PROBIT           BELARUS                        <48 cm              1        2   16897
0-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm          0     1384   16897
0-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm          1       11   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0     4036   13798
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1       74   13798
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0     4029   13798
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1      327   13798
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0     5161   13798
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1      171   13798
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm             0      400     833
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm             1       29     833
0-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm              0      130     833
0-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm              1       26     833
0-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm          0      223     833
0-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm          1       25     833
0-24 months   ki1135781-COHORTS          INDIA                          >=50 cm             0     1396    6628
0-24 months   ki1135781-COHORTS          INDIA                          >=50 cm             1       28    6628
0-24 months   ki1135781-COHORTS          INDIA                          <48 cm              0     2334    6628
0-24 months   ki1135781-COHORTS          INDIA                          <48 cm              1      432    6628
0-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm          0     2295    6628
0-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm          1      143    6628
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm             0     1013    3037
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm             1      115    3037
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm              0      525    3037
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm              1      227    3037
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          0      940    3037
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          1      217    3037
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0     3747   26438
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1       98   26438
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0    14649   26438
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1     2040   26438
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     5710   26438
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1      194   26438
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0     1117    4483
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1      115    4483
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0     1672    4483
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1      502    4483
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0      961    4483
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1      116    4483
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       29     256
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        0     256
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0      134     256
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1        8     256
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       84     256
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1        1     256
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       34     191
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0     191
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm              0       80     191
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm              1        0     191
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       77     191
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        0     191
0-6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm             0       25     207
0-6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm             1        0     207
0-6 months    ki0047075b-MAL-ED          INDIA                          <48 cm              0       97     207
0-6 months    ki0047075b-MAL-ED          INDIA                          <48 cm              1       11     207
0-6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm          0       73     207
0-6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm          1        1     207
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm             0       38     173
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        0     173
0-6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm              0       65     173
0-6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm              1        4     173
0-6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0       66     173
0-6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1        0     173
0-6 months    ki0047075b-MAL-ED          PERU                           >=50 cm             0       34     288
0-6 months    ki0047075b-MAL-ED          PERU                           >=50 cm             1        0     288
0-6 months    ki0047075b-MAL-ED          PERU                           <48 cm              0      140     288
0-6 months    ki0047075b-MAL-ED          PERU                           <48 cm              1        2     288
0-6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm          0      112     288
0-6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm          1        0     288
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       46     260
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1        0     260
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0      106     260
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1        5     260
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0      103     260
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1        0     260
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       15     126
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        0     126
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0       57     126
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1        1     126
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       53     126
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        0     126
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0       13     103
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1        1     103
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       44     103
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1        5     103
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       39     103
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1        1     103
0-6 months    ki1000108-IRC              INDIA                          >=50 cm             0      137     390
0-6 months    ki1000108-IRC              INDIA                          >=50 cm             1        5     390
0-6 months    ki1000108-IRC              INDIA                          <48 cm              0       96     390
0-6 months    ki1000108-IRC              INDIA                          <48 cm              1       14     390
0-6 months    ki1000108-IRC              INDIA                          [48-50) cm          0      134     390
0-6 months    ki1000108-IRC              INDIA                          [48-50) cm          1        4     390
0-6 months    ki1000109-EE               PAKISTAN                       >=50 cm             0       21      92
0-6 months    ki1000109-EE               PAKISTAN                       >=50 cm             1        1      92
0-6 months    ki1000109-EE               PAKISTAN                       <48 cm              0       35      92
0-6 months    ki1000109-EE               PAKISTAN                       <48 cm              1        8      92
0-6 months    ki1000109-EE               PAKISTAN                       [48-50) cm          0       23      92
0-6 months    ki1000109-EE               PAKISTAN                       [48-50) cm          1        4      92
0-6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm             0        6      22
0-6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm             1        1      22
0-6 months    ki1000109-ResPak           PAKISTAN                       <48 cm              0        7      22
0-6 months    ki1000109-ResPak           PAKISTAN                       <48 cm              1        0      22
0-6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm          0        8      22
0-6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm          1        0      22
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             0      219    1493
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             1        3    1493
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm              0      706    1493
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm              1       88    1493
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          0      462    1493
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          1       15    1493
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0       33     225
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1        0     225
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0       89     225
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1       20     225
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0       80     225
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1        3     225
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             0      167     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             1        2     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm              0      224     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm              1       24     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          0      279     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          1        4     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             0      168     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             1        0     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              0      275     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              1       17     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          0      298     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          1        0     758
0-6 months    ki1101329-Keneba           GAMBIA                         >=50 cm             0      742    1522
0-6 months    ki1101329-Keneba           GAMBIA                         >=50 cm             1        5    1522
0-6 months    ki1101329-Keneba           GAMBIA                         <48 cm              0      263    1522
0-6 months    ki1101329-Keneba           GAMBIA                         <48 cm              1       21    1522
0-6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm          0      476    1522
0-6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm          1       15    1522
0-6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm             0        2       9
0-6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0       9
0-6 months    ki1114097-CMIN             BANGLADESH                     <48 cm              0        4       9
0-6 months    ki1114097-CMIN             BANGLADESH                     <48 cm              1        1       9
0-6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        2       9
0-6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        0       9
0-6 months    ki1114097-CMIN             BRAZIL                         >=50 cm             0       63     115
0-6 months    ki1114097-CMIN             BRAZIL                         >=50 cm             1        0     115
0-6 months    ki1114097-CMIN             BRAZIL                         <48 cm              0       16     115
0-6 months    ki1114097-CMIN             BRAZIL                         <48 cm              1        0     115
0-6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm          0       36     115
0-6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm          1        0     115
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm             0        0       2
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm             1        0       2
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm              0        1       2
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm              1        0       2
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm          0        1       2
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm          1        0       2
0-6 months    ki1114097-CMIN             PERU                           >=50 cm             0       15      17
0-6 months    ki1114097-CMIN             PERU                           >=50 cm             1        0      17
0-6 months    ki1114097-CMIN             PERU                           <48 cm              0        1      17
0-6 months    ki1114097-CMIN             PERU                           <48 cm              1        0      17
0-6 months    ki1114097-CMIN             PERU                           [48-50) cm          0        1      17
0-6 months    ki1114097-CMIN             PERU                           [48-50) cm          1        0      17
0-6 months    ki1114097-CONTENT          PERU                           >=50 cm             0        1       2
0-6 months    ki1114097-CONTENT          PERU                           >=50 cm             1        0       2
0-6 months    ki1114097-CONTENT          PERU                           <48 cm              0        1       2
0-6 months    ki1114097-CONTENT          PERU                           <48 cm              1        0       2
0-6 months    ki1114097-CONTENT          PERU                           [48-50) cm          0        0       2
0-6 months    ki1114097-CONTENT          PERU                           [48-50) cm          1        0       2
0-6 months    ki1119695-PROBIT           BELARUS                        >=50 cm             0    15298   16893
0-6 months    ki1119695-PROBIT           BELARUS                        >=50 cm             1        9   16893
0-6 months    ki1119695-PROBIT           BELARUS                        <48 cm              0      189   16893
0-6 months    ki1119695-PROBIT           BELARUS                        <48 cm              1        2   16893
0-6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm          0     1387   16893
0-6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm          1        8   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0     4087   13720
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1       15   13720
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0     4162   13720
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1      132   13720
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0     5305   13720
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1       19   13720
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm             0      420     824
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm             1        5     824
0-6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm              0      147     824
0-6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm              1        8     824
0-6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm          0      238     824
0-6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm          1        6     824
0-6 months    ki1135781-COHORTS          INDIA                          >=50 cm             0     1417    6592
0-6 months    ki1135781-COHORTS          INDIA                          >=50 cm             1        2    6592
0-6 months    ki1135781-COHORTS          INDIA                          <48 cm              0     2569    6592
0-6 months    ki1135781-COHORTS          INDIA                          <48 cm              1      167    6592
0-6 months    ki1135781-COHORTS          INDIA                          [48-50) cm          0     2428    6592
0-6 months    ki1135781-COHORTS          INDIA                          [48-50) cm          1        9    6592
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm             0     1119    3036
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm             1        9    3036
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm              0      712    3036
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm              1       39    3036
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          0     1133    3036
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          1       24    3036
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0     3816   26390
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1       26   26390
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0    15677   26390
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1      967   26390
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     5863   26390
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1       41   26390
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0     1225    4448
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1        6    4448
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0     2037    4448
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1      103    4448
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0     1064    4448
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1       13    4448
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       25     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        3     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0      102     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1       21     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       73     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1        9     233
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       30     171
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0     171
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm              0       67     171
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm              1        1     171
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       72     171
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        1     171
6-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm             0       23     192
6-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm             1        1     192
6-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm              0       71     192
6-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm              1       29     192
6-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm          0       59     192
6-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm          1        9     192
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm             0       38     170
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        0     170
6-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm              0       54     170
6-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm              1       12     170
6-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0       66     170
6-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1        0     170
6-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm             0       30     258
6-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm             1        0     258
6-24 months   ki0047075b-MAL-ED          PERU                           <48 cm              0      122     258
6-24 months   ki0047075b-MAL-ED          PERU                           <48 cm              1        9     258
6-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm          0       95     258
6-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm          1        2     258
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       39     220
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1        1     220
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0       83     220
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1        8     220
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0       83     220
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1        6     220
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       14     117
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        0     117
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0       46     117
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1        7     117
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       49     117
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        1     117
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0       14     104
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1        1     104
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       40     104
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1        9     104
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       37     104
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1        3     104
6-24 months   ki1000108-IRC              INDIA                          >=50 cm             0      123     391
6-24 months   ki1000108-IRC              INDIA                          >=50 cm             1       19     391
6-24 months   ki1000108-IRC              INDIA                          <48 cm              0       81     391
6-24 months   ki1000108-IRC              INDIA                          <48 cm              1       30     391
6-24 months   ki1000108-IRC              INDIA                          [48-50) cm          0      124     391
6-24 months   ki1000108-IRC              INDIA                          [48-50) cm          1       14     391
6-24 months   ki1000109-EE               PAKISTAN                       >=50 cm             0       14      88
6-24 months   ki1000109-EE               PAKISTAN                       >=50 cm             1        6      88
6-24 months   ki1000109-EE               PAKISTAN                       <48 cm              0       27      88
6-24 months   ki1000109-EE               PAKISTAN                       <48 cm              1       16      88
6-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm          0       17      88
6-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm          1        8      88
6-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm             0        4      16
6-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm             1        1      16
6-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm              0        6      16
6-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm              1        0      16
6-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm          0        5      16
6-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm          1        0      16
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             0      197    1376
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             1       13    1376
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm              0      498    1376
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm              1      229    1376
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          0      370    1376
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          1       69    1376
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0       24     180
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1        1     180
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0       62     180
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1       23     180
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0       58     180
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1       12     180
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             0      146     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             1        3     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm              0      173     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm              1       47     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          0      220     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          1       25     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             0      164     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             1        1     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              0      241     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              1       39     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          0      262     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          1       23     730
6-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm             0      658    1487
6-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm             1       85    1487
6-24 months   ki1101329-Keneba           GAMBIA                         <48 cm              0      206    1487
6-24 months   ki1101329-Keneba           GAMBIA                         <48 cm              1       62    1487
6-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm          0      381    1487
6-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm          1       95    1487
6-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm             0        0       1
6-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0       1
6-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm              0        1       1
6-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm              1        0       1
6-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        0       1
6-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        0       1
6-24 months   ki1114097-CMIN             BRAZIL                         >=50 cm             0       63     115
6-24 months   ki1114097-CMIN             BRAZIL                         >=50 cm             1        0     115
6-24 months   ki1114097-CMIN             BRAZIL                         <48 cm              0       16     115
6-24 months   ki1114097-CMIN             BRAZIL                         <48 cm              1        0     115
6-24 months   ki1114097-CMIN             BRAZIL                         [48-50) cm          0       35     115
6-24 months   ki1114097-CMIN             BRAZIL                         [48-50) cm          1        1     115
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm             0        0       2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm             1        0       2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm              0        1       2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  <48 cm              1        0       2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm          0        1       2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm          1        0       2
6-24 months   ki1114097-CMIN             PERU                           >=50 cm             0       12      14
6-24 months   ki1114097-CMIN             PERU                           >=50 cm             1        0      14
6-24 months   ki1114097-CMIN             PERU                           <48 cm              0        1      14
6-24 months   ki1114097-CMIN             PERU                           <48 cm              1        0      14
6-24 months   ki1114097-CMIN             PERU                           [48-50) cm          0        1      14
6-24 months   ki1114097-CMIN             PERU                           [48-50) cm          1        0      14
6-24 months   ki1114097-CONTENT          PERU                           >=50 cm             0        1       2
6-24 months   ki1114097-CONTENT          PERU                           >=50 cm             1        0       2
6-24 months   ki1114097-CONTENT          PERU                           <48 cm              0        1       2
6-24 months   ki1114097-CONTENT          PERU                           <48 cm              1        0       2
6-24 months   ki1114097-CONTENT          PERU                           [48-50) cm          0        0       2
6-24 months   ki1114097-CONTENT          PERU                           [48-50) cm          1        0       2
6-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm             0    15047   16598
6-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm             1        5   16598
6-24 months   ki1119695-PROBIT           BELARUS                        <48 cm              0      179   16598
6-24 months   ki1119695-PROBIT           BELARUS                        <48 cm              1        0   16598
6-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm          0     1363   16598
6-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm          1        4   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0     2974   10569
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1       61   10569
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0     3178   10569
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1      208   10569
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0     3991   10569
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1      157   10569
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm             0      334     726
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm             1       28     726
6-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm              0      120     726
6-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm              1       21     726
6-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm          0      203     726
6-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm          1       20     726
6-24 months   ki1135781-COHORTS          INDIA                          >=50 cm             0     1315    6166
6-24 months   ki1135781-COHORTS          INDIA                          >=50 cm             1       27    6166
6-24 months   ki1135781-COHORTS          INDIA                          <48 cm              0     2191    6166
6-24 months   ki1135781-COHORTS          INDIA                          <48 cm              1      352    6166
6-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm          0     2141    6166
6-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm          1      140    6166
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm             0      926    2801
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm             1      110    2801
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm              0      487    2801
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm              1      212    2801
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          0      853    2801
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          1      213    2801
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0     2411   16953
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1       74   16953
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0     9355   16953
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1     1231   16953
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     3723   16953
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1      159   16953
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0     1113    4474
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1      112    4474
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0     1730    4474
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1      442    4474
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0      971    4474
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1      106    4474


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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
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
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/00f4f978-2673-4f35-9bff-8bf62b84bbcf/11a8688c-6a94-46ed-a33f-c081ac14770f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/00f4f978-2673-4f35-9bff-8bf62b84bbcf/11a8688c-6a94-46ed-a33f-c081ac14770f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/00f4f978-2673-4f35-9bff-8bf62b84bbcf/11a8688c-6a94-46ed-a33f-c081ac14770f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/00f4f978-2673-4f35-9bff-8bf62b84bbcf/11a8688c-6a94-46ed-a33f-c081ac14770f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.1621440   0.1014039   0.2228841
0-24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.3103438   0.2226173   0.3980703
0-24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.1126776   0.0603291   0.1650262
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.2727273   0.0856061   0.4598484
0-24 months   ki1000109-EE              PAKISTAN      <48 cm               NA                0.4883721   0.3381480   0.6385962
0-24 months   ki1000109-EE              PAKISTAN      [48-50) cm           NA                0.3703704   0.1872232   0.5535175
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.0762973   0.0438559   0.1087387
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.3203675   0.2639052   0.3768298
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.1585770   0.1223309   0.1948231
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                0.0295858   0.0040214   0.0551502
0-24 months   ki1017093b-PROVIDE        BANGLADESH    <48 cm               NA                0.2338710   0.1811514   0.2865905
0-24 months   ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           NA                0.0954064   0.0611548   0.1296580
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.1064986   0.0844232   0.1285740
0-24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.2657006   0.2159494   0.3154518
0-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.2039161   0.1686578   0.2391744
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0175858   0.0135071   0.0216645
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0782111   0.0701547   0.0862675
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0318952   0.0271320   0.0366585
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0652845   0.0415657   0.0890033
0-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.1756372   0.1179251   0.2333493
0-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.1085523   0.0709088   0.1461959
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0190462   0.0120024   0.0260900
0-24 months   ki1135781-COHORTS         INDIA         <48 cm               NA                0.1568973   0.1433351   0.1704595
0-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.0585216   0.0491423   0.0679009
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0990205   0.0815830   0.1164581
0-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.3023397   0.2699997   0.3346798
0-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.1885142   0.1660944   0.2109339
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0233447   0.0180833   0.0286061
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.1230836   0.1174892   0.1286780
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0325968   0.0279249   0.0372687
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0925932   0.0742694   0.1109170
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.2352931   0.2143827   0.2562036
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.1049100   0.0843458   0.1254743
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0066934   0.0008442   0.0125426
0-6 months    ki1101329-Keneba          GAMBIA        <48 cm               NA                0.0739437   0.0434997   0.1043876
0-6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.0305499   0.0153228   0.0457770
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0036408   0.0017971   0.0054845
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0308894   0.0256971   0.0360817
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0035848   0.0019727   0.0051969
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0117647   0.0015073   0.0220221
0-6 months    ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.0516129   0.0167617   0.0864641
0-6 months    ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.0245902   0.0051459   0.0440344
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0079787   0.0027860   0.0131714
0-6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.0519308   0.0360587   0.0678028
0-6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.0207433   0.0125296   0.0289570
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0062197   0.0028110   0.0096283
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.0582739   0.0544446   0.0621032
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0076727   0.0052164   0.0101289
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0048741   0.0004416   0.0093066
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.0481308   0.0371331   0.0591286
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0120706   0.0054304   0.0187107
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.1331348   0.0770407   0.1892290
6-24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.2670435   0.1839781   0.3501090
6-24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.1066215   0.0554869   0.1577561
6-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.3000000   0.0980125   0.5019875
6-24 months   ki1000109-EE              PAKISTAN      <48 cm               NA                0.3720930   0.2267919   0.5173942
6-24 months   ki1000109-EE              PAKISTAN      [48-50) cm           NA                0.3200000   0.1360968   0.5039032
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.0641686   0.0326831   0.0956541
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.3158407   0.2621852   0.3694963
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.1547107   0.1266629   0.1827586
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.1076979   0.0852897   0.1301060
6-24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.2427514   0.1922038   0.2932991
6-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.2068777   0.1709019   0.2428535
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0193222   0.0143644   0.0242800
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0641536   0.0559823   0.0723249
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0377973   0.0319739   0.0436207
6-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0687309   0.0432862   0.0941756
6-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.1768459   0.1099469   0.2437450
6-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.0963003   0.0558932   0.1367074
6-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0196672   0.0122786   0.0270558
6-24 months   ki1135781-COHORTS         INDIA         <48 cm               NA                0.1394463   0.1259722   0.1529204
6-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.0605342   0.0507589   0.0703095
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.1034939   0.0849183   0.1220696
6-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.3063322   0.2727605   0.3399040
6-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.1998506   0.1759397   0.2237614
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0280664   0.0209064   0.0352265
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.1171727   0.1103712   0.1239742
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0398539   0.0338267   0.0458811
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0911365   0.0728040   0.1094690
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.2074349   0.1880192   0.2268507
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0959913   0.0757441   0.1162384


### Parameter: E(Y)


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC             INDIA         NA                   NA                0.1867008   0.1480272   0.2253743
0-24 months   ki1000109-EE              PAKISTAN      NA                   NA                0.4021739   0.3014293   0.5029185
0-24 months   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.2320000   0.1911686   0.2728314
0-24 months   ki1017093b-PROVIDE        BANGLADESH    NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.1656995   0.1471896   0.1842095
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0414553   0.0381291   0.0447815
0-24 months   ki1135781-COHORTS         GUATEMALA     NA                   NA                0.0960384   0.0760175   0.1160593
0-24 months   ki1135781-COHORTS         INDIA         NA                   NA                0.0909777   0.0840539   0.0979015
0-24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.1840632   0.1702782   0.1978483
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0882064   0.0843238   0.0920889
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.1635066   0.1508784   0.1761348
0-6 months    ki1101329-Keneba          GAMBIA        NA                   NA                0.0269382   0.0188017   0.0350748
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0120991   0.0102697   0.0139286
0-6 months    ki1135781-COHORTS         GUATEMALA     NA                   NA                0.0230583   0.0128042   0.0333123
0-6 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0237154   0.0183020   0.0291288
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0391815   0.0366710   0.0416921
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0274281   0.0217023   0.0331538
6-24 months   ki1000108-IRC             INDIA         NA                   NA                0.1611253   0.1246376   0.1976130
6-24 months   ki1000109-EE              PAKISTAN      NA                   NA                0.3409091   0.2413043   0.4405139
6-24 months   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.2260174   0.1899444   0.2620905
6-24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.1627438   0.1439757   0.1815119
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0403066   0.0365568   0.0440563
6-24 months   ki1135781-COHORTS         GUATEMALA     NA                   NA                0.0950413   0.0736937   0.1163890
6-24 months   ki1135781-COHORTS         INDIA         NA                   NA                0.0841713   0.0772407   0.0911019
6-24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.1910032   0.1764432   0.2055633
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0863564   0.0817075   0.0910053
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.1475190   0.1356672   0.1593708


### Parameter: RR


agecat        studyid                   country       intervention_level   baseline_level      estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  ----------  ----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm            1.9140010   1.1993808    3.054409
0-24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm            0.6949232   0.3826343    1.262088
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1000109-EE              PAKISTAN      <48 cm               >=50 cm            1.7906977   0.8442525    3.798151
0-24 months   ki1000109-EE              PAKISTAN      [48-50) cm           >=50 cm            1.3580247   0.5829181    3.163791
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm            4.1989351   2.6872607    6.560977
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm            2.0784087   1.3448032    3.212204
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH    <48 cm               >=50 cm            7.9048387   3.2364549   19.307074
0-24 months   ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           >=50 cm            3.2247350   1.2651132    8.219751
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm            2.4948740   1.8893591    3.294448
0-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm            1.9147302   1.4634546    2.505163
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm            4.4474001   3.4508553    5.731729
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm            1.8136921   1.3765548    2.389646
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm            2.6903352   1.6513401    4.383048
0-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm            1.6627578   1.0061320    2.747913
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm            8.2377299   5.6368876   12.038593
0-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm            3.0726162   2.0543461    4.595608
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm            3.0533034   2.4857163    3.750493
0-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm            1.9037885   1.5402200    2.353177
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm            5.2724428   4.1896160    6.635132
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm            1.3963246   1.0956539    1.779506
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm            2.5411492   2.0467846    3.154919
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm            1.1330206   0.8565611    1.498709
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months    ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           11.0471826   4.2045698   29.025619
0-6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm            4.5641546   1.6689716   12.481643
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm            8.4843321   4.9761360   14.465821
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm            0.9846363   0.5002052    1.938222
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm            4.3870968   1.4562810   13.216281
0-6 months    ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm            2.0901639   0.6441639    6.782102
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm            6.5086551   3.1712363   13.358384
0-6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm            2.5998271   1.2136528    5.569222
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm            9.3693108   5.3830587   16.307455
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm            1.2336177   0.6592726    2.308321
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm            9.8748442   3.8409666   25.387503
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm            2.4764779   0.9113068    6.729833
6-24 months   ki1000108-IRC             INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm            2.0058124   1.1905367    3.379386
6-24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm            0.8008533   0.4227135    1.517259
6-24 months   ki1000109-EE              PAKISTAN      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1000109-EE              PAKISTAN      <48 cm               >=50 cm            1.2403101   0.5695116    2.701208
6-24 months   ki1000109-EE              PAKISTAN      [48-50) cm           >=50 cm            1.0666667   0.4401355    2.585062
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm            4.9220427   2.8220083    8.584845
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm            2.4110027   1.3854574    4.195679
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm            2.2540041   1.6821869    3.020196
6-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm            1.9209082   1.4670214    2.515224
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm            3.3202037   2.4934699    4.421049
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm            1.9561603   1.4502810    2.638498
6-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm            2.5730186   1.5194640    4.357079
6-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm            1.4011204   0.8020516    2.447646
6-24 months   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm            7.0902925   4.8129009   10.445311
6-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm            3.0779231   2.0458990    4.630537
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm            2.9599053   2.3998174    3.650711
6-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm            1.9310368   1.5572245    2.394583
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm            4.1748385   3.2125533    5.425366
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm            1.4199846   1.0720348    1.880868
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm            2.2760912   1.8264177    2.836477
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm            1.0532696   0.7839209    1.415164


### Parameter: PAR


agecat        studyid                   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.0245567   -0.0255093   0.0746228
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.1294466   -0.0391292   0.2980225
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.1557027    0.1094556   0.2019498
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                0.0989856    0.0681034   0.1298678
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0592009    0.0408156   0.0775862
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0238695    0.0196401   0.0280988
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0307539    0.0112286   0.0502792
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0719315    0.0632284   0.0806345
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0850427    0.0687884   0.1012970
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0648617    0.0592173   0.0705060
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0709134    0.0534049   0.0884219
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0202448    0.0120697   0.0284199
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0084584    0.0062871   0.0106296
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0112935    0.0012027   0.0213844
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0157367    0.0097173   0.0217561
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0329619    0.0289956   0.0369281
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0225540    0.0161589   0.0289490
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.0279905   -0.0188313   0.0748123
6-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.0409091   -0.1384651   0.2202833
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.1618488    0.1107658   0.2129319
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0550459    0.0366991   0.0733927
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0209844    0.0160435   0.0259253
6-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0263104    0.0062122   0.0464086
6-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0645041    0.0556501   0.0733580
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0875093    0.0702611   0.1047575
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0582900    0.0508976   0.0656823
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0563825    0.0393664   0.0733987


### Parameter: PAF


agecat        studyid                   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.1315300   -0.1815299   0.3616411
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.3218673   -0.2569606   0.6341461
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.6711322    0.4979578   0.7845719
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                0.7698882    0.4684627   0.9003806
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.3572788    0.2411908   0.4556069
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.5757885    0.4733703   0.6582886
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.3202251    0.0938841   0.4900279
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.7906499    0.6997751   0.8540179
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.4620298    0.3718717   0.5392470
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.7353399    0.6709351   0.7871393
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.4337035    0.3215223   0.5273364
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.7515264    0.4371398   0.8903118
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.6990889    0.5122972   0.8143388
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.4897833   -0.0767738   0.7582398
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.6635638    0.3819918   0.8168482
0-6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.8412604    0.7266286   0.9078241
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.8222956    0.5691586   0.9267042
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.1737186   -0.1721383   0.4175253
6-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.1200000   -0.5999326   0.5159796
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.7160899    0.5143999   0.8340097
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.3382367    0.2199357   0.4385967
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.5206192    0.3923446   0.6218154
6-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.2768311    0.0396424   0.4554391
6-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.7663429    0.6633895   0.8378077
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.4581561    0.3655473   0.5372471
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.6749933    0.5843985   0.7458398
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.3822052    0.2591194   0.4848422
