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
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm            0       30     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm            1        9     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm             0       81     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm             1       16     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm         0       68     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm         1       11     215
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm            0       30      62
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm            1        0      62
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm             0       13      62
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm             1        1      62
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm         0       17      62
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm         1        1      62
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm            0        8      45
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm            1        1      45
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm             0       16      45
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm             1        2      45
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm         0       16      45
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm         1        2      45
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm            0        8      26
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm            1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm             0        9      26
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm             1        2      26
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm         0        7      26
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm         1        0      26
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm            0       51     228
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm            1        1     228
Birth       ki0047075b-MAL-ED          PERU                           <48 cm             0       81     228
Birth       ki0047075b-MAL-ED          PERU                           <48 cm             1        2     228
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm         0       91     228
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm         1        2     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm            0       37     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm            1        6     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm             0       30     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm             1        1     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm         0       41     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm         1        5     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm            0       32     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm            1        0     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm             0       31     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm             1        1     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm         0       51     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm         1        0     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm            0       12      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm            1        1      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm             0       27      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm             1        6      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm         0       36      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm         1        4      86
Birth       ki1000108-IRC              INDIA                          >=50 cm            0       61     343
Birth       ki1000108-IRC              INDIA                          >=50 cm            1       59     343
Birth       ki1000108-IRC              INDIA                          <48 cm             0       75     343
Birth       ki1000108-IRC              INDIA                          <48 cm             1       12     343
Birth       ki1000108-IRC              INDIA                          [48-50) cm         0      115     343
Birth       ki1000108-IRC              INDIA                          [48-50) cm         1       21     343
Birth       ki1000109-EE               PAKISTAN                       >=50 cm            0       17     177
Birth       ki1000109-EE               PAKISTAN                       >=50 cm            1        4     177
Birth       ki1000109-EE               PAKISTAN                       <48 cm             0       92     177
Birth       ki1000109-EE               PAKISTAN                       <48 cm             1       10     177
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm         0       46     177
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm         1        8     177
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm            0       10      38
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm            1        2      38
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm             0       10      38
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm             1        2      38
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm         0       14      38
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm         1        0      38
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm            0      102    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm            1       14    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm             0      522    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm             1       68    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm         0      361    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm         1       36    1103
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm            0       91     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm            1       45     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm             0      147     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm             1       64     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm         0      169     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm         1       59     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm            0       92     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm            1       29     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     <48 cm             0      141     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     <48 cm             1       48     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm         0      182     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm         1       40     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm            0      115     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm            1       45     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm             0      208     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm             1       59     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm         0      212     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm         1       68     707
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm            0      491    1465
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm            1      245    1465
Birth       ki1101329-Keneba           GAMBIA                         <48 cm             0      208    1465
Birth       ki1101329-Keneba           GAMBIA                         <48 cm             1       32    1465
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm         0      403    1465
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm         1       86    1465
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm            0       84     641
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm            1       30     641
Birth       ki1113344-GMS-Nepal        NEPAL                          <48 cm             0      262     641
Birth       ki1113344-GMS-Nepal        NEPAL                          <48 cm             1       57     641
Birth       ki1113344-GMS-Nepal        NEPAL                          [48-50) cm         0      163     641
Birth       ki1113344-GMS-Nepal        NEPAL                          [48-50) cm         1       45     641
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm            0        1      19
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm            1        1      19
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm             0        6      19
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm             1        3      19
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm         0        8      19
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm         1        0      19
Birth       ki1114097-CONTENT          PERU                           >=50 cm            0        1       2
Birth       ki1114097-CONTENT          PERU                           >=50 cm            1        0       2
Birth       ki1114097-CONTENT          PERU                           <48 cm             0        1       2
Birth       ki1114097-CONTENT          PERU                           <48 cm             1        0       2
Birth       ki1114097-CONTENT          PERU                           [48-50) cm         0        0       2
Birth       ki1114097-CONTENT          PERU                           [48-50) cm         1        0       2
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm            0     9774   13830
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm            1     2796   13830
Birth       ki1119695-PROBIT           BELARUS                        <48 cm             0      140   13830
Birth       ki1119695-PROBIT           BELARUS                        <48 cm             1        0   13830
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm         0     1029   13830
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm         1       91   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm            0     3006   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm            1      991   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm             0     3276   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm             1      365   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm         0     4574   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm         1      705   12917
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm            0     1055   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm            1      188   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm             0    10477   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm             1     1215   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm         0     4509   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm         1      570   18014
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm            0      150    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm            1       28    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm             0     1350    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm             1      137    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm         0      657    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm         1       74    2396
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm            0       37     211
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm            1        2     211
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm             0       95     211
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm             1        3     211
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm         0       72     211
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm         1        2     211
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm            0       28      59
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm            1        0      59
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm             0       15      59
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm             1        0      59
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm         0       16      59
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm         1        0      59
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm            0        7      41
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm            1        1      41
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm             0       17      41
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm             1        1      41
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm         0       14      41
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm         1        1      41
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm            0        7      26
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm            1        1      26
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm             0       11      26
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm             1        0      26
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm         0        7      26
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm         1        0      26
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm            0       48     215
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm            1        0     215
6 months    ki0047075b-MAL-ED          PERU                           <48 cm             0       84     215
6 months    ki0047075b-MAL-ED          PERU                           <48 cm             1        0     215
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm         0       83     215
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm         1        0     215
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm            0       33      93
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm            1        1      93
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm             0       20      93
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm             1        1      93
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm         0       34      93
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm         1        4      93
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm            0       31     118
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm            1        0     118
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm             0       39     118
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm             1        0     118
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm         0       48     118
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm         1        0     118
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm            0       15     105
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm            1        1     105
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm             0       41     105
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm             1        8     105
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm         0       36     105
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm         1        4     105
6 months    ki1000108-IRC              INDIA                          >=50 cm            0      118     389
6 months    ki1000108-IRC              INDIA                          >=50 cm            1       23     389
6 months    ki1000108-IRC              INDIA                          <48 cm             0       98     389
6 months    ki1000108-IRC              INDIA                          <48 cm             1       12     389
6 months    ki1000108-IRC              INDIA                          [48-50) cm         0      120     389
6 months    ki1000108-IRC              INDIA                          [48-50) cm         1       18     389
6 months    ki1000109-EE               PAKISTAN                       >=50 cm            0       21     238
6 months    ki1000109-EE               PAKISTAN                       >=50 cm            1        3     238
6 months    ki1000109-EE               PAKISTAN                       <48 cm             0      140     238
6 months    ki1000109-EE               PAKISTAN                       <48 cm             1       22     238
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm         0       47     238
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm         1        5     238
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm            0       10      34
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm            1        0      34
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm             0       13      34
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm             1        0      34
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm         0        9      34
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm         1        2      34
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm            0      176    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm            1       20    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm             0      594    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm             1      114    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm         0      388    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm         1       30    1322
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm            0      113     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm            1        7     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm             0      182     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm             1       17     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm         0      188     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm         1       11     518
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm            0      141     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm            1        2     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm             0      197     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm             1       16     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm         0      240     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm         1        7     603
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
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm            0       89     563
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm            1        7     563
6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm             0      268     563
6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm             1       28     563
6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm         0      155     563
6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm         1       16     563
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm            0        0      12
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm            1        0      12
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm             0        6      12
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm             1        0      12
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm         0        5      12
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm         1        1      12
6 months    ki1114097-CONTENT          PERU                           >=50 cm            0        1       2
6 months    ki1114097-CONTENT          PERU                           >=50 cm            1        0       2
6 months    ki1114097-CONTENT          PERU                           <48 cm             0        1       2
6 months    ki1114097-CONTENT          PERU                           <48 cm             1        0       2
6 months    ki1114097-CONTENT          PERU                           [48-50) cm         0        0       2
6 months    ki1114097-CONTENT          PERU                           [48-50) cm         1        0       2
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm            0    14182   15758
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm            1      111   15758
6 months    ki1119695-PROBIT           BELARUS                        <48 cm             0      171   15758
6 months    ki1119695-PROBIT           BELARUS                        <48 cm             1        1   15758
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm         0     1275   15758
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm         1       18   15758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm            0     2398    8413
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm            1       63    8413
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm             0     2575    8413
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm             1       82    8413
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm         0     3178    8413
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm         1      117    8413
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm            0      768   13899
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm            1       58   13899
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm             0     8912   13899
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm             1      894   13899
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm         0     3025   13899
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm         1      242   13899
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm            0     1049    4024
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm            1       52    4024
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm             0     1815    4024
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm             1      112    4024
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm         0      946    4024
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm         1       50    4024
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm            0       35     187
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm            1        4     187
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm             0       71     187
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm             1        9     187
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm         0       62     187
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm         1        6     187
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm            0       20      42
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm            1        0      42
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm             0       10      42
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm             1        0      42
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm         0       11      42
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm         1        1      42
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm            0        6      39
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm            1        0      39
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm             0       13      39
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm             1        5      39
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm         0       12      39
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm         1        3      39
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm            0        8      26
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm            1        0      26
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm             0       11      26
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm             1        0      26
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm         0        6      26
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm         1        1      26
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm            0       34     160
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm            1        0     160
24 months   ki0047075b-MAL-ED          PERU                           <48 cm             0       63     160
24 months   ki0047075b-MAL-ED          PERU                           <48 cm             1        4     160
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm         0       59     160
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm         1        0     160
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm            0       32      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm            1        0      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm             0       21      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm             1        0      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm         0       37      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm         1        1      91
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm            0       29     104
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm            1        0     104
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm             0       32     104
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm             1        2     104
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm         0       40     104
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm         1        1     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm            0       16     106
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm            1        0     106
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm             0       46     106
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm             1        4     106
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm         0       39     106
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm         1        1     106
24 months   ki1000108-IRC              INDIA                          >=50 cm            0      132     390
24 months   ki1000108-IRC              INDIA                          >=50 cm            1       10     390
24 months   ki1000108-IRC              INDIA                          <48 cm             0      101     390
24 months   ki1000108-IRC              INDIA                          <48 cm             1        9     390
24 months   ki1000108-IRC              INDIA                          [48-50) cm         0      127     390
24 months   ki1000108-IRC              INDIA                          [48-50) cm         1       11     390
24 months   ki1000109-EE               PAKISTAN                       >=50 cm            0       10     107
24 months   ki1000109-EE               PAKISTAN                       >=50 cm            1        0     107
24 months   ki1000109-EE               PAKISTAN                       <48 cm             0       60     107
24 months   ki1000109-EE               PAKISTAN                       <48 cm             1       12     107
24 months   ki1000109-EE               PAKISTAN                       [48-50) cm         0       22     107
24 months   ki1000109-EE               PAKISTAN                       [48-50) cm         1        3     107
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm            0       92     413
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm            1        7     413
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm             0      137     413
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm             1       23     413
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm         0      131     413
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm         1       23     413
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm            0      131     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm            1        8     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm             0      176     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm             1       30     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm         0      210     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm         1       24     579
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
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm            0       74     486
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm            1       10     486
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm             0      194     486
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm             1       55     486
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm         0      128     486
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm         1       25     486
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            0        0      11
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            1        0      11
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm             0        5      11
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm             1        0      11
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         0        6      11
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         1        0      11
24 months   ki1114097-CONTENT          PERU                           >=50 cm            0        1       2
24 months   ki1114097-CONTENT          PERU                           >=50 cm            1        0       2
24 months   ki1114097-CONTENT          PERU                           <48 cm             0        1       2
24 months   ki1114097-CONTENT          PERU                           <48 cm             1        0       2
24 months   ki1114097-CONTENT          PERU                           [48-50) cm         0        0       2
24 months   ki1114097-CONTENT          PERU                           [48-50) cm         1        0       2
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm            0     3586    3972
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm            1       38    3972
24 months   ki1119695-PROBIT           BELARUS                        <48 cm             0       44    3972
24 months   ki1119695-PROBIT           BELARUS                        <48 cm             1        0    3972
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm         0      298    3972
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm         1        6    3972
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm            0       33     426
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm            1        9     426
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm             0      214     426
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm             1       44     426
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm         0      101     426
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm         1       25     426
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm            0      346    7159
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm            1       58    7159
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm             0     3832    7159
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm             1     1218    7159
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm         0     1423    7159
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm         1      282    7159
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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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




