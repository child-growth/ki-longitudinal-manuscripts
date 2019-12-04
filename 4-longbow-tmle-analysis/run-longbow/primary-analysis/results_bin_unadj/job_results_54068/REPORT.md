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

**Intervention Variable:** mwtkg

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mwtkg         swasted   n_cell       n
----------  -------------------------  -----------------------------  -----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             0       36     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             1        1     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg              0      124     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg              1        7     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          0       41     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          1        0     209
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg             0       33      61
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg             1        0      61
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg              0       14      61
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg              1        0      61
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          0       14      61
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          1        0      61
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg             0        6      41
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg             1        0      41
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg              0       28      41
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg              1        0      41
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg          0        7      41
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg          1        0      41
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg             0        9      26
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg             1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg              0        7      26
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg              1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg          0        9      26
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg          1        1      26
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg             0       82     221
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg             1        0     221
Birth       ki0047075b-MAL-ED          PERU                           <52 kg              0       81     221
Birth       ki0047075b-MAL-ED          PERU                           <52 kg              1        0     221
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg          0       58     221
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg          1        0     221
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             0       69     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             1        0     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              0       10     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              1        0     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          0       21     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          1        0     100
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             0       44     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             1        0     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              0       40     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              1        0     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0       29     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        0     113
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             0       88    1091
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             1        1    1091
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg              0      799    1091
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg              1       25    1091
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          0      176    1091
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          1        2    1091
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             0       76     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             1        3     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg              0      386     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg              1       28     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          0       75     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          1        7     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             0       86     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             1        3     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg              0      320     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg              1        6     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          0       92     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          1        3     510
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             0      177     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             1        6     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              0      345     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              1       36     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          0      135     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          1        5     704
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg             0     9564   13707
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg             1      669   13707
Birth       ki1119695-PROBIT           BELARUS                        <52 kg              0     1051   13707
Birth       ki1119695-PROBIT           BELARUS                        <52 kg              1       73   13707
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg          0     2197   13707
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg          1      153   13707
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             0     5164   10286
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             1      291   10286
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              0     1989   10286
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              1      153   10286
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          0     2537   10286
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          1      152   10286
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg             0      422   17995
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg             1        5   17995
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg              0    16029   17995
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg              1      322   17995
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg          0     1195   17995
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg          1       22   17995
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             0       45     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg              0      153     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg              1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          0       41     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg             0      137     208
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg             1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg              0       37     208
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg              1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          0       34     208
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          1        0     208
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg             0       39     235
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg             1        1     235
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg              0      141     235
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg              1        5     235
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg          0       49     235
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg          1        0     235
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg             0       79     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg             1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg              0       75     236
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg          0       82     236
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg          1        0     236
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg             0      100     272
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg             1        0     272
6 months    ki0047075b-MAL-ED          PERU                           <52 kg              0      107     272
6 months    ki0047075b-MAL-ED          PERU                           <52 kg              1        0     272
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg          0       65     272
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg          1        0     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             0      178     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             1        1     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              0       28     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              1        1     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          0       40     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          1        1     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             0       94     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              0       95     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0       58     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        0     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             0       99    1329
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             1        4    1329
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg              0      977    1329
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg              1       34    1329
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          0      210    1329
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          1        5    1329
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             0       71     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             1        0     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg              0      380     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg              1        5     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          0       80     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          1        1     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             0      108     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             1        0     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg              0      381     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg              1        4     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          0      108     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          1        1     602
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             0      184     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              0      383     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          0      148     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          1        0     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             0     1250    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             1        5    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              0      319    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              1        5    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0      407    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        2    1988
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg             0     9734   13065
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg             1        6   13065
6 months    ki1119695-PROBIT           BELARUS                        <52 kg              0     1081   13065
6 months    ki1119695-PROBIT           BELARUS                        <52 kg              1        2   13065
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg          0     2239   13065
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg          1        3   13065
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             0     4221    8110
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             1       34    8110
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              0     1691    8110
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              1       22    8110
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          0     2122    8110
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          1       20    8110
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg             0      114     837
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg             1        0     837
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg              0      504     837
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg              1        0     837
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg          0      219     837
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg          1        0     837
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg             0      404   16775
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg             1        4   16775
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg              0    15001   16775
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg              1      215   16775
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg          0     1140   16775
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg          1       11   16775
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             0       40     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg              0      135     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg              1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          0       37     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg             0      108     168
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg             1        1     168
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg              0       28     168
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg              1        0     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          0       31     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          1        0     168
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg             0       38     226
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg             1        0     226
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg              0      139     226
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg              1        2     226
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg          0       47     226
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg          1        0     226
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg             0       76     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg             1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg              0       74     228
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg              1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg          0       78     228
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg          1        0     228
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg             0       77     201
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg             1        0     201
24 months   ki0047075b-MAL-ED          PERU                           <52 kg              0       73     201
24 months   ki0047075b-MAL-ED          PERU                           <52 kg              1        2     201
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg          0       49     201
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg          1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             0      168     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             1        0     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              0       28     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              1        0     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          0       38     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          1        0     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             0       82     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              0       84     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0       48     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        0     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             0       56     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             1        0     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg              0      298     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg              1       10     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          0       64     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          1        0     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             0      112     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             1        0     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg              0      354     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg              1        8     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          0      103     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          1        1     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             0      138     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             1        0     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              0      270     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              1        3     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          0      102     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          1        1     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        0       6
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg             0     2956    3950
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg             1        2    3950
24 months   ki1119695-PROBIT           BELARUS                        <52 kg              0      321    3950
24 months   ki1119695-PROBIT           BELARUS                        <52 kg              1        1    3950
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg          0      669    3950
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg          1        1    3950
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             0      154     421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             1       16     421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              0      121     421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              1       11     421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          0      115     421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          1        4     421
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg             0       73     562
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg             1        0     562
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg              0      336     562
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg              1        1     562
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg          0      152     562
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg          1        0     562
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg             0      186    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg             1        9    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg              0     7530    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg              1      305    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg          0      548    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg          1       20    8598


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
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/d66fde59-b883-4068-b223-7fd39467d887/ff21c3d1-45e7-436b-8ad2-5d72276bcc90/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d66fde59-b883-4068-b223-7fd39467d887/ff21c3d1-45e7-436b-8ad2-5d72276bcc90/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d66fde59-b883-4068-b223-7fd39467d887/ff21c3d1-45e7-436b-8ad2-5d72276bcc90/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d66fde59-b883-4068-b223-7fd39467d887/ff21c3d1-45e7-436b-8ad2-5d72276bcc90/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093c-NIH-Crypto   BANGLADESH   >=58 kg              NA                0.0327869   0.0069677   0.0586061
Birth       ki1017093c-NIH-Crypto   BANGLADESH   <52 kg               NA                0.0944882   0.0650961   0.1238803
Birth       ki1017093c-NIH-Crypto   BANGLADESH   [52-58) kg           NA                0.0357143   0.0049521   0.0664764
Birth       ki1119695-PROBIT        BELARUS      >=58 kg              NA                0.0653767   0.0323528   0.0984006
Birth       ki1119695-PROBIT        BELARUS      <52 kg               NA                0.0649466   0.0219044   0.1079888
Birth       ki1119695-PROBIT        BELARUS      [52-58) kg           NA                0.0651064   0.0337531   0.0964597
Birth       ki1126311-ZVITAMBO      ZIMBABWE     >=58 kg              NA                0.0533456   0.0473818   0.0593093
Birth       ki1126311-ZVITAMBO      ZIMBABWE     <52 kg               NA                0.0714286   0.0605216   0.0823355
Birth       ki1126311-ZVITAMBO      ZIMBABWE     [52-58) kg           NA                0.0565266   0.0477976   0.0652556
Birth       kiGH5241-JiVitA-3       BANGLADESH   >=58 kg              NA                0.0117096   0.0033075   0.0201117
Birth       kiGH5241-JiVitA-3       BANGLADESH   <52 kg               NA                0.0196930   0.0171157   0.0222703
Birth       kiGH5241-JiVitA-3       BANGLADESH   [52-58) kg           NA                0.0180772   0.0114191   0.0247354
6 months    ki1126311-ZVITAMBO      ZIMBABWE     >=58 kg              NA                0.0079906   0.0053153   0.0106659
6 months    ki1126311-ZVITAMBO      ZIMBABWE     <52 kg               NA                0.0128430   0.0075106   0.0181754
6 months    ki1126311-ZVITAMBO      ZIMBABWE     [52-58) kg           NA                0.0093371   0.0052639   0.0134102
24 months   kiGH5241-JiVitA-3       BANGLADESH   >=58 kg              NA                0.0461538   0.0200673   0.0722404
24 months   kiGH5241-JiVitA-3       BANGLADESH   <52 kg               NA                0.0389279   0.0342901   0.0435657
24 months   kiGH5241-JiVitA-3       BANGLADESH   [52-58) kg           NA                0.0352113   0.0205132   0.0499094


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0667614   0.0483100   0.0852128
Birth       ki1119695-PROBIT        BELARUS      NA                   NA                0.0652951   0.0323101   0.0982801
Birth       ki1126311-ZVITAMBO      ZIMBABWE     NA                   NA                0.0579428   0.0534276   0.0624581
Birth       kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0193943   0.0169827   0.0218059
6 months    ki1126311-ZVITAMBO      ZIMBABWE     NA                   NA                0.0093711   0.0072741   0.0114682
24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0388462   0.0345183   0.0431742


