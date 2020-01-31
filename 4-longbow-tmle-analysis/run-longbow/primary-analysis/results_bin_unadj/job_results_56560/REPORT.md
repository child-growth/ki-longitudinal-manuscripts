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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        birthlen      ever_co   n_cell       n  outcome_variable 
------------  -------------------------  -----------------------------  -----------  --------  -------  ------  -----------------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       34     229  ever_co          
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        5     229  ever_co          
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0       88     229  ever_co          
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1       23     229  ever_co          
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       70     229  ever_co          
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1        9     229  ever_co          
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       30      65  ever_co          
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0      65  ever_co          
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm              0       16      65  ever_co          
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm              1        1      65  ever_co          
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       18      65  ever_co          
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        0      65  ever_co          
0-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm             0        9      47  ever_co          
0-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm             1        0      47  ever_co          
0-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm              0       12      47  ever_co          
0-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm              1        8      47  ever_co          
0-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm          0       13      47  ever_co          
0-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm          1        5      47  ever_co          
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm             0        8      27  ever_co          
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        0      27  ever_co          
0-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm              0        9      27  ever_co          
0-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm              1        3      27  ever_co          
0-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0        6      27  ever_co          
0-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1        1      27  ever_co          
0-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm             0       52     233  ever_co          
0-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm             1        0     233  ever_co          
0-24 months   ki0047075b-MAL-ED          PERU                           <48 cm              0       80     233  ever_co          
0-24 months   ki0047075b-MAL-ED          PERU                           <48 cm              1        8     233  ever_co          
0-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm          0       91     233  ever_co          
0-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm          1        2     233  ever_co          
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       42     121  ever_co          
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1        1     121  ever_co          
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0       30     121  ever_co          
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1        2     121  ever_co          
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0       43     121  ever_co          
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1        3     121  ever_co          
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       31     124  ever_co          
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        1     124  ever_co          
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0       33     124  ever_co          
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1        8     124  ever_co          
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       48     124  ever_co          
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        3     124  ever_co          
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0       15     106  ever_co          
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1        1     106  ever_co          
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       37     106  ever_co          
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1       13     106  ever_co          
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       36     106  ever_co          
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1        4     106  ever_co          
0-24 months   ki1000108-IRC              INDIA                          >=50 cm             0      119     391  ever_co          
0-24 months   ki1000108-IRC              INDIA                          >=50 cm             1       23     391  ever_co          
0-24 months   ki1000108-IRC              INDIA                          <48 cm              0       76     391  ever_co          
0-24 months   ki1000108-IRC              INDIA                          <48 cm              1       35     391  ever_co          
0-24 months   ki1000108-IRC              INDIA                          [48-50) cm          0      123     391  ever_co          
0-24 months   ki1000108-IRC              INDIA                          [48-50) cm          1       15     391  ever_co          
0-24 months   ki1000109-EE               PAKISTAN                       >=50 cm             0       18     241  ever_co          
0-24 months   ki1000109-EE               PAKISTAN                       >=50 cm             1        6     241  ever_co          
0-24 months   ki1000109-EE               PAKISTAN                       <48 cm              0       67     241  ever_co          
0-24 months   ki1000109-EE               PAKISTAN                       <48 cm              1       96     241  ever_co          
0-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm          0       40     241  ever_co          
0-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm          1       14     241  ever_co          
0-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm             0       11      42  ever_co          
0-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm             1        1      42  ever_co          
0-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm              0       12      42  ever_co          
0-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm              1        4      42  ever_co          
0-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm          0       14      42  ever_co          
0-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm          1        0      42  ever_co          
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             0      207    1500  ever_co          
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             1       16    1500  ever_co          
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm              0      544    1500  ever_co          
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm              1      256    1500  ever_co          
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          0      401    1500  ever_co          
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          1       76    1500  ever_co          
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0      127     603  ever_co          
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1       12     603  ever_co          
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0      155     603  ever_co          
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1       81     603  ever_co          
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0      188     603  ever_co          
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1       40     603  ever_co          
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             0      164     700  ever_co          
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             1        5     700  ever_co          
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm              0      190     700  ever_co          
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm              1       58     700  ever_co          
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          0      256     700  ever_co          
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          1       27     700  ever_co          
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             0      167     758  ever_co          
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             1        1     758  ever_co          
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              0      245     758  ever_co          
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              1       47     758  ever_co          
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          0      275     758  ever_co          
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          1       23     758  ever_co          
0-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm             0      678    1552  ever_co          
0-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm             1       86    1552  ever_co          
0-24 months   ki1101329-Keneba           GAMBIA                         <48 cm              0      220    1552  ever_co          
0-24 months   ki1101329-Keneba           GAMBIA                         <48 cm              1       73    1552  ever_co          
0-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm          0      397    1552  ever_co          
0-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm          1       98    1552  ever_co          
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm             0      101     685  ever_co          
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm             1       14     685  ever_co          
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm              0      223     685  ever_co          
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm              1      139     685  ever_co          
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm          0      160     685  ever_co          
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm          1       48     685  ever_co          
0-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm             0        2      20  ever_co          
0-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0      20  ever_co          
0-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm              0        7      20  ever_co          
0-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm              1        3      20  ever_co          
0-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        7      20  ever_co          
0-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        1      20  ever_co          
0-24 months   ki1114097-CONTENT          PERU                           >=50 cm             0        1       2  ever_co          
0-24 months   ki1114097-CONTENT          PERU                           >=50 cm             1        0       2  ever_co          
0-24 months   ki1114097-CONTENT          PERU                           <48 cm              0        1       2  ever_co          
0-24 months   ki1114097-CONTENT          PERU                           <48 cm              1        0       2  ever_co          
0-24 months   ki1114097-CONTENT          PERU                           [48-50) cm          0        0       2  ever_co          
0-24 months   ki1114097-CONTENT          PERU                           [48-50) cm          1        0       2  ever_co          
0-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm             0    15297   16897  ever_co          
0-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm             1       14   16897  ever_co          
0-24 months   ki1119695-PROBIT           BELARUS                        <48 cm              0      189   16897  ever_co          
0-24 months   ki1119695-PROBIT           BELARUS                        <48 cm              1        2   16897  ever_co          
0-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm          0     1384   16897  ever_co          
0-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm          1       11   16897  ever_co          
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0     4035   13805  ever_co          
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1       75   13805  ever_co          
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0     4031   13805  ever_co          
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1      332   13805  ever_co          
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0     5158   13805  ever_co          
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1      174   13805  ever_co          
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm             0      400     833  ever_co          
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm             1       29     833  ever_co          
0-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm              0      130     833  ever_co          
0-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm              1       26     833  ever_co          
0-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm          0      223     833  ever_co          
0-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm          1       25     833  ever_co          
0-24 months   ki1135781-COHORTS          INDIA                          >=50 cm             0     1396    6628  ever_co          
0-24 months   ki1135781-COHORTS          INDIA                          >=50 cm             1       28    6628  ever_co          
0-24 months   ki1135781-COHORTS          INDIA                          <48 cm              0     2334    6628  ever_co          
0-24 months   ki1135781-COHORTS          INDIA                          <48 cm              1      432    6628  ever_co          
0-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm          0     2295    6628  ever_co          
0-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm          1      143    6628  ever_co          
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm             0     1013    3037  ever_co          
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm             1      115    3037  ever_co          
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm              0      525    3037  ever_co          
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm              1      227    3037  ever_co          
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          0      940    3037  ever_co          
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          1      217    3037  ever_co          
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0     1251   22190  ever_co          
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1        8   22190  ever_co          
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0    13985   22190  ever_co          
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1     1859   22190  ever_co          
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     4962   22190  ever_co          
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1      125   22190  ever_co          
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0     1117    4483  ever_co          
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1      115    4483  ever_co          
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0     1672    4483  ever_co          
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1      502    4483  ever_co          
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0      961    4483  ever_co          
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1      116    4483  ever_co          
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       39     229  ever_co          
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        0     229  ever_co          
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0      103     229  ever_co          
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1        8     229  ever_co          
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       79     229  ever_co          
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1        0     229  ever_co          
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       30      65  ever_co          
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0      65  ever_co          
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm              0       17      65  ever_co          
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm              1        0      65  ever_co          
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       18      65  ever_co          
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        0      65  ever_co          
0-6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm             0        9      47  ever_co          
0-6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm             1        0      47  ever_co          
0-6 months    ki0047075b-MAL-ED          INDIA                          <48 cm              0       18      47  ever_co          
0-6 months    ki0047075b-MAL-ED          INDIA                          <48 cm              1        2      47  ever_co          
0-6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm          0       18      47  ever_co          
0-6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm          1        0      47  ever_co          
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm             0        8      27  ever_co          
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        0      27  ever_co          
0-6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm              0       11      27  ever_co          
0-6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm              1        1      27  ever_co          
0-6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0        7      27  ever_co          
0-6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1        0      27  ever_co          
0-6 months    ki0047075b-MAL-ED          PERU                           >=50 cm             0       52     233  ever_co          
0-6 months    ki0047075b-MAL-ED          PERU                           >=50 cm             1        0     233  ever_co          
0-6 months    ki0047075b-MAL-ED          PERU                           <48 cm              0       87     233  ever_co          
0-6 months    ki0047075b-MAL-ED          PERU                           <48 cm              1        1     233  ever_co          
0-6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm          0       93     233  ever_co          
0-6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm          1        0     233  ever_co          
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       43     121  ever_co          
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1        0     121  ever_co          
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0       31     121  ever_co          
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1        1     121  ever_co          
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0       46     121  ever_co          
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1        0     121  ever_co          
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       32     124  ever_co          
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        0     124  ever_co          
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0       40     124  ever_co          
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1        1     124  ever_co          
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       51     124  ever_co          
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        0     124  ever_co          
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0       14     105  ever_co          
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1        1     105  ever_co          
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       44     105  ever_co          
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1        6     105  ever_co          
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       39     105  ever_co          
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1        1     105  ever_co          
0-6 months    ki1000108-IRC              INDIA                          >=50 cm             0      137     390  ever_co          
0-6 months    ki1000108-IRC              INDIA                          >=50 cm             1        5     390  ever_co          
0-6 months    ki1000108-IRC              INDIA                          <48 cm              0       96     390  ever_co          
0-6 months    ki1000108-IRC              INDIA                          <48 cm              1       14     390  ever_co          
0-6 months    ki1000108-IRC              INDIA                          [48-50) cm          0      134     390  ever_co          
0-6 months    ki1000108-IRC              INDIA                          [48-50) cm          1        4     390  ever_co          
0-6 months    ki1000109-EE               PAKISTAN                       >=50 cm             0       24     241  ever_co          
0-6 months    ki1000109-EE               PAKISTAN                       >=50 cm             1        0     241  ever_co          
0-6 months    ki1000109-EE               PAKISTAN                       <48 cm              0      132     241  ever_co          
0-6 months    ki1000109-EE               PAKISTAN                       <48 cm              1       31     241  ever_co          
0-6 months    ki1000109-EE               PAKISTAN                       [48-50) cm          0       47     241  ever_co          
0-6 months    ki1000109-EE               PAKISTAN                       [48-50) cm          1        7     241  ever_co          
0-6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm             0       11      42  ever_co          
0-6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm             1        1      42  ever_co          
0-6 months    ki1000109-ResPak           PAKISTAN                       <48 cm              0       14      42  ever_co          
0-6 months    ki1000109-ResPak           PAKISTAN                       <48 cm              1        2      42  ever_co          
0-6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm          0       14      42  ever_co          
0-6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm          1        0      42  ever_co          
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             0      219    1493  ever_co          
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             1        3    1493  ever_co          
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm              0      706    1493  ever_co          
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm              1       88    1493  ever_co          
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          0      462    1493  ever_co          
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          1       15    1493  ever_co          
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0      138     601  ever_co          
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1        1     601  ever_co          
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0      195     601  ever_co          
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1       39     601  ever_co          
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0      224     601  ever_co          
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1        4     601  ever_co          
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             0      167     700  ever_co          
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             1        2     700  ever_co          
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm              0      224     700  ever_co          
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm              1       24     700  ever_co          
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          0      279     700  ever_co          
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          1        4     700  ever_co          
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             0      168     758  ever_co          
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             1        0     758  ever_co          
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              0      275     758  ever_co          
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              1       17     758  ever_co          
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          0      298     758  ever_co          
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          1        0     758  ever_co          
0-6 months    ki1101329-Keneba           GAMBIA                         >=50 cm             0      759    1551  ever_co          
0-6 months    ki1101329-Keneba           GAMBIA                         >=50 cm             1        5    1551  ever_co          
0-6 months    ki1101329-Keneba           GAMBIA                         <48 cm              0      271    1551  ever_co          
0-6 months    ki1101329-Keneba           GAMBIA                         <48 cm              1       21    1551  ever_co          
0-6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm          0      480    1551  ever_co          
0-6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm          1       15    1551  ever_co          
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm             0      113     685  ever_co          
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm             1        2     685  ever_co          
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm              0      331     685  ever_co          
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm              1       31     685  ever_co          
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm          0      205     685  ever_co          
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm          1        3     685  ever_co          
0-6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm             0        2      20  ever_co          
0-6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0      20  ever_co          
0-6 months    ki1114097-CMIN             BANGLADESH                     <48 cm              0        9      20  ever_co          
0-6 months    ki1114097-CMIN             BANGLADESH                     <48 cm              1        1      20  ever_co          
0-6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        8      20  ever_co          
0-6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        0      20  ever_co          
0-6 months    ki1114097-CONTENT          PERU                           >=50 cm             0        1       2  ever_co          
0-6 months    ki1114097-CONTENT          PERU                           >=50 cm             1        0       2  ever_co          
0-6 months    ki1114097-CONTENT          PERU                           <48 cm              0        1       2  ever_co          
0-6 months    ki1114097-CONTENT          PERU                           <48 cm              1        0       2  ever_co          
0-6 months    ki1114097-CONTENT          PERU                           [48-50) cm          0        0       2  ever_co          
0-6 months    ki1114097-CONTENT          PERU                           [48-50) cm          1        0       2  ever_co          
0-6 months    ki1119695-PROBIT           BELARUS                        >=50 cm             0    15298   16893  ever_co          
0-6 months    ki1119695-PROBIT           BELARUS                        >=50 cm             1        9   16893  ever_co          
0-6 months    ki1119695-PROBIT           BELARUS                        <48 cm              0      189   16893  ever_co          
0-6 months    ki1119695-PROBIT           BELARUS                        <48 cm              1        2   16893  ever_co          
0-6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm          0     1387   16893  ever_co          
0-6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm          1        8   16893  ever_co          
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0     4087   13725  ever_co          
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1       15   13725  ever_co          
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0     4167   13725  ever_co          
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1      132   13725  ever_co          
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0     5305   13725  ever_co          
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1       19   13725  ever_co          
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm             0      420     824  ever_co          
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm             1        5     824  ever_co          
0-6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm              0      147     824  ever_co          
0-6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm              1        8     824  ever_co          
0-6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm          0      238     824  ever_co          
0-6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm          1        6     824  ever_co          
0-6 months    ki1135781-COHORTS          INDIA                          >=50 cm             0     1417    6592  ever_co          
0-6 months    ki1135781-COHORTS          INDIA                          >=50 cm             1        2    6592  ever_co          
0-6 months    ki1135781-COHORTS          INDIA                          <48 cm              0     2569    6592  ever_co          
0-6 months    ki1135781-COHORTS          INDIA                          <48 cm              1      167    6592  ever_co          
0-6 months    ki1135781-COHORTS          INDIA                          [48-50) cm          0     2428    6592  ever_co          
0-6 months    ki1135781-COHORTS          INDIA                          [48-50) cm          1        9    6592  ever_co          
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm             0     1119    3036  ever_co          
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm             1        9    3036  ever_co          
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm              0      712    3036  ever_co          
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm              1       39    3036  ever_co          
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          0     1133    3036  ever_co          
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          1       24    3036  ever_co          
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0     1259   22149  ever_co          
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1        0   22149  ever_co          
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0    14970   22149  ever_co          
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1      833   22149  ever_co          
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     5073   22149  ever_co          
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1       14   22149  ever_co          
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0     1225    4448  ever_co          
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1        6    4448  ever_co          
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0     2037    4448  ever_co          
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1      103    4448  ever_co          
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0     1064    4448  ever_co          
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1       13    4448  ever_co          
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       34     211  ever_co          
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        5     211  ever_co          
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0       79     211  ever_co          
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1       19     211  ever_co          
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       65     211  ever_co          
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1        9     211  ever_co          
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       27      58  ever_co          
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0      58  ever_co          
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm              0       14      58  ever_co          
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm              1        1      58  ever_co          
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       16      58  ever_co          
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        0      58  ever_co          
6-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm             0        8      41  ever_co          
6-24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm             1        0      41  ever_co          
6-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm              0       10      41  ever_co          
6-24 months   ki0047075b-MAL-ED          INDIA                          <48 cm              1        8      41  ever_co          
6-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm          0       10      41  ever_co          
6-24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm          1        5      41  ever_co          
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm             0        8      26  ever_co          
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        0      26  ever_co          
6-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm              0        9      26  ever_co          
6-24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm              1        2      26  ever_co          
6-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0        6      26  ever_co          
6-24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1        1      26  ever_co          
6-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm             0       48     213  ever_co          
6-24 months   ki0047075b-MAL-ED          PERU                           >=50 cm             1        0     213  ever_co          
6-24 months   ki0047075b-MAL-ED          PERU                           <48 cm              0       76     213  ever_co          
6-24 months   ki0047075b-MAL-ED          PERU                           <48 cm              1        8     213  ever_co          
6-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm          0       79     213  ever_co          
6-24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm          1        2     213  ever_co          
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       34      97  ever_co          
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1        1      97  ever_co          
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0       21      97  ever_co          
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1        2      97  ever_co          
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0       36      97  ever_co          
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1        3      97  ever_co          
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       31     120  ever_co          
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        1     120  ever_co          
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0       32     120  ever_co          
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1        7     120  ever_co          
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       46     120  ever_co          
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        3     120  ever_co          
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0       15     106  ever_co          
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1        1     106  ever_co          
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       41     106  ever_co          
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1        9     106  ever_co          
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       37     106  ever_co          
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1        3     106  ever_co          
6-24 months   ki1000108-IRC              INDIA                          >=50 cm             0      123     391  ever_co          
6-24 months   ki1000108-IRC              INDIA                          >=50 cm             1       19     391  ever_co          
6-24 months   ki1000108-IRC              INDIA                          <48 cm              0       81     391  ever_co          
6-24 months   ki1000108-IRC              INDIA                          <48 cm              1       30     391  ever_co          
6-24 months   ki1000108-IRC              INDIA                          [48-50) cm          0      124     391  ever_co          
6-24 months   ki1000108-IRC              INDIA                          [48-50) cm          1       14     391  ever_co          
6-24 months   ki1000109-EE               PAKISTAN                       >=50 cm             0       18     235  ever_co          
6-24 months   ki1000109-EE               PAKISTAN                       >=50 cm             1        6     235  ever_co          
6-24 months   ki1000109-EE               PAKISTAN                       <48 cm              0       71     235  ever_co          
6-24 months   ki1000109-EE               PAKISTAN                       <48 cm              1       87     235  ever_co          
6-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm          0       40     235  ever_co          
6-24 months   ki1000109-EE               PAKISTAN                       [48-50) cm          1       13     235  ever_co          
6-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm             0       10      32  ever_co          
6-24 months   ki1000109-ResPak           PAKISTAN                       >=50 cm             1        1      32  ever_co          
6-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm              0        9      32  ever_co          
6-24 months   ki1000109-ResPak           PAKISTAN                       <48 cm              1        3      32  ever_co          
6-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm          0        9      32  ever_co          
6-24 months   ki1000109-ResPak           PAKISTAN                       [48-50) cm          1        0      32  ever_co          
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             0      197    1376  ever_co          
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             1       13    1376  ever_co          
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm              0      498    1376  ever_co          
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <48 cm              1      229    1376  ever_co          
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          0      370    1376  ever_co          
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          1       69    1376  ever_co          
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0      109     522  ever_co          
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1       12     522  ever_co          
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0      140     522  ever_co          
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1       62     522  ever_co          
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0      162     522  ever_co          
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1       37     522  ever_co          
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             0      146     614  ever_co          
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             1        3     614  ever_co          
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm              0      173     614  ever_co          
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm              1       47     614  ever_co          
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          0      220     614  ever_co          
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          1       25     614  ever_co          
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             0      164     730  ever_co          
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             1        1     730  ever_co          
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              0      241     730  ever_co          
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              1       39     730  ever_co          
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          0      262     730  ever_co          
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          1       23     730  ever_co          
6-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm             0      658    1487  ever_co          
6-24 months   ki1101329-Keneba           GAMBIA                         >=50 cm             1       85    1487  ever_co          
6-24 months   ki1101329-Keneba           GAMBIA                         <48 cm              0      206    1487  ever_co          
6-24 months   ki1101329-Keneba           GAMBIA                         <48 cm              1       62    1487  ever_co          
6-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm          0      381    1487  ever_co          
6-24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm          1       95    1487  ever_co          
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm             0       86     589  ever_co          
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm             1       14     589  ever_co          
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm              0      181     589  ever_co          
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm              1      130     589  ever_co          
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm          0      131     589  ever_co          
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm          1       47     589  ever_co          
6-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm             0        0      12  ever_co          
6-24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0      12  ever_co          
6-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm              0        4      12  ever_co          
6-24 months   ki1114097-CMIN             BANGLADESH                     <48 cm              1        2      12  ever_co          
6-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        5      12  ever_co          
6-24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        1      12  ever_co          
6-24 months   ki1114097-CONTENT          PERU                           >=50 cm             0        1       2  ever_co          
6-24 months   ki1114097-CONTENT          PERU                           >=50 cm             1        0       2  ever_co          
6-24 months   ki1114097-CONTENT          PERU                           <48 cm              0        1       2  ever_co          
6-24 months   ki1114097-CONTENT          PERU                           <48 cm              1        0       2  ever_co          
6-24 months   ki1114097-CONTENT          PERU                           [48-50) cm          0        0       2  ever_co          
6-24 months   ki1114097-CONTENT          PERU                           [48-50) cm          1        0       2  ever_co          
6-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm             0    15047   16598  ever_co          
6-24 months   ki1119695-PROBIT           BELARUS                        >=50 cm             1        5   16598  ever_co          
6-24 months   ki1119695-PROBIT           BELARUS                        <48 cm              0      179   16598  ever_co          
6-24 months   ki1119695-PROBIT           BELARUS                        <48 cm              1        0   16598  ever_co          
6-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm          0     1363   16598  ever_co          
6-24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm          1        4   16598  ever_co          
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0     3009   10688  ever_co          
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1       62   10688  ever_co          
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0     3210   10688  ever_co          
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1      213   10688  ever_co          
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0     4034   10688  ever_co          
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1      160   10688  ever_co          
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm             0      334     726  ever_co          
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm             1       28     726  ever_co          
6-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm              0      120     726  ever_co          
6-24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm              1       21     726  ever_co          
6-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm          0      203     726  ever_co          
6-24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm          1       20     726  ever_co          
6-24 months   ki1135781-COHORTS          INDIA                          >=50 cm             0     1315    6166  ever_co          
6-24 months   ki1135781-COHORTS          INDIA                          >=50 cm             1       27    6166  ever_co          
6-24 months   ki1135781-COHORTS          INDIA                          <48 cm              0     2191    6166  ever_co          
6-24 months   ki1135781-COHORTS          INDIA                          <48 cm              1      352    6166  ever_co          
6-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm          0     2141    6166  ever_co          
6-24 months   ki1135781-COHORTS          INDIA                          [48-50) cm          1      140    6166  ever_co          
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm             0      926    2801  ever_co          
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm             1      110    2801  ever_co          
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm              0      487    2801  ever_co          
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm              1      212    2801  ever_co          
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          0      853    2801  ever_co          
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          1      213    2801  ever_co          
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0      840   14296  ever_co          
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1        8   14296  ever_co          
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0     8927   14296  ever_co          
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1     1165   14296  ever_co          
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     3245   14296  ever_co          
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1      111   14296  ever_co          
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0     1113    4474  ever_co          
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1      112    4474  ever_co          
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0     1730    4474  ever_co          
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1      442    4474  ever_co          
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0      971    4474  ever_co          
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1      106    4474  ever_co          


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/40db8c34-82b8-417b-8ce2-553266d22d9b/2c3fae75-1d63-47a8-84b6-c9f1732891d7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/40db8c34-82b8-417b-8ce2-553266d22d9b/2c3fae75-1d63-47a8-84b6-c9f1732891d7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/40db8c34-82b8-417b-8ce2-553266d22d9b/2c3fae75-1d63-47a8-84b6-c9f1732891d7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/40db8c34-82b8-417b-8ce2-553266d22d9b/2c3fae75-1d63-47a8-84b6-c9f1732891d7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    >=50 cm              NA                0.1282051   0.0230511   0.2333592
0-24 months   ki0047075b-MAL-ED         BANGLADESH    <48 cm               NA                0.2072072   0.1316425   0.2827719
0-24 months   ki0047075b-MAL-ED         BANGLADESH    [48-50) cm           NA                0.1139241   0.0437094   0.1841388
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.1619718   0.1012969   0.2226467
0-24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.3153153   0.2287666   0.4018640
0-24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.1086957   0.0566980   0.1606933
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.2500000   0.0764015   0.4235985
0-24 months   ki1000109-EE              PAKISTAN      <48 cm               NA                0.5889571   0.5132663   0.6646478
0-24 months   ki1000109-EE              PAKISTAN      [48-50) cm           NA                0.2592593   0.1421330   0.3763855
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.0717489   0.0399514   0.1035463
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.3200000   0.2641608   0.3758392
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.1593291   0.1217504   0.1969079
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.0863309   0.0396028   0.1330591
0-24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               NA                0.3432203   0.2825957   0.4038449
0-24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           NA                0.1754386   0.1260286   0.2248486
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                0.0295858   0.0040214   0.0551502
0-24 months   ki1017093b-PROVIDE        BANGLADESH    <48 cm               NA                0.2338710   0.1811514   0.2865905
0-24 months   ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           NA                0.0954064   0.0611548   0.1296580
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.1125654   0.0901467   0.1349842
0-24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.2491468   0.1996064   0.2986871
0-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.1979798   0.1628651   0.2330945
0-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                0.1217391   0.0619333   0.1815449
0-24 months   ki1113344-GMS-Nepal       NEPAL         <48 cm               NA                0.3839779   0.3338404   0.4341154
0-24 months   ki1113344-GMS-Nepal       NEPAL         [48-50) cm           NA                0.2307692   0.1734697   0.2880687
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0182482   0.0141560   0.0223403
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0760944   0.0682265   0.0839624
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0326332   0.0278640   0.0374023
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0675991   0.0438278   0.0913703
0-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.1666667   0.1081499   0.2251834
0-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.1008065   0.0633131   0.1382998
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0196629   0.0124512   0.0268746
0-24 months   ki1135781-COHORTS         INDIA         <48 cm               NA                0.1561822   0.1426523   0.1697121
0-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.0586546   0.0493266   0.0679827
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.1019504   0.0842896   0.1196111
0-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.3018617   0.2690457   0.3346777
0-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.1875540   0.1650576   0.2100504
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0063542   0.0022034   0.0105051
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.1173315   0.1117118   0.1229512
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0245724   0.0202540   0.0288909
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0933442   0.0753593   0.1113291
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.2309108   0.2101440   0.2516775
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.1077066   0.0868515   0.1285616
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0065445   0.0008251   0.0122639
0-6 months    ki1101329-Keneba          GAMBIA        <48 cm               NA                0.0719178   0.0422758   0.1015599
0-6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.0303030   0.0151971   0.0454089
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0036568   0.0018095   0.0055040
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0307048   0.0255476   0.0358620
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0035687   0.0019669   0.0051706
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
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.1338028   0.0777366   0.1898690
6-24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.2702703   0.1875479   0.3529926
6-24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.1014493   0.0510110   0.1518876
6-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.2500000   0.0763922   0.4236078
6-24 months   ki1000109-EE              PAKISTAN      <48 cm               NA                0.5506329   0.4729050   0.6283609
6-24 months   ki1000109-EE              PAKISTAN      [48-50) cm           NA                0.2452830   0.1292018   0.3613642
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.0619048   0.0327547   0.0910548
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.3149931   0.2606494   0.3693368
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.1571754   0.1281728   0.1861780
6-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.0991736   0.0458658   0.1524813
6-24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               NA                0.3069307   0.2432662   0.3705952
6-24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           NA                0.1859296   0.1318239   0.2400354
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.1144011   0.0915065   0.1372957
6-24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.2313433   0.1808398   0.2818468
6-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.1995798   0.1636622   0.2354975
6-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                0.1400000   0.0719340   0.2080660
6-24 months   ki1113344-GMS-Nepal       NEPAL         <48 cm               NA                0.4180064   0.3631424   0.4728704
6-24 months   ki1113344-GMS-Nepal       NEPAL         [48-50) cm           NA                0.2640449   0.1992305   0.3288594
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0201889   0.0152143   0.0251634
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0622261   0.0541333   0.0703189
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0381497   0.0323521   0.0439474
6-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0773481   0.0498098   0.1048863
6-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.1489362   0.0901305   0.2077418
6-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.0896861   0.0521583   0.1272139
6-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0201192   0.0126065   0.0276320
6-24 months   ki1135781-COHORTS         INDIA         <48 cm               NA                0.1384192   0.1249960   0.1518424
6-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.0613766   0.0515259   0.0712273
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.1061776   0.0874152   0.1249400
6-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.3032904   0.2692071   0.3373738
6-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.1998124   0.1758045   0.2238203
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0094340   0.0032927   0.0155753
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.1154380   0.1087317   0.1221442
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0330751   0.0270069   0.0391433
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0914286   0.0735275   0.1093297
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.2034991   0.1842515   0.2227467
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0984215   0.0780264   0.1188167


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
0-24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm            1.9467293   1.2235431    3.097361
0-24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm            0.6710775   0.3655084    1.232106
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1000109-EE              PAKISTAN      <48 cm               >=50 cm            2.3558282   1.1626544    4.773496
0-24 months   ki1000109-EE              PAKISTAN      [48-50) cm           >=50 cm            1.0370370   0.4529137    2.374505
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm            4.4600000   2.8049506    7.091604
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm            2.2206499   1.4370349    3.431570
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               >=50 cm            3.9756356   2.2497624    7.025488
0-24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           >=50 cm            2.0321637   1.1040055    3.740642
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH    <48 cm               >=50 cm            7.9048387   3.2364549   19.307074
0-24 months   ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           >=50 cm            3.2247350   1.2651132    8.219751
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm            2.2133503   1.6704232    2.932741
0-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm            1.7587973   1.3470804    2.296350
0-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1113344-GMS-Nepal       NEPAL         <48 cm               >=50 cm            3.1541042   1.8972130    5.243678
0-24 months   ki1113344-GMS-Nepal       NEPAL         [48-50) cm           >=50 cm            1.8956044   1.0931816    3.287026
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm            4.1699747   3.2575321    5.337995
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm            1.7882970   1.3683347    2.337152
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm            2.4655172   1.5000244    4.052451
0-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm            1.4912403   0.8938260    2.487953
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm            7.9429810   5.4489904   11.578466
0-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm            2.9830071   2.0000468    4.449062
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm            2.9608695   2.4132332    3.632781
0-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm            1.8396603   1.4901528    2.271143
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           18.4650404   9.5869344   35.564833
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm            3.8670873   1.9755936    7.569555
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm            2.4737569   2.0001033    3.059579
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm            1.1538653   0.8769730    1.518183
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months    ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           10.9890404   4.1814154   28.879936
0-6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm            4.6303028   1.6930209   12.663579
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm            8.3967434   4.9307951   14.298972
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm            0.9759329   0.4965239    1.918226
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
6-24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm            2.0199147   1.2022003    3.393823
6-24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm            0.7581999   0.3957347    1.452658
6-24 months   ki1000109-EE              PAKISTAN      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1000109-EE              PAKISTAN      <48 cm               >=50 cm            2.2025316   1.0843431    4.473811
6-24 months   ki1000109-EE              PAKISTAN      [48-50) cm           >=50 cm            0.9811321   0.4234128    2.273479
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm            5.0883504   2.9507871    8.774374
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm            2.5389872   1.4817758    4.350494
6-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               >=50 cm            3.0948844   1.7395005    5.506356
6-24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           >=50 cm            1.8747906   1.0174111    3.454690
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm            2.0222125   1.5038635    2.719225
6-24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm            1.7445625   1.3329043    2.283358
6-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1113344-GMS-Nepal       NEPAL         <48 cm               >=50 cm            2.9857602   1.8044641    4.940394
6-24 months   ki1113344-GMS-Nepal       NEPAL         [48-50) cm           >=50 cm            1.8860353   1.0939977    3.251496
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm            3.0822001   2.3326976    4.072520
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm            1.8896426   1.4146606    2.524103
6-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm            1.9255319   1.1315059    3.276760
6-24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm            1.1595131   0.6693792    2.008534
6-24 months   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm            6.8799464   4.6777269   10.118945
6-24 months   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm            3.0506438   2.0317759    4.580440
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm            2.8564443   2.3167445    3.521870
6-24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm            1.8818693   1.5198000    2.330196
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           12.2364249   6.3596188   23.543879
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm            3.5059595   1.8022114    6.820372
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm            2.2257710   1.7931554    2.762759
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm            1.0764855   0.8063815    1.437063


