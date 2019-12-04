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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       34     229
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        5     229
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0       88     229
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1       23     229
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       70     229
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1        9     229
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       30      65
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0      65
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm              0       16      65
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm              1        1      65
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       18      65
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        0      65
0-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm             0        9      47
0-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm             1        0      47
0-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm              0       12      47
0-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm              1        8      47
0-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm          0       13      47
0-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm          1        5      47
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm             0        8      27
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        0      27
0-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm              0        9      27
0-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm              1        3      27
0-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0        6      27
0-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1        1      27
0-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm             0       52     233
0-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm             1        0     233
0-24 months   ki0047075b-MAL-ED          PERU                           <48 cm              0       80     233
0-24 months   ki0047075b-MAL-ED          PERU                           <48 cm              1        8     233
0-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm          0       91     233
0-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm          1        2     233
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       42     121
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1        1     121
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0       30     121
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1        2     121
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0       43     121
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1        3     121
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       31     124
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        1     124
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0       33     124
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1        8     124
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       48     124
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        3     124
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0       15     106
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1        1     106
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       37     106
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1       13     106
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       36     106
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1        4     106
0-24 months   ki1000108-IRC              INDIA                          >=50 cm             0      119     391
0-24 months   ki1000108-IRC              INDIA                          >=50 cm             1       23     391
0-24 months   ki1000108-IRC              INDIA                          <48 cm              0       76     391
0-24 months   ki1000108-IRC              INDIA                          <48 cm              1       35     391
0-24 months   ki1000108-IRC              INDIA                          [48-50) cm          0      123     391
0-24 months   ki1000108-IRC              INDIA                          [48-50) cm          1       15     391
0-24 months   ki1000109-EE               PAKISTAN                       >=50 cm             0       18     241
0-24 months   ki1000109-EE               PAKISTAN                       >=50 cm             1        6     241
0-24 months   ki1000109-EE               PAKISTAN                       <48 cm              0       67     241
0-24 months   ki1000109-EE               PAKISTAN                       <48 cm              1       96     241
0-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm          0       40     241
0-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm          1       14     241
0-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm             0       11      42
0-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm             1        1      42
0-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm              0       12      42
0-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm              1        4      42
0-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm          0       14      42
0-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm          1        0      42
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             0      207    1500
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             1       16    1500
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm              0      544    1500
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm              1      256    1500
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          0      401    1500
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          1       76    1500
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0      127     603
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1       12     603
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0      155     603
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1       81     603
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0      188     603
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1       40     603
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
0-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm             0      678    1552
0-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm             1       86    1552
0-24 months   ki1101329-Keneba           GAMBIA                         <48 cm              0      220    1552
0-24 months   ki1101329-Keneba           GAMBIA                         <48 cm              1       73    1552
0-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm          0      397    1552
0-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm          1       98    1552
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm             0      101     685
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm             1       14     685
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm              0      223     685
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm              1      139     685
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm          0      160     685
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm          1       48     685
0-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm             0        2      20
0-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0      20
0-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm              0        7      20
0-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm              1        3      20
0-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        7      20
0-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        1      20
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
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0     4035   13805
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1       75   13805
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0     4031   13805
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1      332   13805
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0     5158   13805
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1      174   13805
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0     1251   22190
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1        8   22190
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0    13985   22190
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1     1859   22190
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     4962   22190
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1      125   22190
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0     1117    4483
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1      115    4483
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0     1672    4483
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1      502    4483
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0      961    4483
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1      116    4483
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       39     229
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        0     229
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0      103     229
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1        8     229
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       79     229
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1        0     229
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       30      65
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0      65
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm              0       17      65
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm              1        0      65
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       18      65
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        0      65
0-6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm             0        9      47
0-6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm             1        0      47
0-6 months    ki0047075b-MAL-ED          INDIA                          <48 cm              0       18      47
0-6 months    ki0047075b-MAL-ED          INDIA                          <48 cm              1        2      47
0-6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm          0       18      47
0-6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm          1        0      47
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm             0        8      27
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        0      27
0-6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm              0       11      27
0-6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm              1        1      27
0-6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0        7      27
0-6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1        0      27
0-6 months    ki0047075b-MAL-ED          PERU                           >=50 cm             0       52     233
0-6 months    ki0047075b-MAL-ED          PERU                           >=50 cm             1        0     233
0-6 months    ki0047075b-MAL-ED          PERU                           <48 cm              0       87     233
0-6 months    ki0047075b-MAL-ED          PERU                           <48 cm              1        1     233
0-6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm          0       93     233
0-6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm          1        0     233
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       43     121
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1        0     121
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0       31     121
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1        1     121
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0       46     121
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1        0     121
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       32     124
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        0     124
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0       40     124
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1        1     124
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       51     124
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        0     124
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0       14     105
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1        1     105
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       44     105
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1        6     105
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       39     105
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1        1     105
0-6 months    ki1000108-IRC              INDIA                          >=50 cm             0      137     390
0-6 months    ki1000108-IRC              INDIA                          >=50 cm             1        5     390
0-6 months    ki1000108-IRC              INDIA                          <48 cm              0       96     390
0-6 months    ki1000108-IRC              INDIA                          <48 cm              1       14     390
0-6 months    ki1000108-IRC              INDIA                          [48-50) cm          0      134     390
0-6 months    ki1000108-IRC              INDIA                          [48-50) cm          1        4     390
0-6 months    ki1000109-EE               PAKISTAN                       >=50 cm             0       24     241
0-6 months    ki1000109-EE               PAKISTAN                       >=50 cm             1        0     241
0-6 months    ki1000109-EE               PAKISTAN                       <48 cm              0      132     241
0-6 months    ki1000109-EE               PAKISTAN                       <48 cm              1       31     241
0-6 months    ki1000109-EE               PAKISTAN                       [48-50) cm          0       47     241
0-6 months    ki1000109-EE               PAKISTAN                       [48-50) cm          1        7     241
0-6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm             0       11      42
0-6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm             1        1      42
0-6 months    ki1000109-ResPak           PAKISTAN                       <48 cm              0       14      42
0-6 months    ki1000109-ResPak           PAKISTAN                       <48 cm              1        2      42
0-6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm          0       14      42
0-6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm          1        0      42
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             0      219    1493
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             1        3    1493
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm              0      706    1493
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm              1       88    1493
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          0      462    1493
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          1       15    1493
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0      138     601
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1        1     601
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0      195     601
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1       39     601
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0      224     601
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1        4     601
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
0-6 months    ki1101329-Keneba           GAMBIA                         >=50 cm             0      759    1551
0-6 months    ki1101329-Keneba           GAMBIA                         >=50 cm             1        5    1551
0-6 months    ki1101329-Keneba           GAMBIA                         <48 cm              0      271    1551
0-6 months    ki1101329-Keneba           GAMBIA                         <48 cm              1       21    1551
0-6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm          0      480    1551
0-6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm          1       15    1551
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm             0      113     685
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm             1        2     685
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm              0      331     685
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm              1       31     685
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm          0      205     685
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm          1        3     685
0-6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm             0        2      20
0-6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0      20
0-6 months    ki1114097-CMIN             BANGLADESH                     <48 cm              0        9      20
0-6 months    ki1114097-CMIN             BANGLADESH                     <48 cm              1        1      20
0-6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        8      20
0-6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        0      20
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0     4087   13725
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1       15   13725
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0     4167   13725
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1      132   13725
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0     5305   13725
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1       19   13725
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0     1259   22149
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1        0   22149
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0    14970   22149
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1      833   22149
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     5073   22149
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1       14   22149
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0     1225    4448
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1        6    4448
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0     2037    4448
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1      103    4448
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0     1064    4448
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1       13    4448
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       34     211
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        5     211
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0       79     211
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1       19     211
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       65     211
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1        9     211
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       27      58
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0      58
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm              0       14      58
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm              1        1      58
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       16      58
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        0      58
6-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm             0        8      41
6-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm             1        0      41
6-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm              0       10      41
6-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm              1        8      41
6-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm          0       10      41
6-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm          1        5      41
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm             0        8      26
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        0      26
6-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm              0        9      26
6-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm              1        2      26
6-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0        6      26
6-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1        1      26
6-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm             0       48     213
6-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm             1        0     213
6-24 months   ki0047075b-MAL-ED          PERU                           <48 cm              0       76     213
6-24 months   ki0047075b-MAL-ED          PERU                           <48 cm              1        8     213
6-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm          0       79     213
6-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm          1        2     213
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       34      97
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1        1      97
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0       21      97
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1        2      97
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0       36      97
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1        3      97
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       31     120
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        1     120
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0       32     120
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1        7     120
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       46     120
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        3     120
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0       15     106
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1        1     106
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       41     106
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1        9     106
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       37     106
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1        3     106
6-24 months   ki1000108-IRC              INDIA                          >=50 cm             0      123     391
6-24 months   ki1000108-IRC              INDIA                          >=50 cm             1       19     391
6-24 months   ki1000108-IRC              INDIA                          <48 cm              0       81     391
6-24 months   ki1000108-IRC              INDIA                          <48 cm              1       30     391
6-24 months   ki1000108-IRC              INDIA                          [48-50) cm          0      124     391
6-24 months   ki1000108-IRC              INDIA                          [48-50) cm          1       14     391
6-24 months   ki1000109-EE               PAKISTAN                       >=50 cm             0       18     235
6-24 months   ki1000109-EE               PAKISTAN                       >=50 cm             1        6     235
6-24 months   ki1000109-EE               PAKISTAN                       <48 cm              0       71     235
6-24 months   ki1000109-EE               PAKISTAN                       <48 cm              1       87     235
6-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm          0       40     235
6-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm          1       13     235
6-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm             0       10      32
6-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm             1        1      32
6-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm              0        9      32
6-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm              1        3      32
6-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm          0        9      32
6-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm          1        0      32
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             0      197    1376
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             1       13    1376
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm              0      498    1376
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm              1      229    1376
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          0      370    1376
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          1       69    1376
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0      109     522
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1       12     522
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0      140     522
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1       62     522
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0      162     522
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1       37     522
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm             0       86     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm             1       14     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm              0      181     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm              1      130     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm          0      131     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm          1       47     589
6-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm             0        0      12
6-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0      12
6-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm              0        4      12
6-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm              1        2      12
6-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        5      12
6-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        1      12
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
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0     3009   10688
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1       62   10688
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0     3210   10688
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1      213   10688
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0     4034   10688
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1      160   10688
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0      840   14296
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1        8   14296
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0     8927   14296
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1     1165   14296
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     3245   14296
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1      111   14296
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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
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
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/acbc4f9f-8be3-4bbd-8c8e-5efa0cfc3668/d2bf737a-5892-48d7-98e9-cce353a32b64/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/acbc4f9f-8be3-4bbd-8c8e-5efa0cfc3668/d2bf737a-5892-48d7-98e9-cce353a32b64/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/acbc4f9f-8be3-4bbd-8c8e-5efa0cfc3668/d2bf737a-5892-48d7-98e9-cce353a32b64/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/acbc4f9f-8be3-4bbd-8c8e-5efa0cfc3668/d2bf737a-5892-48d7-98e9-cce353a32b64/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    >=50 cm              NA                0.1282051   0.0230511   0.2333592
0-24 months   ki0047075b-MAL-ED         BANGLADESH    <48 cm               NA                0.2072072   0.1316425   0.2827719
0-24 months   ki0047075b-MAL-ED         BANGLADESH    [48-50) cm           NA                0.1139241   0.0437094   0.1841388
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.1557910   0.0948726   0.2167093
0-24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.2909855   0.2026907   0.3792802
0-24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.1118922   0.0594311   0.1643532
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.2500000   0.0764015   0.4235985
0-24 months   ki1000109-EE              PAKISTAN      <48 cm               NA                0.5889571   0.5132663   0.6646478
0-24 months   ki1000109-EE              PAKISTAN      [48-50) cm           NA                0.2592593   0.1421330   0.3763855
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.0762973   0.0438559   0.1087387
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.3203675   0.2639052   0.3768298
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.1585770   0.1223309   0.1948231
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.0862099   0.0383038   0.1341159
0-24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               NA                0.3431972   0.2822625   0.4041319
0-24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           NA                0.1749832   0.1255384   0.2244279
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                0.0295858   0.0040214   0.0551502
0-24 months   ki1017093b-PROVIDE        BANGLADESH    <48 cm               NA                0.2338710   0.1811514   0.2865905
0-24 months   ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           NA                0.0954064   0.0611548   0.1296580
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.1057938   0.0839430   0.1276446
0-24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.2641002   0.2138272   0.3143732
0-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.2027844   0.1672731   0.2382958
0-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                0.1148343   0.0551544   0.1745142
0-24 months   ki1113344-GMS-Nepal       NEPAL         <48 cm               NA                0.3883600   0.3382195   0.4385006
0-24 months   ki1113344-GMS-Nepal       NEPAL         [48-50) cm           NA                0.2288585   0.1713812   0.2863358
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0178253   0.0137301   0.0219206
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0787876   0.0707319   0.0868432
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0324555   0.0276639   0.0372471
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0650166   0.0412430   0.0887901
0-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.1665786   0.1081560   0.2250012
0-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.1015198   0.0638241   0.1392155
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0189904   0.0119565   0.0260242
0-24 months   ki1135781-COHORTS         INDIA         <48 cm               NA                0.1570639   0.1434892   0.1706386
0-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.0582278   0.0488849   0.0675707
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0996663   0.0821216   0.1172110
0-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.3029150   0.2705438   0.3352862
0-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.1890295   0.1665208   0.2115381
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0063542   0.0022034   0.0105051
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.1173315   0.1117118   0.1229512
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0245724   0.0202540   0.0288909
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0930851   0.0747461   0.1114241
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.2354348   0.2144842   0.2563855
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.1053284   0.0846334   0.1260235
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0065445   0.0008251   0.0122639
0-6 months    ki1101329-Keneba          GAMBIA        <48 cm               NA                0.0719178   0.0422758   0.1015599
0-6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.0303030   0.0151971   0.0454089
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0036331   0.0017945   0.0054717
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0307426   0.0255682   0.0359170
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0035690   0.0019641   0.0051739
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0117647   0.0015073   0.0220221
0-6 months    ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.0516129   0.0167617   0.0864641
0-6 months    ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.0245902   0.0051459   0.0440344
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0079787   0.0027860   0.0131714
0-6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.0519308   0.0360587   0.0678028
0-6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.0207433   0.0125296   0.0289570
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0048741   0.0004416   0.0093066
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.0481308   0.0371331   0.0591286
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0120706   0.0054304   0.0187107
6-24 months   ki0047075b-MAL-ED         BANGLADESH    >=50 cm              NA                0.1282051   0.0230314   0.2333788
6-24 months   ki0047075b-MAL-ED         BANGLADESH    <48 cm               NA                0.1938776   0.1154207   0.2723344
6-24 months   ki0047075b-MAL-ED         BANGLADESH    [48-50) cm           NA                0.1216216   0.0469750   0.1962682
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.1381010   0.0819602   0.1942419
6-24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.2790128   0.1958965   0.3621290
6-24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.1078111   0.0573810   0.1582412
6-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.2500000   0.0763922   0.4236078
6-24 months   ki1000109-EE              PAKISTAN      <48 cm               NA                0.5506329   0.4729050   0.6283609
6-24 months   ki1000109-EE              PAKISTAN      [48-50) cm           NA                0.2452830   0.1292018   0.3613642
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.0641686   0.0326831   0.0956541
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.3158407   0.2621852   0.3694963
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.1547107   0.1266629   0.1827586
6-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.1034465   0.0495212   0.1573717
6-24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               NA                0.3115867   0.2476417   0.3755318
6-24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           NA                0.1882546   0.1339517   0.2425574
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.1079046   0.0854756   0.1303335
6-24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.2412274   0.1908148   0.2916400
6-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.2061916   0.1702301   0.2421530
6-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                0.1389843   0.0706631   0.2073055
6-24 months   ki1113344-GMS-Nepal       NEPAL         <48 cm               NA                0.4216708   0.3668572   0.4764845
6-24 months   ki1113344-GMS-Nepal       NEPAL         [48-50) cm           NA                0.2575177   0.1926305   0.3224049
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0194445   0.0145149   0.0243741
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0649641   0.0567695   0.0731586
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0380337   0.0322192   0.0438481
6-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0695630   0.0439853   0.0951406
6-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.1765888   0.1108840   0.2422936
6-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.0960939   0.0556942   0.1364936
6-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0196416   0.0122599   0.0270234
6-24 months   ki1135781-COHORTS         INDIA         <48 cm               NA                0.1390952   0.1256720   0.1525183
6-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.0609512   0.0511058   0.0707966
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.1032816   0.0846755   0.1218878
6-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.3076317   0.2739358   0.3413276
6-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.1996206   0.1757489   0.2234924
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0094340   0.0032927   0.0155753
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.1154380   0.1087317   0.1221442
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0330751   0.0270069   0.0391433
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0903541   0.0722037   0.1085046
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.2068839   0.1873769   0.2263910
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0966698   0.0763355   0.1170042


