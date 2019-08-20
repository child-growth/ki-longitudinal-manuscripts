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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        birthlen      swasted   n_cell       n
----------  -------------------------  -----------------------------  -----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       25     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        4     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0      126     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1        2     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       82     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1        2     241
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       34     183
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm              0       73     183
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm              1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       76     183
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        0     183
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm             0       25     203
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm             1        0     203
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm              0       98     203
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm              1        6     203
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm          0       73     203
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm          1        1     203
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm             0       36     168
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        2     168
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm              0       62     168
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm              1        2     168
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0       66     168
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1        0     168
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm             0       34     279
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm             1        0     279
Birth       ki0047075b-MAL-ED          PERU                           <48 cm              0      134     279
Birth       ki0047075b-MAL-ED          PERU                           <48 cm              1        0     279
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm          0      111     279
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm          1        0     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       44     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1        2     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0      109     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0      103     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1        0     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       14     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        1     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0       52     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       51     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        0     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0       12      84
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1        0      84
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       31      84
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1        1      84
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       40      84
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1        0      84
Birth       ki1000108-IRC              INDIA                          >=50 cm             0       82     343
Birth       ki1000108-IRC              INDIA                          >=50 cm             1       38     343
Birth       ki1000108-IRC              INDIA                          <48 cm              0       80     343
Birth       ki1000108-IRC              INDIA                          <48 cm              1        7     343
Birth       ki1000108-IRC              INDIA                          [48-50) cm          0      127     343
Birth       ki1000108-IRC              INDIA                          [48-50) cm          1        9     343
Birth       ki1000109-EE               PAKISTAN                       >=50 cm             0        0       1
Birth       ki1000109-EE               PAKISTAN                       >=50 cm             1        0       1
Birth       ki1000109-EE               PAKISTAN                       <48 cm              0        1       1
Birth       ki1000109-EE               PAKISTAN                       <48 cm              1        0       1
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm          0        0       1
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm          1        0       1
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm             0        3       6
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm             1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm              0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm              1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm          0        2       6
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm          1        0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             0        9     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm              0       99     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm              1        4     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          0       53     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          1        1     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0        6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0       10      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0       10      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             0        3      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              0       10      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          0        9      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          1        1      23
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm             0      709    1423
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm             1        6    1423
Birth       ki1101329-Keneba           GAMBIA                         <48 cm              0      249    1423
Birth       ki1101329-Keneba           GAMBIA                         <48 cm              1        2    1423
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm          0      454    1423
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm          1        3    1423
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm             0        2       8
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm              0        3       8
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm              1        1       8
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        2       8
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        0       8
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm             0       62     111
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm             1        1     111
Birth       ki1114097-CMIN             BRAZIL                         <48 cm              0       12     111
Birth       ki1114097-CMIN             BRAZIL                         <48 cm              1        0     111
Birth       ki1114097-CMIN             BRAZIL                         [48-50) cm          0       36     111
Birth       ki1114097-CMIN             BRAZIL                         [48-50) cm          1        0     111
Birth       ki1114097-CMIN             PERU                           >=50 cm             0       10      10
Birth       ki1114097-CMIN             PERU                           >=50 cm             1        0      10
Birth       ki1114097-CMIN             PERU                           <48 cm              0        0      10
Birth       ki1114097-CMIN             PERU                           <48 cm              1        0      10
Birth       ki1114097-CMIN             PERU                           [48-50) cm          0        0      10
Birth       ki1114097-CMIN             PERU                           [48-50) cm          1        0      10
Birth       ki1114097-CONTENT          PERU                           >=50 cm             0        1       2
Birth       ki1114097-CONTENT          PERU                           >=50 cm             1        0       2
Birth       ki1114097-CONTENT          PERU                           <48 cm              0        1       2
Birth       ki1114097-CONTENT          PERU                           <48 cm              1        0       2
Birth       ki1114097-CONTENT          PERU                           [48-50) cm          0        0       2
Birth       ki1114097-CONTENT          PERU                           [48-50) cm          1        0       2
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm             0    11654   13824
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm             1      910   13824
Birth       ki1119695-PROBIT           BELARUS                        <48 cm              0      140   13824
Birth       ki1119695-PROBIT           BELARUS                        <48 cm              1        0   13824
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm          0     1119   13824
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm          1        1   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0     3585   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1      411   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0     3499   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1      142   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0     5041   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1      238   12916
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm             0      351     756
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm             1       45     756
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm              0      129     756
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm              1        3     756
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm          0      216     756
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm          1       12     756
Birth       ki1135781-COHORTS          INDIA                          >=50 cm             0     1310    6193
Birth       ki1135781-COHORTS          INDIA                          >=50 cm             1       94    6193
Birth       ki1135781-COHORTS          INDIA                          <48 cm              0     2258    6193
Birth       ki1135781-COHORTS          INDIA                          <48 cm              1       96    6193
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm          0     2305    6193
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm          1      130    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm             0     1042    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm             1       68    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm              0      626    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm              1       25    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          0     1110    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          1       28    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0      924   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1       22   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0    10268   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1      153   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     4263   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1       79   15709
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0       36     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1        0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0      457     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1        3     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0      185     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1        2     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       27     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        2     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0      122     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1        0     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       83     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1        0     234
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       30     173
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0     173
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm              0       69     173
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm              1        0     173
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       74     173
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        0     173
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm             0       24     193
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm             1        0     193
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm              0       99     193
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm              1        2     193
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm          0       66     193
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm          1        2     193
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm             0       38     171
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        0     171
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm              0       67     171
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm              1        0     171
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0       66     171
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1        0     171
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm             0       30     261
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm             1        0     261
6 months    ki0047075b-MAL-ED          PERU                           <48 cm              0      132     261
6 months    ki0047075b-MAL-ED          PERU                           <48 cm              1        0     261
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm          0       99     261
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm          1        0     261
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       39     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1        0     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0       84     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1        2     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0       88     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1        1     214
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       14     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        0     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0       54     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1        0     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       51     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        0     119
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0       14     103
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1        1     103
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       48     103
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1        0     103
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       39     103
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1        1     103
6 months    ki1000108-IRC              INDIA                          >=50 cm             0      135     389
6 months    ki1000108-IRC              INDIA                          >=50 cm             1        6     389
6 months    ki1000108-IRC              INDIA                          <48 cm              0      107     389
6 months    ki1000108-IRC              INDIA                          <48 cm              1        3     389
6 months    ki1000108-IRC              INDIA                          [48-50) cm          0      125     389
6 months    ki1000108-IRC              INDIA                          [48-50) cm          1       13     389
6 months    ki1000109-EE               PAKISTAN                       >=50 cm             0       22      90
6 months    ki1000109-EE               PAKISTAN                       >=50 cm             1        0      90
6 months    ki1000109-EE               PAKISTAN                       <48 cm              0       43      90
6 months    ki1000109-EE               PAKISTAN                       <48 cm              1        0      90
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm          0       24      90
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm          1        1      90
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm             0        4      17
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm             1        0      17
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm              0        6      17
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm              1        0      17
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm          0        6      17
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm          1        1      17
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             0      194    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             1        2    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm              0      676    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm              1       32    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          0      410    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          1        8    1322
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0       25     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1        0     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0       83     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1        0     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0       70     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1        0     178
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             0      139     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             1        1     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm              0      203     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm              1        3     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          0      235     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          1        1     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             0      164     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              0      270     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          0      281     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          1        0     715
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm             0      673    1347
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm             1        4    1347
6 months    ki1101329-Keneba           GAMBIA                         <48 cm              0      231    1347
6 months    ki1101329-Keneba           GAMBIA                         <48 cm              1        3    1347
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm          0      424    1347
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm          1       12    1347
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm             0        0       1
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0       1
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm              0        1       1
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm              1        0       1
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        0       1
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        0       1
6 months    ki1114097-CMIN             BRAZIL                         >=50 cm             0       58     104
6 months    ki1114097-CMIN             BRAZIL                         >=50 cm             1        0     104
6 months    ki1114097-CMIN             BRAZIL                         <48 cm              0       13     104
6 months    ki1114097-CMIN             BRAZIL                         <48 cm              1        0     104
6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm          0       33     104
6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm          1        0     104
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm             0        0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm             1        0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm              0        1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm              1        0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm          0        1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm          1        0       2
6 months    ki1114097-CMIN             PERU                           >=50 cm             0       12      14
6 months    ki1114097-CMIN             PERU                           >=50 cm             1        0      14
6 months    ki1114097-CMIN             PERU                           <48 cm              0        1      14
6 months    ki1114097-CMIN             PERU                           <48 cm              1        0      14
6 months    ki1114097-CMIN             PERU                           [48-50) cm          0        1      14
6 months    ki1114097-CMIN             PERU                           [48-50) cm          1        0      14
6 months    ki1114097-CONTENT          PERU                           >=50 cm             0        1       2
6 months    ki1114097-CONTENT          PERU                           >=50 cm             1        0       2
6 months    ki1114097-CONTENT          PERU                           <48 cm              0        1       2
6 months    ki1114097-CONTENT          PERU                           <48 cm              1        0       2
6 months    ki1114097-CONTENT          PERU                           [48-50) cm          0        0       2
6 months    ki1114097-CONTENT          PERU                           [48-50) cm          1        0       2
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm             0    14279   15757
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm             1       13   15757
6 months    ki1119695-PROBIT           BELARUS                        <48 cm              0      172   15757
6 months    ki1119695-PROBIT           BELARUS                        <48 cm              1        0   15757
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm          0     1290   15757
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm          1        3   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0     2371    8175
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1       21    8175
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0     2559    8175
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1       23    8175
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0     3166    8175
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1       35    8175
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm             0      350     689
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm             1        1     689
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm              0      133     689
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm              1        1     689
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm          0      203     689
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm          1        1     689
6 months    ki1135781-COHORTS          INDIA                          >=50 cm             0     1307    6127
6 months    ki1135781-COHORTS          INDIA                          >=50 cm             1       22    6127
6 months    ki1135781-COHORTS          INDIA                          <48 cm              0     2410    6127
6 months    ki1135781-COHORTS          INDIA                          <48 cm              1      117    6127
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm          0     2209    6127
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm          1       62    6127
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm             0      980    2699
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm             1        9    2699
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm              0      667    2699
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm              1       10    2699
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          0     1017    2699
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          1       16    2699
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0     2395   16480
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1       28   16480
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0    10132   16480
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1      150   16480
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     3727   16480
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1       48   16480
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0     1094    4024
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1        7    4024
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0     1910    4024
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1       17    4024
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0      992    4024
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1        4    4024
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       28     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        0     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0      102     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1        0     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       77     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1        0     207
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       21     139
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0     139
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm              0       57     139
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm              1        0     139
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       61     139
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        0     139
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm             0       23     184
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm             1        0     184
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm              0       95     184
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm              1        0     184
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm          0       65     184
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm          1        1     184
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm             0       36     165
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        0     165
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm              0       65     165
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm              1        0     165
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0       64     165
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1        0     165
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm             0       23     191
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm             1        0     191
24 months   ki0047075b-MAL-ED          PERU                           <48 cm              0       99     191
24 months   ki0047075b-MAL-ED          PERU                           <48 cm              1        1     191
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm          0       68     191
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm          1        0     191
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       35     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0       83     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0       83     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1        0     201
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       12     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        0     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0       49     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1        0     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       42     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        0     103
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0       15     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1        0     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       49     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1        0     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       40     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1        0     104
24 months   ki1000108-IRC              INDIA                          >=50 cm             0      142     390
24 months   ki1000108-IRC              INDIA                          >=50 cm             1        0     390
24 months   ki1000108-IRC              INDIA                          <48 cm              0      109     390
24 months   ki1000108-IRC              INDIA                          <48 cm              1        1     390
24 months   ki1000108-IRC              INDIA                          [48-50) cm          0      134     390
24 months   ki1000108-IRC              INDIA                          [48-50) cm          1        4     390
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0       20     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1        0     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0       61     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1        1     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0       53     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1        1     136
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             0      137     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             1        2     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm              0      202     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm              1        4     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          0      230     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          1        3     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             0      128     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             1        0     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              0      197     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              1        3     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          0      185     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          1        1     514
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm             0      530    1066
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm             1        5    1066
24 months   ki1101329-Keneba           GAMBIA                         <48 cm              0      191    1066
24 months   ki1101329-Keneba           GAMBIA                         <48 cm              1        6    1066
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm          0      324    1066
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm          1       10    1066
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm             0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0       1
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm              0        1       1
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm              1        0       1
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        0       1
24 months   ki1114097-CMIN             PERU                           >=50 cm             0        3       4
24 months   ki1114097-CMIN             PERU                           >=50 cm             1        0       4
24 months   ki1114097-CMIN             PERU                           <48 cm              0        1       4
24 months   ki1114097-CMIN             PERU                           <48 cm              1        0       4
24 months   ki1114097-CMIN             PERU                           [48-50) cm          0        0       4
24 months   ki1114097-CMIN             PERU                           [48-50) cm          1        0       4
24 months   ki1114097-CONTENT          PERU                           >=50 cm             0        1       2
24 months   ki1114097-CONTENT          PERU                           >=50 cm             1        0       2
24 months   ki1114097-CONTENT          PERU                           <48 cm              0        1       2
24 months   ki1114097-CONTENT          PERU                           <48 cm              1        0       2
24 months   ki1114097-CONTENT          PERU                           [48-50) cm          0        0       2
24 months   ki1114097-CONTENT          PERU                           [48-50) cm          1        0       2
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm             0     3620    3971
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm             1        3    3971
24 months   ki1119695-PROBIT           BELARUS                        <48 cm              0       44    3971
24 months   ki1119695-PROBIT           BELARUS                        <48 cm              1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm          0      303    3971
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm          1        1    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0       38     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1        4     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0      236     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1       14     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0      113     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1       12     417
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm             0      263     564
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm             1        1     564
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm              0      122     564
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm              1        0     564
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm          0      178     564
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm          1        0     564
24 months   ki1135781-COHORTS          INDIA                          >=50 cm             0     1028    4722
24 months   ki1135781-COHORTS          INDIA                          >=50 cm             1        7    4722
24 months   ki1135781-COHORTS          INDIA                          <48 cm              0     1895    4722
24 months   ki1135781-COHORTS          INDIA                          <48 cm              1       33    4722
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm          0     1749    4722
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm          1       10    4722
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm             0      891    2446
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm             1        4    2446
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm              0      601    2446
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm              1        8    2446
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          0      929    2446
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          1       13    2446
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0     1132    8415
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1       34    8415
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0     5040    8415
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1      237    8415
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     1917    8415
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1       55    8415
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0     1048    3974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1       26    3974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0     1871    3974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1       66    3974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0      944    3974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1       19    3974


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES

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




