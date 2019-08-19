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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        birthlen      wasted   n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm            0       19     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm            1       10     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm             0      110     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm             1       18     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm         0       72     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm         1       12     241
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm            0       31     183
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm            1        3     183
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm             0       72     183
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm             1        1     183
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm         0       74     183
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm         1        2     183
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm            0       22     203
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm            1        3     203
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm             0       87     203
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm             1       17     203
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm         0       61     203
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm         1       13     203
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm            0       33     168
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm            1        5     168
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm             0       53     168
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm             1       11     168
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm         0       62     168
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm         1        4     168
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm            0       33     279
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm            1        1     279
Birth       ki0047075b-MAL-ED          PERU                           <48 cm             0      131     279
Birth       ki0047075b-MAL-ED          PERU                           <48 cm             1        3     279
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm         0      109     279
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm         1        2     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm            0       40     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm            1        6     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm             0      104     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm             1        5     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm         0       96     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm         1        7     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm            0       14     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm            1        1     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm             0       51     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm             1        1     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm         0       51     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm         1        0     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm            0       11      84
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm            1        1      84
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm             0       27      84
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm             1        5      84
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm         0       36      84
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm         1        4      84
Birth       ki1000108-IRC              INDIA                          >=50 cm            0       61     343
Birth       ki1000108-IRC              INDIA                          >=50 cm            1       59     343
Birth       ki1000108-IRC              INDIA                          <48 cm             0       75     343
Birth       ki1000108-IRC              INDIA                          <48 cm             1       12     343
Birth       ki1000108-IRC              INDIA                          [48-50) cm         0      115     343
Birth       ki1000108-IRC              INDIA                          [48-50) cm         1       21     343
Birth       ki1000109-EE               PAKISTAN                       >=50 cm            0        0       1
Birth       ki1000109-EE               PAKISTAN                       >=50 cm            1        0       1
Birth       ki1000109-EE               PAKISTAN                       <48 cm             0        1       1
Birth       ki1000109-EE               PAKISTAN                       <48 cm             1        0       1
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm         0        0       1
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm         1        0       1
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm            0        3       6
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm            1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm             0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm             1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm         0        2       6
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm         1        0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm            0        9     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm            1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm             0       97     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm             1        6     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm         0       49     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm         1        5     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm            0        3      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm            1        4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm             0        9      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm             1        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm         0        9      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm         1        1      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm            0        3      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm            1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm             0        9      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm             1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm         0        8      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm         1        2      23
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm            0      700    1423
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm            1       15    1423
Birth       ki1101329-Keneba           GAMBIA                         <48 cm             0      245    1423
Birth       ki1101329-Keneba           GAMBIA                         <48 cm             1        6    1423
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm         0      450    1423
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm         1        7    1423
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm            0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm            1        1       8
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm             0        2       8
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm             1        2       8
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm         0        2       8
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm         1        0       8
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm            0       56     111
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm            1        7     111
Birth       ki1114097-CMIN             BRAZIL                         <48 cm             0       12     111
Birth       ki1114097-CMIN             BRAZIL                         <48 cm             1        0     111
Birth       ki1114097-CMIN             BRAZIL                         [48-50) cm         0       35     111
Birth       ki1114097-CMIN             BRAZIL                         [48-50) cm         1        1     111
Birth       ki1114097-CMIN             PERU                           >=50 cm            0       10      10
Birth       ki1114097-CMIN             PERU                           >=50 cm            1        0      10
Birth       ki1114097-CMIN             PERU                           <48 cm             0        0      10
Birth       ki1114097-CMIN             PERU                           <48 cm             1        0      10
Birth       ki1114097-CMIN             PERU                           [48-50) cm         0        0      10
Birth       ki1114097-CMIN             PERU                           [48-50) cm         1        0      10
Birth       ki1114097-CONTENT          PERU                           >=50 cm            0        1       2
Birth       ki1114097-CONTENT          PERU                           >=50 cm            1        0       2
Birth       ki1114097-CONTENT          PERU                           <48 cm             0        1       2
Birth       ki1114097-CONTENT          PERU                           <48 cm             1        0       2
Birth       ki1114097-CONTENT          PERU                           [48-50) cm         0        0       2
Birth       ki1114097-CONTENT          PERU                           [48-50) cm         1        0       2
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm            0     9767   13824
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm            1     2797   13824
Birth       ki1119695-PROBIT           BELARUS                        <48 cm             0      140   13824
Birth       ki1119695-PROBIT           BELARUS                        <48 cm             1        0   13824
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm         0     1029   13824
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm         1       91   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm            0     3006   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm            1      990   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm             0     3276   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm             1      365   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm         0     4574   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm         1      705   12916
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm            0      260     756
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm            1      136     756
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm             0      120     756
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm             1       12     756
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm         0      184     756
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm         1       44     756
Birth       ki1135781-COHORTS          INDIA                          >=50 cm            0     1102    6193
Birth       ki1135781-COHORTS          INDIA                          >=50 cm            1      302    6193
Birth       ki1135781-COHORTS          INDIA                          <48 cm             0     1992    6193
Birth       ki1135781-COHORTS          INDIA                          <48 cm             1      362    6193
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm         0     2003    6193
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm         1      432    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm            0      864    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm            1      246    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm             0      571    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm             1       80    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm         0     1013    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm         1      125    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm            0      822   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm            1      124   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm             0     9454   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm             1      967   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm         0     3927   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm         1      415   15709
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm            0       31     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm            1        5     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm             0      436     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm             1       24     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm         0      180     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm         1        7     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm            0       27     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm            1        2     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm             0      119     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm             1        3     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm         0       80     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm         1        3     234
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm            0       30     173
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm            1        0     173
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm             0       69     173
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm             1        0     173
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm         0       74     173
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm         1        0     173
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm            0       24     193
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm            1        0     193
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm             0       97     193
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm             1        4     193
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm         0       59     193
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm         1        9     193
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm            0       36     171
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm            1        2     171
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm             0       67     171
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm             1        0     171
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm         0       66     171
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm         1        0     171
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm            0       30     261
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm            1        0     261
6 months    ki0047075b-MAL-ED          PERU                           <48 cm             0      132     261
6 months    ki0047075b-MAL-ED          PERU                           <48 cm             1        0     261
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm         0       99     261
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm         1        0     261
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm            0       39     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm            1        0     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm             0       82     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm             1        4     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm         0       86     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm         1        3     214
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm            0       14     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm            1        0     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm             0       54     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm             1        0     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm         0       51     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm         1        0     119
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm            0       14     103
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm            1        1     103
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm             0       40     103
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm             1        8     103
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm         0       36     103
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm         1        4     103
6 months    ki1000108-IRC              INDIA                          >=50 cm            0      118     389
6 months    ki1000108-IRC              INDIA                          >=50 cm            1       23     389
6 months    ki1000108-IRC              INDIA                          <48 cm             0       98     389
6 months    ki1000108-IRC              INDIA                          <48 cm             1       12     389
6 months    ki1000108-IRC              INDIA                          [48-50) cm         0      120     389
6 months    ki1000108-IRC              INDIA                          [48-50) cm         1       18     389
6 months    ki1000109-EE               PAKISTAN                       >=50 cm            0       20      90
6 months    ki1000109-EE               PAKISTAN                       >=50 cm            1        2      90
6 months    ki1000109-EE               PAKISTAN                       <48 cm             0       40      90
6 months    ki1000109-EE               PAKISTAN                       <48 cm             1        3      90
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm         0       21      90
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm         1        4      90
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm            0        4      17
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm            1        0      17
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm             0        6      17
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm             1        0      17
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm         0        6      17
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm         1        1      17
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm            0      176    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm            1       20    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm             0      594    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm             1      114    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm         0      388    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm         1       30    1322
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm            0       24     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm            1        1     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm             0       76     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm             1        7     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm         0       62     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm         1        8     178
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm            0      138     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm            1        2     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm             0      191     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm             1       15     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm         0      229     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm         1        7     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm            0      161     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm            1        3     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm             0      260     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm             1       10     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm         0      273     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm         1        8     715
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm            0      653    1347
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm            1       24    1347
6 months    ki1101329-Keneba           GAMBIA                         <48 cm             0      221    1347
6 months    ki1101329-Keneba           GAMBIA                         <48 cm             1       13    1347
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm         0      399    1347
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm         1       37    1347
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm            0        0       1
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm            1        0       1
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm             0        1       1
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm             1        0       1
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm         0        0       1
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm         1        0       1
6 months    ki1114097-CMIN             BRAZIL                         >=50 cm            0       57     104
6 months    ki1114097-CMIN             BRAZIL                         >=50 cm            1        1     104
6 months    ki1114097-CMIN             BRAZIL                         <48 cm             0       13     104
6 months    ki1114097-CMIN             BRAZIL                         <48 cm             1        0     104
6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm         0       33     104
6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm         1        0     104
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm            0        0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm            1        0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm             0        1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm             1        0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm         0        1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm         1        0       2
6 months    ki1114097-CMIN             PERU                           >=50 cm            0       12      14
6 months    ki1114097-CMIN             PERU                           >=50 cm            1        0      14
6 months    ki1114097-CMIN             PERU                           <48 cm             0        0      14
6 months    ki1114097-CMIN             PERU                           <48 cm             1        1      14
6 months    ki1114097-CMIN             PERU                           [48-50) cm         0        1      14
6 months    ki1114097-CMIN             PERU                           [48-50) cm         1        0      14
6 months    ki1114097-CONTENT          PERU                           >=50 cm            0        1       2
6 months    ki1114097-CONTENT          PERU                           >=50 cm            1        0       2
6 months    ki1114097-CONTENT          PERU                           <48 cm             0        1       2
6 months    ki1114097-CONTENT          PERU                           <48 cm             1        0       2
6 months    ki1114097-CONTENT          PERU                           [48-50) cm         0        0       2
6 months    ki1114097-CONTENT          PERU                           [48-50) cm         1        0       2
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm            0    14181   15757
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm            1      111   15757
6 months    ki1119695-PROBIT           BELARUS                        <48 cm             0      171   15757
6 months    ki1119695-PROBIT           BELARUS                        <48 cm             1        1   15757
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm         0     1275   15757
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm         1       18   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm            0     2329    8175
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm            1       63    8175
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm             0     2500    8175
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm             1       82    8175
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm         0     3084    8175
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm         1      117    8175
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm            0      343     689
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm            1        8     689
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm             0      130     689
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm             1        4     689
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm         0      194     689
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm         1       10     689
6 months    ki1135781-COHORTS          INDIA                          >=50 cm            0     1213    6127
6 months    ki1135781-COHORTS          INDIA                          >=50 cm            1      116    6127
6 months    ki1135781-COHORTS          INDIA                          <48 cm             0     2121    6127
6 months    ki1135781-COHORTS          INDIA                          <48 cm             1      406    6127
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm         0     2003    6127
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm         1      268    6127
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm            0      944    2699
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm            1       45    2699
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm             0      633    2699
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm             1       44    2699
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm         0      962    2699
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm         1       71    2699
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm            0     2244   16480
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm            1      179   16480
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm             0     9349   16480
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm             1      933   16480
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm         0     3492   16480
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm         1      283   16480
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm            0     1049    4024
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm            1       52    4024
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm             0     1815    4024
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm             1      112    4024
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm         0      946    4024
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm         1       50    4024
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm            0       25     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm            1        3     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm             0       92     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm             1       10     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm         0       70     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm         1        7     207
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm            0       21     139
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm            1        0     139
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm             0       56     139
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm             1        1     139
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm         0       60     139
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm         1        1     139
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm            0       23     184
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm            1        0     184
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm             0       78     184
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm             1       17     184
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm         0       59     184
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm         1        7     184
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm            0       36     165
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm            1        0     165
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm             0       63     165
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm             1        2     165
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm         0       62     165
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm         1        2     165
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm            0       23     191
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm            1        0     191
24 months   ki0047075b-MAL-ED          PERU                           <48 cm             0       97     191
24 months   ki0047075b-MAL-ED          PERU                           <48 cm             1        3     191
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm         0       68     191
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm         1        0     191
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm            0       35     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm            1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm             0       83     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm             1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm         0       82     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm         1        1     201
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm            0       12     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm            1        0     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm             0       49     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm             1        0     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm         0       41     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm         1        1     103
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm            0       15     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm            1        0     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm             0       45     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm             1        4     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm         0       39     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm         1        1     104
24 months   ki1000108-IRC              INDIA                          >=50 cm            0      132     390
24 months   ki1000108-IRC              INDIA                          >=50 cm            1       10     390
24 months   ki1000108-IRC              INDIA                          <48 cm             0      101     390
24 months   ki1000108-IRC              INDIA                          <48 cm             1        9     390
24 months   ki1000108-IRC              INDIA                          [48-50) cm         0      127     390
24 months   ki1000108-IRC              INDIA                          [48-50) cm         1       11     390
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm            0       18     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm            1        2     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm             0       54     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm             1        8     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm         0       48     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm         1        6     136
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm            0      129     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm            1       10     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm             0      175     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm             1       31     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm         0      209     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm         1       24     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm            0      120     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm            1        8     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm             0      178     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm             1       22     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm         0      171     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm         1       15     514
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm            0      491    1066
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm            1       44    1066
24 months   ki1101329-Keneba           GAMBIA                         <48 cm             0      169    1066
24 months   ki1101329-Keneba           GAMBIA                         <48 cm             1       28    1066
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm         0      293    1066
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm         1       41    1066
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            1        0       1
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm             0        1       1
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm             1        0       1
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         1        0       1
24 months   ki1114097-CMIN             PERU                           >=50 cm            0        3       4
24 months   ki1114097-CMIN             PERU                           >=50 cm            1        0       4
24 months   ki1114097-CMIN             PERU                           <48 cm             0        1       4
24 months   ki1114097-CMIN             PERU                           <48 cm             1        0       4
24 months   ki1114097-CMIN             PERU                           [48-50) cm         0        0       4
24 months   ki1114097-CMIN             PERU                           [48-50) cm         1        0       4
24 months   ki1114097-CONTENT          PERU                           >=50 cm            0        1       2
24 months   ki1114097-CONTENT          PERU                           >=50 cm            1        0       2
24 months   ki1114097-CONTENT          PERU                           <48 cm             0        1       2
24 months   ki1114097-CONTENT          PERU                           <48 cm             1        0       2
24 months   ki1114097-CONTENT          PERU                           [48-50) cm         0        0       2
24 months   ki1114097-CONTENT          PERU                           [48-50) cm         1        0       2
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm            0     3585    3971
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm            1       38    3971
24 months   ki1119695-PROBIT           BELARUS                        <48 cm             0       44    3971
24 months   ki1119695-PROBIT           BELARUS                        <48 cm             1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm         0      298    3971
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm         1        6    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm            0       33     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm            1        9     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm             0      209     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm             1       41     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm         0      100     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm         1       25     417
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm            0      261     564
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm            1        3     564
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm             0      110     564
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm             1       12     564
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm         0      174     564
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm         1        4     564
24 months   ki1135781-COHORTS          INDIA                          >=50 cm            0      983    4722
24 months   ki1135781-COHORTS          INDIA                          >=50 cm            1       52    4722
24 months   ki1135781-COHORTS          INDIA                          <48 cm             0     1686    4722
24 months   ki1135781-COHORTS          INDIA                          <48 cm             1      242    4722
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm         0     1624    4722
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm         1      135    4722
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm            0      855    2446
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm            1       40    2446
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm             0      546    2446
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm             1       63    2446
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm         0      878    2446
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm         1       64    2446
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm            0      958    8415
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm            1      208    8415
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm             0     3995    8415
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm             1     1282    8415
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm         0     1625    8415
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm         1      347    8415
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm            0      883    3974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm            1      191    3974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm             0     1489    3974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm             1      448    3974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm         0      802    3974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm         1      161    3974


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

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




