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

* arm
* W_mage
* meducyrs
* feducyrs
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon
* delta_W_parity

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




# Results Detail

## Results Plots
![](/tmp/fa527987-d9b2-4be8-a7a0-f50bd6097f81/5f01ec32-7604-4e66-9806-2ca4162103be/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fa527987-d9b2-4be8-a7a0-f50bd6097f81/5f01ec32-7604-4e66-9806-2ca4162103be/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fa527987-d9b2-4be8-a7a0-f50bd6097f81/5f01ec32-7604-4e66-9806-2ca4162103be/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fa527987-d9b2-4be8-a7a0-f50bd6097f81/5f01ec32-7604-4e66-9806-2ca4162103be/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              NA                0.0222373    0.0183905   0.0260841
Birth       ki1126311-ZVITAMBO    ZIMBABWE                       <52 kg               NA                0.0448417    0.0361621   0.0535214
Birth       ki1126311-ZVITAMBO    ZIMBABWE                       [52-58) kg           NA                0.0350871    0.0281023   0.0420720
Birth       kiGH5241-JiVitA-3     BANGLADESH                     >=58 kg              NA                0.0882899    0.0636098   0.1129701
Birth       kiGH5241-JiVitA-3     BANGLADESH                     <52 kg               NA                0.1109922    0.1062855   0.1156988
Birth       kiGH5241-JiVitA-3     BANGLADESH                     [52-58) kg           NA                0.0877230    0.0715387   0.1039073
6 months    ki1119695-PROBIT      BELARUS                        >=58 kg              NA                0.0140123    0.0091743   0.0188502
6 months    ki1119695-PROBIT      BELARUS                        <52 kg               NA                0.0230112    0.0067990   0.0392233
6 months    ki1119695-PROBIT      BELARUS                        [52-58) kg           NA                0.0136090    0.0048482   0.0223699
6 months    ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              NA                0.0285534    0.0235661   0.0335407
6 months    ki1126311-ZVITAMBO    ZIMBABWE                       <52 kg               NA                0.0676677    0.0552716   0.0800639
6 months    ki1126311-ZVITAMBO    ZIMBABWE                       [52-58) kg           NA                0.0446457    0.0356273   0.0536641
6 months    ki1148112-LCNI-5      MALAWI                         >=58 kg              NA                0.0526316    0.0116170   0.0936461
6 months    ki1148112-LCNI-5      MALAWI                         <52 kg               NA                0.1031746    0.0766021   0.1297471
6 months    ki1148112-LCNI-5      MALAWI                         [52-58) kg           NA                0.0593607    0.0280461   0.0906753
6 months    kiGH5241-JiVitA-3     BANGLADESH                     >=58 kg              NA                0.0568511    0.0374808   0.0762214
6 months    kiGH5241-JiVitA-3     BANGLADESH                     <52 kg               NA                0.0611532    0.0570534   0.0652530
6 months    kiGH5241-JiVitA-3     BANGLADESH                     [52-58) kg           NA                0.0561594    0.0420242   0.0702946
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   >=58 kg              NA                0.0892857    0.0460736   0.1324978
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   <52 kg               NA                0.2142857    0.0619759   0.3665956
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   [52-58) kg           NA                0.1578947    0.0417089   0.2740806
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.2581864    0.1601829   0.3561899
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.4230676    0.3121331   0.5340021
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2658642    0.1366726   0.3950558
24 months   ki1017093-NIH-Birth   BANGLADESH                     >=58 kg              NA                0.1578947    0.0631218   0.2526677
24 months   ki1017093-NIH-Birth   BANGLADESH                     <52 kg               NA                0.2532468    0.2046239   0.3018696
24 months   ki1017093-NIH-Birth   BANGLADESH                     [52-58) kg           NA                0.1250000    0.0438808   0.2061192
24 months   ki1119695-PROBIT      BELARUS                        >=58 kg              NA                0.0152773    0.0048389   0.0257157
24 months   ki1119695-PROBIT      BELARUS                        <52 kg               NA                0.0246154   -0.0186703   0.0679010
24 months   ki1119695-PROBIT      BELARUS                        [52-58) kg           NA                0.0162482   -0.0076028   0.0400991
24 months   ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              NA                0.0700411    0.0527072   0.0873750
24 months   ki1126311-ZVITAMBO    ZIMBABWE                       <52 kg               NA                0.1966780    0.1536738   0.2396821
24 months   ki1126311-ZVITAMBO    ZIMBABWE                       [52-58) kg           NA                0.1156931    0.0842072   0.1471790
24 months   kiGH5241-JiVitA-3     BANGLADESH                     >=58 kg              NA                0.1359675    0.0957825   0.1761526
24 months   kiGH5241-JiVitA-3     BANGLADESH                     <52 kg               NA                0.1562231    0.1471456   0.1653005
24 months   kiGH5241-JiVitA-3     BANGLADESH                     [52-58) kg           NA                0.1561658    0.1209469   0.1913848


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
Birth       ki1126311-ZVITAMBO    ZIMBABWE                       <52 kg               >=58 kg           2.0165102   1.5553281   2.614441
Birth       ki1126311-ZVITAMBO    ZIMBABWE                       [52-58) kg           >=58 kg           1.5778493   1.2120289   2.054083
Birth       kiGH5241-JiVitA-3     BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH                     <52 kg               >=58 kg           1.2571326   0.9481123   1.666873
Birth       kiGH5241-JiVitA-3     BANGLADESH                     [52-58) kg           >=58 kg           0.9935787   0.7148237   1.381038
6 months    ki1119695-PROBIT      BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT      BELARUS                        <52 kg               >=58 kg           1.6422150   0.8988702   3.000289
6 months    ki1119695-PROBIT      BELARUS                        [52-58) kg           >=58 kg           0.9712233   0.5296055   1.781089
6 months    ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO    ZIMBABWE                       <52 kg               >=58 kg           2.3698664   1.8398854   3.052509
6 months    ki1126311-ZVITAMBO    ZIMBABWE                       [52-58) kg           >=58 kg           1.5635854   1.1971646   2.042158
6 months    ki1148112-LCNI-5      MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5      MALAWI                         <52 kg               >=58 kg           1.9603175   0.8627530   4.454166
6 months    ki1148112-LCNI-5      MALAWI                         [52-58) kg           >=58 kg           1.1278539   0.4401123   2.890295
6 months    kiGH5241-JiVitA-3     BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     <52 kg               >=58 kg           1.0756731   0.7591219   1.524225
6 months    kiGH5241-JiVitA-3     BANGLADESH                     [52-58) kg           >=58 kg           0.9878331   0.6422972   1.519257
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   <52 kg               >=58 kg           2.4000000   1.0156837   5.671057
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   [52-58) kg           >=58 kg           1.7684211   0.7329701   4.266631
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.6386129   1.0326437   2.600173
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0297374   0.5555813   1.908558
24 months   ki1017093-NIH-Birth   BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth   BANGLADESH                     <52 kg               >=58 kg           1.6038961   0.8540608   3.012060
24 months   ki1017093-NIH-Birth   BANGLADESH                     [52-58) kg           >=58 kg           0.7916667   0.3270664   1.916235
24 months   ki1119695-PROBIT      BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT      BELARUS                        <52 kg               >=58 kg           1.6112375   0.3803958   6.824696
24 months   ki1119695-PROBIT      BELARUS                        [52-58) kg           >=58 kg           1.0635476   0.2689766   4.205323
24 months   ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO    ZIMBABWE                       <52 kg               >=58 kg           2.8080382   2.0191633   3.905122
24 months   ki1126311-ZVITAMBO    ZIMBABWE                       [52-58) kg           >=58 kg           1.6517898   1.1435959   2.385816
24 months   kiGH5241-JiVitA-3     BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     <52 kg               >=58 kg           1.1489736   0.8529609   1.547715
24 months   kiGH5241-JiVitA-3     BANGLADESH                     [52-58) kg           >=58 kg           1.1485526   0.7952202   1.658878


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              NA                 0.0076784    0.0045596   0.0107972
Birth       kiGH5241-JiVitA-3     BANGLADESH                     >=58 kg              NA                 0.0207953   -0.0035636   0.0451542
6 months    ki1119695-PROBIT      BELARUS                        >=58 kg              NA                -0.0000851   -0.0015783   0.0014081
6 months    ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              NA                 0.0119118    0.0077619   0.0160618
6 months    ki1148112-LCNI-5      MALAWI                         >=58 kg              NA                 0.0321952   -0.0075626   0.0719530
6 months    kiGH5241-JiVitA-3     BANGLADESH                     >=58 kg              NA                 0.0038560   -0.0155076   0.0232195
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   >=58 kg              NA                 0.0260989   -0.0033781   0.0555759
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0689164   -0.0129717   0.1508045
24 months   ki1017093-NIH-Birth   BANGLADESH                     >=58 kg              NA                 0.0635505   -0.0266855   0.1537865
24 months   ki1119695-PROBIT      BELARUS                        >=58 kg              NA                 0.0009200   -0.0052791   0.0071192
24 months   ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              NA                 0.0382713    0.0234950   0.0530475
24 months   kiGH5241-JiVitA-3     BANGLADESH                     >=58 kg              NA                 0.0199384   -0.0195724   0.0594491


### Parameter: PAF


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              NA                 0.2566677    0.1486696   0.3509654
Birth       kiGH5241-JiVitA-3     BANGLADESH                     >=58 kg              NA                 0.1906334   -0.0664616   0.3857498
6 months    ki1119695-PROBIT      BELARUS                        >=58 kg              NA                -0.0061116   -0.1194976   0.0957903
6 months    ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              NA                 0.2943721    0.1892605   0.3858561
6 months    ki1148112-LCNI-5      MALAWI                         >=58 kg              NA                 0.3795404   -0.3062459   0.7052851
6 months    kiGH5241-JiVitA-3     BANGLADESH                     >=58 kg              NA                 0.0635173   -0.3159819   0.3335776
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   >=58 kg              NA                 0.2261905   -0.0622499   0.4363086
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2106872   -0.0826423   0.4245425
24 months   ki1017093-NIH-Birth   BANGLADESH                     >=58 kg              NA                 0.2869806   -0.2593344   0.5962973
24 months   ki1119695-PROBIT      BELARUS                        >=58 kg              NA                 0.0568020   -0.3768638   0.3538776
24 months   ki1126311-ZVITAMBO    ZIMBABWE                       >=58 kg              NA                 0.3533419    0.2110941   0.4699409
24 months   kiGH5241-JiVitA-3     BANGLADESH                     >=58 kg              NA                 0.1278872   -0.1660260   0.3477155