### Parameter: PAR


agecat        studyid                   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    >=50 cm              NA                0.0333669   -0.0644774   0.1312113
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.0247289   -0.0253020   0.0747599
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.2313278    0.0636075   0.3990481
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.1602511    0.1150815   0.2054208
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.1342329    0.0865477   0.1819181
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                0.0989856    0.0681034   0.1298678
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0530273    0.0343193   0.0717354
0-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                0.1716915    0.1121921   0.2311909
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0238380    0.0195961   0.0280799
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0284393    0.0088465   0.0480322
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0713147    0.0625057   0.0801238
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0821129    0.0656740   0.0985518
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0834159    0.0776731   0.0891588
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0701624    0.0528981   0.0874267
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0198901    0.0118733   0.0279068
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0084380    0.0062661   0.0106098
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0112935    0.0012027   0.0213844
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0157367    0.0097173   0.0217561
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0225540    0.0161589   0.0289490
6-24 months   ki0047075b-MAL-ED         BANGLADESH    >=50 cm              NA                0.0281930   -0.0686879   0.1250739
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.0273225   -0.0194917   0.0741367
6-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.2010638    0.0335876   0.3685400
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.1641127    0.1139382   0.2142872
6-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.1134701    0.0609462   0.1659941
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0483427    0.0295652   0.0671202
6-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                0.1842784    0.1172608   0.2512960
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0205110    0.0155552   0.0254668
6-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0176933   -0.0037033   0.0390898
6-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0640520    0.0551130   0.0729911
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0848256    0.0674011   0.1022502
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0803814    0.0727907   0.0879720
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0560904    0.0394098   0.0727711