### Parameter: E(Y)


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    NA                   NA                0.1615721   0.1137975   0.2093466
0-24 months   ki1000108-IRC             INDIA         NA                   NA                0.1867008   0.1480272   0.2253743
0-24 months   ki1000109-EE              PAKISTAN      NA                   NA                0.4813278   0.4181144   0.5445412
0-24 months   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.2320000   0.1911686   0.2728314
0-24 months   ki1017093-NIH-Birth       BANGLADESH    NA                   NA                0.2205638   0.1874426   0.2536851
0-24 months   ki1017093b-PROVIDE        BANGLADESH    NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.1655928   0.1470936   0.1840919
0-24 months   ki1113344-GMS-Nepal       NEPAL         NA                   NA                0.2934307   0.2593074   0.3275539
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0420862   0.0387367   0.0454357
0-24 months   ki1135781-COHORTS         GUATEMALA     NA                   NA                0.0960384   0.0760175   0.1160593
0-24 months   ki1135781-COHORTS         INDIA         NA                   NA                0.0909777   0.0840539   0.0979015
0-24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.1840632   0.1702782   0.1978483
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0897702   0.0855711   0.0939692
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.1635066   0.1508784   0.1761348
0-6 months    ki1101329-Keneba          GAMBIA        NA                   NA                0.0264346   0.0184482   0.0344210
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0120947   0.0102659   0.0139235
0-6 months    ki1135781-COHORTS         GUATEMALA     NA                   NA                0.0230583   0.0128042   0.0333123
0-6 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0237154   0.0183020   0.0291288
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0274281   0.0217023   0.0331538
6-24 months   ki0047075b-MAL-ED         BANGLADESH    NA                   NA                0.1563981   0.1072708   0.2055254
6-24 months   ki1000108-IRC             INDIA         NA                   NA                0.1611253   0.1246376   0.1976130
6-24 months   ki1000109-EE              PAKISTAN      NA                   NA                0.4510638   0.3873080   0.5148197
6-24 months   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.2260174   0.1899444   0.2620905
6-24 months   ki1017093-NIH-Birth       BANGLADESH    NA                   NA                0.2126437   0.1775086   0.2477788
6-24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.1627438   0.1439757   0.1815119
6-24 months   ki1113344-GMS-Nepal       NEPAL         NA                   NA                0.3242784   0.2864427   0.3621142
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0406999   0.0369536   0.0444461
6-24 months   ki1135781-COHORTS         GUATEMALA     NA                   NA                0.0950413   0.0736937   0.1163890
6-24 months   ki1135781-COHORTS         INDIA         NA                   NA                0.0841713   0.0772407   0.0911019
6-24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.1910032   0.1764432   0.2055633
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0898153   0.0848110   0.0948197
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.1475190   0.1356672   0.1593708


