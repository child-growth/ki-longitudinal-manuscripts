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

**Outcome Variable:** ever_sstunted

## Predictor Variables

**Intervention Variable:** mwtkg

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nchldlt5
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        mwtkg         ever_sstunted   n_cell       n  outcome_variable 
------------  ---------------  -----------------------------  -----------  --------------  -------  ------  -----------------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg                   0      871    3216  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg                   1       66    3216  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg                    0     1032    3216  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg                    1      169    3216  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg                0      975    3216  ever_sstunted    
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg                1      103    3216  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg                   0      575   27196  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg                   1       94   27196  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     <52 kg                    0    20106   27196  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     <52 kg                    1     4647   27196  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg                0     1498   27196  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg                1      276   27196  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         >=58 kg                   0      102     838  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         >=58 kg                   1       12     838  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         <52 kg                    0      370     838  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         <52 kg                    1      134     838  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         [52-58) kg                0      189     838  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         [52-58) kg                1       31     838  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     >=58 kg                   0       45     254  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     >=58 kg                   1        3     254  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     <52 kg                    0      113     254  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     <52 kg                    1       49     254  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     [52-58) kg                0       40     254  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     [52-58) kg                1        4     254  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         >=58 kg                   0      132     221  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         >=58 kg                   1       11     221  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         <52 kg                    0       38     221  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         <52 kg                    1        4     221  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         [52-58) kg                0       30     221  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         [52-58) kg                1        6     221  ever_sstunted    
0-24 months   MAL-ED           INDIA                          >=58 kg                   0       36     242  ever_sstunted    
0-24 months   MAL-ED           INDIA                          >=58 kg                   1        6     242  ever_sstunted    
0-24 months   MAL-ED           INDIA                          <52 kg                    0      112     242  ever_sstunted    
0-24 months   MAL-ED           INDIA                          <52 kg                    1       38     242  ever_sstunted    
0-24 months   MAL-ED           INDIA                          [52-58) kg                0       36     242  ever_sstunted    
0-24 months   MAL-ED           INDIA                          [52-58) kg                1       14     242  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          >=58 kg                   0       75     238  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          >=58 kg                   1        5     238  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          <52 kg                    0       61     238  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          <52 kg                    1       15     238  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          [52-58) kg                0       81     238  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          [52-58) kg                1        1     238  ever_sstunted    
0-24 months   MAL-ED           PERU                           >=58 kg                   0       87     290  ever_sstunted    
0-24 months   MAL-ED           PERU                           >=58 kg                   1       17     290  ever_sstunted    
0-24 months   MAL-ED           PERU                           <52 kg                    0       87     290  ever_sstunted    
0-24 months   MAL-ED           PERU                           <52 kg                    1       28     290  ever_sstunted    
0-24 months   MAL-ED           PERU                           [52-58) kg                0       53     290  ever_sstunted    
0-24 months   MAL-ED           PERU                           [52-58) kg                1       18     290  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg                   0      154     270  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg                   1       40     270  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   <52 kg                    0       16     270  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   <52 kg                    1       14     270  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg                0       30     270  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg                1       16     270  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                   0       51     256  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                   1       47     256  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                    0       38     256  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                    1       61     256  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg                0       31     256  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg                1       28     256  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg                   0       64     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg                   1       18     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     <52 kg                    0      295     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     <52 kg                    1      158     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg                0       74     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg                1       20     629  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg                   0      182     755  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg                   1       10     755  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg                    0      338     755  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg                    1       68     755  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg                0      136     755  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg                1       21     755  ever_sstunted    
0-24 months   PROBIT           BELARUS                        >=58 kg                   0    10014   13772  ever_sstunted    
0-24 months   PROBIT           BELARUS                        >=58 kg                   1      265   13772  ever_sstunted    
0-24 months   PROBIT           BELARUS                        <52 kg                    0     1088   13772  ever_sstunted    
0-24 months   PROBIT           BELARUS                        <52 kg                    1       43   13772  ever_sstunted    
0-24 months   PROBIT           BELARUS                        [52-58) kg                0     2294   13772  ever_sstunted    
0-24 months   PROBIT           BELARUS                        [52-58) kg                1       68   13772  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     >=58 kg                   0      112     669  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     >=58 kg                   1        8     669  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     <52 kg                    0      356     669  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     <52 kg                    1       76     669  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg                0      107     669  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg                1       10     669  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          >=58 kg                   0       96    1515  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          >=58 kg                   1       17    1515  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          <52 kg                    0      725    1515  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          <52 kg                    1      435    1515  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg                0      193    1515  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg                1       49    1515  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                   0     1351    2352  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                   1      125    2352  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                    0      333    2352  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                    1       60    2352  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg                0      435    2352  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg                1       48    2352  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg                   0     4997   11204  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg                   1      846   11204  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg                    0     1786   11204  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg                    1      622   11204  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg                0     2364   11204  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg                1      589   11204  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg                   0      595   27130  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg                   1       73   27130  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     <52 kg                    0    20989   27130  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     <52 kg                    1     3703   27130  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg                0     1548   27130  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg                1      222   27130  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         >=58 kg                   0       30     271  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         >=58 kg                   1        3     271  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         <52 kg                    0      151     271  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         <52 kg                    1       16     271  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         [52-58) kg                0       70     271  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         [52-58) kg                1        1     271  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     >=58 kg                   0       47     254  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     >=58 kg                   1        1     254  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     <52 kg                    0      146     254  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     <52 kg                    1       16     254  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     [52-58) kg                0       42     254  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     [52-58) kg                1        2     254  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         >=58 kg                   0      135     221  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         >=58 kg                   1        8     221  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         <52 kg                    0       40     221  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         <52 kg                    1        2     221  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         [52-58) kg                0       30     221  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         [52-58) kg                1        6     221  ever_sstunted    
0-6 months    MAL-ED           INDIA                          >=58 kg                   0       41     242  ever_sstunted    
0-6 months    MAL-ED           INDIA                          >=58 kg                   1        1     242  ever_sstunted    
0-6 months    MAL-ED           INDIA                          <52 kg                    0      135     242  ever_sstunted    
0-6 months    MAL-ED           INDIA                          <52 kg                    1       15     242  ever_sstunted    
0-6 months    MAL-ED           INDIA                          [52-58) kg                0       46     242  ever_sstunted    
0-6 months    MAL-ED           INDIA                          [52-58) kg                1        4     242  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          >=58 kg                   0       78     238  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          >=58 kg                   1        2     238  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          <52 kg                    0       68     238  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          <52 kg                    1        8     238  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          [52-58) kg                0       82     238  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          [52-58) kg                1        0     238  ever_sstunted    
0-6 months    MAL-ED           PERU                           >=58 kg                   0       90     290  ever_sstunted    
0-6 months    MAL-ED           PERU                           >=58 kg                   1       14     290  ever_sstunted    
0-6 months    MAL-ED           PERU                           <52 kg                    0      101     290  ever_sstunted    
0-6 months    MAL-ED           PERU                           <52 kg                    1       14     290  ever_sstunted    
0-6 months    MAL-ED           PERU                           [52-58) kg                0       62     290  ever_sstunted    
0-6 months    MAL-ED           PERU                           [52-58) kg                1        9     290  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   >=58 kg                   0      177     270  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   >=58 kg                   1       17     270  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   <52 kg                    0       24     270  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   <52 kg                    1        6     270  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg                0       42     270  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg                1        4     270  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                   0       87     256  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                   1       11     256  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                    0       81     256  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                    1       18     256  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg                0       51     256  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg                1        8     256  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg                   0       76     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg                   1        6     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     <52 kg                    0      407     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     <52 kg                    1       46     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg                0       87     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg                1        7     629  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg                   0      187     755  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg                   1        5     755  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg                    0      376     755  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg                    1       30     755  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg                0      145     755  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg                1       12     755  ever_sstunted    
0-6 months    PROBIT           BELARUS                        >=58 kg                   0    10182   13772  ever_sstunted    
0-6 months    PROBIT           BELARUS                        >=58 kg                   1       97   13772  ever_sstunted    
0-6 months    PROBIT           BELARUS                        <52 kg                    0     1117   13772  ever_sstunted    
0-6 months    PROBIT           BELARUS                        <52 kg                    1       14   13772  ever_sstunted    
0-6 months    PROBIT           BELARUS                        [52-58) kg                0     2338   13772  ever_sstunted    
0-6 months    PROBIT           BELARUS                        [52-58) kg                1       24   13772  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     >=58 kg                   0      116     669  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     >=58 kg                   1        4     669  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     <52 kg                    0      411     669  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     <52 kg                    1       21     669  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     [52-58) kg                0      111     669  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     [52-58) kg                1        6     669  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          >=58 kg                   0      108    1512  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          >=58 kg                   1        5    1512  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          <52 kg                    0      958    1512  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          <52 kg                    1      200    1512  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg                0      221    1512  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg                1       20    1512  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                   0     1428    2352  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                   1       48    2352  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                    0      365    2352  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                    1       28    2352  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg                0      458    2352  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg                1       25    2352  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg                   0     5381   11190  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg                   1      456   11190  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg                    0     2064   11190  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg                    1      341   11190  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg                0     2635   11190  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg                1      313   11190  ever_sstunted    


The following strata were considered:

* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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
