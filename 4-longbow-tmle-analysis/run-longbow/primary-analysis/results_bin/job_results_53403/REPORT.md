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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        mwtkg         stunted   n_cell       n
----------  -------------------------  -----------------------------  -----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             0       31     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             1        7     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg              0      114     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg              1       29     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          0       37     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          1        4     222
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg             0       31      64
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg             1        3      64
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg              0       11      64
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg              1        4      64
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          0       13      64
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          1        2      64
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg             0        5      43
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg             1        1      43
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg              0       24      43
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg              1        5      43
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg          0        5      43
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg          1        3      43
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg             0        9      27
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg             1        0      27
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg              0        6      27
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg              1        2      27
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg          0       10      27
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg          1        0      27
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg             0       78     226
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg             1        5     226
Birth       ki0047075b-MAL-ED          PERU                           <52 kg              0       68     226
Birth       ki0047075b-MAL-ED          PERU                           <52 kg              1       16     226
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg          0       54     226
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg          1        5     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             0       65     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             1        4     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              0        8     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              1        2     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          0       19     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          1        3     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             0       39     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             1        8     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              0       33     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              1       12     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0       28     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        2     122
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             0       82    1236
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             1        9    1236
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg              0      660    1236
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg              1      289    1236
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          0      155    1236
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          1       41    1236
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             0       72     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             1        8     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg              0      363     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg              1       78     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          0       76     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          1       11     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             0       87     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             1        4     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg              0      302     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg              1       28     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          0       81     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          1       15     517
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             0      171     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             1       15     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              0      328     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              1       67     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          0      129     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          1       19     729
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg             0    10253   13767
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg             1       21   13767
Birth       ki1119695-PROBIT           BELARUS                        <52 kg              0     1125   13767
Birth       ki1119695-PROBIT           BELARUS                        <52 kg              1        6   13767
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg          0     2356   13767
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg          1        6   13767
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             0     5307   11031
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             1      450   11031
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              0     2037   11031
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              1      328   11031
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          0     2572   11031
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          1      337   11031
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg             0      374   22432
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg             1      126   22432
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg              0    13634   22432
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg              1     6845   22432
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg          0     1046   22432
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg          1      407   22432
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             0       40     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             1        6     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg              0      116     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg              1       38     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          0       41     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg             0      134     208
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg             1        3     208
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg              0       36     208
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg              1        1     208
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          0       32     208
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          1        2     208
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg             0       36     235
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg             1        4     235
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg              0      116     235
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg              1       30     235
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg          0       39     235
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg          1       10     235
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg             0       77     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg             1        2     236
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg              0       66     236
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg              1        9     236
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg          0       81     236
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg          1        1     236
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg             0       81     272
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg             1       19     272
6 months    ki0047075b-MAL-ED          PERU                           <52 kg              0       79     272
6 months    ki0047075b-MAL-ED          PERU                           <52 kg              1       28     272
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg          0       52     272
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg          1       13     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             0      149     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             1       30     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              0       20     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              1        9     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          0       30     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          1       11     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             0       75     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             1       19     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              0       68     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              1       27     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0       45     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1       13     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             0       89    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             1       14    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg              0      685    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg              1      329    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          0      179    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          1       35    1331
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             0       57     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             1       14     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg              0      268     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg              1      117     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          0       68     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          1       13     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             0       98     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             1       11     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg              0      316     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg              1       69     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          0       94     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          1       15     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             0      159     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             1       25     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              0      285     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              1       98     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          0      121     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          1       27     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             0     1143    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             1      112    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              0      280    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              1       45    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0      374    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1       35    1989
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg             0     9206   13068
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg             1      536   13068
6 months    ki1119695-PROBIT           BELARUS                        <52 kg              0      977   13068
6 months    ki1119695-PROBIT           BELARUS                        <52 kg              1      106   13068
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg          0     2103   13068
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg          1      140   13068
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             0     3826    8254
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             1      537    8254
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              0     1303    8254
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              1      423    8254
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          0     1771    8254
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          1      394    8254
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg             0       86     837
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg             1       28     837
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg              0      286     837
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg              1      218     837
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg          0      157     837
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg          1       62     837
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg             0      332   16802
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg             1       75   16802
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg              0    11340   16802
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg              1     3903   16802
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg          0      905   16802
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg          1      247   16802
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             0       30     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             1       10     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg              0       55     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg              1       80     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          0       26     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          1       11     212
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg             0      105     168
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg             1        4     168
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg              0       26     168
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg              1        2     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          0       30     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          1        1     168
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg             0       27     226
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg             1       11     226
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg              0       75     226
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg              1       66     226
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg          0       28     226
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg          1       19     226
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg             0       68     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg             1        8     228
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg              0       47     228
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg              1       27     228
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg          0       63     228
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg          1       15     228
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg             0       59     201
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg             1       18     201
24 months   ki0047075b-MAL-ED          PERU                           <52 kg              0       39     201
24 months   ki0047075b-MAL-ED          PERU                           <52 kg              1       36     201
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg          0       29     201
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg          1       20     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             0      117     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             1       51     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              0       15     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              1       13     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          0       20     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          1       18     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             0       32     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             1       50     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              0       18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              1       66     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0        9     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1       39     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             0       38     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             1       19     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg              0      116     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg              1      192     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          0       31     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          1       33     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             0       93     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             1       18     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg              0      215     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg              1      147     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          0       80     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          1       24     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             0      121     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             1       17     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              0      180     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              1       93     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          0       81     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          1       22     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        0       6
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg             0     2781    4013
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg             1      230    4013
24 months   ki1119695-PROBIT           BELARUS                        <52 kg              0      283    4013
24 months   ki1119695-PROBIT           BELARUS                        <52 kg              1       42    4013
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg          0      607    4013
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg          1       70    4013
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             0      597    1588
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             1      236    1588
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              0      171    1588
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              1      163    1588
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          0      269    1588
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          1      152    1588
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg             0       56     578
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg             1       21     578
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg              0      168     578
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg              1      180     578
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg          0       97     578
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg          1       56     578
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg             0      113    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg             1       84    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg              0     3932    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg              1     3927    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg          0      346    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg          1      225    8627


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/036ef5ba-af72-44d3-a0ac-d70ba9a5b6ed/47c205e4-8f5b-452a-a578-442d9f14c51e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/036ef5ba-af72-44d3-a0ac-d70ba9a5b6ed/47c205e4-8f5b-452a-a578-442d9f14c51e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/036ef5ba-af72-44d3-a0ac-d70ba9a5b6ed/47c205e4-8f5b-452a-a578-442d9f14c51e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/036ef5ba-af72-44d3-a0ac-d70ba9a5b6ed/47c205e4-8f5b-452a-a578-442d9f14c51e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.0602410    0.0089399   0.1115420
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.1904762    0.1063160   0.2746364
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.0847458    0.0135236   0.1559679
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.0989011    0.0494314   0.1483708
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.3045311    0.2684154   0.3406468
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.2091837    0.1698398   0.2485275
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1000000    0.0342067   0.1657933
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.1768707    0.1412299   0.2125116
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.1264368    0.0565444   0.1963292
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0878655    0.0454770   0.1302540
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.1664151    0.1296602   0.2031700
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.1336047    0.0755819   0.1916275
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0020440    0.0003496   0.0037384
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.0053050   -0.0001768   0.0107869
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0025402    0.0003101   0.0047704
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0778945    0.0709182   0.0848708
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1383752    0.1240348   0.1527156
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1174520    0.1054159   0.1294881
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.2585918    0.2224540   0.2947297
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.3340489    0.3264625   0.3416352
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.2814614    0.2554276   0.3074952
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.1718006    0.0996568   0.2439443
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.2322017    0.1505262   0.3138772
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.2063077    0.0920246   0.3205908
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.1675978    0.1127706   0.2224250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.3103448    0.1416269   0.4790627
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.2682927    0.1323978   0.4041876
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1995639    0.1188146   0.2803133
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2811878    0.1895140   0.3728616
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2400181    0.1270775   0.3529586
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1375050    0.0917773   0.1832327
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.3232503    0.2992742   0.3472265
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.1644587    0.1174670   0.2114503
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1847619    0.0874479   0.2820759
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.3089287    0.2627471   0.3551102
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.1557800    0.0764240   0.2351360
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.1042123    0.0435554   0.1648693
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.1796271    0.1408075   0.2184468
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.1352270    0.0663228   0.2041312
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.1436895    0.0895099   0.1978691
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.2538108    0.2099719   0.2976496
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.1863922    0.1191060   0.2536785
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0897533    0.0738589   0.1056476
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1429427    0.1036486   0.1822367
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0847313    0.0571749   0.1122877
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0559756    0.0426795   0.0692717
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.0983283    0.0720822   0.1245745
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0642438    0.0479351   0.0805525
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1223460    0.1125086   0.1321833
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.2491953    0.2281888   0.2702017
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1860570    0.1690399   0.2030741
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.2399665    0.1599763   0.3199568
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.4313869    0.3880888   0.4746851
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.2809434    0.2207344   0.3411524
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.1964540    0.1609123   0.2319958
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.2555293    0.2470366   0.2640220
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.2222633    0.1953073   0.2492192
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.2437418    0.1035954   0.3838882
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                0.5888466    0.5038059   0.6738872
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                0.2824850    0.1271680   0.4378019
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.3052433    0.1416527   0.4688339
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                0.4765379    0.3933737   0.5597022
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                0.3828723    0.2394997   0.5262449
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.1052632    0.0361148   0.1744115
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.3648649    0.2549426   0.4747872
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.1923077    0.1046527   0.2799627
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.2445698    0.1421084   0.3470312
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.4796846    0.3621512   0.5972181
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.3974489    0.2364567   0.5584411
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.3064975    0.2361407   0.3768543
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.4736500    0.2776931   0.6696070
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.4670109    0.2977400   0.6362817
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.6097561    0.5039272   0.7155850
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.7857143    0.6977605   0.8736681
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.8125000    0.7018231   0.9231769
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.3265473    0.1986833   0.4544112
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.6260567    0.5718235   0.6802899
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.5007233    0.3729142   0.6285324
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.1612093    0.0880729   0.2343456
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.4103573    0.3594067   0.4613078
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.2268086    0.1410290   0.3125881
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.1047320    0.0535585   0.1559055
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.3517106    0.2947074   0.4087137
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.2068637    0.1222864   0.2914410
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0773265    0.0473819   0.1072712
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.1207845    0.0749343   0.1666346
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0991557    0.0561592   0.1421521
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2847114    0.2539857   0.3154371
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.4925099    0.4383541   0.5466658
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.3645294    0.3174696   0.4115893
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.2898772    0.1846061   0.3951483
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.5166763    0.4639152   0.5694373
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.3639711    0.2874652   0.4404770
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.4346772    0.3666077   0.5027468
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.4989231    0.4855425   0.5123036
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.4048542    0.3574187   0.4522897


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                0.1150442   0.0733525   0.1567360
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2742718   0.2403806   0.3081631
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1595395   0.1304091   0.1886699
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1385460   0.1134505   0.1636414
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.0023970   0.0011029   0.0036912
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1010788   0.0954534   0.1067041
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3289051   0.3215448   0.3362655
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2205882   0.1712211   0.2699554
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2008032   0.1509453   0.2506612
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2388664   0.1855834   0.2921494
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2839970   0.2655949   0.3023990
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1575456   0.1284434   0.1866478
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0965309   0.0835493   0.1095126
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0598408   0.0469716   0.0727101
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1640417   0.1560523   0.1720310
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3679809   0.3352903   0.4006715
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2514582   0.2433372   0.2595791
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4764151   0.4090254   0.5438047
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4247788   0.3601902   0.4893673
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2192982   0.1654718   0.2731246
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3504274   0.2891665   0.4116882
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7242991   0.6642873   0.7843108
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5687646   0.5218455   0.6156837
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3275563   0.2892291   0.3658836
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852230   0.0552609   0.1151851
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3469773   0.3235580   0.3703967
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4446367   0.4040904   0.4851830
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4910166   0.4779105   0.5041227


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           3.1619048   1.2114019    8.252952
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           1.4067797   0.4252149    4.654186
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           3.0791476   1.9560693    4.847042
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           2.1150793   1.3057415    3.426069
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.7687075   0.8888286    3.519606
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.2643678   0.5353913    2.985902
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           1.8939761   1.1139047    3.220334
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.5205601   0.7951563    2.907734
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           2.5954276   0.6078635   11.081836
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.2427725   0.3611349    4.276749
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.7764431   1.5490011    2.037281
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.5078337   1.3159514    1.727695
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           1.2917998   1.1209915    1.488635
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           1.0884388   0.9259272    1.279473
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           1.3515772   0.7762267    2.353386
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           1.2008557   0.5993137    2.406176
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           1.8517241   0.9818013    3.492440
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           1.6008130   0.8759360    2.925559
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.4090109   0.8360548    2.374619
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2027127   0.6467192    2.236701
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           2.3508266   1.6118750    3.428545
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.1960197   0.8151142    1.754924
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.6720365   0.9669117    2.891377
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           0.8431392   0.4051851    1.754466
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           1.7236646   0.9260055    3.208426
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.2976102   0.5983299    2.814154
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           1.7663840   1.1663579    2.675090
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.2971877   0.7695323    2.186647
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.5926181   1.1483007    2.208857
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           0.9440473   0.6517990    1.367331
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.7566282   1.4262331    2.163561
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.1477112   0.9568211    1.376685
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           2.0368080   1.8129063    2.288363
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.5207448   1.3463567    1.717721
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           1.7976963   1.2696785    2.545299
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.1707608   0.7880465    1.739340
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           1.3007078   1.0844852    1.560040
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           1.1313755   0.9124903    1.402766
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           2.4158622   1.3338327    4.375654
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           1.1589517   0.5249655    2.558586
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           1.5611739   0.8871342    2.747346
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           1.2543182   0.6514211    2.415203
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           3.4662162   1.6826428    7.140348
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           1.8269231   0.8212547    4.064084
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           1.9613406   1.2068924    3.187407
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           1.6250941   0.9052665    2.917297
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           1.5453636   0.9620801    2.482276
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           1.5237021   0.9916997    2.341100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.2885714   1.0481288    1.584172
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.3325000   1.0686815    1.661446
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.9172009   1.2828633    2.865199
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.5333869   0.9624308    2.443059
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           2.5454944   1.5906676    4.073473
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.4069202   0.7795389    2.539224
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           3.3581955   2.0069935    5.619090
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.9751718   1.0441926    3.736191
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.5620053   1.0941281    2.229959
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.2822979   0.8712480    1.887279
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.7298569   1.4827745    2.018112
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.2803473   1.0818430    1.515275
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           1.7823969   1.2225861    2.598540
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.2556044   0.8253984    1.910038
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           1.1478013   0.9804248    1.343752
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           0.9313903   0.7682870    1.129120


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.0548033    0.0054382   0.1041683
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1753707    0.1316984   0.2190431
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0595395   -0.0040073   0.1230863
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0506805    0.0106767   0.0906842
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0003530   -0.0004288   0.0011348
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0231842    0.0176739   0.0286946
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0703133    0.0344225   0.1062041
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.0487877   -0.0130755   0.1106508
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.0332054   -0.0009987   0.0674096
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0393025   -0.0271784   0.1057833
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1464920    0.0921991   0.2007849
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0833945   -0.0088514   0.1756404
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0533333   -0.0044787   0.1111452
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0661007    0.0161723   0.1160291
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0067777   -0.0035138   0.0170691
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0038652    0.0014093   0.0063212
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0416957    0.0339131   0.0494783
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.1280143    0.0522698   0.2037589
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0550041    0.0200083   0.0900000
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.2326733    0.1004652   0.3648814
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.1195354   -0.0325786   0.2716494
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.1140351    0.0470193   0.1810508
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.1235894    0.0342260   0.2129529
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.0439299    0.0030971   0.0847626
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1145430    0.0356875   0.1933984
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2422173    0.1220499   0.3623847
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.1663471    0.0957654   0.2369288
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.1520773    0.1008063   0.2033483
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0078965   -0.0006792   0.0164721
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0622659    0.0396441   0.0848878
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.1547595    0.0551960   0.2543230
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0563393   -0.0105119   0.1231906


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.4763670   -0.1196867   0.7551176
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.6394048    0.4340269   0.7702561
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.3731959   -0.1749439   0.6656152
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.3658028    0.0107376   0.5934283
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.1472826   -0.2965904   0.4392008
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2293681    0.1742367   0.2808187
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.2137799    0.0969805   0.3154721
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.2211708   -0.1103411   0.4537039
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.1653631   -0.0200531   0.3170760
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1645374   -0.1637818   0.4002331
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.5158224    0.3075047   0.6614737
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.3109920   -0.1350651   0.5817579
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.3385258   -0.1447208   0.6177688
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.3150802    0.0341001   0.5143232
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0702124   -0.0423575   0.1706252
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0645916    0.0191367   0.1079401
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2541775    0.2064168   0.2990638
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.3478831    0.1061586   0.5242373
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.2187407    0.0665966   0.3460855
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.4883836    0.1210208   0.7022098
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.2814063   -0.1850316   0.5642505
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.5200000    0.1299938   0.7351743
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.3356956    0.0460462   0.5373986
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.1253608    0.0007181   0.2344566
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1581432    0.0388790   0.2626081
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.4258657    0.1675766   0.6040113
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.5078426    0.2435691   0.6797872
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.5921799    0.3567649   0.7414363
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0926568   -0.0143681   0.1883895
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1794525    0.1118151   0.2419391
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.3480582    0.0803350   0.5378447
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.1147402   -0.0324611   0.2409545
