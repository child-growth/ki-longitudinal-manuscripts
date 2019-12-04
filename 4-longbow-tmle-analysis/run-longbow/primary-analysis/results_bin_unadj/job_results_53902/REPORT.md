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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** mwtkg

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mwtkg         sstunted   n_cell       n
----------  -------------------------  -----------------------------  -----------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              0       38     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              1        0     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg               0      136     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg               1        7     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           0       41     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           1        0     222
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              0       32      64
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              1        2      64
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg               0       15      64
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg               1        0      64
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           0       14      64
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           1        1      64
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              0        6      43
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              1        0      43
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg               0       28      43
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg               1        1      43
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg           0        7      43
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg           1        1      43
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              0        9      27
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              1        0      27
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg               0        7      27
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg               1        1      27
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg           0       10      27
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg           1        0      27
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              0       82     226
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              1        1     226
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               0       81     226
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               1        3     226
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           0       59     226
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           1        0     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              0       69     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              1        0     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               0       10     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               1        0     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           0       21     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           1        1     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              0       44     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              1        3     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               0       40     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               1        5     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           0       29     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           1        1     122
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              0       91    1236
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              1        0    1236
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               0      873    1236
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               1       76    1236
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           0      184    1236
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           1       12    1236
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              0       79     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              1        1     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg               0      424     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg               1       17     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           0       86     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           1        1     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              0       91     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              1        0     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg               0      327     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg               1        3     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           0       95     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           1        1     517
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              0      184     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              1        2     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               0      392     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               1        3     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           0      143     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           1        5     729
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              0    10271   13767
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              1        3   13767
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               0     1131   13767
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               1        0   13767
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           0     2360   13767
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           1        2   13767
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              0     5628   11031
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              1      129   11031
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               0     2261   11031
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               1      104   11031
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           0     2812   11031
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           1       97   11031
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              0      456   22432
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              1       44   22432
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               0    18204   22432
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               1     2275   22432
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           0     1325   22432
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           1      128   22432
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              0       45     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               0      147     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               1        7     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           0       41     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              0      137     208
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               0       37     208
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           0       34     208
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           1        0     208
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              0       40     235
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              1        0     235
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               0      140     235
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               1        6     235
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           0       46     235
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           1        3     235
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              0       79     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               0       74     236
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           0       82     236
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           1        0     236
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              0       97     272
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              1        3     272
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               0      101     272
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               1        6     272
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           0       64     272
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           1        1     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              0      176     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              1        3     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               0       28     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               1        1     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           0       39     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           1        2     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              0       89     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              1        5     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               0       87     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               1        8     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           0       57     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           1        1     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              0      100    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              1        3    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               0      898    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               1      116    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           0      206    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           1        8    1331
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              0       69     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              1        2     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               0      353     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               1       32     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           0       80     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           1        1     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              0      107     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              1        2     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               0      375     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               1       10     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           0      107     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           1        2     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              0      181     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              1        3     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               0      369     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               1       14     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           0      142     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           1        6     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              0     1246    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              1        9    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               0      318    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               1        7    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           0      406    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           1        3    1989
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              0     9608   13068
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              1      134   13068
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               0     1061   13068
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               1       22   13068
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           0     2217   13068
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           1       26   13068
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              0     4239    8254
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              1      124    8254
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               0     1612    8254
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               1      114    8254
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           0     2069    8254
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           1       96    8254
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              0      108     837
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              1        6     837
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               0      452     837
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               1       52     837
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           0      206     837
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           1       13     837
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              0      385   16802
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              1       22   16802
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               0    14308   16802
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               1      935   16802
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           0     1089   16802
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           1       63   16802
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              0       40     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               0      107     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               1       28     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           0       37     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              0      109     168
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              1        0     168
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               0       27     168
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               1        1     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           0       31     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           1        0     168
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              0       36     226
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              1        2     226
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               0      122     226
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               1       19     226
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           0       38     226
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           1        9     226
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              0       75     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               0       68     228
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               1        6     228
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           0       78     228
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           1        0     228
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              0       76     201
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              1        1     201
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               0       65     201
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               1       10     201
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           0       45     201
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           1        4     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              0      153     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              1       15     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               0       22     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               1        6     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           0       32     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           1        6     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              0       62     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              1       20     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               0       48     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               1       36     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           0       34     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           1       14     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              0       48     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              1        9     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               0      230     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               1       78     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           0       56     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           1        8     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              0      110     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              1        1     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               0      315     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               1       47     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           0      100     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           1        4     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              0      137     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              1        1     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               0      245     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               1       28     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           0       96     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           1        7     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           1        0       6
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              0     2965    4013
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              1       46    4013
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               0      317    4013
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               1        8    4013
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           0      666    4013
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           1       11    4013
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              0      774    1588
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              1       59    1588
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               0      270    1588
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               1       64    1588
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           0      372    1588
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           1       49    1588
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              0       73     578
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              1        4     578
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               0      294     578
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               1       54     578
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           0      141     578
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           1       12     578
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              0      171    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              1       26    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               0     6628    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               1     1231    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           0      483    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           1       88    8627


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/af309779-8bf6-49d8-a66f-fedd4b7b990f/97e7f322-160f-4227-8c20-6147c8226e5d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/af309779-8bf6-49d8-a66f-fedd4b7b990f/97e7f322-160f-4227-8c20-6147c8226e5d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/af309779-8bf6-49d8-a66f-fedd4b7b990f/97e7f322-160f-4227-8c20-6147c8226e5d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/af309779-8bf6-49d8-a66f-fedd4b7b990f/97e7f322-160f-4227-8c20-6147c8226e5d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              NA                0.0224075    0.0185841   0.0262309
Birth       ki1126311-ZVITAMBO    ZIMBABWE                       <52 kg               NA                0.0439746    0.0357107   0.0522386
Birth       ki1126311-ZVITAMBO    ZIMBABWE                       [52-58) kg           NA                0.0333448    0.0268203   0.0398693
Birth       kiGH5241-JiVitA-3     BANGLADESH                     >=58 kg              NA                0.0880000    0.0625184   0.1134816
Birth       kiGH5241-JiVitA-3     BANGLADESH                     <52 kg               NA                0.1110894    0.1063846   0.1157942
Birth       kiGH5241-JiVitA-3     BANGLADESH                     [52-58) kg           NA                0.0880936    0.0723535   0.1038337
6 months    ki1119695-PROBIT      BELARUS                        >=58 kg              NA                0.0137549    0.0090191   0.0184907
6 months    ki1119695-PROBIT      BELARUS                        <52 kg               NA                0.0203139    0.0092212   0.0314067
6 months    ki1119695-PROBIT      BELARUS                        [52-58) kg           NA                0.0115916    0.0043773   0.0188059
6 months    ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              NA                0.0284208    0.0234898   0.0333519
6 months    ki1126311-ZVITAMBO    ZIMBABWE                       <52 kg               NA                0.0660487    0.0543308   0.0777665
6 months    ki1126311-ZVITAMBO    ZIMBABWE                       [52-58) kg           NA                0.0443418    0.0356701   0.0530135
6 months    ki1148112-LCNI-5      MALAWI                         >=58 kg              NA                0.0526316    0.0116170   0.0936461
6 months    ki1148112-LCNI-5      MALAWI                         <52 kg               NA                0.1031746    0.0766021   0.1297471
6 months    ki1148112-LCNI-5      MALAWI                         [52-58) kg           NA                0.0593607    0.0280461   0.0906753
6 months    kiGH5241-JiVitA-3     BANGLADESH                     >=58 kg              NA                0.0540541    0.0339387   0.0741694
6 months    kiGH5241-JiVitA-3     BANGLADESH                     <52 kg               NA                0.0613396    0.0572342   0.0654451
6 months    kiGH5241-JiVitA-3     BANGLADESH                     [52-58) kg           NA                0.0546875    0.0412282   0.0681468
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   >=58 kg              NA                0.0892857    0.0460736   0.1324978
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   <52 kg               NA                0.2142857    0.0619759   0.3665956
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   [52-58) kg           NA                0.1578947    0.0417089   0.2740806
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.2439024    0.1507369   0.3370680
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.4285714    0.3224952   0.5346477
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2916667    0.1627804   0.4205530
24 months   ki1017093-NIH-Birth   BANGLADESH                     >=58 kg              NA                0.1578947    0.0631218   0.2526677
24 months   ki1017093-NIH-Birth   BANGLADESH                     <52 kg               NA                0.2532468    0.2046239   0.3018696
24 months   ki1017093-NIH-Birth   BANGLADESH                     [52-58) kg           NA                0.1250000    0.0438808   0.2061192
24 months   ki1119695-PROBIT      BELARUS                        >=58 kg              NA                0.0152773    0.0048389   0.0257157
24 months   ki1119695-PROBIT      BELARUS                        <52 kg               NA                0.0246154   -0.0186703   0.0679010
24 months   ki1119695-PROBIT      BELARUS                        [52-58) kg           NA                0.0162482   -0.0076028   0.0400991
24 months   ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              NA                0.0708283    0.0534017   0.0882550
24 months   ki1126311-ZVITAMBO    ZIMBABWE                       <52 kg               NA                0.1916168    0.1493949   0.2338386
24 months   ki1126311-ZVITAMBO    ZIMBABWE                       [52-58) kg           NA                0.1163895    0.0857466   0.1470325
24 months   kiGH5241-JiVitA-3     BANGLADESH                     >=58 kg              NA                0.1319797    0.0884906   0.1754688
24 months   kiGH5241-JiVitA-3     BANGLADESH                     <52 kg               NA                0.1566357    0.1475572   0.1657142
24 months   kiGH5241-JiVitA-3     BANGLADESH                     [52-58) kg           NA                0.1541156    0.1219663   0.1862648


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO    ZIMBABWE                       NA                   NA                0.0299157   0.0267365   0.0330949
Birth       kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.1090852   0.1045269   0.1136436
6 months    ki1119695-PROBIT      BELARUS                        NA                   NA                0.0139272   0.0091775   0.0186768
6 months    ki1126311-ZVITAMBO    ZIMBABWE                       NA                   NA                0.0404652   0.0362140   0.0447164
6 months    ki1148112-LCNI-5      MALAWI                         NA                   NA                0.0848268   0.0659398   0.1037138
6 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.0607071   0.0568535   0.0645606
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.1153846   0.0743622   0.1564070
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3271028   0.2640978   0.3901078
24 months   ki1017093-NIH-Birth   BANGLADESH                     NA                   NA                0.2214452   0.1821080   0.2607825
24 months   ki1119695-PROBIT      BELARUS                        NA                   NA                0.0161974   0.0032099   0.0291848
24 months   ki1126311-ZVITAMBO    ZIMBABWE                       NA                   NA                0.1083123   0.0930224   0.1236023
24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.1559059   0.1471753   0.1646364


