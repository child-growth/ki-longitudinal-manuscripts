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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mwtkg         wasted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -----------  -------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg            0       34     209  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg            1        3     209  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg             0      107     209  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg             1       24     209  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg         0       33     209  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg         1        8     209  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg            0       33      61  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg            1        0      61  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg             0       13      61  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg             1        1      61  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg         0       13      61  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg         1        1      61  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg            0        6      41  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg            1        0      41  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg             0       23      41  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg             1        5      41  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg         0        7      41  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg         1        0      41  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg            0        9      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg            1        0      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg             0        6      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg             1        1      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg         0        9      26  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg         1        1      26  wasted           
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg            0       80     221  wasted           
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg            1        2     221  wasted           
Birth       ki0047075b-MAL-ED          PERU                           <52 kg             0       78     221  wasted           
Birth       ki0047075b-MAL-ED          PERU                           <52 kg             1        3     221  wasted           
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg         0       58     221  wasted           
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg         1        0     221  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg            0       62     100  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg            1        7     100  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg             0        9     100  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg             1        1     100  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg         0       19     100  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg         1        2     100  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg            0       44     113  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg            1        0     113  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg             0       40     113  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg             1        0     113  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg         0       28     113  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1        1     113  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg            0       84    1091  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg            1        5    1091  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg             0      725    1091  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg             1       99    1091  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg         0      165    1091  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg         1       13    1091  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg            0       64     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg            1       15     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg             0      282     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg             1      132     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg         0       61     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg         1       21     575  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg            0       75     510  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg            1       14     510  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg             0      245     510  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg             1       81     510  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg         0       77     510  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg         1       18     510  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg            0      156     704  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg            1       27     704  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg             0      266     704  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg             1      115     704  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg         0      111     704  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg         1       29     704  wasted           
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg            0     8150   13707  wasted           
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg            1     2083   13707  wasted           
Birth       ki1119695-PROBIT           BELARUS                        <52 kg             0      871   13707  wasted           
Birth       ki1119695-PROBIT           BELARUS                        <52 kg             1      253   13707  wasted           
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg         0     1827   13707  wasted           
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg         1      523   13707  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg            0     4692   10286  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg            1      763   10286  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg             0     1749   10286  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg             1      393   10286  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg         0     2268   10286  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg         1      421   10286  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg            0      383   17995  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg            1       44   17995  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg             0    14554   17995  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg             1     1797   17995  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg         0     1086   17995  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg         1      131   17995  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg            0       44     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg            1        2     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg             0      148     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg             1        6     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg         0       41     241  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg         1        0     241  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg            0      136     208  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg            1        1     208  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg             0       37     208  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg             1        0     208  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg         0       34     208  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg         1        0     208  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg            0       39     235  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg            1        1     235  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg             0      130     235  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg             1       16     235  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg         0       47     235  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg         1        2     235  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg            0       79     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg            1        0     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg             0       72     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg             1        3     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg         0       81     236  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg         1        1     236  wasted           
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg            0      100     272  wasted           
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg            1        0     272  wasted           
6 months    ki0047075b-MAL-ED          PERU                           <52 kg             0      107     272  wasted           
6 months    ki0047075b-MAL-ED          PERU                           <52 kg             1        0     272  wasted           
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg         0       65     272  wasted           
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg         1        0     272  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg            0      175     249  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg            1        4     249  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg             0       28     249  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg             1        1     249  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg         0       39     249  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg         1        2     249  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg            0       94     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg            1        0     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg             0       94     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg             1        1     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg         0       58     247  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1        0     247  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg            0       94    1329  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg            1        9    1329  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg             0      882    1329  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg             1      129    1329  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg         0      187    1329  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg         1       28    1329  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg            0       69     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg            1        2     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg             0      356     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg             1       29     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg         0       77     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg         1        4     537  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg            0      104     602  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg            1        4     602  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg             0      366     602  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg             1       19     602  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg         0      107     602  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg         1        2     602  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg            0      182     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg            1        2     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg             0      365     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg             1       18     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg         0      147     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg         1        1     715  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            0     1209    1988  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            1       46    1988  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             0      308    1988  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       16    1988  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         0      386    1988  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       23    1988  wasted           
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg            0     9670   13065  wasted           
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg            1       70   13065  wasted           
6 months    ki1119695-PROBIT           BELARUS                        <52 kg             0     1072   13065  wasted           
6 months    ki1119695-PROBIT           BELARUS                        <52 kg             1       11   13065  wasted           
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg         0     2220   13065  wasted           
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg         1       22   13065  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg            0     4143    8110  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg            1      112    8110  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg             0     1631    8110  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg             1       82    8110  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg         0     2080    8110  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg         1       62    8110  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg            0      113     837  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg            1        1     837  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg             0      494     837  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg             1       10     837  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg         0      216     837  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg         1        3     837  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg            0      376   16775  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg            1       32   16775  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg             0    13905   16775  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg             1     1311   16775  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg         0     1075   16775  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg         1       76   16775  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg            0       38     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg            1        2     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg             0      119     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg             1       16     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg         0       34     212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg         1        3     212  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg            0      107     168  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg            1        2     168  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg             0       28     168  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg             1        0     168  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg         0       30     168  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg         1        1     168  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg            0       37     226  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg            1        1     226  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg             0      119     226  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg             1       22     226  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg         0       43     226  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg         1        4     226  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg            0       75     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg            1        1     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg             0       71     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg             1        3     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg         0       77     228  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg         1        1     228  wasted           
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg            0       77     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg            1        0     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           <52 kg             0       71     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           <52 kg             1        4     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg         0       49     201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg         1        0     201  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg            0      167     234  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg            1        1     234  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg             0       28     234  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg             1        0     234  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg         0       38     234  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg         1        0     234  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg            0       81     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg            1        1     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg             0       81     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg             1        3     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg         0       48     214  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1        0     214  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg            0       56     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg            1        0     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg             0      259     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg             1       49     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg         0       60     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg         1        4     428  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg            0      107     578  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg            1        5     578  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg             0      311     578  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg             1       51     578  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg         0       98     578  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg         1        6     578  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg            0      130     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg            1        8     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg             0      243     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg             1       30     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg         0       96     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg         1        7     514  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            0        4       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            1        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             0        1       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         0        1       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1        0       6  wasted           
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg            0     2932    3950  wasted           
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg            1       26    3950  wasted           
24 months   ki1119695-PROBIT           BELARUS                        <52 kg             0      318    3950  wasted           
24 months   ki1119695-PROBIT           BELARUS                        <52 kg             1        4    3950  wasted           
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg         0      657    3950  wasted           
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg         1       13    3950  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg            0      141     421  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg            1       29     421  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg             0      103     421  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg             1       29     421  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg         0      103     421  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg         1       16     421  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg            0       73     562  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg            1        0     562  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg             0      330     562  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg             1        7     562  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg         0      149     562  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg         1        3     562  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg            0      155    8598  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg            1       40    8598  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg             0     6117    8598  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg             1     1718    8598  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg         0      451    8598  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg         1      117    8598  wasted           


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/a156c9d2-29d1-419c-bd95-ebb3a2bc6fc2/644251b4-88ca-4d72-8999-228ecb01a322/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a156c9d2-29d1-419c-bd95-ebb3a2bc6fc2/644251b4-88ca-4d72-8999-228ecb01a322/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a156c9d2-29d1-419c-bd95-ebb3a2bc6fc2/644251b4-88ca-4d72-8999-228ecb01a322/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a156c9d2-29d1-419c-bd95-ebb3a2bc6fc2/644251b4-88ca-4d72-8999-228ecb01a322/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.0561798   0.0184587   0.0939008
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.1201456   0.0811367   0.1591546
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.0730337   0.0346496   0.1114178
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1898734   0.1033127   0.2764342
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.3188406   0.2739105   0.3637706
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.2560976   0.1615436   0.3506515
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.1573034   0.0815880   0.2330187
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.2484663   0.2015122   0.2954203
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.1894737   0.1105930   0.2683543
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.1475410   0.0961219   0.1989601
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.3018373   0.2557099   0.3479647
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.2071429   0.1399651   0.2743206
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.2035571   0.1381438   0.2689705
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.2250890   0.1491063   0.3010717
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.2225532   0.1563242   0.2887822
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1398717   0.1306668   0.1490766
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1834734   0.1670814   0.1998654
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1565638   0.1428282   0.1702993
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.1030445   0.0746347   0.1314543
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.1099015   0.1045943   0.1152088
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.1076417   0.0888461   0.1264374
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.0873787   0.0376907   0.1370666
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.1275964   0.0982369   0.1569559
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.1302326   0.0903997   0.1700654
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0366534   0.0262546   0.0470522
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0493827   0.0257847   0.0729807
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0562347   0.0339026   0.0785668
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0071869   0.0053050   0.0090687
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.0101570   0.0025233   0.0177907
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0098127   0.0051490   0.0144764
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0263220   0.0215115   0.0311325
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0478692   0.0377587   0.0579797
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0289449   0.0218447   0.0360452
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0784314   0.0511796   0.1056831
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.0861593   0.0811210   0.0911976
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.0660295   0.0503753   0.0816838
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0446429   0.0063627   0.0829230
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.1408840   0.1050144   0.1767536
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.0576923   0.0128423   0.1025423
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0579710   0.0189437   0.0969984
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.1098901   0.0727545   0.1470257
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.0679612   0.0193093   0.1166131
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1705882   0.1139774   0.2271991
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.2196970   0.1489804   0.2904135
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1344538   0.0730885   0.1958191
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.2051282   0.1478855   0.2623709
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.2192725   0.2090224   0.2295226
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.2059859   0.1697750   0.2421968


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
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.6792271   1.0420236   2.706084
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.3487805   0.7501804   2.425028
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           1.5795355   0.9417925   2.649132
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.2045113   0.6374230   2.276114
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           2.0457859   1.3982768   2.993141
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.4039683   0.8721832   2.259992
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.1057779   0.9403982   1.300242
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0933206   1.0210184   1.170743
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.3117265   1.1739574   1.465664
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.1193387   1.0030721   1.249082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           1.0665444   0.8063086   1.410771
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           1.0446142   0.7560188   1.443375
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           1.4602701   0.8663107   2.461459
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.4904390   0.8935130   2.486151
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.3472893   0.7728747   2.348619
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.5342298   0.9417407   2.499479
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.4132700   0.6610782   3.021325
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.3653625   0.8580904   2.172516
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.8186035   1.3754296   2.404572
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.0996482   0.8098495   1.493149
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           1.0985312   0.7726678   1.561824
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           0.8418766   0.5501240   1.288357
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           3.1558010   1.2901595   7.719263
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.2923077   0.4061679   4.111745
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           1.8956044   0.8924902   4.026169
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.1723301   0.4388000   3.132082
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.2878788   0.8111352   2.044828
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           0.7881773   0.4482826   1.385785
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           1.0689534   0.8052996   1.418927
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           1.0041813   0.7181683   1.404100


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.0510613    0.0186947   0.0834278
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1023005    0.0197297   0.1848713
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0642653   -0.0066829   0.1352134
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0953567    0.0476674   0.1430461
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0050224    0.0011118   0.0089331
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0134435    0.0068599   0.0200271
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0065415   -0.0215745   0.0346575
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.0375273   -0.0015559   0.0766105
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0061032   -0.0010196   0.0132259
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0006968   -0.0002776   0.0016712
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0052440    0.0015916   0.0088964
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0061588   -0.0208255   0.0331431
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0626236    0.0234443   0.1018028
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0295776   -0.0065257   0.0656810
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0051837   -0.0388808   0.0492483
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0129458   -0.0438512   0.0697427


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.4761356    0.0833933   0.7005980
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.3501356   -0.0013667   0.5782527
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.2900467   -0.1113089   0.5464505
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.3925798    0.1664771   0.5573496
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0240792    0.0040442   0.0437112
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0876854    0.0438469   0.1295140
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0596928   -0.2351840   0.2841734
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.3004444   -0.1172838   0.5619931
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1427420   -0.0381470   0.2921125
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0883854   -0.0371253   0.1987070
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1661281    0.0439024   0.2727287
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0728074   -0.3077882   0.3426412
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.5838134    0.0552311   0.8166628
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.3378422   -0.2166810   0.6396320
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0294913   -0.2564994   0.2503878
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0593641   -0.2405836   0.2867906
