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
* W_fage
* meducyrs
* feducyrs
* single
* brthmon
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mwtkg         stunted   n_cell       n
----------  -------------------------  -----------------------------  -----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             0       40     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             1        7     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg              0      126     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg              1       30     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          0       38     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          1        5     246
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg             0      110     184
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg             1       11     184
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg              0       28     184
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg              1        5     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          0       27     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          1        3     184
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg             0       33     198
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg             1        3     198
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg              0      101     198
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg              1       22     198
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg          0       32     198
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg          1        7     198
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg             0       50     172
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg             1        7     172
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg              0       43     172
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg              1        9     172
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg          0       61     172
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg          1        2     172
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg             0       91     276
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg             1        8     276
Birth       ki0047075b-MAL-ED          PERU                           <52 kg              0       89     276
Birth       ki0047075b-MAL-ED          PERU                           <52 kg              1       18     276
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg          0       63     276
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg          1        7     276
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             0      152     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             1       14     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              0       19     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              1        4     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          0       34     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          1        5     228
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             0       47     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             1        5     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              0       33     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              1        7     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0       23     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        6     121
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             0       11     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             1        3     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg              0      105     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg              1       36     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          0       23     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          1        4     182
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg              0       22      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg              1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          0        3      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             0        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              0       16      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              1        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          0        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          1        1      27
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg             0    10253   13767
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg             1       21   13767
Birth       ki1119695-PROBIT           BELARUS                        <52 kg              0     1125   13767
Birth       ki1119695-PROBIT           BELARUS                        <52 kg              1        6   13767
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg          0     2356   13767
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg          1        6   13767
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             0     5286   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             1      449   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              0     2030   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              1      328   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          0     2561   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          1      336   10990
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             0       40     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             1        6     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg              0      115     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg              1       39     241
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
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg          0       38     235
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg          1       11     235
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
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0       46     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1       12     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             0       88    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             1       11    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg              0      686    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg              1      333    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          0      178    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          1       34    1330
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             0       57     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             1       14     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg              0      268     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg              1      117     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          0       68     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          1       13     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             0       96     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             1       11     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg              0      302     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg              1       67     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          0       91     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          1       15     582
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
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             0     3647    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             1      524    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              0     1254    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              1      421    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          0     1716    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          1      380    7942
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg             0       86     837
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg             1       28     837
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg              0      286     837
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg              1      218     837
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg          0      157     837
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg          1       62     837
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             0       30     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             1       10     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg              0       56     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg              1       79     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          0       28     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          1        9     212
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg             0      106     168
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg             1        3     168
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg              0       26     168
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg              1        2     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          0       30     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          1        1     168
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg             0       27     226
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg             1       11     226
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg              0       77     226
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg              1       64     226
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg          0       28     226
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg          1       19     226
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg             0       68     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg             1        8     228
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg              0       48     228
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg              1       26     228
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
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              0       20     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              1       64     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0        9     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1       39     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             0       38     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             1       19     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg              0      120     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg              1      188     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          0       33     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          1       31     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             0       93     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             1       18     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg              0      214     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg              1      147     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          0       80     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          1       24     576
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
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             0       83     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             1      100     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              0       25     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              1      107     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          0       38     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          1       83     436
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg             0       57     578
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg             1       20     578
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg              0      169     578
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg              1      179     578
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg          0       97     578
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg          1       56     578


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/efca1750-8b70-45b7-8b35-659bf6974515/9ecd2486-f8ee-40f1-a455-87cc483a634b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/efca1750-8b70-45b7-8b35-659bf6974515/9ecd2486-f8ee-40f1-a455-87cc483a634b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/efca1750-8b70-45b7-8b35-659bf6974515/9ecd2486-f8ee-40f1-a455-87cc483a634b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/efca1750-8b70-45b7-8b35-659bf6974515/9ecd2486-f8ee-40f1-a455-87cc483a634b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.1489362    0.0469445   0.2509279
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                0.1923077    0.1303362   0.2542791
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                0.1162791    0.0202712   0.2122869
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.0808081    0.0270246   0.1345916
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.1682243    0.0972188   0.2392298
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.1000000    0.0295942   0.1704058
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0961538    0.0156940   0.1766137
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1750000    0.0567595   0.2932405
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2068966    0.0588519   0.3549412
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0020440    0.0003496   0.0037384
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.0053050   -0.0001768   0.0107869
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0025402    0.0003101   0.0047704
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0780488    0.0710417   0.0850559
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1376144    0.1233359   0.1518929
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1170775    0.1050750   0.1290800
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.1628820    0.0944299   0.2313342
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.2367274    0.1531420   0.3203128
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.1896908    0.0819934   0.2973883
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.1675978    0.1127706   0.2224250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.3103448    0.1416269   0.4790627
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.2682927    0.1323978   0.4041876
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1975141    0.1155797   0.2794485
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2821156    0.1902670   0.3739643
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2002151    0.0907635   0.3096667
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1099867    0.0593871   0.1605863
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.3263384    0.3013464   0.3513304
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.1644945    0.1264668   0.2025223
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1895663    0.0893134   0.2898192
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.3083907    0.2621114   0.3546701
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.1566071    0.0781061   0.2351082
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.1095292    0.0465051   0.1725534
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.1789467    0.1396109   0.2182826
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.1429672    0.0726154   0.2133191
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.1484603    0.0935959   0.2033248
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.2550628    0.2110239   0.2991018
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.1856207    0.1180879   0.2531535
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0898774    0.0739095   0.1058454
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1387371    0.0996621   0.1778121
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0866340    0.0585946   0.1146735
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0555999    0.0423795   0.0688202
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.1008485    0.0750634   0.1266336
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0654928    0.0493436   0.0816419
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1249118    0.1147736   0.1350499
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.2555216    0.2338311   0.2772121
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1834715    0.1664083   0.2005347
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.2528108    0.1739990   0.3316226
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.4317980    0.3885287   0.4750673
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.2823592    0.2221519   0.3425665
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.2500000    0.1154928   0.3845072
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                0.5851852    0.5018781   0.6684922
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                0.2432432    0.1046722   0.3818143
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.3178883    0.1512460   0.4845306
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                0.4551467    0.3722763   0.5380171
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                0.3949352    0.2514584   0.5384120
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.1052632    0.0361148   0.1744115
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.3513514    0.2423424   0.4603603
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.1923077    0.1046527   0.2799627
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.2359505    0.1366472   0.3352538
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.4649861    0.3503307   0.5796415
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.4127277    0.2627689   0.5626864
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.3055895    0.2356618   0.3755171
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.4857881    0.2879415   0.6836346
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.4657343    0.3084595   0.6230091
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.6097561    0.5039272   0.7155850
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.7619048    0.6706089   0.8532007
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.8125000    0.7018231   0.9231769
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.3219632    0.1977520   0.4461745
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.6131971    0.5586620   0.6677321
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.4680688    0.3421538   0.5939838
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.1554861    0.0845650   0.2264072
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.4128767    0.3614231   0.4643304
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.2226033    0.1366139   0.3085927
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0989868    0.0505688   0.1474048
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.3494281    0.2921310   0.4067252
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.2087828    0.1241298   0.2934358
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0769181    0.0472350   0.1066011
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.1250936    0.0782003   0.1719869
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.1010537    0.0555371   0.1465704
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.5446406    0.4718397   0.6174415
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.8367147    0.7735677   0.8998617
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.6801742    0.5910324   0.7693161
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.2565300    0.1557810   0.3572790
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.5175781    0.4646838   0.5704724
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.3620627    0.2840117   0.4401137


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1707317   0.1236156   0.2178478
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                0.1195652   0.0812181   0.1579123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1487603   0.0850915   0.2124292
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.0023970   0.0011029   0.0036912
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1012739   0.0956332   0.1069146
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2205882   0.1712211   0.2699554
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2008032   0.1509453   0.2506612
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2348178   0.1818480   0.2877876
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2842105   0.2659845   0.3024365
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1597938   0.1299995   0.1895881
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0965309   0.0835493   0.1095126
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0598408   0.0469716   0.0727101
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1668346   0.1586345   0.1750346
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3679809   0.3352903   0.4006715
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4622642   0.3949918   0.5295365
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4159292   0.3515272   0.4803312
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2149123   0.1614774   0.2683472
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3504274   0.2891665   0.4116882
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7149533   0.6543278   0.7755787
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5547786   0.5076945   0.6018626
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3281250   0.2897474   0.3665026
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852230   0.0552609   0.1151851
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6651376   0.6207877   0.7094875
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4411765   0.4006626   0.4816903


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           1.2912088   0.6057693    2.752236
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           0.7807309   0.2670760    2.282275
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           2.0817757   0.9465750    4.578391
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           1.2375000   0.4696521    3.260725
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.8199999   0.6208455    5.335304
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           2.1517241   0.7155263    6.470644
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           2.5954276   0.6078635   11.081836
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.2427725   0.3611349    4.276749
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.7631835   1.5370795    2.022547
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.5000549   1.3089472    1.719064
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           1.4533672   0.8345849    2.530930
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           1.1645902   0.5742721    2.361721
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           1.8517241   0.9818013    3.492440
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           1.6008130   0.8759360    2.925559
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.4283318   0.8415017    2.424394
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0136752   0.5098921    2.015206
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           2.9670723   1.7860055    4.929166
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.4955861   0.9417800    2.375054
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.6268225   0.9389143    2.818736
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           0.8261338   0.3983983    1.713102
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           1.6337805   0.8818811    3.026756
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.3052883   0.6120791    2.783591
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           1.7180539   1.1422137    2.584200
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.2503050   0.7441795    2.100652
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.5436253   1.1063038    2.153820
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           0.9639129   0.6663274    1.394402
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.8138265   1.4703306    2.237569
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.1779307   0.9941042    1.395750
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           2.0456164   1.8189176    2.300570
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.4688089   1.2982743    1.661744
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           1.7079890   1.2317355    2.368387
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.1168797   0.7649589    1.630702
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           2.3407407   1.3416811    4.083733
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           0.9729730   0.4444189    2.130144
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           1.4317820   0.8199068    2.500284
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           1.2423710   0.6558204    2.353519
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           3.3378378   1.6141891    6.902018
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           1.8269231   0.8212547    4.064084
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           1.9706934   1.2084745    3.213665
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           1.7492129   1.0035565    3.048902
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           1.5896755   0.9956965    2.537990
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           1.5240522   1.0150101    2.288386
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.2495238   1.0119276    1.542906
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.3325000   1.0686815    1.661446
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.9045561   1.2808274    2.832024
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.4537957   0.9097684    2.323143
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           2.6553928   1.6552502    4.259846
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.4316604   0.7874908    2.602762
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           3.5300469   2.1073870    5.913120
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           2.1091983   1.1177247    3.980155
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.6263223   1.1337378    2.332924
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.3137838   0.8866401    1.946706
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.5362694   1.3172567    1.791696
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.2488497   1.0353261    1.506410
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           2.0176125   1.3445076    3.027696
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.4113854   0.9017697    2.209000


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.0217955   -0.0711957   0.1147868
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.0387571   -0.0090758   0.0865901
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0526065   -0.0178439   0.1230569
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0003530   -0.0004288   0.0011348
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0232251    0.0176875   0.0287626
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.0577062   -0.0012304   0.1166428
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.0332054   -0.0009987   0.0674096
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0373037   -0.0296744   0.1042818
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1742239    0.1153648   0.2330829
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0785901   -0.0164259   0.1736062
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0502646   -0.0096825   0.1102117
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0613299    0.0108272   0.1118326
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0066535   -0.0037181   0.0170250
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0042410    0.0018654   0.0066165
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0419228    0.0339007   0.0499448
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.1151701    0.0404238   0.1899164
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.2122642    0.0866039   0.3379244
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.0980409   -0.0568415   0.2529233
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.1096491    0.0429474   0.1763508
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.1322087    0.0465089   0.2179084
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.0448379    0.0044765   0.0851993
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1051972    0.0258737   0.1845207
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2328153    0.1157770   0.3498536
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.1726389    0.1039674   0.2413104
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.1578225    0.1084188   0.2072263
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0083049   -0.0004569   0.0170668
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1204970    0.0662052   0.1747888
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.1846465    0.0887856   0.2805073


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.1276596   -0.6273562   0.5323840
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.3241506   -0.2015336   0.6198422
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.3536325   -0.3056963   0.6800244
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.1472826   -0.2965904   0.4392008
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2293291    0.1740141   0.2809398
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.2616014   -0.0517660   0.4816028
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.1653631   -0.0200531   0.3170760
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1588624   -0.1797548   0.4002886
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.6130099    0.3722189   0.7614434
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2930757   -0.1672227   0.5718538
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.3145589   -0.1783134   0.6012695
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.2923392    0.0089355   0.4947010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0689258   -0.0445944   0.1701094
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0708708    0.0265104   0.1132098
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2512835    0.2028282   0.2967935
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.3129785    0.0774744   0.4883627
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.4591837    0.1069398   0.6724943
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.2357154   -0.2459128   0.5311622
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.5102041    0.1131669   0.7294868
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.3591074    0.0812811   0.5529173
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.1279521    0.0048834   0.2358005
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1471385    0.0260530   0.2531702
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.4196545    0.1631862   0.5975199
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.5261375    0.2700237   0.6923932
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.6145514    0.3914849   0.7558473
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0974494   -0.0110110   0.1942744
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1811610    0.0932941   0.2605130
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.4185320    0.1550349   0.5998592