### Parameter: PAF


agecat        studyid                   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    >=50 cm              NA                0.2065142   -0.6975195   0.6290943
0-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.1324522   -0.1803682   0.3623692
0-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.4806034   -0.0155165   0.7343492
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.6907376    0.5222951   0.7997860
0-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.6085898    0.3465579   0.7655463
0-24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                0.7698882    0.4684627   0.9003806
0-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.3202274    0.2022815   0.4207344
0-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                0.5851179    0.3359492   0.7407922
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.5664095    0.4656771   0.6481516
0-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.2961247    0.0702403   0.4671307
0-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.7838709    0.6909847   0.8488367
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.4461123    0.3548335   0.5244769
0-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.9292165    0.8640864   0.9631361
0-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.4291107    0.3192518   0.5212406
0-6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.7524262    0.4391351   0.8907174
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.6976570    0.5106154   0.8132118
0-6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.4897833   -0.0767738   0.7582398
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.6635638    0.3819918   0.8168482
0-6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.8222956    0.5691586   0.9267042
6-24 months   ki0047075b-MAL-ED         BANGLADESH    >=50 cm              NA                0.1802642   -0.7414138   0.6141257
6-24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.1695730   -0.1758274   0.4135117
6-24 months   ki1000109-EE              PAKISTAN      >=50 cm              NA                0.4457547   -0.0820923   0.7161168
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.7261063    0.5379759   0.8376323
6-24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.5336163    0.2281792   0.7181809
6-24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.2970479    0.1760733   0.4002603
6-24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                0.5682723    0.3133392   0.7285576
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.5039573    0.3770713   0.6049976
6-24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.1861638   -0.0689164   0.3803731
6-24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.7609728    0.6563946   0.8337220
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.4441057    0.3505480   0.5241858
6-24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.8949627    0.7990587   0.9450942
6-24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.3802251    0.2603910   0.4806432