### Parameter: RR


agecat        studyid                   country       intervention_level   baseline_level      estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH    <48 cm               >=50 cm            1.6162162   0.6586696    3.965805
0-24 months   ki0047075b-MAL-ED         BANGLADESH    [48-50) cm           >=50 cm            0.8886076   0.3185236    2.479011
0-24 months   ki1000108-IRC             INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm            1.8677944   1.1426717    3.053069
0-24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm            0.7182200   0.3899832    1.322724
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1000109-EE              PAKISTAN      <48 cm               >=50 cm            2.3558282   1.1626544    4.773496
0-24 months   ki1000109-EE              PAKISTAN      [48-50) cm           >=50 cm            1.0370370   0.4529137    2.374505
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm            4.1989351   2.6872607    6.560977
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm            2.0784087   1.3448032    3.212204
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               >=50 cm            3.9809501   2.2198162    7.139313
0-24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           >=50 cm            2.0297349   1.0877796    3.787370
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH    <48 cm               >=50 cm            7.9048387   3.2364549   19.307074
0-24 months   ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           >=50 cm            3.2247350   1.2651132    8.219751
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm            2.4963671   1.8870362    3.302453
0-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm            1.9167890   1.4634799    2.510509
0-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1113344-GMS-Nepal       NEPAL         <48 cm               >=50 cm            3.3819171   1.9802637    5.775677
0-24 months   ki1113344-GMS-Nepal       NEPAL         [48-50) cm           >=50 cm            1.9929458   1.1201107    3.545929
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm            4.4199777   3.4374467    5.683347
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm            1.8207504   1.3857395    2.392320
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm            2.5620946   1.5460702    4.245816
0-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm            1.5614453   0.9277961    2.627853
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm            8.2707232   5.6560754   12.094051
0-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm            3.0661797   2.0487977    4.588768
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm            3.0392928   2.4746859    3.732716
0-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm            1.8966242   1.5344403    2.344297
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           18.4650404   9.5869344   35.564833
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm            3.8670873   1.9755936    7.569555
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm            2.5292421   2.0393987    3.136741
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm            1.1315281   0.8564440    1.494967
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months    ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           10.9890404   4.1814154   28.879936
0-6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm            4.6303028   1.6930209   12.663579
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm            8.4618103   4.9640841   14.424057
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm            0.9823575   0.4991809    1.933219
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm            4.3870968   1.4562810   13.216281
0-6 months    ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm            2.0901639   0.6441639    6.782102
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm            6.5086551   3.1712363   13.358384
0-6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm            2.5998271   1.2136528    5.569222
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm            9.8748442   3.8409666   25.387503
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm            2.4764779   0.9113068    6.729833
6-24 months   ki0047075b-MAL-ED         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH    <48 cm               >=50 cm            1.5122449   0.6058392    3.774739
6-24 months   ki0047075b-MAL-ED         BANGLADESH    [48-50) cm           >=50 cm            0.9486486   0.3405280    2.642762
6-24 months   ki1000108-IRC             INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm            2.0203525   1.2195525    3.346985
6-24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm            0.7806682   0.4198097    1.451712
6-24 months   ki1000109-EE              PAKISTAN      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1000109-EE              PAKISTAN      <48 cm               >=50 cm            2.2025316   1.0843431    4.473811
6-24 months   ki1000109-EE              PAKISTAN      [48-50) cm           >=50 cm            0.9811321   0.4234128    2.273479
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm            4.9220427   2.8220083    8.584845
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm            2.4110027   1.3854574    4.195679
6-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               >=50 cm            3.0120582   1.7186174    5.278950
6-24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           >=50 cm            1.8198262   1.0019614    3.305285
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm            2.2355627   1.6672554    2.997585
6-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm            1.9108697   1.4585025    2.503542
6-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1113344-GMS-Nepal       NEPAL         <48 cm               >=50 cm            3.0339459   1.8259816    5.041030
6-24 months   ki1113344-GMS-Nepal       NEPAL         [48-50) cm           >=50 cm            1.8528547   1.0679914    3.214511
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm            3.3409978   2.5175164    4.433841
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm            1.9560101   1.4549428    2.629640
6-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm            2.5385465   1.5096034    4.268815
6-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm            1.3813943   0.7909648    2.412560
6-24 months   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm            7.0816459   4.8065705   10.433574
6-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm            3.1031603   2.0623749    4.669182
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm            2.9785717   2.4135311    3.675896
6-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm            1.9327799   1.5579194    2.397838
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           12.2364249   6.3596188   23.543879
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm            3.5059595   1.8022114    6.820372
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm            2.2897007   1.8377752    2.852759
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm            1.0698993   0.7974574    1.435418


