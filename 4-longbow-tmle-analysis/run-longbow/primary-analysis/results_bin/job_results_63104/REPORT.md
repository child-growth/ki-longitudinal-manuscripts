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

agecat      studyid          country                        mwtkg         stunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -----------  --------  -------  ------  -----------------
Birth       JiVitA-3         BANGLADESH                     >=58 kg             0      374   22432  stunted          
Birth       JiVitA-3         BANGLADESH                     >=58 kg             1      126   22432  stunted          
Birth       JiVitA-3         BANGLADESH                     <52 kg              0    13634   22432  stunted          
Birth       JiVitA-3         BANGLADESH                     <52 kg              1     6845   22432  stunted          
Birth       JiVitA-3         BANGLADESH                     [52-58) kg          0     1046   22432  stunted          
Birth       JiVitA-3         BANGLADESH                     [52-58) kg          1      407   22432  stunted          
Birth       MAL-ED           BANGLADESH                     >=58 kg             0       31     222  stunted          
Birth       MAL-ED           BANGLADESH                     >=58 kg             1        7     222  stunted          
Birth       MAL-ED           BANGLADESH                     <52 kg              0      114     222  stunted          
Birth       MAL-ED           BANGLADESH                     <52 kg              1       29     222  stunted          
Birth       MAL-ED           BANGLADESH                     [52-58) kg          0       37     222  stunted          
Birth       MAL-ED           BANGLADESH                     [52-58) kg          1        4     222  stunted          
Birth       MAL-ED           BRAZIL                         >=58 kg             0       31      64  stunted          
Birth       MAL-ED           BRAZIL                         >=58 kg             1        3      64  stunted          
Birth       MAL-ED           BRAZIL                         <52 kg              0       11      64  stunted          
Birth       MAL-ED           BRAZIL                         <52 kg              1        4      64  stunted          
Birth       MAL-ED           BRAZIL                         [52-58) kg          0       13      64  stunted          
Birth       MAL-ED           BRAZIL                         [52-58) kg          1        2      64  stunted          
Birth       MAL-ED           INDIA                          >=58 kg             0        5      43  stunted          
Birth       MAL-ED           INDIA                          >=58 kg             1        1      43  stunted          
Birth       MAL-ED           INDIA                          <52 kg              0       24      43  stunted          
Birth       MAL-ED           INDIA                          <52 kg              1        5      43  stunted          
Birth       MAL-ED           INDIA                          [52-58) kg          0        5      43  stunted          
Birth       MAL-ED           INDIA                          [52-58) kg          1        3      43  stunted          
Birth       MAL-ED           NEPAL                          >=58 kg             0        9      27  stunted          
Birth       MAL-ED           NEPAL                          >=58 kg             1        0      27  stunted          
Birth       MAL-ED           NEPAL                          <52 kg              0        6      27  stunted          
Birth       MAL-ED           NEPAL                          <52 kg              1        2      27  stunted          
Birth       MAL-ED           NEPAL                          [52-58) kg          0       10      27  stunted          
Birth       MAL-ED           NEPAL                          [52-58) kg          1        0      27  stunted          
Birth       MAL-ED           PERU                           >=58 kg             0       78     226  stunted          
Birth       MAL-ED           PERU                           >=58 kg             1        5     226  stunted          
Birth       MAL-ED           PERU                           <52 kg              0       68     226  stunted          
Birth       MAL-ED           PERU                           <52 kg              1       16     226  stunted          
Birth       MAL-ED           PERU                           [52-58) kg          0       54     226  stunted          
Birth       MAL-ED           PERU                           [52-58) kg          1        5     226  stunted          
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg             0       65     101  stunted          
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg             1        4     101  stunted          
Birth       MAL-ED           SOUTH AFRICA                   <52 kg              0        8     101  stunted          
Birth       MAL-ED           SOUTH AFRICA                   <52 kg              1        2     101  stunted          
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg          0       19     101  stunted          
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg          1        3     101  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg             0       39     122  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg             1        8     122  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg              0       33     122  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg              1       12     122  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0       28     122  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        2     122  stunted          
Birth       NIH-Birth        BANGLADESH                     >=58 kg             0       72     608  stunted          
Birth       NIH-Birth        BANGLADESH                     >=58 kg             1        8     608  stunted          
Birth       NIH-Birth        BANGLADESH                     <52 kg              0      363     608  stunted          
Birth       NIH-Birth        BANGLADESH                     <52 kg              1       78     608  stunted          
Birth       NIH-Birth        BANGLADESH                     [52-58) kg          0       76     608  stunted          
Birth       NIH-Birth        BANGLADESH                     [52-58) kg          1       11     608  stunted          
Birth       NIH-Crypto       BANGLADESH                     >=58 kg             0      171     729  stunted          
Birth       NIH-Crypto       BANGLADESH                     >=58 kg             1       15     729  stunted          
Birth       NIH-Crypto       BANGLADESH                     <52 kg              0      328     729  stunted          
Birth       NIH-Crypto       BANGLADESH                     <52 kg              1       67     729  stunted          
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg          0      129     729  stunted          
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg          1       19     729  stunted          
Birth       PROBIT           BELARUS                        >=58 kg             0    10255   13770  stunted          
Birth       PROBIT           BELARUS                        >=58 kg             1       22   13770  stunted          
Birth       PROBIT           BELARUS                        <52 kg              0     1123   13770  stunted          
Birth       PROBIT           BELARUS                        <52 kg              1        8   13770  stunted          
Birth       PROBIT           BELARUS                        [52-58) kg          0     2358   13770  stunted          
Birth       PROBIT           BELARUS                        [52-58) kg          1        4   13770  stunted          
Birth       PROVIDE          BANGLADESH                     >=58 kg             0       87     517  stunted          
Birth       PROVIDE          BANGLADESH                     >=58 kg             1        4     517  stunted          
Birth       PROVIDE          BANGLADESH                     <52 kg              0      302     517  stunted          
Birth       PROVIDE          BANGLADESH                     <52 kg              1       28     517  stunted          
Birth       PROVIDE          BANGLADESH                     [52-58) kg          0       81     517  stunted          
Birth       PROVIDE          BANGLADESH                     [52-58) kg          1       15     517  stunted          
Birth       SAS-CompFeed     INDIA                          >=58 kg             0       82    1236  stunted          
Birth       SAS-CompFeed     INDIA                          >=58 kg             1        9    1236  stunted          
Birth       SAS-CompFeed     INDIA                          <52 kg              0      660    1236  stunted          
Birth       SAS-CompFeed     INDIA                          <52 kg              1      289    1236  stunted          
Birth       SAS-CompFeed     INDIA                          [52-58) kg          0      155    1236  stunted          
Birth       SAS-CompFeed     INDIA                          [52-58) kg          1       41    1236  stunted          
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg             0     5307   11031  stunted          
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg             1      450   11031  stunted          
Birth       ZVITAMBO         ZIMBABWE                       <52 kg              0     2037   11031  stunted          
Birth       ZVITAMBO         ZIMBABWE                       <52 kg              1      328   11031  stunted          
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg          0     2572   11031  stunted          
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg          1      337   11031  stunted          
6 months    JiVitA-3         BANGLADESH                     >=58 kg             0      332   16802  stunted          
6 months    JiVitA-3         BANGLADESH                     >=58 kg             1       75   16802  stunted          
6 months    JiVitA-3         BANGLADESH                     <52 kg              0    11340   16802  stunted          
6 months    JiVitA-3         BANGLADESH                     <52 kg              1     3903   16802  stunted          
6 months    JiVitA-3         BANGLADESH                     [52-58) kg          0      905   16802  stunted          
6 months    JiVitA-3         BANGLADESH                     [52-58) kg          1      247   16802  stunted          
6 months    LCNI-5           MALAWI                         >=58 kg             0       86     837  stunted          
6 months    LCNI-5           MALAWI                         >=58 kg             1       28     837  stunted          
6 months    LCNI-5           MALAWI                         <52 kg              0      286     837  stunted          
6 months    LCNI-5           MALAWI                         <52 kg              1      218     837  stunted          
6 months    LCNI-5           MALAWI                         [52-58) kg          0      157     837  stunted          
6 months    LCNI-5           MALAWI                         [52-58) kg          1       62     837  stunted          
6 months    MAL-ED           BANGLADESH                     >=58 kg             0       40     241  stunted          
6 months    MAL-ED           BANGLADESH                     >=58 kg             1        6     241  stunted          
6 months    MAL-ED           BANGLADESH                     <52 kg              0      116     241  stunted          
6 months    MAL-ED           BANGLADESH                     <52 kg              1       38     241  stunted          
6 months    MAL-ED           BANGLADESH                     [52-58) kg          0       41     241  stunted          
6 months    MAL-ED           BANGLADESH                     [52-58) kg          1        0     241  stunted          
6 months    MAL-ED           BRAZIL                         >=58 kg             0      134     208  stunted          
6 months    MAL-ED           BRAZIL                         >=58 kg             1        3     208  stunted          
6 months    MAL-ED           BRAZIL                         <52 kg              0       36     208  stunted          
6 months    MAL-ED           BRAZIL                         <52 kg              1        1     208  stunted          
6 months    MAL-ED           BRAZIL                         [52-58) kg          0       32     208  stunted          
6 months    MAL-ED           BRAZIL                         [52-58) kg          1        2     208  stunted          
6 months    MAL-ED           INDIA                          >=58 kg             0       36     235  stunted          
6 months    MAL-ED           INDIA                          >=58 kg             1        4     235  stunted          
6 months    MAL-ED           INDIA                          <52 kg              0      116     235  stunted          
6 months    MAL-ED           INDIA                          <52 kg              1       30     235  stunted          
6 months    MAL-ED           INDIA                          [52-58) kg          0       39     235  stunted          
6 months    MAL-ED           INDIA                          [52-58) kg          1       10     235  stunted          
6 months    MAL-ED           NEPAL                          >=58 kg             0       77     236  stunted          
6 months    MAL-ED           NEPAL                          >=58 kg             1        2     236  stunted          
6 months    MAL-ED           NEPAL                          <52 kg              0       66     236  stunted          
6 months    MAL-ED           NEPAL                          <52 kg              1        9     236  stunted          
6 months    MAL-ED           NEPAL                          [52-58) kg          0       81     236  stunted          
6 months    MAL-ED           NEPAL                          [52-58) kg          1        1     236  stunted          
6 months    MAL-ED           PERU                           >=58 kg             0       81     272  stunted          
6 months    MAL-ED           PERU                           >=58 kg             1       19     272  stunted          
6 months    MAL-ED           PERU                           <52 kg              0       79     272  stunted          
6 months    MAL-ED           PERU                           <52 kg              1       28     272  stunted          
6 months    MAL-ED           PERU                           [52-58) kg          0       52     272  stunted          
6 months    MAL-ED           PERU                           [52-58) kg          1       13     272  stunted          
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg             0      149     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg             1       30     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   <52 kg              0       20     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   <52 kg              1        9     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg          0       30     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg          1       11     249  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg             0       75     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg             1       19     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg              0       68     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg              1       27     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0       45     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1       13     247  stunted          
6 months    NIH-Birth        BANGLADESH                     >=58 kg             0       57     537  stunted          
6 months    NIH-Birth        BANGLADESH                     >=58 kg             1       14     537  stunted          
6 months    NIH-Birth        BANGLADESH                     <52 kg              0      268     537  stunted          
6 months    NIH-Birth        BANGLADESH                     <52 kg              1      117     537  stunted          
6 months    NIH-Birth        BANGLADESH                     [52-58) kg          0       68     537  stunted          
6 months    NIH-Birth        BANGLADESH                     [52-58) kg          1       13     537  stunted          
6 months    NIH-Crypto       BANGLADESH                     >=58 kg             0      159     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     >=58 kg             1       25     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     <52 kg              0      285     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     <52 kg              1       98     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg          0      121     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg          1       27     715  stunted          
6 months    PROBIT           BELARUS                        >=58 kg             0     9405   13066  stunted          
6 months    PROBIT           BELARUS                        >=58 kg             1      335   13066  stunted          
6 months    PROBIT           BELARUS                        <52 kg              0     1019   13066  stunted          
6 months    PROBIT           BELARUS                        <52 kg              1       64   13066  stunted          
6 months    PROBIT           BELARUS                        [52-58) kg          0     2160   13066  stunted          
6 months    PROBIT           BELARUS                        [52-58) kg          1       83   13066  stunted          
6 months    PROVIDE          BANGLADESH                     >=58 kg             0       98     603  stunted          
6 months    PROVIDE          BANGLADESH                     >=58 kg             1       11     603  stunted          
6 months    PROVIDE          BANGLADESH                     <52 kg              0      316     603  stunted          
6 months    PROVIDE          BANGLADESH                     <52 kg              1       69     603  stunted          
6 months    PROVIDE          BANGLADESH                     [52-58) kg          0       94     603  stunted          
6 months    PROVIDE          BANGLADESH                     [52-58) kg          1       15     603  stunted          
6 months    SAS-CompFeed     INDIA                          >=58 kg             0       89    1331  stunted          
6 months    SAS-CompFeed     INDIA                          >=58 kg             1       14    1331  stunted          
6 months    SAS-CompFeed     INDIA                          <52 kg              0      685    1331  stunted          
6 months    SAS-CompFeed     INDIA                          <52 kg              1      329    1331  stunted          
6 months    SAS-CompFeed     INDIA                          [52-58) kg          0      179    1331  stunted          
6 months    SAS-CompFeed     INDIA                          [52-58) kg          1       35    1331  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             0     1143    1989  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             1      112    1989  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              0      280    1989  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              1       45    1989  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0      374    1989  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1       35    1989  stunted          
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg             0     3826    8254  stunted          
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg             1      537    8254  stunted          
6 months    ZVITAMBO         ZIMBABWE                       <52 kg              0     1303    8254  stunted          
6 months    ZVITAMBO         ZIMBABWE                       <52 kg              1      423    8254  stunted          
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg          0     1771    8254  stunted          
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg          1      394    8254  stunted          
24 months   JiVitA-3         BANGLADESH                     >=58 kg             0      113    8627  stunted          
24 months   JiVitA-3         BANGLADESH                     >=58 kg             1       84    8627  stunted          
24 months   JiVitA-3         BANGLADESH                     <52 kg              0     3932    8627  stunted          
24 months   JiVitA-3         BANGLADESH                     <52 kg              1     3927    8627  stunted          
24 months   JiVitA-3         BANGLADESH                     [52-58) kg          0      346    8627  stunted          
24 months   JiVitA-3         BANGLADESH                     [52-58) kg          1      225    8627  stunted          
24 months   LCNI-5           MALAWI                         >=58 kg             0       56     578  stunted          
24 months   LCNI-5           MALAWI                         >=58 kg             1       21     578  stunted          
24 months   LCNI-5           MALAWI                         <52 kg              0      168     578  stunted          
24 months   LCNI-5           MALAWI                         <52 kg              1      180     578  stunted          
24 months   LCNI-5           MALAWI                         [52-58) kg          0       97     578  stunted          
24 months   LCNI-5           MALAWI                         [52-58) kg          1       56     578  stunted          
24 months   MAL-ED           BANGLADESH                     >=58 kg             0       30     212  stunted          
24 months   MAL-ED           BANGLADESH                     >=58 kg             1       10     212  stunted          
24 months   MAL-ED           BANGLADESH                     <52 kg              0       55     212  stunted          
24 months   MAL-ED           BANGLADESH                     <52 kg              1       80     212  stunted          
24 months   MAL-ED           BANGLADESH                     [52-58) kg          0       26     212  stunted          
24 months   MAL-ED           BANGLADESH                     [52-58) kg          1       11     212  stunted          
24 months   MAL-ED           BRAZIL                         >=58 kg             0      105     168  stunted          
24 months   MAL-ED           BRAZIL                         >=58 kg             1        4     168  stunted          
24 months   MAL-ED           BRAZIL                         <52 kg              0       26     168  stunted          
24 months   MAL-ED           BRAZIL                         <52 kg              1        2     168  stunted          
24 months   MAL-ED           BRAZIL                         [52-58) kg          0       30     168  stunted          
24 months   MAL-ED           BRAZIL                         [52-58) kg          1        1     168  stunted          
24 months   MAL-ED           INDIA                          >=58 kg             0       27     226  stunted          
24 months   MAL-ED           INDIA                          >=58 kg             1       11     226  stunted          
24 months   MAL-ED           INDIA                          <52 kg              0       75     226  stunted          
24 months   MAL-ED           INDIA                          <52 kg              1       66     226  stunted          
24 months   MAL-ED           INDIA                          [52-58) kg          0       28     226  stunted          
24 months   MAL-ED           INDIA                          [52-58) kg          1       19     226  stunted          
24 months   MAL-ED           NEPAL                          >=58 kg             0       68     228  stunted          
24 months   MAL-ED           NEPAL                          >=58 kg             1        8     228  stunted          
24 months   MAL-ED           NEPAL                          <52 kg              0       47     228  stunted          
24 months   MAL-ED           NEPAL                          <52 kg              1       27     228  stunted          
24 months   MAL-ED           NEPAL                          [52-58) kg          0       63     228  stunted          
24 months   MAL-ED           NEPAL                          [52-58) kg          1       15     228  stunted          
24 months   MAL-ED           PERU                           >=58 kg             0       59     201  stunted          
24 months   MAL-ED           PERU                           >=58 kg             1       18     201  stunted          
24 months   MAL-ED           PERU                           <52 kg              0       39     201  stunted          
24 months   MAL-ED           PERU                           <52 kg              1       36     201  stunted          
24 months   MAL-ED           PERU                           [52-58) kg          0       29     201  stunted          
24 months   MAL-ED           PERU                           [52-58) kg          1       20     201  stunted          
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg             0      117     234  stunted          
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg             1       51     234  stunted          
24 months   MAL-ED           SOUTH AFRICA                   <52 kg              0       15     234  stunted          
24 months   MAL-ED           SOUTH AFRICA                   <52 kg              1       13     234  stunted          
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg          0       20     234  stunted          
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg          1       18     234  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg             0       32     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg             1       50     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg              0       18     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg              1       66     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0        9     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1       39     214  stunted          
24 months   NIH-Birth        BANGLADESH                     >=58 kg             0       38     429  stunted          
24 months   NIH-Birth        BANGLADESH                     >=58 kg             1       19     429  stunted          
24 months   NIH-Birth        BANGLADESH                     <52 kg              0      116     429  stunted          
24 months   NIH-Birth        BANGLADESH                     <52 kg              1      192     429  stunted          
24 months   NIH-Birth        BANGLADESH                     [52-58) kg          0       31     429  stunted          
24 months   NIH-Birth        BANGLADESH                     [52-58) kg          1       33     429  stunted          
24 months   NIH-Crypto       BANGLADESH                     >=58 kg             0      121     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     >=58 kg             1       17     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     <52 kg              0      180     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     <52 kg              1       93     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg          0       81     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg          1       22     514  stunted          
24 months   PROBIT           BELARUS                        >=58 kg             0     2824    4013  stunted          
24 months   PROBIT           BELARUS                        >=58 kg             1      187    4013  stunted          
24 months   PROBIT           BELARUS                        <52 kg              0      288    4013  stunted          
24 months   PROBIT           BELARUS                        <52 kg              1       37    4013  stunted          
24 months   PROBIT           BELARUS                        [52-58) kg          0      628    4013  stunted          
24 months   PROBIT           BELARUS                        [52-58) kg          1       49    4013  stunted          
24 months   PROVIDE          BANGLADESH                     >=58 kg             0       93     577  stunted          
24 months   PROVIDE          BANGLADESH                     >=58 kg             1       18     577  stunted          
24 months   PROVIDE          BANGLADESH                     <52 kg              0      215     577  stunted          
24 months   PROVIDE          BANGLADESH                     <52 kg              1      147     577  stunted          
24 months   PROVIDE          BANGLADESH                     [52-58) kg          0       80     577  stunted          
24 months   PROVIDE          BANGLADESH                     [52-58) kg          1       24     577  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             0        3       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             1        1       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              0        1       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0        1       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        0       6  stunted          
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg             0      597    1588  stunted          
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg             1      236    1588  stunted          
24 months   ZVITAMBO         ZIMBABWE                       <52 kg              0      171    1588  stunted          
24 months   ZVITAMBO         ZIMBABWE                       <52 kg              1      163    1588  stunted          
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg          0      269    1588  stunted          
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg          1      152    1588  stunted          


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
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
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