### Parameter: RR


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO    ZIMBABWE                       <52 kg               >=58 kg           1.9624957   1.5225492   2.529566
Birth       ki1126311-ZVITAMBO    ZIMBABWE                       [52-58) kg           >=58 kg           1.4881083   1.1478506   1.929229
Birth       kiGH5241-JiVitA-3     BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH                     <52 kg               >=58 kg           1.2623794   0.9427033   1.690460
Birth       kiGH5241-JiVitA-3     BANGLADESH                     [52-58) kg           >=58 kg           1.0010636   0.7165190   1.398607
6 months    ki1119695-PROBIT      BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT      BELARUS                        <52 kg               >=58 kg           1.4768540   0.9123126   2.390735
6 months    ki1119695-PROBIT      BELARUS                        [52-58) kg           >=58 kg           0.8427280   0.4821286   1.473031
6 months    ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO    ZIMBABWE                       <52 kg               >=58 kg           2.3239543   1.8132509   2.978498
6 months    ki1126311-ZVITAMBO    ZIMBABWE                       [52-58) kg           >=58 kg           1.5601877   1.2012604   2.026360
6 months    ki1148112-LCNI-5      MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5      MALAWI                         <52 kg               >=58 kg           1.9603175   0.8627530   4.454166
6 months    ki1148112-LCNI-5      MALAWI                         [52-58) kg           >=58 kg           1.1278539   0.4401123   2.890295
6 months    kiGH5241-JiVitA-3     BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     <52 kg               >=58 kg           1.1347832   0.7765163   1.658346
6 months    kiGH5241-JiVitA-3     BANGLADESH                     [52-58) kg           >=58 kg           1.0117187   0.6420133   1.594320
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   <52 kg               >=58 kg           2.4000000   1.0156837   5.671057
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   [52-58) kg           >=58 kg           1.7684211   0.7329701   4.266631
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.7571429   1.1146387   2.770001
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.1958333   0.6668017   2.144592
24 months   ki1017093-NIH-Birth   BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth   BANGLADESH                     <52 kg               >=58 kg           1.6038961   0.8540608   3.012060
24 months   ki1017093-NIH-Birth   BANGLADESH                     [52-58) kg           >=58 kg           0.7916667   0.3270664   1.916235
24 months   ki1119695-PROBIT      BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT      BELARUS                        <52 kg               >=58 kg           1.6112375   0.3803958   6.824696
24 months   ki1119695-PROBIT      BELARUS                        [52-58) kg           >=58 kg           1.0635476   0.2689766   4.205323
24 months   ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO    ZIMBABWE                       <52 kg               >=58 kg           2.7053689   1.9444003   3.764153
24 months   ki1126311-ZVITAMBO    ZIMBABWE                       [52-58) kg           >=58 kg           1.6432626   1.1460642   2.356161
24 months   kiGH5241-JiVitA-3     BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     <52 kg               >=58 kg           1.1868167   0.8515980   1.653989
24 months   kiGH5241-JiVitA-3     BANGLADESH                     [52-58) kg           >=58 kg           1.1677219   0.7947259   1.715780


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              NA                0.0075082    0.0044313   0.0105851
Birth       kiGH5241-JiVitA-3     BANGLADESH                     >=58 kg              NA                0.0210852   -0.0040622   0.0462326
6 months    ki1119695-PROBIT      BELARUS                        >=58 kg              NA                0.0001723   -0.0012385   0.0015831
6 months    ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              NA                0.0120444    0.0079600   0.0161288
6 months    ki1148112-LCNI-5      MALAWI                         >=58 kg              NA                0.0321952   -0.0075626   0.0719530
6 months    kiGH5241-JiVitA-3     BANGLADESH                     >=58 kg              NA                0.0066530   -0.0134391   0.0267451
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   >=58 kg              NA                0.0260989   -0.0033781   0.0555759
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0832004    0.0057561   0.1606447
24 months   ki1017093-NIH-Birth   BANGLADESH                     >=58 kg              NA                0.0635505   -0.0266855   0.1537865
24 months   ki1119695-PROBIT      BELARUS                        >=58 kg              NA                0.0009200   -0.0052791   0.0071192
24 months   ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              NA                0.0374840    0.0226899   0.0522781
24 months   kiGH5241-JiVitA-3     BANGLADESH                     >=58 kg              NA                0.0239262   -0.0188795   0.0667319