### Parameter: RR


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1017093c-NIH-Crypto   BANGLADESH   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH   <52 kg               >=58 kg           2.8818898   1.2358389   6.720365
Birth       ki1017093c-NIH-Crypto   BANGLADESH   [52-58) kg           >=58 kg           1.0892857   0.3390722   3.499382
Birth       ki1119695-PROBIT        BELARUS      >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT        BELARUS      <52 kg               >=58 kg           0.9934212   0.7185119   1.373513
Birth       ki1119695-PROBIT        BELARUS      [52-58) kg           >=58 kg           0.9958649   0.8500203   1.166733
Birth       ki1126311-ZVITAMBO      ZIMBABWE     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO      ZIMBABWE     <52 kg               >=58 kg           1.3389789   1.1081152   1.617941
Birth       ki1126311-ZVITAMBO      ZIMBABWE     [52-58) kg           >=58 kg           1.0596307   0.8757089   1.282181
Birth       kiGH5241-JiVitA-3       BANGLADESH   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH   <52 kg               >=58 kg           1.6817809   0.8127983   3.479814
Birth       kiGH5241-JiVitA-3       BANGLADESH   [52-58) kg           >=58 kg           1.5437962   0.6849233   3.479670
6 months    ki1126311-ZVITAMBO      ZIMBABWE     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO      ZIMBABWE     <52 kg               >=58 kg           1.6072594   0.9428563   2.739848
6 months    ki1126311-ZVITAMBO      ZIMBABWE     [52-58) kg           >=58 kg           1.1685066   0.6742321   2.025130
24 months   kiGH5241-JiVitA-3       BANGLADESH   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   <52 kg               >=58 kg           0.8434376   0.4717300   1.508038
24 months   kiGH5241-JiVitA-3       BANGLADESH   [52-58) kg           >=58 kg           0.7629108   0.3756188   1.549531


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093c-NIH-Crypto   BANGLADESH   >=58 kg              NA                 0.0339745    0.0082740   0.0596749
Birth       ki1119695-PROBIT        BELARUS      >=58 kg              NA                -0.0000816   -0.0028831   0.0027199
Birth       ki1126311-ZVITAMBO      ZIMBABWE     >=58 kg              NA                 0.0045973    0.0003276   0.0088670
Birth       kiGH5241-JiVitA-3       BANGLADESH   >=58 kg              NA                 0.0076847   -0.0008191   0.0161884
6 months    ki1126311-ZVITAMBO      ZIMBABWE     >=58 kg              NA                 0.0013805   -0.0006306   0.0033917
24 months   kiGH5241-JiVitA-3       BANGLADESH   >=58 kg              NA                -0.0073076   -0.0332464   0.0186312


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093c-NIH-Crypto   BANGLADESH   >=58 kg              NA                 0.5088943   -0.0227709   0.7641849
Birth       ki1119695-PROBIT        BELARUS      >=58 kg              NA                -0.0012500   -0.0451118   0.0407710
Birth       ki1126311-ZVITAMBO      ZIMBABWE     >=58 kg              NA                 0.0793417    0.0028743   0.1499449
Birth       kiGH5241-JiVitA-3       BANGLADESH   >=58 kg              NA                 0.3962341   -0.2351236   0.7048609
6 months    ki1126311-ZVITAMBO      ZIMBABWE     >=58 kg              NA                 0.1473189   -0.0934985   0.3351020
24 months   kiGH5241-JiVitA-3       BANGLADESH   >=58 kg              NA                -0.1881161   -1.0865684   0.3234730
