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

agecat      studyid                    country                        mwtkg         wasted   n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg            0       34     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg            1        3     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg             0      107     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg             1       24     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg         0       33     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg         1        8     209
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg            0       33      61
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg            1        0      61
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg             0       13      61
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg             1        1      61
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg         0       13      61
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg         1        1      61
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg            0        6      41
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg            1        0      41
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg             0       23      41
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg             1        5      41
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg         0        7      41
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg         1        0      41
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg            0        9      26
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg            1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg             0        6      26
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg             1        1      26
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg         0        9      26
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg         1        1      26
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg            0       80     221
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg            1        2     221
Birth       ki0047075b-MAL-ED          PERU                           <52 kg             0       78     221
Birth       ki0047075b-MAL-ED          PERU                           <52 kg             1        3     221
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg         0       58     221
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg         1        0     221
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg            0       62     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg            1        7     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg             0        9     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg             1        1     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg         0       19     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg         1        2     100
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg            0       44     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg            1        0     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg             0       40     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg             1        0     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg         0       28     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1        1     113
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg            0       84    1091
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg            1        5    1091
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg             0      725    1091
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg             1       99    1091
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg         0      165    1091
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg         1       13    1091
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg            0       64     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg            1       15     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg             0      282     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg             1      132     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg         0       61     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg         1       21     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg            0       75     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg            1       14     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg             0      245     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg             1       81     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg         0       77     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg         1       18     510
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg            0      156     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg            1       27     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg             0      266     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg             1      115     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg         0      111     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg         1       29     704
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg            0     8150   13707
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg            1     2083   13707
Birth       ki1119695-PROBIT           BELARUS                        <52 kg             0      871   13707
Birth       ki1119695-PROBIT           BELARUS                        <52 kg             1      253   13707
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg         0     1827   13707
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg         1      523   13707
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg            0     4692   10286
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg            1      763   10286
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg             0     1749   10286
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg             1      393   10286
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg         0     2268   10286
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg         1      421   10286
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg            0      383   17995
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg            1       44   17995
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg             0    14554   17995
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg             1     1797   17995
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg         0     1086   17995
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg         1      131   17995
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg            0       44     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg            1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg             0      148     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg             1        6     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg         0       41     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg         1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg            0      136     208
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg            1        1     208
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg             0       37     208
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg             1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg         0       34     208
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg         1        0     208
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg            0       39     235
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg            1        1     235
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg             0      130     235
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg             1       16     235
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg         0       47     235
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg         1        2     235
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg            0       79     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg            1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg             0       72     236
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg             1        3     236
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg         0       81     236
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg         1        1     236
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg            0      100     272
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg            1        0     272
6 months    ki0047075b-MAL-ED          PERU                           <52 kg             0      107     272
6 months    ki0047075b-MAL-ED          PERU                           <52 kg             1        0     272
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg         0       65     272
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg         1        0     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg            0      175     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg            1        4     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg             0       28     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg             1        1     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg         0       39     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg         1        2     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg            0       94     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg            1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg             0       94     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg             1        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg         0       58     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1        0     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg            0       94    1329
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg            1        9    1329
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg             0      882    1329
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg             1      129    1329
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg         0      187    1329
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg         1       28    1329
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg            0       69     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg            1        2     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg             0      356     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg             1       29     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg         0       77     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg         1        4     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg            0      104     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg            1        4     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg             0      366     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg             1       19     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg         0      107     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg         1        2     602
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg            0      182     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg            1        2     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg             0      365     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg             1       18     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg         0      147     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg         1        1     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            0     1209    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            1       46    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             0      308    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       16    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         0      386    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       23    1988
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg            0     9670   13065
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg            1       70   13065
6 months    ki1119695-PROBIT           BELARUS                        <52 kg             0     1072   13065
6 months    ki1119695-PROBIT           BELARUS                        <52 kg             1       11   13065
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg         0     2220   13065
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg         1       22   13065
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg            0     4143    8110
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg            1      112    8110
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg             0     1631    8110
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg             1       82    8110
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg         0     2080    8110
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg         1       62    8110
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg            0      113     837
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg            1        1     837
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg             0      494     837
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg             1       10     837
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg         0      216     837
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg         1        3     837
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg            0      376   16775
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg            1       32   16775
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg             0    13905   16775
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg             1     1311   16775
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg         0     1075   16775
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg         1       76   16775
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg            0       38     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg            1        2     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg             0      119     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg             1       16     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg         0       34     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg         1        3     212
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg            0      107     168
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg            1        2     168
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg             0       28     168
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg             1        0     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg         0       30     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg         1        1     168
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg            0       37     226
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg            1        1     226
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg             0      119     226
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg             1       22     226
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg         0       43     226
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg         1        4     226
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg            0       75     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg            1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg             0       71     228
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg             1        3     228
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg         0       77     228
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg         1        1     228
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg            0       77     201
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg            1        0     201
24 months   ki0047075b-MAL-ED          PERU                           <52 kg             0       71     201
24 months   ki0047075b-MAL-ED          PERU                           <52 kg             1        4     201
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg         0       49     201
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg         1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg            0      167     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg            1        1     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg             0       28     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg             1        0     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg         0       38     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg         1        0     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg            0       81     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg            1        1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg             0       81     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg             1        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg         0       48     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1        0     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg            0       56     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg            1        0     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg             0      259     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg             1       49     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg         0       60     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg         1        4     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg            0      107     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg            1        5     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg             0      311     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg             1       51     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg         0       98     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg         1        6     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg            0      130     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg            1        8     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg             0      243     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg             1       30     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg         0       96     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg         1        7     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1        0       6
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg            0     2932    3950
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg            1       26    3950
24 months   ki1119695-PROBIT           BELARUS                        <52 kg             0      318    3950
24 months   ki1119695-PROBIT           BELARUS                        <52 kg             1        4    3950
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg         0      657    3950
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg         1       13    3950
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg            0      141     421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg            1       29     421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg             0      103     421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg             1       29     421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg         0      103     421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg         1       16     421
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg            0       73     562
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg            1        0     562
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg             0      330     562
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg             1        7     562
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg         0      149     562
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg         1        3     562
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg            0      155    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg            1       40    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg             0     6117    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg             1     1718    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg         0      451    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg         1      117    8598


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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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
![](/tmp/dc5e34b8-0ee9-4400-866a-829e18bc2b80/3f886292-f88d-4739-b9fa-a16b84b5e586/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dc5e34b8-0ee9-4400-866a-829e18bc2b80/3f886292-f88d-4739-b9fa-a16b84b5e586/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dc5e34b8-0ee9-4400-866a-829e18bc2b80/3f886292-f88d-4739-b9fa-a16b84b5e586/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dc5e34b8-0ee9-4400-866a-829e18bc2b80/3f886292-f88d-4739-b9fa-a16b84b5e586/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.0561798   0.0184587   0.0939008
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.1201456   0.0811367   0.1591546
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.0730337   0.0346496   0.1114178
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1977638   0.1088113   0.2867164
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.3154566   0.2704720   0.3604411
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.2417868   0.1518107   0.3317630
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.1609527   0.0794221   0.2424832
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.2466898   0.2000130   0.2933666
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.1856515   0.1038843   0.2674188
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.1444541   0.0934882   0.1954201
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.3003894   0.2538347   0.3469441
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.2171697   0.1428987   0.2914406
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.2038223   0.1385634   0.2690812
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.2212864   0.1519167   0.2906561
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.2170220   0.1505669   0.2834772
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1435310   0.1340868   0.1529752
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1814984   0.1648349   0.1981619
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1549599   0.1408959   0.1690239
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.1063929   0.0795952   0.1331906
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.1099470   0.1046357   0.1152584
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.1092359   0.0896562   0.1288157
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.0873787   0.0376907   0.1370666
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.1275964   0.0982369   0.1569559
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.1302326   0.0903997   0.1700654
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0358330   0.0255246   0.0461414
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0627195   0.0313693   0.0940697
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0573762   0.0328122   0.0819401
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0071588   0.0052856   0.0090319
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.0111457   0.0037206   0.0185709
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0095356   0.0043264   0.0147449
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0258711   0.0210480   0.0306943
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0518374   0.0407305   0.0629442
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0309882   0.0231624   0.0388139
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0788252   0.0533614   0.1042889
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.0860809   0.0810391   0.0911227
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.0675146   0.0513658   0.0836634
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0446429   0.0063627   0.0829230
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.1408840   0.1050144   0.1767536
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.0576923   0.0128423   0.1025423
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0579710   0.0189437   0.0969984
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.1098901   0.0727545   0.1470257
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.0679612   0.0193093   0.1166131
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1650512   0.1097509   0.2203515
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.2211452   0.1489992   0.2932913
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1455742   0.0754252   0.2157232
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.2161057   0.1614068   0.2708047
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.2194222   0.2091479   0.2296966
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.2136361   0.1747059   0.2525662


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1072411   0.0763212   0.1381609
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2921739   0.2549711   0.3293768
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2215686   0.1854897   0.2576475
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2428977   0.2111977   0.2745977
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.2085796   0.1430705   0.2740887
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1533152   0.1463521   0.1602782
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1095860   0.1044555   0.1147165
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1249059   0.0994146   0.1503973
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0427565   0.0338612   0.0516519
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0078837   0.0058935   0.0098738
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0315660   0.0277605   0.0353714
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0845902   0.0797842   0.0893962
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1072664   0.0820169   0.1325160
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1757720   0.1393702   0.2121737
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2180740   0.2082038   0.2279441


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           2.1385922   1.2224537   3.741309
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.3000000   0.4894687   3.452723
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.5951175   0.9955337   2.555815
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.2226038   0.6827562   2.189303
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           1.5326856   0.8926353   2.631674
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.1534543   0.5893826   2.257374
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           2.0794792   1.4141363   3.057862
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.5033813   0.9199345   2.456866
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.0856830   0.9254927   1.273600
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0647610   0.9947320   1.139720
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.2645238   1.1294265   1.415781
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.0796264   0.9652093   1.207607
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           1.0334060   0.7994747   1.335787
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           1.0267221   0.7582055   1.390333
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           1.4602701   0.8663107   2.461459
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.4904390   0.8935130   2.486151
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.7503300   0.9833732   3.115455
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.6012113   0.9559994   2.681882
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.5569307   0.8011620   3.025647
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.3320224   0.7920174   2.240208
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           2.0036768   1.5082102   2.661911
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.1977896   0.8750894   1.639490
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           1.0920484   0.7869908   1.515354
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           0.8565107   0.5708921   1.285025
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           3.1558010   1.2901595   7.719263
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.2923077   0.4061679   4.111745
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           1.8956044   0.8924902   4.026169
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.1723301   0.4388000   3.132082
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.3398582   0.8393913   2.138716
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           0.8819940   0.4902412   1.586797
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           1.0153466   0.7851693   1.313002
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           0.9885719   0.7181885   1.360749


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.0510613    0.0186947   0.0834278
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0944101    0.0095700   0.1792502
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0606160   -0.0159656   0.1371975
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0984436    0.0507395   0.1461477
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0047572    0.0007010   0.0088135
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0097842    0.0029763   0.0165920
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0031931   -0.0233698   0.0297560
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.0375273   -0.0015559   0.0766105
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0069236   -0.0002566   0.0141038
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0007249   -0.0002061   0.0016559
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0056948    0.0019958   0.0093939
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0057650   -0.0194491   0.0309791
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0626236    0.0234443   0.1018028
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0295776   -0.0065257   0.0656810
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0107207   -0.0327091   0.0541506
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0019682   -0.0522589   0.0561954


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.4761356    0.0833933   0.7005980
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.3231297   -0.0372544   0.5583018
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.2735765   -0.1669184   0.5477909
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.4052882    0.1793456   0.5690243
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0228078    0.0025068   0.0426957
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0638173    0.0184249   0.1071106
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0291379   -0.2461141   0.2435900
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.3004444   -0.1172838   0.5619931
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1619301   -0.0202415   0.3115737
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0919475   -0.0271987   0.1972737
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1804109    0.0564894   0.2880564
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0681521   -0.2829160   0.3231509
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.5838134    0.0552311   0.8166628
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.3378422   -0.2166810   0.6396320
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0609923   -0.2212688   0.2780169
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0090255   -0.2735968   0.2289315