# Results Detail

## Results Plots
![](/tmp/205b7e30-b010-4aab-a14d-6cf22990a91e/87892aa9-9b5e-49bd-ad9b-171c8a24db66/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/205b7e30-b010-4aab-a14d-6cf22990a91e/87892aa9-9b5e-49bd-ad9b-171c8a24db66/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/205b7e30-b010-4aab-a14d-6cf22990a91e/87892aa9-9b5e-49bd-ad9b-171c8a24db66/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/205b7e30-b010-4aab-a14d-6cf22990a91e/87892aa9-9b5e-49bd-ad9b-171c8a24db66/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH    >=50 cm              NA                0.2307692   0.0982297   0.3633088
Birth       ki0047075b-MAL-ED         BANGLADESH    <48 cm               NA                0.1649485   0.0909189   0.2389780
Birth       ki0047075b-MAL-ED         BANGLADESH    [48-50) cm           NA                0.1392405   0.0627213   0.2157597
Birth       ki1000108-IRC             INDIA         >=50 cm              NA                0.4844817   0.3941815   0.5747818
Birth       ki1000108-IRC             INDIA         <48 cm               NA                0.1331002   0.0589459   0.2072545
Birth       ki1000108-IRC             INDIA         [48-50) cm           NA                0.1549023   0.0933586   0.2164460
Birth       ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.1225963   0.0510530   0.1941396
Birth       ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.1148419   0.0724711   0.1572128
Birth       ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.0904985   0.0718005   0.1091966
Birth       ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.3325550   0.2533940   0.4117160
Birth       ki1017093-NIH-Birth       BANGLADESH    <48 cm               NA                0.3024178   0.2401201   0.3647156
Birth       ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           NA                0.2603183   0.2032373   0.3173993
Birth       ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                0.2276432   0.1538049   0.3014815
Birth       ki1017093b-PROVIDE        BANGLADESH    <48 cm               NA                0.2568941   0.1933167   0.3204715
Birth       ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           NA                0.1811178   0.1303246   0.2319110
Birth       ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              NA                0.2673973   0.1999106   0.3348841
Birth       ki1017093c-NIH-Crypto     BANGLADESH    <48 cm               NA                0.2223575   0.1721950   0.2725201
Birth       ki1017093c-NIH-Crypto     BANGLADESH    [48-50) cm           NA                0.2462788   0.1956709   0.2968868
Birth       ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.3334739   0.2993735   0.3675742
Birth       ki1101329-Keneba          GAMBIA        <48 cm               NA                0.1287196   0.0858466   0.1715926
Birth       ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.1768896   0.1427494   0.2110298
Birth       ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                0.2716752   0.1907626   0.3525879
Birth       ki1113344-GMS-Nepal       NEPAL         <48 cm               NA                0.1763245   0.1341980   0.2184509
Birth       ki1113344-GMS-Nepal       NEPAL         [48-50) cm           NA                0.2161541   0.1594357   0.2728724
Birth       ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.2540595   0.2405224   0.2675966
Birth       ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0975496   0.0878269   0.1072723
Birth       ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.1332574   0.1240498   0.1424649
Birth       ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.3447051   0.2977859   0.3916244
Birth       ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.0913035   0.0414860   0.1411211
Birth       ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.1929596   0.1413567   0.2445625
Birth       ki1135781-COHORTS         INDIA         >=50 cm              NA                0.2188310   0.1971581   0.2405039
Birth       ki1135781-COHORTS         INDIA         <48 cm               NA                0.1531166   0.1383961   0.1678370
Birth       ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.1769663   0.1615793   0.1923534
Birth       ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.2243997   0.1999460   0.2488535
Birth       ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.1195236   0.0945816   0.1444655
Birth       ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.1103865   0.0920795   0.1286935
Birth       kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.1500384   0.1284362   0.1716405
Birth       kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.1032791   0.0971421   0.1094161
Birth       kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.1149192   0.1052636   0.1245748
Birth       kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.1695878   0.0942409   0.2449347
Birth       kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.0929075   0.0740092   0.1118059
Birth       kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.1010701   0.0721463   0.1299938
6 months    ki1000108-IRC             INDIA         >=50 cm              NA                0.1642496   0.1027846   0.2257147
6 months    ki1000108-IRC             INDIA         <48 cm               NA                0.1061769   0.0479067   0.1644470
6 months    ki1000108-IRC             INDIA         [48-50) cm           NA                0.1291367   0.0723469   0.1859266
6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.1020626   0.0636422   0.1404830
6 months    ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.1571129   0.1279289   0.1862969
6 months    ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.0710854   0.0360939   0.1060770
6 months    ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.0583333   0.0163590   0.1003077
6 months    ki1017093-NIH-Birth       BANGLADESH    <48 cm               NA                0.0854271   0.0465541   0.1243002
6 months    ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           NA                0.0552764   0.0234957   0.0870571
6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0355793   0.0215167   0.0496420
6 months    ki1101329-Keneba          GAMBIA        <48 cm               NA                0.0549568   0.0256020   0.0843116
6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.0868724   0.0599564   0.1137883
6 months    ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                0.0729167   0.0208606   0.1249727
6 months    ki1113344-GMS-Nepal       NEPAL         <48 cm               NA                0.0945946   0.0612256   0.1279636
6 months    ki1113344-GMS-Nepal       NEPAL         [48-50) cm           NA                0.0935673   0.0498789   0.1372556
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0256589   0.0193785   0.0319393
6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0318117   0.0250983   0.0385251
6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0353282   0.0289768   0.0416797
6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0870592   0.0718339   0.1022846
6 months    ki1135781-COHORTS         INDIA         <48 cm               NA                0.1609268   0.1465458   0.1753078
6 months    ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.1182448   0.1048323   0.1316572
6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0440942   0.0312235   0.0569649
6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.0677511   0.0489824   0.0865198
6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.0686148   0.0531620   0.0840675
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0738444   0.0531718   0.0945171
6 months    kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.0917331   0.0852811   0.0981852
6 months    kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0705475   0.0605375   0.0805575
6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0468068   0.0315024   0.0621112
6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.0580538   0.0415771   0.0745305
6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0502699   0.0345330   0.0660067
24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.0704225   0.0282859   0.1125592
24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.0818182   0.0305322   0.1331041
24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.0797101   0.0344636   0.1249567
24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.0707071   0.0201520   0.1212621
24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               NA                0.1437500   0.0893225   0.1981775
24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           NA                0.1493506   0.0929878   0.2057135
24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                0.0575540   0.0188030   0.0963049
24 months   ki1017093b-PROVIDE        BANGLADESH    <48 cm               NA                0.1456311   0.0974208   0.1938413
24 months   ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           NA                0.1025641   0.0636583   0.1414700
24 months   ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              NA                0.0625000   0.0205249   0.1044751
24 months   ki1017093c-NIH-Crypto     BANGLADESH    <48 cm               NA                0.1100000   0.0665942   0.1534058
24 months   ki1017093c-NIH-Crypto     BANGLADESH    [48-50) cm           NA                0.0806452   0.0414759   0.1198144
24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0812506   0.0579517   0.1045495
24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.1458904   0.0969570   0.1948238
24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.1234306   0.0882623   0.1585988
24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                0.1171540   0.0484673   0.1858408
24 months   ki1113344-GMS-Nepal       NEPAL         <48 cm               NA                0.2231469   0.1711358   0.2751580
24 months   ki1113344-GMS-Nepal       NEPAL         [48-50) cm           NA                0.1625583   0.1037279   0.2213888
24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.2142857   0.0900454   0.3385261
24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.1705426   0.1245951   0.2164902
24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.1984127   0.1286966   0.2681288
24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0475927   0.0345835   0.0606018
24 months   ki1135781-COHORTS         INDIA         <48 cm               NA                0.1284832   0.1136440   0.1433223
24 months   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.0769378   0.0643437   0.0895319
24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0434323   0.0299638   0.0569009
24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.1052456   0.0810794   0.1294118
24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.0690312   0.0527813   0.0852811
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.1401181   0.1006216   0.1796147
24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.2428901   0.2295694   0.2562109
24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.1619369   0.1432019   0.1806720
24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.1770082   0.1490326   0.2049838
24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.2338589   0.2115067   0.2562110
24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.1659881   0.1384716   0.1935047


### Parameter: E(Y)


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH    NA                   NA                0.1674419   0.1174176   0.2174661
Birth       ki1000108-IRC             INDIA         NA                   NA                0.2682216   0.2212677   0.3151755
Birth       ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.1069810   0.0760961   0.1378659
Birth       ki1017093-NIH-Birth       BANGLADESH    NA                   NA                0.2921739   0.2549711   0.3293768
Birth       ki1017093b-PROVIDE        BANGLADESH    NA                   NA                0.2199248   0.1846953   0.2551543
Birth       ki1017093c-NIH-Crypto     BANGLADESH    NA                   NA                0.2432815   0.2116319   0.2749310
Birth       ki1101329-Keneba          GAMBIA        NA                   NA                0.2477816   0.2256667   0.2698964
Birth       ki1113344-GMS-Nepal       NEPAL         NA                   NA                0.2059282   0.1745993   0.2372572
Birth       ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.1595572   0.1532418   0.1658725
Birth       ki1135781-COHORTS         GUATEMALA     NA                   NA                0.2539683   0.2229196   0.2850169
Birth       ki1135781-COHORTS         INDIA         NA                   NA                0.1769740   0.1674681   0.1864799
Birth       ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.1555709   0.1423748   0.1687670
Birth       kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.1095259   0.1044047   0.1146471
Birth       kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0997496   0.0843744   0.1151247
6 months    ki1000108-IRC             INDIA         NA                   NA                0.1362468   0.1021125   0.1703810
6 months    ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.1240545   0.0993302   0.1487787
6 months    ki1017093-NIH-Birth       BANGLADESH    NA                   NA                0.0675676   0.0459314   0.0892038
6 months    ki1101329-Keneba          GAMBIA        NA                   NA                0.0549369   0.0427642   0.0671096
6 months    ki1113344-GMS-Nepal       NEPAL         NA                   NA                0.0905861   0.0668565   0.1143158
6 months    ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0311423   0.0274303   0.0348542
6 months    ki1135781-COHORTS         INDIA         NA                   NA                0.1289375   0.1205453   0.1373297
6 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0592812   0.0503704   0.0681920
6 months    kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0859055   0.0807379   0.0910730
6 months    kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0531809   0.0435210   0.0628408
24 months   ki1000108-IRC             INDIA         NA                   NA                0.0769231   0.0504429   0.1034032
24 months   ki1017093-NIH-Birth       BANGLADESH    NA                   NA                0.1283293   0.0960341   0.1606245
24 months   ki1017093b-PROVIDE        BANGLADESH    NA                   NA                0.1070812   0.0818727   0.1322897
24 months   ki1017093c-NIH-Crypto     BANGLADESH    NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.1060038   0.0875152   0.1244923
24 months   ki1113344-GMS-Nepal       NEPAL         NA                   NA                0.1851852   0.1506144   0.2197560
24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.1830986   0.1463297   0.2198675
24 months   ki1135781-COHORTS         INDIA         NA                   NA                0.0908513   0.0826532   0.0990495
24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0682747   0.0582774   0.0782720
24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.2176282   0.2067563   0.2285000
24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.2013085   0.1867334   0.2158836


### Parameter: RR


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH    <48 cm               >=50 cm           0.7147766   0.3448378   1.4815826
Birth       ki0047075b-MAL-ED         BANGLADESH    [48-50) cm           >=50 cm           0.6033755   0.2725003   1.3360061
Birth       ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.2747270   0.1527147   0.4942218
Birth       ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           0.3197279   0.2059867   0.4962745
Birth       ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           0.9367487   0.6267780   1.4000142
Birth       ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           0.7381833   0.4332661   1.2576902
Birth       ki1017093-NIH-Birth       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1017093-NIH-Birth       BANGLADESH    <48 cm               >=50 cm           0.9093769   0.6642044   1.2450480
Birth       ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           >=50 cm           0.7827827   0.5666926   1.0812721
Birth       ki1017093b-PROVIDE        BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE        BANGLADESH    <48 cm               >=50 cm           1.1284946   0.7508654   1.6960431
Birth       ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           >=50 cm           0.7956214   0.5186413   1.2205225
Birth       ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto     BANGLADESH    <48 cm               >=50 cm           0.8315623   0.5928861   1.1663215
Birth       ki1017093c-NIH-Crypto     BANGLADESH    [48-50) cm           >=50 cm           0.9210221   0.6652684   1.2750969
Birth       ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           0.3859960   0.2724949   0.5467731
Birth       ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           0.5304453   0.4263262   0.6599927
Birth       ki1113344-GMS-Nepal       NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal       NEPAL         <48 cm               >=50 cm           0.6490267   0.4432439   0.9503472
Birth       ki1113344-GMS-Nepal       NEPAL         [48-50) cm           >=50 cm           0.7956340   0.5357137   1.1816637
Birth       ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           0.3839637   0.3429547   0.4298764
Birth       ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           0.5245124   0.4807657   0.5722398
Birth       ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm           0.2648743   0.1508645   0.4650425
Birth       ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm           0.5597815   0.4147077   0.7556053
Birth       ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           0.6997024   0.6095914   0.8031338
Birth       ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm           0.8086895   0.7089106   0.9225124
Birth       ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           0.5326369   0.4210548   0.6737889
Birth       ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           0.4919192   0.4035071   0.5997032
Birth       kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           0.6883514   0.5905931   0.8022912
Birth       kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           0.7659319   0.6526012   0.8989436
Birth       kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           0.5478432   0.3355526   0.8944414
Birth       kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           0.5959748   0.3524498   1.0077636
6 months    ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC             INDIA         <48 cm               >=50 cm           0.6464358   0.3321687   1.2580331
6 months    ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           0.7862222   0.4410884   1.4014092
6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm           1.5393780   0.9456514   2.5058756
6 months    ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           0.6964887   0.3715238   1.3056942
6 months    ki1017093-NIH-Birth       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth       BANGLADESH    <48 cm               >=50 cm           1.4644652   0.6250772   3.4310295
6 months    ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           >=50 cm           0.9475951   0.3772400   2.3802790
6 months    ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           1.5446275   0.7944811   3.0030596
6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           2.4416527   1.4768636   4.0367084
6 months    ki1113344-GMS-Nepal       NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal       NEPAL         <48 cm               >=50 cm           1.2972973   0.5850688   2.8765512
6 months    ki1113344-GMS-Nepal       NEPAL         [48-50) cm           >=50 cm           1.2832080   0.5467954   3.0114057
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           1.2397904   0.8973640   1.7128838
6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           1.3768388   1.0161783   1.8655045
6 months    ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           1.8484753   1.5189030   2.2495585
6 months    ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm           1.3582105   1.1026962   1.6729321
6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           1.5365074   1.0278175   2.2969593
6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           1.5560950   1.0765421   2.2492680
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           1.2422484   0.9295959   1.6600559
6 months    kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           0.9553528   0.6984808   1.3066915
6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           1.2402867   0.8035888   1.9143014
6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           1.0739869   0.6935794   1.6630365
24 months   ki1000108-IRC             INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm           1.1618182   0.4884231   2.7636315
24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm           1.1318841   0.4961517   2.5821974
24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               >=50 cm           2.0330357   0.9052657   4.5657689
24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           >=50 cm           2.1122449   0.9410812   4.7409069
24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH    <48 cm               >=50 cm           2.5303398   1.1949142   5.3582255
24 months   ki1017093b-PROVIDE        BANGLADESH    [48-50) cm           >=50 cm           1.7820513   0.8228049   3.8596107
24 months   ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH    <48 cm               >=50 cm           1.7600000   0.8076459   3.8353442
24 months   ki1017093c-NIH-Crypto     BANGLADESH    [48-50) cm           >=50 cm           1.2903226   0.5633055   2.9556475
24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm           1.7955605   1.1557927   2.7894602
24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm           1.5191336   1.0140209   2.2758572
24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL         <48 cm               >=50 cm           1.9047310   1.0126643   3.5826285
24 months   ki1113344-GMS-Nepal       NEPAL         [48-50) cm           >=50 cm           1.3875608   0.6966966   2.7635056
24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm           0.7958656   0.4199356   1.5083314
24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm           0.9259259   0.4700529   1.8239200
24 months   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           2.6996417   2.0069360   3.6314389
24 months   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm           1.6165886   1.1756515   2.2229025
24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm           2.4232081   1.6478548   3.5633827
24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm           1.5893958   1.0770552   2.3454500
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           1.7334667   1.2938448   2.3224632
24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm           1.1557170   0.8520902   1.5675358
24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm           1.3211751   1.0964557   1.5919510
24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm           0.9377425   0.7460341   1.1787143


### Parameter: PAR


agecat      studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH    >=50 cm              NA                -0.0633274   -0.1803577    0.0537030
Birth       ki1000108-IRC             INDIA         >=50 cm              NA                -0.2162601   -0.2849721   -0.1475481
Birth       ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.0156154   -0.0643885    0.0331578
Birth       ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                -0.0403811   -0.1087918    0.0280296
Birth       ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                -0.0077184   -0.0720603    0.0566235
Birth       ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              NA                -0.0241159   -0.0828875    0.0346558
Birth       ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.0856923   -0.1078067   -0.0635779
Birth       ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                -0.0657470   -0.1378716    0.0063776
Birth       ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                -0.0945023   -0.1050785   -0.0839261
Birth       ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                -0.0907369   -0.1202492   -0.0612246
Birth       ki1135781-COHORTS         INDIA         >=50 cm              NA                -0.0418570   -0.0606225   -0.0230914
Birth       ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.0688288   -0.0865825   -0.0510751
Birth       kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                -0.0405124   -0.0607523   -0.0202726
Birth       kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                -0.0698382   -0.1419017    0.0022252
6 months    ki1000108-IRC             INDIA         >=50 cm              NA                -0.0280029   -0.0753162    0.0193105
6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                 0.0219919   -0.0257415    0.0697253
6 months    ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                 0.0092342   -0.0283646    0.0468331
6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.0193576    0.0071257    0.0315895
6 months    ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                 0.0176695   -0.0307949    0.0661339
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.0054833   -0.0000245    0.0109912
6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                 0.0418783    0.0276251    0.0561314
6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                 0.0151870    0.0041221    0.0262520
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                 0.0120610   -0.0082322    0.0323543
6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.0063742   -0.0075001    0.0202484
24 months   ki1000108-IRC             INDIA         >=50 cm              NA                 0.0065005   -0.0279054    0.0409065
24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                 0.0576222    0.0089037    0.1063407
24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                 0.0495272    0.0118960    0.0871584
24 months   ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              NA                 0.0250486   -0.0134555    0.0635528
24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.0247531    0.0063416    0.0431647
24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                 0.0680311    0.0026796    0.1333827
24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                -0.0311871   -0.1484218    0.0860476
24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                 0.0432587    0.0305849    0.0559324
24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                 0.0248424    0.0126759    0.0370088
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                 0.0775100    0.0378978    0.1171223
24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.0243003    0.0000995    0.0485011


### Parameter: PAF


agecat      studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH    >=50 cm              NA                -0.3782051   -1.2817707    0.1675546
Birth       ki1000108-IRC             INDIA         >=50 cm              NA                -0.8062741   -1.0950908   -0.5572719
Birth       ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                -0.1459638   -0.6710455    0.2141249
Birth       ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                -0.1382091   -0.3981289    0.0733902
Birth       ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                -0.0350956   -0.3731460    0.2197312
Birth       ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              NA                -0.0991274   -0.3693141    0.1177473
Birth       ki1101329-Keneba          GAMBIA        >=50 cm              NA                -0.3458380   -0.4375869   -0.2599447
Birth       ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                -0.3192714   -0.7197049   -0.0120789
Birth       ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                -0.5922788   -0.6585038   -0.5286981
Birth       ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                -0.3572765   -0.4780284   -0.2463897
Birth       ki1135781-COHORTS         INDIA         >=50 cm              NA                -0.2365149   -0.3470033   -0.1350892
Birth       ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                -0.4424274   -0.5584135   -0.3350736
Birth       kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                -0.3698890   -0.5657080   -0.1985606
Birth       kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                -0.7001355   -1.5942110   -0.1141965
6 months    ki1000108-IRC             INDIA         >=50 cm              NA                -0.2055304   -0.6051052    0.0945742
6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                 0.1772760   -0.2816767    0.4718834
6 months    ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                 0.1366667   -0.6418943    0.5460460
6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.3523600    0.1046741    0.5315253
6 months    ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                 0.1950572   -0.5606777    0.5848387
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                 0.1760740   -0.0197699    0.3343066
6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                 0.3247951    0.2066676    0.4253333
6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                 0.2561858    0.0480269    0.4188286
6 months    kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                 0.1403987   -0.1310842    0.3467202
6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.1198579   -0.1793841    0.3431740
24 months   ki1000108-IRC             INDIA         >=50 cm              NA                 0.0845070   -0.4909232    0.4378467
24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                 0.4490185   -0.0691897    0.7160648
24 months   ki1017093b-PROVIDE        BANGLADESH    >=50 cm              NA                 0.4625203   -0.0050565    0.7125690
24 months   ki1017093c-NIH-Crypto     BANGLADESH    >=50 cm              NA                 0.2861111   -0.3102198    0.6110291
24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                 0.2335118    0.0429686    0.3861182
24 months   ki1113344-GMS-Nepal       NEPAL         >=50 cm              NA                 0.3673682   -0.0969073    0.6351351
24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                -0.1703297   -1.0218429    0.3225628
24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                 0.4761477    0.3235935    0.5942955
24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                 0.3638592    0.1670729    0.5141530
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                 0.3561580    0.1481498    0.5133739
24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                 0.1207116   -0.0082559    0.2331827