# Results Detail

## Results Plots
![](/tmp/5d16386d-c28f-420c-bbb0-7e906619aae2/2c542e25-c276-422b-bcbf-efb12ef08ee0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5d16386d-c28f-420c-bbb0-7e906619aae2/2c542e25-c276-422b-bcbf-efb12ef08ee0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5d16386d-c28f-420c-bbb0-7e906619aae2/2c542e25-c276-422b-bcbf-efb12ef08ee0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5d16386d-c28f-420c-bbb0-7e906619aae2/2c542e25-c276-422b-bcbf-efb12ef08ee0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH     >=50 cm              NA                0.3266842    0.1431638   0.5102045
Birth       ki0047075b-MAL-ED         BANGLADESH     <48 cm               NA                0.1435698    0.0820715   0.2050681
Birth       ki0047075b-MAL-ED         BANGLADESH     [48-50) cm           NA                0.1387936    0.0645264   0.2130607
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   >=50 cm              NA                0.1304348    0.0329223   0.2279473
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   <48 cm               NA                0.0458716    0.0065208   0.0852223
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   [48-50) cm           NA                0.0679612    0.0192621   0.1166602
Birth       ki1000108-IRC             INDIA          >=50 cm              NA                0.4966276    0.4065109   0.5867442
Birth       ki1000108-IRC             INDIA          <48 cm               NA                0.1295475    0.0608611   0.1982339
Birth       ki1000108-IRC             INDIA          [48-50) cm           NA                0.1532741    0.0920182   0.2145299
Birth       ki1101329-Keneba          GAMBIA         >=50 cm              NA                0.0209790    0.0104706   0.0314874
Birth       ki1101329-Keneba          GAMBIA         <48 cm               NA                0.0239044    0.0050006   0.0428082
Birth       ki1101329-Keneba          GAMBIA         [48-50) cm           NA                0.0153173    0.0040536   0.0265810
Birth       ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                0.2536632    0.2401452   0.2671812
Birth       ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               NA                0.0976992    0.0879838   0.1074146
Birth       ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           NA                0.1330662    0.1238618   0.1422705
Birth       ki1135781-COHORTS         GUATEMALA      >=50 cm              NA                0.3414720    0.2947282   0.3882158
Birth       ki1135781-COHORTS         GUATEMALA      <48 cm               NA                0.0895570    0.0403354   0.1387787
Birth       ki1135781-COHORTS         GUATEMALA      [48-50) cm           NA                0.1871567    0.1352879   0.2390255
Birth       ki1135781-COHORTS         INDIA          >=50 cm              NA                0.2202746    0.1985643   0.2419848
Birth       ki1135781-COHORTS         INDIA          <48 cm               NA                0.1535902    0.1388096   0.1683708
Birth       ki1135781-COHORTS         INDIA          [48-50) cm           NA                0.1776061    0.1621337   0.1930785
Birth       ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                0.2246142    0.2001645   0.2490639
Birth       ki1135781-COHORTS         PHILIPPINES    <48 cm               NA                0.1179747    0.0931902   0.1427593
Birth       ki1135781-COHORTS         PHILIPPINES    [48-50) cm           NA                0.1101097    0.0918938   0.1283255
Birth       kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                0.1330813    0.1110040   0.1551586
Birth       kiGH5241-JiVitA-3         BANGLADESH     <48 cm               NA                0.0922442    0.0860186   0.0984698
Birth       kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           NA                0.0980637    0.0881327   0.1079948
Birth       kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                0.1388889   -0.0232300   0.3010078
Birth       kiGH5241-JiVitA-4         BANGLADESH     <48 cm               NA                0.0521739    0.0314379   0.0729099
Birth       kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           NA                0.0374332    0.0020896   0.0727768
6 months    ki1000108-IRC             INDIA          >=50 cm              NA                0.1552561    0.0936028   0.2169093
6 months    ki1000108-IRC             INDIA          <48 cm               NA                0.1039626    0.0448271   0.1630980
6 months    ki1000108-IRC             INDIA          [48-50) cm           NA                0.1237804    0.0668265   0.1807344
6 months    ki1000304b-SAS-CompFeed   INDIA          >=50 cm              NA                0.1020626    0.0636422   0.1404830
6 months    ki1000304b-SAS-CompFeed   INDIA          <48 cm               NA                0.1571129    0.1279289   0.1862969
6 months    ki1000304b-SAS-CompFeed   INDIA          [48-50) cm           NA                0.0710854    0.0360939   0.1060770
6 months    ki1101329-Keneba          GAMBIA         >=50 cm              NA                0.0350845    0.0211291   0.0490398
6 months    ki1101329-Keneba          GAMBIA         <48 cm               NA                0.0547832    0.0254901   0.0840764
6 months    ki1101329-Keneba          GAMBIA         [48-50) cm           NA                0.0868324    0.0602590   0.1134057
6 months    ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                0.0264502    0.0199546   0.0329459
6 months    ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               NA                0.0324227    0.0255585   0.0392869
6 months    ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           NA                0.0364650    0.0299235   0.0430064
6 months    ki1135781-COHORTS         INDIA          >=50 cm              NA                0.0872270    0.0718248   0.1026292
6 months    ki1135781-COHORTS         INDIA          <48 cm               NA                0.1609817    0.1465523   0.1754111
6 months    ki1135781-COHORTS         INDIA          [48-50) cm           NA                0.1183603    0.1048435   0.1318771
6 months    ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                0.0442719    0.0313291   0.0572148
6 months    ki1135781-COHORTS         PHILIPPINES    <48 cm               NA                0.0677965    0.0489292   0.0866638
6 months    ki1135781-COHORTS         PHILIPPINES    [48-50) cm           NA                0.0691942    0.0536456   0.0847427
6 months    kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                0.0739605    0.0616593   0.0862616
6 months    kiGH5241-JiVitA-3         BANGLADESH     <48 cm               NA                0.0913524    0.0850958   0.0976091
6 months    kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           NA                0.0726380    0.0639078   0.0813682
6 months    kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                0.0469007    0.0316452   0.0621562
6 months    kiGH5241-JiVitA-4         BANGLADESH     <48 cm               NA                0.0581155    0.0416090   0.0746220
6 months    kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           NA                0.0504843    0.0348902   0.0660783
24 months   ki1000108-IRC             INDIA          >=50 cm              NA                0.0704225    0.0282859   0.1125592
24 months   ki1000108-IRC             INDIA          <48 cm               NA                0.0818182    0.0305322   0.1331041
24 months   ki1000108-IRC             INDIA          [48-50) cm           NA                0.0797101    0.0344636   0.1249567
24 months   ki1017093b-PROVIDE        BANGLADESH     >=50 cm              NA                0.0704075    0.0274282   0.1133869
24 months   ki1017093b-PROVIDE        BANGLADESH     <48 cm               NA                0.1523300    0.1029268   0.2017331
24 months   ki1017093b-PROVIDE        BANGLADESH     [48-50) cm           NA                0.1037634    0.0641526   0.1433742
24 months   ki1017093c-NIH-Crypto     BANGLADESH     >=50 cm              NA                0.0625000    0.0205249   0.1044751
24 months   ki1017093c-NIH-Crypto     BANGLADESH     <48 cm               NA                0.1100000    0.0665942   0.1534058
24 months   ki1017093c-NIH-Crypto     BANGLADESH     [48-50) cm           NA                0.0806452    0.0414759   0.1198144
24 months   ki1101329-Keneba          GAMBIA         >=50 cm              NA                0.0811278    0.0578852   0.1043703
24 months   ki1101329-Keneba          GAMBIA         <48 cm               NA                0.1460607    0.0970829   0.1950385
24 months   ki1101329-Keneba          GAMBIA         [48-50) cm           NA                0.1235608    0.0882461   0.1588755
24 months   ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                0.2142857    0.0900422   0.3385292
24 months   ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               NA                0.1640000    0.1180459   0.2099541
24 months   ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           NA                0.2000000    0.1297940   0.2702060
24 months   ki1135781-COHORTS         INDIA          >=50 cm              NA                0.0476577    0.0346113   0.0607042
24 months   ki1135781-COHORTS         INDIA          <48 cm               NA                0.1282894    0.1134414   0.1431375
24 months   ki1135781-COHORTS         INDIA          [48-50) cm           NA                0.0769793    0.0644033   0.0895552
24 months   ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                0.0436281    0.0301448   0.0571114
24 months   ki1135781-COHORTS         PHILIPPINES    <48 cm               NA                0.1058291    0.0815467   0.1301115
24 months   ki1135781-COHORTS         PHILIPPINES    [48-50) cm           NA                0.0684395    0.0523109   0.0845681
24 months   kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                0.1737752    0.1493143   0.1982361
24 months   kiGH5241-JiVitA-3         BANGLADESH     <48 cm               NA                0.2440994    0.2310034   0.2571954
24 months   kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           NA                0.1744938    0.1566158   0.1923718
24 months   kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                0.1767409    0.1488216   0.2046602
24 months   kiGH5241-JiVitA-4         BANGLADESH     <48 cm               NA                0.2329800    0.2106454   0.2553147
24 months   kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           NA                0.1662110    0.1388583   0.1935636


### Parameter: E(Y)


agecat      studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.1659751   0.1189041   0.2130461
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   NA                   NA                0.0697674   0.0386213   0.1009135
Birth       ki1000108-IRC             INDIA          NA                   NA                0.2682216   0.2212677   0.3151755
Birth       ki1101329-Keneba          GAMBIA         NA                   NA                0.0196767   0.0124580   0.0268954
Birth       ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.1594921   0.1531776   0.1658066
Birth       ki1135781-COHORTS         GUATEMALA      NA                   NA                0.2539683   0.2229196   0.2850169
Birth       ki1135781-COHORTS         INDIA          NA                   NA                0.1769740   0.1674681   0.1864799
Birth       ki1135781-COHORTS         PHILIPPINES    NA                   NA                0.1555709   0.1423748   0.1687670
Birth       kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0958686   0.0906699   0.1010673
Birth       kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.0527086   0.0336587   0.0717585
6 months    ki1000108-IRC             INDIA          NA                   NA                0.1362468   0.1021125   0.1703810
6 months    ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.1240545   0.0993302   0.1487787
6 months    ki1101329-Keneba          GAMBIA         NA                   NA                0.0549369   0.0427642   0.0671096
6 months    ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0320489   0.0282307   0.0358672
6 months    ki1135781-COHORTS         INDIA          NA                   NA                0.1289375   0.1205453   0.1373297
6 months    ki1135781-COHORTS         PHILIPPINES    NA                   NA                0.0592812   0.0503704   0.0681920
6 months    kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0846481   0.0797900   0.0895061
6 months    kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.0531809   0.0435210   0.0628408
24 months   ki1000108-IRC             INDIA          NA                   NA                0.0769231   0.0504429   0.1034032
24 months   ki1017093b-PROVIDE        BANGLADESH     NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1101329-Keneba          GAMBIA         NA                   NA                0.1060038   0.0875152   0.1244923
24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.1798561   0.1429491   0.2167631
24 months   ki1135781-COHORTS         INDIA          NA                   NA                0.0908513   0.0826532   0.0990495
24 months   ki1135781-COHORTS         PHILIPPINES    NA                   NA                0.0682747   0.0582774   0.0782720
24 months   kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.2183007   0.2083024   0.2282989
24 months   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.2013085   0.1867334   0.2158836


### Parameter: RR


agecat      studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH     <48 cm               >=50 cm           0.4394758   0.2163291   0.8928018
Birth       ki0047075b-MAL-ED         BANGLADESH     [48-50) cm           >=50 cm           0.4248555   0.1960462   0.9207127
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   <48 cm               >=50 cm           0.3516820   0.1127118   1.0973137
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   [48-50) cm           >=50 cm           0.5210356   0.1849829   1.4675846
Birth       ki1000108-IRC             INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC             INDIA          <48 cm               >=50 cm           0.2608544   0.1488507   0.4571360
Birth       ki1000108-IRC             INDIA          [48-50) cm           >=50 cm           0.3086299   0.1986496   0.4794996
Birth       ki1101329-Keneba          GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba          GAMBIA         <48 cm               >=50 cm           1.1394422   0.4468382   2.9055903
Birth       ki1101329-Keneba          GAMBIA         [48-50) cm           >=50 cm           0.7301240   0.2999046   1.7775020
Birth       ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               >=50 cm           0.3851532   0.3440849   0.4311231
Birth       ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           >=50 cm           0.5245781   0.4807812   0.5723647
Birth       ki1135781-COHORTS         GUATEMALA      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         GUATEMALA      <48 cm               >=50 cm           0.2622676   0.1487724   0.4623457
Birth       ki1135781-COHORTS         GUATEMALA      [48-50) cm           >=50 cm           0.5480882   0.4024914   0.7463528
Birth       ki1135781-COHORTS         INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         INDIA          <48 cm               >=50 cm           0.6972670   0.6076515   0.8000988
Birth       ki1135781-COHORTS         INDIA          [48-50) cm           >=50 cm           0.8062941   0.7070067   0.9195248
Birth       ki1135781-COHORTS         PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         PHILIPPINES    <48 cm               >=50 cm           0.5252328   0.4147467   0.6651517
Birth       ki1135781-COHORTS         PHILIPPINES    [48-50) cm           >=50 cm           0.4902169   0.4022819   0.5973735
Birth       kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH     <48 cm               >=50 cm           0.6931417   0.5808093   0.8271998
Birth       kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           >=50 cm           0.7368706   0.6103389   0.8896341
Birth       kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH     <48 cm               >=50 cm           0.3756522   0.1094653   1.2891256
Birth       kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           >=50 cm           0.2695187   0.0599227   1.2122333
6 months    ki1000108-IRC             INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC             INDIA          <48 cm               >=50 cm           0.6696201   0.3346964   1.3396948
6 months    ki1000108-IRC             INDIA          [48-50) cm           >=50 cm           0.7972664   0.4341409   1.4641183
6 months    ki1000304b-SAS-CompFeed   INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA          <48 cm               >=50 cm           1.5393780   0.9456514   2.5058756
6 months    ki1000304b-SAS-CompFeed   INDIA          [48-50) cm           >=50 cm           0.6964887   0.3715238   1.3056942
6 months    ki1101329-Keneba          GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba          GAMBIA         <48 cm               >=50 cm           1.5614672   0.8016018   3.0416349
6 months    ki1101329-Keneba          GAMBIA         [48-50) cm           >=50 cm           2.4749530   1.4982426   4.0883848
6 months    ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               >=50 cm           1.2258016   0.8863135   1.6953252
6 months    ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           >=50 cm           1.3786269   1.0170504   1.8687492
6 months    ki1135781-COHORTS         INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         INDIA          <48 cm               >=50 cm           1.8455493   1.5140302   2.2496593
6 months    ki1135781-COHORTS         INDIA          [48-50) cm           >=50 cm           1.3569232   1.0996399   1.6744032
6 months    ki1135781-COHORTS         PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         PHILIPPINES    <48 cm               >=50 cm           1.5313645   1.0231883   2.2919312
6 months    ki1135781-COHORTS         PHILIPPINES    [48-50) cm           >=50 cm           1.5629354   1.0812707   2.2591632
6 months    kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH     <48 cm               >=50 cm           1.2351523   1.0397838   1.4672292
6 months    kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           >=50 cm           0.9821191   0.7996543   1.2062186
6 months    kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH     <48 cm               >=50 cm           1.2391184   0.8031540   1.9117311
6 months    kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           >=50 cm           1.0764080   0.7005077   1.6540205
24 months   ki1000108-IRC             INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC             INDIA          <48 cm               >=50 cm           1.1618182   0.4884231   2.7636315
24 months   ki1000108-IRC             INDIA          [48-50) cm           >=50 cm           1.1318841   0.4961517   2.5821974
24 months   ki1017093b-PROVIDE        BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH     <48 cm               >=50 cm           2.1635469   1.0844052   4.3165921
24 months   ki1017093b-PROVIDE        BANGLADESH     [48-50) cm           >=50 cm           1.4737547   0.7169541   3.0294169
24 months   ki1017093c-NIH-Crypto     BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH     <48 cm               >=50 cm           1.7600000   0.8076459   3.8353442
24 months   ki1017093c-NIH-Crypto     BANGLADESH     [48-50) cm           >=50 cm           1.2903226   0.5633055   2.9556475
24 months   ki1101329-Keneba          GAMBIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba          GAMBIA         <48 cm               >=50 cm           1.8003786   1.1587656   2.7972550
24 months   ki1101329-Keneba          GAMBIA         [48-50) cm           >=50 cm           1.5230392   1.0161003   2.2828933
24 months   ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE       <48 cm               >=50 cm           0.7653333   0.4019584   1.4572033
24 months   ki1126311-ZVITAMBO        ZIMBABWE       [48-50) cm           >=50 cm           0.9333333   0.4738906   1.8382115
24 months   ki1135781-COHORTS         INDIA          >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS         INDIA          <48 cm               >=50 cm           2.6918916   2.0002376   3.6227098
24 months   ki1135781-COHORTS         INDIA          [48-50) cm           >=50 cm           1.6152527   1.1744714   2.2214601
24 months   ki1135781-COHORTS         PHILIPPINES    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS         PHILIPPINES    <48 cm               >=50 cm           2.4257103   1.6510750   3.5637815
24 months   ki1135781-COHORTS         PHILIPPINES    [48-50) cm           >=50 cm           1.5687025   1.0636996   2.3134608
24 months   kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH     <48 cm               >=50 cm           1.4046850   1.2056019   1.6366430
24 months   kiGH5241-JiVitA-3         BANGLADESH     [48-50) cm           >=50 cm           1.0041352   0.8411251   1.1987366
24 months   kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH     <48 cm               >=50 cm           1.3182009   1.0936084   1.5889175
24 months   kiGH5241-JiVitA-4         BANGLADESH     [48-50) cm           >=50 cm           0.9404215   0.7491581   1.1805152


### Parameter: PAR


agecat      studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH     >=50 cm              NA                -0.1607090   -0.3290451    0.0076270
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   >=50 cm              NA                -0.0606673   -0.1448580    0.0235233
Birth       ki1000108-IRC             INDIA          >=50 cm              NA                -0.2284060   -0.2978953   -0.1589167
Birth       ki1101329-Keneba          GAMBIA         >=50 cm              NA                -0.0013023   -0.0084833    0.0058787
Birth       ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                -0.0941711   -0.1047284   -0.0836138
Birth       ki1135781-COHORTS         GUATEMALA      >=50 cm              NA                -0.0875037   -0.1167994   -0.0582081
Birth       ki1135781-COHORTS         INDIA          >=50 cm              NA                -0.0433006   -0.0621031   -0.0244981
Birth       ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                -0.0690433   -0.0867775   -0.0513091
Birth       kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                -0.0372127   -0.0581285   -0.0162969
Birth       kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                -0.0861803   -0.2405764    0.0682159
6 months    ki1000108-IRC             INDIA          >=50 cm              NA                -0.0190093   -0.0664063    0.0283878
6 months    ki1000304b-SAS-CompFeed   INDIA          >=50 cm              NA                 0.0219919   -0.0257415    0.0697253
6 months    ki1101329-Keneba          GAMBIA         >=50 cm              NA                 0.0198524    0.0076934    0.0320115
6 months    ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                 0.0055987   -0.0000974    0.0112949
6 months    ki1135781-COHORTS         INDIA          >=50 cm              NA                 0.0417105    0.0272874    0.0561336
6 months    ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                 0.0150093    0.0038847    0.0261339
6 months    kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                 0.0106876   -0.0003701    0.0217452
6 months    kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                 0.0062802   -0.0075481    0.0201086
24 months   ki1000108-IRC             INDIA          >=50 cm              NA                 0.0065005   -0.0279054    0.0409065
24 months   ki1017093b-PROVIDE        BANGLADESH     >=50 cm              NA                 0.0420492    0.0017043    0.0823942
24 months   ki1017093c-NIH-Crypto     BANGLADESH     >=50 cm              NA                 0.0250486   -0.0134555    0.0635528
24 months   ki1101329-Keneba          GAMBIA         >=50 cm              NA                 0.0248760    0.0064941    0.0432579
24 months   ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                -0.0344296   -0.1514299    0.0825707
24 months   ki1135781-COHORTS         INDIA          >=50 cm              NA                 0.0431936    0.0304884    0.0558989
24 months   ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                 0.0246466    0.0124734    0.0368199
24 months   kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                 0.0445254    0.0207982    0.0682527
24 months   kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                 0.0245676    0.0004026    0.0487325


### Parameter: PAF


agecat      studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH     >=50 cm              NA                -0.9682720   -2.2665269   -0.1859981
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   >=50 cm              NA                -0.8695652   -2.4787419   -0.0047523
Birth       ki1000108-IRC             INDIA          >=50 cm              NA                -0.8515571   -1.1498035   -0.5946870
Birth       ki1101329-Keneba          GAMBIA         >=50 cm              NA                -0.0661838   -0.5002825    0.2423108
Birth       ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                -0.5904437   -0.6565821   -0.5269459
Birth       ki1135781-COHORTS         GUATEMALA      >=50 cm              NA                -0.3445458   -0.4642165   -0.2346558
Birth       ki1135781-COHORTS         INDIA          >=50 cm              NA                -0.2446720   -0.3553693   -0.1430157
Birth       ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                -0.4438062   -0.5596185   -0.3365938
Birth       kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                -0.3881637   -0.6230042   -0.1873035
Birth       kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                -1.6350309   -6.5555927    0.0810267
6 months    ki1000108-IRC             INDIA          >=50 cm              NA                -0.1395208   -0.5430051    0.1584553
6 months    ki1000304b-SAS-CompFeed   INDIA          >=50 cm              NA                 0.1772760   -0.2816767    0.4718834
6 months    ki1101329-Keneba          GAMBIA         >=50 cm              NA                 0.3613681    0.1154702    0.5389067
6 months    ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                 0.1746928   -0.0222701    0.3337065
6 months    ki1135781-COHORTS         INDIA          >=50 cm              NA                 0.3234940    0.2037575    0.4252250
6 months    ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                 0.2531878    0.0437050    0.4167820
6 months    kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                 0.1262591   -0.0153010    0.2480819
6 months    kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                 0.1180919   -0.1799106    0.3408299
24 months   ki1000108-IRC             INDIA          >=50 cm              NA                 0.0845070   -0.4909232    0.4378467
24 months   ki1017093b-PROVIDE        BANGLADESH     >=50 cm              NA                 0.3739147   -0.0960007    0.6423517
24 months   ki1017093c-NIH-Crypto     BANGLADESH     >=50 cm              NA                 0.2861111   -0.3102198    0.6110291
24 months   ki1101329-Keneba          GAMBIA         >=50 cm              NA                 0.2346706    0.0445597    0.3869537
24 months   ki1126311-ZVITAMBO        ZIMBABWE       >=50 cm              NA                -0.1914286   -1.0558290    0.3095233
24 months   ki1135781-COHORTS         INDIA          >=50 cm              NA                 0.4754317    0.3223934    0.5939062
24 months   ki1135781-COHORTS         PHILIPPINES    >=50 cm              NA                 0.3609922    0.1641400    0.5114841
24 months   kiGH5241-JiVitA-3         BANGLADESH     >=50 cm              NA                 0.2039638    0.0885049    0.3047976
24 months   kiGH5241-JiVitA-4         BANGLADESH     >=50 cm              NA                 0.1220394   -0.0067231    0.2343329