### Parameter: PAR


agecat        studyid                   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    >=50 cm              NA                0.0333669   -0.0644774   0.1312113
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.0309098   -0.0193037   0.0811234
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.2313278    0.0636075   0.3990481
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.1557027    0.1094556   0.2019498
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.1343540    0.0858023   0.1829057
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                0.0989856    0.0681034   0.1298678
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0597990    0.0415172   0.0780807
0-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                0.1785964    0.1192663   0.2379264
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0242609    0.0200111   0.0285107
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0310218    0.0114586   0.0505851
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0719873    0.0632916   0.0806830
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0843969    0.0680778   0.1007161
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0834159    0.0776731   0.0891588
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0704214    0.0529313   0.0879116
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0198901    0.0118733   0.0279068
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0084616    0.0062942   0.0106291
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0112935    0.0012027   0.0213844
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0157367    0.0097173   0.0217561
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0225540    0.0161589   0.0289490
6-24 months   ki0047075b-MAL-ED         BANGLADESH    >=50 cm              NA                0.0281930   -0.0686879   0.1250739
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.0230243   -0.0241050   0.0701536
6-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.2010638    0.0335876   0.3685400
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.1618488    0.1107658   0.2129319
6-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.1091972    0.0561581   0.1622364
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0548392    0.0364737   0.0732048
6-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                0.1852941    0.1182151   0.2523732
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0212553    0.0163328   0.0261779
6-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0254784    0.0052766   0.0456801
6-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0645296    0.0556786   0.0733806
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0877216    0.0704522   0.1049910
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0803814    0.0727907   0.0879720
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0571649    0.0403300   0.0739997


