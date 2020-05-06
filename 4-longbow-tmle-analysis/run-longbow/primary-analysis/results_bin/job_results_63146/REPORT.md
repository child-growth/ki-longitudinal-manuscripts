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

agecat      studyid          country                        mwtkg         sstunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -----------  ---------  -------  ------  -----------------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              0      456   22432  sstunted         
Birth       JiVitA-3         BANGLADESH                     >=58 kg              1       44   22432  sstunted         
Birth       JiVitA-3         BANGLADESH                     <52 kg               0    18204   22432  sstunted         
Birth       JiVitA-3         BANGLADESH                     <52 kg               1     2275   22432  sstunted         
Birth       JiVitA-3         BANGLADESH                     [52-58) kg           0     1325   22432  sstunted         
Birth       JiVitA-3         BANGLADESH                     [52-58) kg           1      128   22432  sstunted         
Birth       MAL-ED           BANGLADESH                     >=58 kg              0       38     222  sstunted         
Birth       MAL-ED           BANGLADESH                     >=58 kg              1        0     222  sstunted         
Birth       MAL-ED           BANGLADESH                     <52 kg               0      136     222  sstunted         
Birth       MAL-ED           BANGLADESH                     <52 kg               1        7     222  sstunted         
Birth       MAL-ED           BANGLADESH                     [52-58) kg           0       41     222  sstunted         
Birth       MAL-ED           BANGLADESH                     [52-58) kg           1        0     222  sstunted         
Birth       MAL-ED           BRAZIL                         >=58 kg              0       32      64  sstunted         
Birth       MAL-ED           BRAZIL                         >=58 kg              1        2      64  sstunted         
Birth       MAL-ED           BRAZIL                         <52 kg               0       15      64  sstunted         
Birth       MAL-ED           BRAZIL                         <52 kg               1        0      64  sstunted         
Birth       MAL-ED           BRAZIL                         [52-58) kg           0       14      64  sstunted         
Birth       MAL-ED           BRAZIL                         [52-58) kg           1        1      64  sstunted         
Birth       MAL-ED           INDIA                          >=58 kg              0        6      43  sstunted         
Birth       MAL-ED           INDIA                          >=58 kg              1        0      43  sstunted         
Birth       MAL-ED           INDIA                          <52 kg               0       28      43  sstunted         
Birth       MAL-ED           INDIA                          <52 kg               1        1      43  sstunted         
Birth       MAL-ED           INDIA                          [52-58) kg           0        7      43  sstunted         
Birth       MAL-ED           INDIA                          [52-58) kg           1        1      43  sstunted         
Birth       MAL-ED           NEPAL                          >=58 kg              0        9      27  sstunted         
Birth       MAL-ED           NEPAL                          >=58 kg              1        0      27  sstunted         
Birth       MAL-ED           NEPAL                          <52 kg               0        7      27  sstunted         
Birth       MAL-ED           NEPAL                          <52 kg               1        1      27  sstunted         
Birth       MAL-ED           NEPAL                          [52-58) kg           0       10      27  sstunted         
Birth       MAL-ED           NEPAL                          [52-58) kg           1        0      27  sstunted         
Birth       MAL-ED           PERU                           >=58 kg              0       82     226  sstunted         
Birth       MAL-ED           PERU                           >=58 kg              1        1     226  sstunted         
Birth       MAL-ED           PERU                           <52 kg               0       81     226  sstunted         
Birth       MAL-ED           PERU                           <52 kg               1        3     226  sstunted         
Birth       MAL-ED           PERU                           [52-58) kg           0       59     226  sstunted         
Birth       MAL-ED           PERU                           [52-58) kg           1        0     226  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg              0       69     101  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg              1        0     101  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   <52 kg               0       10     101  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   <52 kg               1        0     101  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg           0       21     101  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg           1        1     101  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              0       44     122  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              1        3     122  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               0       40     122  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               1        5     122  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           0       29     122  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           1        1     122  sstunted         
Birth       NIH-Birth        BANGLADESH                     >=58 kg              0       79     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     >=58 kg              1        1     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     <52 kg               0      424     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     <52 kg               1       17     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     [52-58) kg           0       86     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     [52-58) kg           1        1     608  sstunted         
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              0      184     729  sstunted         
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              1        2     729  sstunted         
Birth       NIH-Crypto       BANGLADESH                     <52 kg               0      392     729  sstunted         
Birth       NIH-Crypto       BANGLADESH                     <52 kg               1        3     729  sstunted         
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg           0      143     729  sstunted         
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg           1        5     729  sstunted         
Birth       PROBIT           BELARUS                        >=58 kg              0    10275   13770  sstunted         
Birth       PROBIT           BELARUS                        >=58 kg              1        2   13770  sstunted         
Birth       PROBIT           BELARUS                        <52 kg               0     1130   13770  sstunted         
Birth       PROBIT           BELARUS                        <52 kg               1        1   13770  sstunted         
Birth       PROBIT           BELARUS                        [52-58) kg           0     2360   13770  sstunted         
Birth       PROBIT           BELARUS                        [52-58) kg           1        2   13770  sstunted         
Birth       PROVIDE          BANGLADESH                     >=58 kg              0       91     517  sstunted         
Birth       PROVIDE          BANGLADESH                     >=58 kg              1        0     517  sstunted         
Birth       PROVIDE          BANGLADESH                     <52 kg               0      327     517  sstunted         
Birth       PROVIDE          BANGLADESH                     <52 kg               1        3     517  sstunted         
Birth       PROVIDE          BANGLADESH                     [52-58) kg           0       95     517  sstunted         
Birth       PROVIDE          BANGLADESH                     [52-58) kg           1        1     517  sstunted         
Birth       SAS-CompFeed     INDIA                          >=58 kg              0       91    1236  sstunted         
Birth       SAS-CompFeed     INDIA                          >=58 kg              1        0    1236  sstunted         
Birth       SAS-CompFeed     INDIA                          <52 kg               0      873    1236  sstunted         
Birth       SAS-CompFeed     INDIA                          <52 kg               1       76    1236  sstunted         
Birth       SAS-CompFeed     INDIA                          [52-58) kg           0      184    1236  sstunted         
Birth       SAS-CompFeed     INDIA                          [52-58) kg           1       12    1236  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              0     5628   11031  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              1      129   11031  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       <52 kg               0     2261   11031  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       <52 kg               1      104   11031  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg           0     2812   11031  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg           1       97   11031  sstunted         
6 months    JiVitA-3         BANGLADESH                     >=58 kg              0      385   16802  sstunted         
6 months    JiVitA-3         BANGLADESH                     >=58 kg              1       22   16802  sstunted         
6 months    JiVitA-3         BANGLADESH                     <52 kg               0    14308   16802  sstunted         
6 months    JiVitA-3         BANGLADESH                     <52 kg               1      935   16802  sstunted         
6 months    JiVitA-3         BANGLADESH                     [52-58) kg           0     1089   16802  sstunted         
6 months    JiVitA-3         BANGLADESH                     [52-58) kg           1       63   16802  sstunted         
6 months    LCNI-5           MALAWI                         >=58 kg              0      108     837  sstunted         
6 months    LCNI-5           MALAWI                         >=58 kg              1        6     837  sstunted         
6 months    LCNI-5           MALAWI                         <52 kg               0      452     837  sstunted         
6 months    LCNI-5           MALAWI                         <52 kg               1       52     837  sstunted         
6 months    LCNI-5           MALAWI                         [52-58) kg           0      206     837  sstunted         
6 months    LCNI-5           MALAWI                         [52-58) kg           1       13     837  sstunted         
6 months    MAL-ED           BANGLADESH                     >=58 kg              0       45     241  sstunted         
6 months    MAL-ED           BANGLADESH                     >=58 kg              1        1     241  sstunted         
6 months    MAL-ED           BANGLADESH                     <52 kg               0      147     241  sstunted         
6 months    MAL-ED           BANGLADESH                     <52 kg               1        7     241  sstunted         
6 months    MAL-ED           BANGLADESH                     [52-58) kg           0       41     241  sstunted         
6 months    MAL-ED           BANGLADESH                     [52-58) kg           1        0     241  sstunted         
6 months    MAL-ED           BRAZIL                         >=58 kg              0      137     208  sstunted         
6 months    MAL-ED           BRAZIL                         >=58 kg              1        0     208  sstunted         
6 months    MAL-ED           BRAZIL                         <52 kg               0       37     208  sstunted         
6 months    MAL-ED           BRAZIL                         <52 kg               1        0     208  sstunted         
6 months    MAL-ED           BRAZIL                         [52-58) kg           0       34     208  sstunted         
6 months    MAL-ED           BRAZIL                         [52-58) kg           1        0     208  sstunted         
6 months    MAL-ED           INDIA                          >=58 kg              0       40     235  sstunted         
6 months    MAL-ED           INDIA                          >=58 kg              1        0     235  sstunted         
6 months    MAL-ED           INDIA                          <52 kg               0      140     235  sstunted         
6 months    MAL-ED           INDIA                          <52 kg               1        6     235  sstunted         
6 months    MAL-ED           INDIA                          [52-58) kg           0       46     235  sstunted         
6 months    MAL-ED           INDIA                          [52-58) kg           1        3     235  sstunted         
6 months    MAL-ED           NEPAL                          >=58 kg              0       79     236  sstunted         
6 months    MAL-ED           NEPAL                          >=58 kg              1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          <52 kg               0       74     236  sstunted         
6 months    MAL-ED           NEPAL                          <52 kg               1        1     236  sstunted         
6 months    MAL-ED           NEPAL                          [52-58) kg           0       82     236  sstunted         
6 months    MAL-ED           NEPAL                          [52-58) kg           1        0     236  sstunted         
6 months    MAL-ED           PERU                           >=58 kg              0       97     272  sstunted         
6 months    MAL-ED           PERU                           >=58 kg              1        3     272  sstunted         
6 months    MAL-ED           PERU                           <52 kg               0      101     272  sstunted         
6 months    MAL-ED           PERU                           <52 kg               1        6     272  sstunted         
6 months    MAL-ED           PERU                           [52-58) kg           0       64     272  sstunted         
6 months    MAL-ED           PERU                           [52-58) kg           1        1     272  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              0      176     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              1        3     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   <52 kg               0       28     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   <52 kg               1        1     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           0       39     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           1        2     249  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              0       89     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              1        5     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               0       87     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               1        8     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           0       57     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           1        1     247  sstunted         
6 months    NIH-Birth        BANGLADESH                     >=58 kg              0       69     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     >=58 kg              1        2     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     <52 kg               0      353     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     <52 kg               1       32     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     [52-58) kg           0       80     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     [52-58) kg           1        1     537  sstunted         
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              0      181     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              1        3     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     <52 kg               0      369     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     <52 kg               1       14     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           0      142     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           1        6     715  sstunted         
6 months    PROBIT           BELARUS                        >=58 kg              0     9648   13066  sstunted         
6 months    PROBIT           BELARUS                        >=58 kg              1       92   13066  sstunted         
6 months    PROBIT           BELARUS                        <52 kg               0     1065   13066  sstunted         
6 months    PROBIT           BELARUS                        <52 kg               1       18   13066  sstunted         
6 months    PROBIT           BELARUS                        [52-58) kg           0     2219   13066  sstunted         
6 months    PROBIT           BELARUS                        [52-58) kg           1       24   13066  sstunted         
6 months    PROVIDE          BANGLADESH                     >=58 kg              0      107     603  sstunted         
6 months    PROVIDE          BANGLADESH                     >=58 kg              1        2     603  sstunted         
6 months    PROVIDE          BANGLADESH                     <52 kg               0      375     603  sstunted         
6 months    PROVIDE          BANGLADESH                     <52 kg               1       10     603  sstunted         
6 months    PROVIDE          BANGLADESH                     [52-58) kg           0      107     603  sstunted         
6 months    PROVIDE          BANGLADESH                     [52-58) kg           1        2     603  sstunted         
6 months    SAS-CompFeed     INDIA                          >=58 kg              0      100    1331  sstunted         
6 months    SAS-CompFeed     INDIA                          >=58 kg              1        3    1331  sstunted         
6 months    SAS-CompFeed     INDIA                          <52 kg               0      898    1331  sstunted         
6 months    SAS-CompFeed     INDIA                          <52 kg               1      116    1331  sstunted         
6 months    SAS-CompFeed     INDIA                          [52-58) kg           0      206    1331  sstunted         
6 months    SAS-CompFeed     INDIA                          [52-58) kg           1        8    1331  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              0     1246    1989  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              1        9    1989  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               0      318    1989  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               1        7    1989  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           0      406    1989  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           1        3    1989  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              0     4239    8254  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              1      124    8254  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               0     1612    8254  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               1      114    8254  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           0     2069    8254  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           1       96    8254  sstunted         
24 months   JiVitA-3         BANGLADESH                     >=58 kg              0      171    8627  sstunted         
24 months   JiVitA-3         BANGLADESH                     >=58 kg              1       26    8627  sstunted         
24 months   JiVitA-3         BANGLADESH                     <52 kg               0     6628    8627  sstunted         
24 months   JiVitA-3         BANGLADESH                     <52 kg               1     1231    8627  sstunted         
24 months   JiVitA-3         BANGLADESH                     [52-58) kg           0      483    8627  sstunted         
24 months   JiVitA-3         BANGLADESH                     [52-58) kg           1       88    8627  sstunted         
24 months   LCNI-5           MALAWI                         >=58 kg              0       73     578  sstunted         
24 months   LCNI-5           MALAWI                         >=58 kg              1        4     578  sstunted         
24 months   LCNI-5           MALAWI                         <52 kg               0      294     578  sstunted         
24 months   LCNI-5           MALAWI                         <52 kg               1       54     578  sstunted         
24 months   LCNI-5           MALAWI                         [52-58) kg           0      141     578  sstunted         
24 months   LCNI-5           MALAWI                         [52-58) kg           1       12     578  sstunted         
24 months   MAL-ED           BANGLADESH                     >=58 kg              0       40     212  sstunted         
24 months   MAL-ED           BANGLADESH                     >=58 kg              1        0     212  sstunted         
24 months   MAL-ED           BANGLADESH                     <52 kg               0      107     212  sstunted         
24 months   MAL-ED           BANGLADESH                     <52 kg               1       28     212  sstunted         
24 months   MAL-ED           BANGLADESH                     [52-58) kg           0       37     212  sstunted         
24 months   MAL-ED           BANGLADESH                     [52-58) kg           1        0     212  sstunted         
24 months   MAL-ED           BRAZIL                         >=58 kg              0      109     168  sstunted         
24 months   MAL-ED           BRAZIL                         >=58 kg              1        0     168  sstunted         
24 months   MAL-ED           BRAZIL                         <52 kg               0       27     168  sstunted         
24 months   MAL-ED           BRAZIL                         <52 kg               1        1     168  sstunted         
24 months   MAL-ED           BRAZIL                         [52-58) kg           0       31     168  sstunted         
24 months   MAL-ED           BRAZIL                         [52-58) kg           1        0     168  sstunted         
24 months   MAL-ED           INDIA                          >=58 kg              0       36     226  sstunted         
24 months   MAL-ED           INDIA                          >=58 kg              1        2     226  sstunted         
24 months   MAL-ED           INDIA                          <52 kg               0      122     226  sstunted         
24 months   MAL-ED           INDIA                          <52 kg               1       19     226  sstunted         
24 months   MAL-ED           INDIA                          [52-58) kg           0       38     226  sstunted         
24 months   MAL-ED           INDIA                          [52-58) kg           1        9     226  sstunted         
24 months   MAL-ED           NEPAL                          >=58 kg              0       75     228  sstunted         
24 months   MAL-ED           NEPAL                          >=58 kg              1        1     228  sstunted         
24 months   MAL-ED           NEPAL                          <52 kg               0       68     228  sstunted         
24 months   MAL-ED           NEPAL                          <52 kg               1        6     228  sstunted         
24 months   MAL-ED           NEPAL                          [52-58) kg           0       78     228  sstunted         
24 months   MAL-ED           NEPAL                          [52-58) kg           1        0     228  sstunted         
24 months   MAL-ED           PERU                           >=58 kg              0       76     201  sstunted         
24 months   MAL-ED           PERU                           >=58 kg              1        1     201  sstunted         
24 months   MAL-ED           PERU                           <52 kg               0       65     201  sstunted         
24 months   MAL-ED           PERU                           <52 kg               1       10     201  sstunted         
24 months   MAL-ED           PERU                           [52-58) kg           0       45     201  sstunted         
24 months   MAL-ED           PERU                           [52-58) kg           1        4     201  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              0      153     234  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              1       15     234  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   <52 kg               0       22     234  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   <52 kg               1        6     234  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           0       32     234  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           1        6     234  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              0       62     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              1       20     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               0       48     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               1       36     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           0       34     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           1       14     214  sstunted         
24 months   NIH-Birth        BANGLADESH                     >=58 kg              0       48     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     >=58 kg              1        9     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     <52 kg               0      230     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     <52 kg               1       78     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     [52-58) kg           0       56     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     [52-58) kg           1        8     429  sstunted         
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              0      137     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              1        1     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     <52 kg               0      245     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     <52 kg               1       28     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           0       96     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           1        7     514  sstunted         
24 months   PROBIT           BELARUS                        >=58 kg              0     2966    4013  sstunted         
24 months   PROBIT           BELARUS                        >=58 kg              1       45    4013  sstunted         
24 months   PROBIT           BELARUS                        <52 kg               0      316    4013  sstunted         
24 months   PROBIT           BELARUS                        <52 kg               1        9    4013  sstunted         
24 months   PROBIT           BELARUS                        [52-58) kg           0      666    4013  sstunted         
24 months   PROBIT           BELARUS                        [52-58) kg           1       11    4013  sstunted         
24 months   PROVIDE          BANGLADESH                     >=58 kg              0      110     577  sstunted         
24 months   PROVIDE          BANGLADESH                     >=58 kg              1        1     577  sstunted         
24 months   PROVIDE          BANGLADESH                     <52 kg               0      315     577  sstunted         
24 months   PROVIDE          BANGLADESH                     <52 kg               1       47     577  sstunted         
24 months   PROVIDE          BANGLADESH                     [52-58) kg           0      100     577  sstunted         
24 months   PROVIDE          BANGLADESH                     [52-58) kg           1        4     577  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              0        3       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              1        1       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               0        1       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           0        1       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           1        0       6  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              0      774    1588  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              1       59    1588  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               0      270    1588  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               1       64    1588  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           0      372    1588  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           1       49    1588  sstunted         


The following strata were considered:

* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
