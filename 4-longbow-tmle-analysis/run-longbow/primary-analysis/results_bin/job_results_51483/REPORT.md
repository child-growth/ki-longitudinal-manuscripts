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

**Outcome Variable:** ever_co

## Predictor Variables

**Intervention Variable:** mwtkg

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* brthmon
* delta_W_mage
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

agecat        studyid                    country                        mwtkg         ever_co   n_cell       n
------------  -------------------------  -----------------------------  -----------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             0       45     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             1        3     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg              0      129     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg              1       33     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          0       41     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          1        3     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg             0      142     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg             1        1     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg              0       42     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg              1        0     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          0       35     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          1        1     221
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg             0       38     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg             1        4     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg              0      109     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg              1       41     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg          0       42     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg          1        8     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg             0       76     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg             1        4     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg              0       61     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg              1       15     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg          0       80     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg          1        2     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg             0      100     290
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg             1        4     290
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg              0      108     290
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg              1        7     290
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg          0       70     290
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg          1        1     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             0      181     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             1       13     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              0       28     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              1        2     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          0       41     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          1        5     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             0       95     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             1        3     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              0       83     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              1       16     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0       55     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        4     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             0       99    1497
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             1       10    1497
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg              0      845    1497
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg              1      307    1497
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          0      205    1497
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          1       31    1497
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             0       71     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             1       11     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg              0      336     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg              1      112     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          0       80     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          1       14     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             0      115     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             1        5     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg              0      356     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg              1       76     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          0      108     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          1        9     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             0      182     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             1       10     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              0      354     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              1       52     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          0      148     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          1        9     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             0     1408    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             1       68    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              0      370    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              1       23    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0      458    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1       25    2352
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg             0      863    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg             1       68    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg              0      985    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg              1      204    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg          0      950    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg          1      107    3177
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg             0    10263   13772
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg             1       16   13772
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg              0     1128   13772
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg              1        3   13772
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg          0     2358   13772
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg          1        4   13772
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             0     5617   11164
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             1      202   11164
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              0     2210   11164
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              1      188   11164
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          0     2810   11164
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          1      137   11164
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg             0      112     838
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg             1        2     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg              0      475     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg              1       29     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg          0      209     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg          1       11     838
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             0       46     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             1        2     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg              0      155     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg              1        7     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          0       44     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          1        0     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg             0      143     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg             1        0     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg              0       42     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg              1        0     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          0       36     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          1        0     221
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg             0       40     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg             1        2     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg              0      138     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg              1       12     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg          0       47     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg          1        3     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg             0       79     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg             1        1     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg              0       70     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg              1        6     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg          0       82     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg          1        0     238
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg             0      103     290
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg             1        1     290
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg              0      114     290
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg              1        1     290
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg          0       71     290
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg          1        0     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             0      191     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             1        3     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              0       30     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              1        0     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          0       46     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          1        0     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             0       97     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             1        1     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              0       98     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              1        1     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0       57     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        2     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             0      107    1489
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             1        2    1489
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg              0     1054    1489
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg              1       91    1489
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          0      224    1489
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          1       11    1489
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             0       77     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             1        5     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg              0      410     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg              1       36     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          0       90     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          1        4     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             0      117     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             1        3     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg              0      409     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg              1       23     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          0      113     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          1        4     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             0      189     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             1        3     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              0      393     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              1       13     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          0      156     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          1        1     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             0     1464    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             1       12    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              0      390    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              1        3    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0      480    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        3    2352
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg             0    10269   13772
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg             1       10   13772
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg              0     1128   13772
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg              1        3   13772
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg          0     2360   13772
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg          1        2   13772
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             0     5742   11110
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             1       54   11110
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              0     2329   11110
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              1       50   11110
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          0     2902   11110
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          1       33   11110
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg             0       33     271
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg             1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg              0      167     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg              1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg          0       71     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg          1        0     271
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             0       42     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             1        2     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg              0      124     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg              1       30     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          0       38     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          1        3     239
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg             0      134     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg             1        1     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg              0       37     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg              1        0     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          0       33     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          1        1     206
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg             0       37     234
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg             1        3     234
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg              0      108     234
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg              1       37     234
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg          0       42     234
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg          1        7     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg             0       76     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg             1        3     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg              0       64     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg              1       11     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg          0       79     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg          1        2     235
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg             0       97     269
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg             1        3     269
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg              0       98     269
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg              1        7     269
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg          0       63     269
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg          1        1     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             0      170     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             1       12     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              0       28     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              1        2     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          0       37     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          1        5     254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             0       93     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             1        2     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              0       76     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              1       16     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0       55     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        3     245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             0       93    1381
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             1        9    1381
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg              0      783    1381
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg              1      277    1381
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          0      193    1381
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          1       26    1381
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             0       64     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             1        8     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg              0      293     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg              1       95     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          0       71     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          1       11     542
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             0      109     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             1        4     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg              0      326     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg              1       66     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          0      103     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          1        5     613
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             0      181     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             1        7     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              0      343     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              1       48     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          0      143     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          1        8     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             0     1191    1977
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             1       64    1977
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              0      287    1977
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              1       23    1977
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0      389    1977
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1       23    1977
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg             0      863    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg             1       68    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg              0      985    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg              1      204    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg          0      950    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg          1      107    3177
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg             0    10265   13764
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg             1        7   13764
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg              0     1131   13764
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg              1        0   13764
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg          0     2359   13764
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg          1        2   13764
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             0     4842    9699
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             1      154    9699
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              0     1973    9699
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              1      147    9699
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          0     2474    9699
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          1      109    9699
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg             0      112     824
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg             1        2     824
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg              0      467     824
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg              1       29     824
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg          0      203     824
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg          1       11     824


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/ee094e8a-c0ee-4c5c-9a2e-65473b8f50a0/a1e27c0d-d249-4a01-8a6c-306f80a5219e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ee094e8a-c0ee-4c5c-9a2e-65473b8f50a0/a1e27c0d-d249-4a01-8a6c-306f80a5219e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ee094e8a-c0ee-4c5c-9a2e-65473b8f50a0/a1e27c0d-d249-4a01-8a6c-306f80a5219e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ee094e8a-c0ee-4c5c-9a2e-65473b8f50a0/a1e27c0d-d249-4a01-8a6c-306f80a5219e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.0904052   0.0399714   0.1408390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.2667524   0.2165749   0.3169299
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.1313527   0.0911742   0.1715311
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1367878   0.0595792   0.2139965
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.2517641   0.2115192   0.2920090
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.1393862   0.0696499   0.2091224
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0416667   0.0058871   0.0774462
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.1759259   0.1399941   0.2118577
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.0769231   0.0286030   0.1252431
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0520833   0.0206334   0.0835333
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.1280788   0.0955514   0.1606063
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.0573248   0.0209385   0.0937112
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0457520   0.0350454   0.0564586
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0654086   0.0390498   0.0917673
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0543230   0.0334270   0.0752190
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0731581   0.0459580   0.1003582
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.1720488   0.1420741   0.2020234
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.1007721   0.0751718   0.1263724
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0346845   0.0299151   0.0394540
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0818864   0.0704024   0.0933703
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0481683   0.0401259   0.0562106
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0092216   0.0067053   0.0117378
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0224339   0.0158250   0.0290429
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0110357   0.0072107   0.0148607
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.0882353   0.0415806   0.1348900
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.2613208   0.2162358   0.3064058
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.1187215   0.0769749   0.1604680
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1111111   0.0384528   0.1837694
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.2448454   0.2020204   0.2876703
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.1341463   0.0603128   0.2079799
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0372340   0.0101510   0.0643171
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.1227621   0.0902124   0.1553119
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.0529801   0.0172287   0.0887316
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0512882   0.0390117   0.0635646
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0801649   0.0480868   0.1122431
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0563671   0.0337158   0.0790184
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0726838   0.0457044   0.0996632
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.1718303   0.1416992   0.2019614
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.1013759   0.0757935   0.1269583
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0305784   0.0257476   0.0354092
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0748441   0.0629607   0.0867275
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0451140   0.0366800   0.0535480


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2324649   0.1912705   0.2736593
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1345291   0.1086533   0.1604050
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0940397   0.0732057   0.1148737
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0493197   0.0405669   0.0580726
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1192949   0.0996089   0.1389809
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0472053   0.0432711   0.0511395
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0123312   0.0102790   0.0143834
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2259232   0.1899518   0.2618946
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0556399   0.0455330   0.0657467
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1192949   0.0996089   0.1389809
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0422724   0.0382678   0.0462770


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level    estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           2.950632   1.6420127    5.302169
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.452933   0.6878875    3.068837
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.840545   1.0241062    3.307865
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.018995   0.4789180    2.168120
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           4.222222   1.7466447   10.206516
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.846154   0.6370959    5.349718
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           2.459113   1.2772751    4.734484
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.100637   0.4583186    2.643143
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.429632   0.8971601    2.278129
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.187336   0.7570403    1.862208
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           2.351740   1.6204265    3.413103
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.377458   0.9148354    2.074023
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           2.360889   1.9400892    2.872960
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.388753   1.1185819    1.724180
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           2.432767   1.6282529    3.634788
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.196726   0.7698514    1.860299
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           2.961635   1.6894052    5.191934
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.345510   0.6164229    2.936939
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           2.203608   1.1198381    4.336242
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.207317   0.5135934    2.838071
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           3.297041   1.5201868    7.150750
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.422895   0.5275590    3.837732
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.563029   0.9802174    2.492366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.099028   0.6886690    1.753908
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           2.364080   1.6252747    3.438727
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.394753   0.9296858    2.092465
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           2.447611   1.9565490    3.061922
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.475354   1.1550128    1.884542


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1420598    0.0772633   0.2068562
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0827634    0.0083829   0.1571440
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0928625    0.0542558   0.1314692
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0419564    0.0116234   0.0722894
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0035677   -0.0033890   0.0105244
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0461369    0.0259774   0.0662963
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0125208    0.0086320   0.0164096
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0031097    0.0010633   0.0051560
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1376879    0.0782047   0.1971712
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0992210    0.0281155   0.1703265
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0490673    0.0212967   0.0768380
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0043517   -0.0036532   0.0123566
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0466111    0.0267376   0.0664846
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0116940    0.0077213   0.0156667


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.6111019    0.3028907   0.7830444
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.3769664   -0.0685920   0.6367454
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.6902778    0.2881910   0.8652337
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.4461561    0.0326597   0.6829006
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0723382   -0.0794092   0.2027524
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.3867463    0.1821951   0.5401347
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2652406    0.1811390   0.3407046
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2521777    0.0727261   0.3969008
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.6094456    0.3194937   0.7758541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.4717349    0.0102035   0.7180592
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.5685579    0.1453269   0.7822065
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0782117   -0.0767190   0.2108491
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.3907218    0.1888172   0.5423721
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2766341    0.1801332   0.3617765