# Results Detail

## Results Plots
![](/tmp/b9cffc5a-6c05-4e0d-a85d-964831bc30af/9bbf5d43-441d-4932-b061-10290a7995bf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b9cffc5a-6c05-4e0d-a85d-964831bc30af/9bbf5d43-441d-4932-b061-10290a7995bf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b9cffc5a-6c05-4e0d-a85d-964831bc30af/9bbf5d43-441d-4932-b061-10290a7995bf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b9cffc5a-6c05-4e0d-a85d-964831bc30af/9bbf5d43-441d-4932-b061-10290a7995bf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC        INDIA         >=50 cm              NA                0.3166667   0.2333160   0.4000173
Birth       ki1000108-IRC        INDIA         <48 cm               NA                0.0804598   0.0232201   0.1376995
Birth       ki1000108-IRC        INDIA         [48-50) cm           NA                0.0661765   0.0243360   0.1080170
Birth       ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              NA                0.1039342   0.0944185   0.1134498
Birth       ki1126311-ZVITAMBO   ZIMBABWE      <48 cm               NA                0.0385281   0.0322517   0.0448045
Birth       ki1126311-ZVITAMBO   ZIMBABWE      [48-50) cm           NA                0.0451168   0.0394854   0.0507481
Birth       ki1135781-COHORTS    INDIA         >=50 cm              NA                0.0677876   0.0544934   0.0810818
Birth       ki1135781-COHORTS    INDIA         <48 cm               NA                0.0390873   0.0312698   0.0469049
Birth       ki1135781-COHORTS    INDIA         [48-50) cm           NA                0.0538541   0.0447691   0.0629392
Birth       ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                0.0622516   0.0481156   0.0763876
Birth       ki1135781-COHORTS    PHILIPPINES   <48 cm               NA                0.0360088   0.0216285   0.0503891
Birth       ki1135781-COHORTS    PHILIPPINES   [48-50) cm           NA                0.0249665   0.0159378   0.0339952
Birth       kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                0.0253097   0.0145827   0.0360367
Birth       kiGH5241-JiVitA-3    BANGLADESH    <48 cm               NA                0.0145682   0.0120976   0.0170388
Birth       kiGH5241-JiVitA-3    BANGLADESH    [48-50) cm           NA                0.0184825   0.0135326   0.0234324
6 months    ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              NA                0.0086897   0.0049179   0.0124615
6 months    ki1126311-ZVITAMBO   ZIMBABWE      <48 cm               NA                0.0091172   0.0053797   0.0128547
6 months    ki1126311-ZVITAMBO   ZIMBABWE      [48-50) cm           NA                0.0110193   0.0073002   0.0147384
6 months    ki1135781-COHORTS    INDIA         >=50 cm              NA                0.0160704   0.0093751   0.0227657
6 months    ki1135781-COHORTS    INDIA         <48 cm               NA                0.0462692   0.0380652   0.0544731
6 months    ki1135781-COHORTS    INDIA         [48-50) cm           NA                0.0274061   0.0206465   0.0341657
6 months    ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                0.0091001   0.0031808   0.0150194
6 months    ki1135781-COHORTS    PHILIPPINES   <48 cm               NA                0.0147710   0.0056822   0.0238599
6 months    ki1135781-COHORTS    PHILIPPINES   [48-50) cm           NA                0.0154889   0.0079571   0.0230207
6 months    kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                0.0111387   0.0061288   0.0161485
6 months    kiGH5241-JiVitA-3    BANGLADESH    <48 cm               NA                0.0145773   0.0118194   0.0173351
6 months    kiGH5241-JiVitA-3    BANGLADESH    [48-50) cm           NA                0.0126017   0.0087304   0.0164729
24 months   ki1101329-Keneba     GAMBIA        >=50 cm              NA                0.0093458   0.0011885   0.0175031
24 months   ki1101329-Keneba     GAMBIA        <48 cm               NA                0.0304569   0.0064495   0.0544642
24 months   ki1101329-Keneba     GAMBIA        [48-50) cm           NA                0.0299401   0.0116547   0.0482255
24 months   ki1135781-COHORTS    INDIA         >=50 cm              NA                0.0067633   0.0017695   0.0117571
24 months   ki1135781-COHORTS    INDIA         <48 cm               NA                0.0171162   0.0113260   0.0229064
24 months   ki1135781-COHORTS    INDIA         [48-50) cm           NA                0.0056850   0.0021711   0.0091990
24 months   kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                0.0279247   0.0182495   0.0375999
24 months   kiGH5241-JiVitA-3    BANGLADESH    <48 cm               NA                0.0461760   0.0400054   0.0523466
24 months   kiGH5241-JiVitA-3    BANGLADESH    [48-50) cm           NA                0.0282003   0.0204585   0.0359421
24 months   kiGH5241-JiVitA-4    BANGLADESH    >=50 cm              NA                0.0236839   0.0144110   0.0329568
24 months   kiGH5241-JiVitA-4    BANGLADESH    <48 cm               NA                0.0346430   0.0249904   0.0442956
24 months   kiGH5241-JiVitA-4    BANGLADESH    [48-50) cm           NA                0.0194565   0.0091616   0.0297514


### Parameter: E(Y)


agecat      studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC        INDIA         NA                   NA                0.1574344   0.1188345   0.1960344
Birth       ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.0612419   0.0571066   0.0653771
Birth       ki1135781-COHORTS    INDIA         NA                   NA                0.0516712   0.0461576   0.0571849
Birth       ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.0417385   0.0344572   0.0490198
Birth       kiGH5241-JiVitA-3    BANGLADESH    NA                   NA                0.0161691   0.0138058   0.0185324
6 months    ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.0096636   0.0075428   0.0117844
6 months    ki1135781-COHORTS    INDIA         NA                   NA                0.0328056   0.0283450   0.0372662
6 months    ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.0129678   0.0086988   0.0172368
6 months    kiGH5241-JiVitA-3    BANGLADESH    NA                   NA                0.0137136   0.0115856   0.0158416
24 months   ki1101329-Keneba     GAMBIA        NA                   NA                0.0196998   0.0113537   0.0280459
24 months   ki1135781-COHORTS    INDIA         NA                   NA                0.0105887   0.0076690   0.0135085
24 months   kiGH5241-JiVitA-3    BANGLADESH    NA                   NA                0.0387403   0.0343586   0.0431221
24 months   kiGH5241-JiVitA-4    BANGLADESH    NA                   NA                0.0279316   0.0220494   0.0338137


### Parameter: RR


agecat      studyid              country       intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  -------------------  ------------  -------------------  ---------------  ----------  ----------  -----------
Birth       ki1000108-IRC        INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
Birth       ki1000108-IRC        INDIA         <48 cm               >=50 cm           0.2540835   0.1190000    0.5425075
Birth       ki1000108-IRC        INDIA         [48-50) cm           >=50 cm           0.2089783   0.1053590    0.4145060
Birth       ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
Birth       ki1126311-ZVITAMBO   ZIMBABWE      <48 cm               >=50 cm           0.3706974   0.3075084    0.4468709
Birth       ki1126311-ZVITAMBO   ZIMBABWE      [48-50) cm           >=50 cm           0.4340899   0.3718529    0.5067435
Birth       ki1135781-COHORTS    INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS    INDIA         <48 cm               >=50 cm           0.5766143   0.4357886    0.7629481
Birth       ki1135781-COHORTS    INDIA         [48-50) cm           >=50 cm           0.7944535   0.6133753    1.0289888
Birth       ki1135781-COHORTS    PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS    PHILIPPINES   <48 cm               >=50 cm           0.5784402   0.3654781    0.9154941
Birth       ki1135781-COHORTS    PHILIPPINES   [48-50) cm           >=50 cm           0.4010578   0.2616846    0.6146613
Birth       kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3    BANGLADESH    <48 cm               >=50 cm           0.5755980   0.3656540    0.9060834
Birth       kiGH5241-JiVitA-3    BANGLADESH    [48-50) cm           >=50 cm           0.7302535   0.4522213    1.1792241
6 months    ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO   ZIMBABWE      <48 cm               >=50 cm           1.0491955   0.5775343    1.9060535
6 months    ki1126311-ZVITAMBO   ZIMBABWE      [48-50) cm           >=50 cm           1.2680876   0.7317240    2.1976131
6 months    ki1135781-COHORTS    INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS    INDIA         <48 cm               >=50 cm           2.8791527   1.8307295    4.5279876
6 months    ki1135781-COHORTS    INDIA         [48-50) cm           >=50 cm           1.7053771   1.0507786    2.7677676
6 months    ki1135781-COHORTS    PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS    PHILIPPINES   <48 cm               >=50 cm           1.6231741   0.6629864    3.9739795
6 months    ki1135781-COHORTS    PHILIPPINES   [48-50) cm           >=50 cm           1.7020544   0.7555587    3.8342347
6 months    kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3    BANGLADESH    <48 cm               >=50 cm           1.3087099   0.8020044    2.1355516
6 months    kiGH5241-JiVitA-3    BANGLADESH    [48-50) cm           >=50 cm           1.1313462   0.6717211    1.9054698
24 months   ki1101329-Keneba     GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
24 months   ki1101329-Keneba     GAMBIA        <48 cm               >=50 cm           3.2588832   1.0053237   10.5640797
24 months   ki1101329-Keneba     GAMBIA        [48-50) cm           >=50 cm           3.2035928   1.1040590    9.2957052
24 months   ki1135781-COHORTS    INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS    INDIA         <48 cm               >=50 cm           2.5307499   1.1233819    5.7012625
24 months   ki1135781-COHORTS    INDIA         [48-50) cm           >=50 cm           0.8405750   0.3209098    2.2017599
24 months   kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3    BANGLADESH    <48 cm               >=50 cm           1.6535897   1.1374770    2.4038806
24 months   kiGH5241-JiVitA-3    BANGLADESH    [48-50) cm           >=50 cm           1.0098693   0.6457412    1.5793262
24 months   kiGH5241-JiVitA-4    BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4    BANGLADESH    <48 cm               >=50 cm           1.4627232   0.9115774    2.3470956
24 months   kiGH5241-JiVitA-4    BANGLADESH    [48-50) cm           >=50 cm           0.8215080   0.4239634    1.5918244


### Parameter: PAR


agecat      studyid              country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC        INDIA         >=50 cm              NA                -0.1592323   -0.2190334   -0.0994311
Birth       ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              NA                -0.0426923   -0.0499391   -0.0354456
Birth       ki1135781-COHORTS    INDIA         >=50 cm              NA                -0.0161164   -0.0275007   -0.0047321
Birth       ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                -0.0205130   -0.0305251   -0.0105010
Birth       kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                -0.0091406   -0.0193162    0.0010350
6 months    ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              NA                 0.0009739   -0.0022692    0.0042170
6 months    ki1135781-COHORTS    INDIA         >=50 cm              NA                 0.0167352    0.0100355    0.0234349
6 months    ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                 0.0038677   -0.0013844    0.0091197
6 months    kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                 0.0025749   -0.0020411    0.0071910
24 months   ki1101329-Keneba     GAMBIA        >=50 cm              NA                 0.0103540    0.0020229    0.0186852
24 months   ki1135781-COHORTS    INDIA         >=50 cm              NA                 0.0038254   -0.0009212    0.0085721
24 months   kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                 0.0108156    0.0013450    0.0202863
24 months   kiGH5241-JiVitA-4    BANGLADESH    >=50 cm              NA                 0.0042477   -0.0041932    0.0126885


### Parameter: PAF


agecat      studyid              country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC        INDIA         >=50 cm              NA                -1.0114198   -1.4046724   -0.6824784
Birth       ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              NA                -0.6971099   -0.8118497   -0.5896363
Birth       ki1135781-COHORTS    INDIA         >=50 cm              NA                -0.3119022   -0.5495226   -0.1107210
Birth       ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                -0.4914654   -0.7372283   -0.2804702
Birth       kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                -0.5653149   -1.3327929   -0.0503336
6 months    ki1126311-ZVITAMBO   ZIMBABWE      >=50 cm              NA                 0.1007818   -0.3052306    0.3804977
6 months    ki1135781-COHORTS    INDIA         >=50 cm              NA                 0.5101325    0.2743141    0.6693195
6 months    ki1135781-COHORTS    PHILIPPINES   >=50 cm              NA                 0.2982522   -0.2288368    0.5992552
6 months    kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                 0.1877649   -0.2295604    0.4634457
24 months   ki1101329-Keneba     GAMBIA        >=50 cm              NA                 0.5255897   -0.0150497    0.7782718
24 months   ki1135781-COHORTS    INDIA         >=50 cm              NA                 0.3612754   -0.2664726    0.6778697
24 months   kiGH5241-JiVitA-3    BANGLADESH    >=50 cm              NA                 0.2791829   -0.0065220    0.4837894
24 months   kiGH5241-JiVitA-4    BANGLADESH    >=50 cm              NA                 0.1520738   -0.2042250    0.4029530