### Parameter: PAF


agecat      studyid               country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              NA                0.2509783    0.1445691   0.3441509
Birth       kiGH5241-JiVitA-3     BANGLADESH                     >=58 kg              NA                0.1932913   -0.0735602   0.3938123
6 months    ki1119695-PROBIT      BELARUS                        >=58 kg              NA                0.0123697   -0.0936613   0.1081209
6 months    ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              NA                0.2976486    0.1944669   0.3876136
6 months    ki1148112-LCNI-5      MALAWI                         >=58 kg              NA                0.3795404   -0.3062459   0.7052851
6 months    kiGH5241-JiVitA-3     BANGLADESH                     >=58 kg              NA                0.1095919   -0.2904713   0.3856303
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   >=58 kg              NA                0.2261905   -0.0622499   0.4363086
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.2543554   -0.0223868   0.4561884
24 months   ki1017093-NIH-Birth   BANGLADESH                     >=58 kg              NA                0.2869806   -0.2593344   0.5962973
24 months   ki1119695-PROBIT      BELARUS                        >=58 kg              NA                0.0568020   -0.3768638   0.3538776
24 months   ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              NA                0.3460733    0.2034341   0.4631704
24 months   kiGH5241-JiVitA-3     BANGLADESH                     >=58 kg              NA                0.1534656   -0.1707630   0.3879030