### Parameter: PAF


agecat        studyid                   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    >=50 cm              NA                0.2065142   -0.6975195   0.6290943
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.1655580   -0.1510830   0.3950971
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.4806034   -0.0155165   0.7343492
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.6711322    0.4979578   0.7845719
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.6091387    0.3384476   0.7690696
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                0.7698882    0.4684627   0.9003806
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.3611206    0.2460451   0.4586322
0-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                0.6086493    0.3561769   0.7621158
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.5764566    0.4752862   0.6581203
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.3230150    0.0958120   0.4931267
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.7912636    0.7004947   0.8545239
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.4585215    0.3678380   0.5361965
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.9292165    0.8640864   0.9631361
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.4306949    0.3186015   0.5243484
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.7524262    0.4391351   0.8907174
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.6996123    0.5133233   0.8145941
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.4897833   -0.0767738   0.7582398
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.6635638    0.3819918   0.8168482
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.8222956    0.5691586   0.9267042
6-24 months   ki0047075b-MAL-ED         BANGLADESH    >=50 cm              NA                0.1802642   -0.7414138   0.6141257
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.1428968   -0.2029196   0.3892976
6-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.4457547   -0.0820923   0.7161168
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.7160899    0.5143999   0.8340097
6-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.5135221    0.2071208   0.7015173
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.3369666    0.2185406   0.4374458
6-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                0.5714044    0.3150784   0.7318026
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.5222461    0.3960726   0.6220592
6-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.2680766    0.0296847   0.4478993
6-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.7666466    0.6637731   0.8380445
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.4592676    0.3664653   0.5384759
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.8949627    0.7990587   0.9450942
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.3875084    0.2658686   0.4889935
