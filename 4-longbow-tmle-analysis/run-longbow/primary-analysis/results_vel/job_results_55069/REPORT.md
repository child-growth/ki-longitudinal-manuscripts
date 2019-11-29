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

**Outcome Variable:** y_rate_wtkg

## Predictor Variables

**Intervention Variable:** hfoodsec

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
* W_nrooms
* brthmon
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                 country        hfoodsec                n_cell       n  outcome_variable 
-------------  ----------------------  -------------  ---------------------  -------  ------  -----------------
0-3 months     ki0047075b-MAL-ED       BANGLADESH     Food Secure                160     193  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     193  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       BANGLADESH     Food Insecure               29     193  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       INDIA          Food Secure                187     209  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     209  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       INDIA          Food Insecure               17     209  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Secure                 92     126  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     126  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Insecure               19     126  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure                 27     112  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure        29     112  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       PERU           Food Insecure               56     112  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                131     231  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        19     231  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               81     231  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure                 83     565  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       443     565  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure               39     565  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                431     725  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       208     725  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               86     725  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Secure                363     494  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        71     494  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure               60     494  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure               6566   13326  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      4481   13326  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             2279   13326  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure               1258    2484  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       883    2484  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              343    2484  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       BANGLADESH     Food Secure                156     189  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     189  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       BANGLADESH     Food Insecure               29     189  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure                186     207  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     207  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       INDIA          Food Insecure               16     207  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure                 93     127  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     127  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Insecure               19     127  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure                 27     111  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure        28     111  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       PERU           Food Insecure               56     111  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                125     222  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     222  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               79     222  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure                 77     522  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       406     522  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure               39     522  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                417     702  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       201     702  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               84     702  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure                336     454  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        62     454  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure               56     454  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure               6398   12719  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      4215   12719  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             2106   12719  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure                926    1805  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       636    1805  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              243    1805  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       BANGLADESH     Food Secure                155     187  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     187  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       BANGLADESH     Food Insecure               28     187  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       INDIA          Food Secure                189     210  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     210  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       INDIA          Food Insecure               16     210  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Secure                 93     127  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     127  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Insecure               19     127  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       PERU           Food Secure                 27     110  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure        28     110  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       PERU           Food Insecure               55     110  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                121     213  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17     213  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               75     213  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure                 75     498  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       384     498  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure               39     498  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                417     693  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       195     693  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               81     693  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Secure                336     463  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        64     463  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure               63     463  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure               1560    3048  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1102    3048  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              386    3048  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                157     188  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     188  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure               27     188  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       INDIA          Food Secure                188     210  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     210  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       INDIA          Food Insecure               17     210  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure                 93     127  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     127  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Insecure               19     127  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       PERU           Food Secure                 27     108  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure        26     108  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       PERU           Food Insecure               55     108  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                119     213  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     213  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               76     213  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                 74     481  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       369     481  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure               38     481  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                413     683  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       191     683  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               79     683  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                316     440  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        67     440  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure               57     440  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure               1787    3492  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1265    3492  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              440    3492  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                153     185  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     185  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure               28     185  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       INDIA          Food Secure                188     210  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     210  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       INDIA          Food Insecure               17     210  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Secure                 94     128  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     128  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Insecure               19     128  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       PERU           Food Secure                 26     106  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure        25     106  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       PERU           Food Insecure               55     106  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                115     212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17     212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               80     212  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 69     461  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       357     461  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure               35     461  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                395     666  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       191     666  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               80     666  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                320     439  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        67     439  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               52     439  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure               1797    3521  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1266    3521  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              458    3521  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                155     187  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     187  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure               28     187  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     128  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        10     128  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     128  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       INDIA          Food Secure                190     211  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     211  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       INDIA          Food Insecure               16     211  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Secure                 92     126  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     126  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Insecure               19     126  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       PERU           Food Secure                 26     106  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure        27     106  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       PERU           Food Insecure               53     106  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                117     216  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17     216  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               82     216  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 68     449  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       345     449  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure               36     449  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                368     605  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       166     605  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               71     605  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                337     463  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        66     463  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               60     463  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure               1793    3484  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1235    3484  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              456    3484  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                157     189  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     189  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure               28     189  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     128  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        10     128  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     128  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       INDIA          Food Secure                189     210  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     210  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       INDIA          Food Insecure               16     210  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Secure                 92     126  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     126  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Insecure               19     126  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       PERU           Food Secure                 26     103  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure        26     103  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       PERU           Food Insecure               51     103  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                125     223  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     223  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               80     223  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 63     422  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       326     422  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure               33     422  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                342     547  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       141     547  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               64     547  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                317     432  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        61     432  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               54     432  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                156     189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure               29     189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                189     211  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     211  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure               17     211  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                 94     128  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     128  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure               19     128  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       PERU           Food Secure                 25     102  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure        26     102  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       PERU           Food Insecure               51     102  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                128     226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               80     226  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 64     411  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       317     411  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure               30     411  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                318     493  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       120     493  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               55     493  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                247     340  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        49     340  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               44     340  y_rate_wtkg      


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

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
![](/tmp/9d054273-2688-4fc1-bc8e-b7db599e3676/789c8a13-a4d8-4090-923b-bc14a68f82c1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9d054273-2688-4fc1-bc8e-b7db599e3676/789c8a13-a4d8-4090-923b-bc14a68f82c1/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9d054273-2688-4fc1-bc8e-b7db599e3676/789c8a13-a4d8-4090-923b-bc14a68f82c1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                 country        intervention_level     baseline_level     estimate     ci_lower    ci_upper
-------------  ----------------------  -------------  ---------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED       INDIA          Food Secure            NA                0.7583774    0.7325472   0.7842075
0-3 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                0.7345900    0.6098128   0.8593673
0-3 months     ki0047075b-MAL-ED       INDIA          Food Insecure          NA                0.7766105    0.6815549   0.8716662
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Secure            NA                0.9550054    0.9101923   0.9998185
0-3 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                0.9464790    0.8086527   1.0843053
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                0.8673640    0.7776605   0.9570675
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure            NA                0.9505262    0.8721215   1.0289309
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.9408082    0.8754884   1.0061280
0-3 months     ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.9419477    0.8771885   1.0067068
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.9644885    0.9217905   1.0071866
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.9020444    0.8219278   0.9821610
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.9186478    0.8722839   0.9650117
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.8263281    0.7826038   0.8700524
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.8187875    0.7999355   0.8376395
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.7436379    0.6820188   0.8052569
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.8922742    0.8722085   0.9123398
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.8775801    0.8513969   0.9037633
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.8693658    0.8321402   0.9065914
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.8298628    0.8096434   0.8500821
0-3 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.8417992    0.7865934   0.8970051
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.8214920    0.7763213   0.8666627
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.8719129    0.8674232   0.8764025
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.8596806    0.8541822   0.8651789
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.8437700    0.8355034   0.8520367
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.7452117    0.7268467   0.7635766
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.7290847    0.7056491   0.7525203
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.7484762    0.7102614   0.7866910
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure            NA                0.4470792    0.4268751   0.4672832
3-6 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                0.4704672    0.4215648   0.5193697
3-6 months     ki0047075b-MAL-ED       INDIA          Food Insecure          NA                0.4545210    0.3849074   0.5241346
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure            NA                0.5135053    0.4820532   0.5449575
3-6 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                0.5316199    0.4698798   0.5933599
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                0.4883120    0.4269325   0.5496915
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure            NA                0.5525662    0.4829829   0.6221496
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.4922372    0.4523641   0.5321103
3-6 months     ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.4931216    0.4461608   0.5400824
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.4976952    0.4569426   0.5384478
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.4331750    0.3334817   0.5328682
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.4253957    0.3825109   0.4682806
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.4485287    0.4113795   0.4856779
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.4603250    0.4402437   0.4804063
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.4855675    0.4185253   0.5526097
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.5044130    0.4900434   0.5187826
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.4958948    0.4736425   0.5181470
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.4707366    0.4405296   0.5009436
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.4981474    0.4808894   0.5154055
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.4941016    0.4560269   0.5321763
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.4744894    0.4257374   0.5232415
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.4458134    0.4414470   0.4501797
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.4367778    0.4319411   0.4416145
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.4337580    0.4257768   0.4417392
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.4367274    0.4266172   0.4468375
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.4416309    0.4242285   0.4590332
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.4398644    0.4147866   0.4649422
6-9 months     ki0047075b-MAL-ED       INDIA          Food Secure            NA                0.2300219    0.2130873   0.2469565
6-9 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                0.2193560    0.1629800   0.2757320
6-9 months     ki0047075b-MAL-ED       INDIA          Food Insecure          NA                0.2422676    0.1886900   0.2958451
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Secure            NA                0.2686688    0.2423768   0.2949608
6-9 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                0.2643272    0.2290287   0.2996256
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                0.2386624    0.1881685   0.2891563
6-9 months     ki0047075b-MAL-ED       PERU           Food Secure            NA                0.2872565    0.2385553   0.3359577
6-9 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.2736103    0.2361888   0.3110319
6-9 months     ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.2491124    0.2090628   0.2891621
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.2639081    0.2346603   0.2931560
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.1628269    0.1033766   0.2222772
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.2791151    0.2423312   0.3158990
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.2672094    0.2311855   0.3032332
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.2317318    0.2172461   0.2462175
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.2220858    0.1379877   0.3061838
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.2794126    0.2653196   0.2935056
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.2478963    0.2281312   0.2676615
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.2439593    0.2153557   0.2725630
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.1879615    0.1761244   0.1997986
6-9 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.1745345    0.1394726   0.2095964
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.2350959    0.1615856   0.3086062
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.2375982    0.2302122   0.2449841
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.2436777    0.2352094   0.2521461
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.2360305    0.2210336   0.2510275
9-12 months    ki0047075b-MAL-ED       INDIA          Food Secure            NA                0.1784229    0.1625824   0.1942634
9-12 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                0.1300489    0.0622742   0.1978236
9-12 months    ki0047075b-MAL-ED       INDIA          Food Insecure          NA                0.1675722    0.1426559   0.1924884
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure            NA                0.1838246    0.1573534   0.2102958
9-12 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                0.2104833    0.1694791   0.2514875
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                0.1868274    0.1413789   0.2322759
9-12 months    ki0047075b-MAL-ED       PERU           Food Secure            NA                0.1596939    0.1087305   0.2106573
9-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.2457027    0.2082730   0.2831324
9-12 months    ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.2109850    0.1750825   0.2468874
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.2178664    0.1861248   0.2496079
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.1387082    0.0666732   0.2107432
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.2088458    0.1673476   0.2503439
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.2181255    0.1850020   0.2512490
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.1603169    0.1463094   0.1743244
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.1291117    0.0527774   0.2054460
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.1992250    0.1856024   0.2128476
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.2025680    0.1805377   0.2245983
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.1793299    0.1506691   0.2079907
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.1528730    0.1376414   0.1681047
9-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.1362836    0.1067656   0.1658015
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.0886552    0.0303767   0.1469338
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.1556813    0.1495546   0.1618080
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.1538434    0.1472627   0.1604241
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.1509617    0.1394780   0.1624455
12-15 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                0.1738987    0.1557209   0.1920766
12-15 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                0.1627179    0.1350688   0.1903669
12-15 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                0.1716918    0.1279654   0.2154182
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                0.1395027    0.1122614   0.1667439
12-15 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                0.1065366    0.0509992   0.1620739
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                0.1192521    0.0692038   0.1693003
12-15 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.1299169    0.0789232   0.1809106
12-15 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.1463000    0.0965969   0.1960032
12-15 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.1582987    0.1202364   0.1963609
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.1844228    0.1514951   0.2173505
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.1648841    0.0488639   0.2809042
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.1897255    0.1404640   0.2389870
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.1441214    0.1054413   0.1828015
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.1280762    0.1147870   0.1413655
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.1196655    0.0758971   0.1634339
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.1652912    0.1515252   0.1790573
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.1691464    0.1456616   0.1926313
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.1614495    0.1318426   0.1910565
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.1765707    0.1597433   0.1933982
12-15 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.1553218    0.1218446   0.1887991
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.1701008    0.1234278   0.2167738
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.1293088    0.1232668   0.1353507
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.1317286    0.1248918   0.1385654
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.1328000    0.1238793   0.1417207
15-18 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                0.1602992    0.1434189   0.1771796
15-18 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                0.1739478    0.1087276   0.2391679
15-18 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                0.1635780    0.1220348   0.2051212
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                0.1703340    0.1510616   0.1896065
15-18 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                0.1563205    0.1031746   0.2094664
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                0.1707475    0.1068651   0.2346298
15-18 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.1769498    0.1346729   0.2192268
15-18 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.1577558    0.0965197   0.2189919
15-18 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.1239094    0.0811460   0.1666729
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.2199046    0.1798173   0.2599919
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.2308798    0.1243573   0.3374024
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.2342817    0.1857800   0.2827834
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.1505671    0.1120006   0.1891335
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.1571126    0.1406653   0.1735599
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.1104883    0.0560828   0.1648937
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.1512524    0.1373639   0.1651408
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.1736067    0.1519418   0.1952716
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.1791824    0.1535843   0.2047805
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.2379458    0.2181653   0.2577263
15-18 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.2419008    0.1922030   0.2915985
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.2431057    0.2055173   0.2806940
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.1603947    0.1534080   0.1673813
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.1594129    0.1515656   0.1672601
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.1554354    0.1446770   0.1661937
18-21 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                0.1764449    0.1597088   0.1931809
18-21 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                0.1299747    0.0713876   0.1885618
18-21 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                0.1523856    0.0987496   0.2060216
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                0.1848584    0.1596899   0.2100269
18-21 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                0.1479182    0.1041150   0.1917214
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                0.1139847    0.0697340   0.1582353
18-21 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.1345114    0.0667922   0.2022305
18-21 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.1522783    0.1104858   0.1940708
18-21 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.1792873    0.1403556   0.2182189
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.1717206    0.1310057   0.2124356
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.2290848    0.1734916   0.2846780
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.1851480    0.1436371   0.2266589
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.1635065    0.1054950   0.2215181
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.1751725    0.1579426   0.1924024
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.1704882    0.1035551   0.2374214
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.1519254    0.1373345   0.1665164
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.1277705    0.1079189   0.1476221
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.1181283    0.0898818   0.1463748
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.1291796    0.1109500   0.1474092
18-21 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.1637848    0.1182836   0.2092859
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.1291643    0.0836666   0.1746619
21-24 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                0.1610541    0.1464273   0.1756809
21-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                0.0640947   -0.0154048   0.1435943
21-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                0.1684834    0.1336166   0.2033501
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                0.1681263    0.1410228   0.1952299
21-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                0.1795311    0.1062712   0.2527910
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                0.2485412    0.1508839   0.3461985
21-24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.1855628    0.0984365   0.2726891
21-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.1991653    0.1576326   0.2406980
21-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.1906716    0.1567301   0.2246130
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.1793999    0.1444253   0.2143746
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.0951599    0.0018857   0.1884342
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.1998141    0.1646733   0.2349548
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.1480817    0.1042917   0.1918717
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.1358527    0.1186518   0.1530537
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.1826479    0.1281066   0.2371891
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.1718049    0.1548024   0.1888074
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.1839983    0.1610577   0.2069388
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.1788558    0.1417065   0.2160052
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.1722930    0.1449600   0.1996261
21-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.2014845    0.1303123   0.2726567
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.2083217    0.0946698   0.3219737


### Parameter: E(Y)


agecat         studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       INDIA          NA                   NA                0.7592914   0.7347074   0.7838753
0-3 months     ki0047075b-MAL-ED       NEPAL          NA                   NA                0.9430321   0.9048227   0.9812414
0-3 months     ki0047075b-MAL-ED       PERU           NA                   NA                0.9447947   0.9048809   0.9847084
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.9452995   0.9158887   0.9747104
0-3 months     ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.8163500   0.7995330   0.8331670
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.8272033   0.8099583   0.8444483
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.8630601   0.8596562   0.8664641
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.7393532   0.7254769   0.7532296
3-6 months     ki0047075b-MAL-ED       INDIA          NA                   NA                0.4482193   0.4292370   0.4672017
3-6 months     ki0047075b-MAL-ED       NEPAL          NA                   NA                0.5088333   0.4833138   0.5343529
3-6 months     ki0047075b-MAL-ED       PERU           NA                   NA                0.5019717   0.4713849   0.5325585
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.4655326   0.4378428   0.4932223
3-6 months     ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.4593975   0.4422221   0.4765729
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.4964806   0.4823933   0.5105678
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.4413665   0.4383965   0.4443366
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.4393291   0.4305209   0.4481373
6-9 months     ki0047075b-MAL-ED       INDIA          NA                   NA                0.2307010   0.2148519   0.2465500
6-9 months     ki0047075b-MAL-ED       NEPAL          NA                   NA                0.2618133   0.2409192   0.2827074
6-9 months     ki0047075b-MAL-ED       PERU           NA                   NA                0.2606477   0.2361378   0.2851576
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.2602443   0.2384074   0.2820812
6-9 months     ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.2362596   0.2225288   0.2499904
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.1877629   0.1753820   0.2001437
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.2395527   0.2343020   0.2448034
9-12 months    ki0047075b-MAL-ED       INDIA          NA                   NA                0.1763927   0.1619302   0.1908552
9-12 months    ki0047075b-MAL-ED       NEPAL          NA                   NA                0.1900880   0.1689600   0.2112161
9-12 months    ki0047075b-MAL-ED       PERU           NA                   NA                0.2027379   0.1781715   0.2273042
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.2160101   0.1924536   0.2395667
9-12 months    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.1636213   0.1504841   0.1767585
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.1447801   0.1317780   0.1577822
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.1545249   0.1502663   0.1587836
12-15 months   ki0047075b-MAL-ED       INDIA          NA                   NA                0.1734539   0.1567837   0.1901240
12-15 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.1367645   0.1148549   0.1586741
12-15 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.1483489   0.1228877   0.1738100
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.1919076   0.1650647   0.2187506
12-15 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.1305063   0.1184818   0.1425307
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.1729179   0.1594294   0.1864064
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.1305803   0.1264067   0.1347540
15-18 months   ki0047075b-MAL-ED       INDIA          NA                   NA                0.1608713   0.1452597   0.1764829
15-18 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.1663773   0.1495283   0.1832262
15-18 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.1412515   0.1146687   0.1678343
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.2255773   0.1962117   0.2549429
15-18 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.1529843   0.1384423   0.1675263
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.2366725   0.2211618   0.2521832
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.1593626   0.1546593   0.1640658
18-21 months   ki0047075b-MAL-ED       INDIA          NA                   NA                0.1735054   0.1577790   0.1892318
18-21 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.1731727   0.1529675   0.1933779
18-21 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.1614004   0.1338511   0.1889497
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.1795914   0.1521104   0.2070724
18-21 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.1724392   0.1563209   0.1885575
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.1364811   0.1212495   0.1517126
21-24 months   ki0047075b-MAL-ED       INDIA          NA                   NA                0.1593551   0.1456583   0.1730518
21-24 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.1795446   0.1535636   0.2055255
21-24 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.1898916   0.1619826   0.2178006
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.1861341   0.1617310   0.2105371
21-24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.1419730   0.1267767   0.1571693
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.1783518   0.1538068   0.2028967


### Parameter: ATE


agecat         studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0237873   -0.1512101    0.1036354
0-3 months     ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure        0.0182332   -0.0802695    0.1167358
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0085264   -0.1532250    0.1361722
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0876414   -0.1883725    0.0130898
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0097179   -0.1118928    0.0924569
0-3 months     ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.0085785   -0.1111521    0.0939951
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0624441   -0.1533985    0.0285103
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0458407   -0.1090528    0.0173713
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0075406   -0.0546912    0.0396100
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.0826902   -0.1578597   -0.0075207
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0146941   -0.0474573    0.0180691
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0229084   -0.0650768    0.0192600
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure        0.0119364   -0.0468914    0.0707642
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0083708   -0.0579188    0.0411771
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0122323   -0.0190862   -0.0053784
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.0281428   -0.0372293   -0.0190563
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0161269   -0.0454826    0.0132287
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0032645   -0.0386276    0.0451567
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0233881   -0.0295237    0.0762998
3-6 months     ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure        0.0074418   -0.0650445    0.0799280
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0181145   -0.0513874    0.0876165
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0251934   -0.0945521    0.0441654
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0603290   -0.1406008    0.0199429
3-6 months     ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.0594446   -0.1437918    0.0249026
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0645202   -0.1724539    0.0434135
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0722994   -0.1313803   -0.0132186
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure        0.0117963   -0.0303981    0.0539907
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure        0.0370388   -0.0396549    0.1137325
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0085183   -0.0350347    0.0179982
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0336764   -0.0670106   -0.0003422
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0040459   -0.0458435    0.0377518
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0236580   -0.0756409    0.0283249
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0090356   -0.0154881   -0.0025830
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.0120554   -0.0212057   -0.0029051
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0049035   -0.0150362    0.0248433
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0031370   -0.0236500    0.0299240
6-9 months     ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0106659   -0.0695305    0.0481986
6-9 months     ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure        0.0122457   -0.0439445    0.0684358
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0043416   -0.0484388    0.0397556
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0300063   -0.0869814    0.0269687
6-9 months     ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0136462   -0.0754607    0.0481684
6-9 months     ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.0381441   -0.1017084    0.0254202
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1010812   -0.1674820   -0.0346805
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0152069   -0.0318675    0.0622814
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0354776   -0.0743734    0.0034182
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.0451236   -0.1365511    0.0463039
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0315163   -0.0557048   -0.0073277
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0354533   -0.0672106   -0.0036959
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0134270   -0.0503996    0.0235456
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.0471344   -0.0273618    0.1216306
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0060795   -0.0049326    0.0170917
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0015677   -0.0186017    0.0154663
9-12 months    ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0483740   -0.1179752    0.0212272
9-12 months    ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0108507   -0.0403760    0.0186746
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0266587   -0.0219138    0.0752312
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure        0.0030028   -0.0497779    0.0557836
9-12 months    ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0860088    0.0228534    0.1491642
9-12 months    ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0512911   -0.0112463    0.1138285
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0791582   -0.1578608   -0.0004555
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0090206   -0.0615601    0.0435189
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0578086   -0.0936904   -0.0219268
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.0890138   -0.1721031   -0.0059245
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0033430   -0.0224618    0.0291478
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0198950   -0.0514839    0.0116938
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0165895   -0.0497835    0.0166045
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0642178   -0.1243417   -0.0040940
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0018379   -0.0107638    0.0070880
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0047196   -0.0173502    0.0079110
12-15 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0111809   -0.0442703    0.0219085
12-15 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0022070   -0.0495613    0.0451474
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0329661   -0.0948950    0.0289628
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0202506   -0.0770300    0.0365287
12-15 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0163831   -0.0548178    0.0875840
12-15 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0283818   -0.0352021    0.0919657
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0195387   -0.1403719    0.1012944
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0053027   -0.0541281    0.0647335
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0160452   -0.0568466    0.0247563
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.0244559   -0.0828046    0.0338928
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0038552   -0.0236010    0.0313115
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0038417   -0.0365938    0.0289104
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0212489   -0.0587405    0.0162426
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0064699   -0.0561247    0.0431849
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0024198   -0.0063841    0.0112237
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0034912   -0.0074428    0.0144252
15-18 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0136485   -0.0537207    0.0810178
15-18 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure        0.0032788   -0.0415630    0.0481205
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0140136   -0.0706734    0.0426463
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure        0.0004134   -0.0663223    0.0671491
15-18 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0191940   -0.0941397    0.0557516
15-18 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.0530404   -0.1138626    0.0077818
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.0109752   -0.1028273    0.1247777
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0143771   -0.0485265    0.0772806
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure        0.0065455   -0.0353707    0.0484616
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.0400788   -0.1070210    0.0268634
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0223544   -0.0033744    0.0480831
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0279300   -0.0011891    0.0570491
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure        0.0039550   -0.0495560    0.0574659
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.0051599   -0.0372869    0.0476066
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0009818   -0.0116901    0.0097265
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0049593   -0.0175336    0.0076150
18-21 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0464702   -0.1074008    0.0144605
18-21 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0240593   -0.0802458    0.0321271
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0369403   -0.0874168    0.0135363
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0708738   -0.1219462   -0.0198014
18-21 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0177669   -0.0619220    0.0974558
18-21 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0447759   -0.0335702    0.1231220
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.0573642   -0.0117172    0.1264456
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0134274   -0.0450042    0.0718589
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure        0.0116659   -0.0487961    0.0721280
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure        0.0069817   -0.0819570    0.0959204
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0241550   -0.0488394    0.0005295
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0337971   -0.0657923   -0.0018019
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure        0.0346052   -0.0144368    0.0836471
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0000153   -0.0490192    0.0489886
21-24 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0969594   -0.1777933   -0.0161255
21-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure        0.0074293   -0.0303813    0.0452398
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0114048   -0.0666636    0.0894732
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure        0.0804148   -0.0211786    0.1820083
21-24 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0136025   -0.0830687    0.1102738
21-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0051088   -0.0885426    0.0987602
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0842400   -0.1840440    0.0155641
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0204142   -0.0292348    0.0700631
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0122290   -0.0594150    0.0349571
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure        0.0345662   -0.0352419    0.1043742
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0121934   -0.0163831    0.0407699
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0070510   -0.0338230    0.0479249
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure        0.0291915   -0.0473015    0.1056844
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.0360287   -0.0813180    0.1533754


### Parameter: PAR


agecat         studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       INDIA          Food Secure          NA                 0.0009140   -0.0078973    0.0097253
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0119733   -0.0353740    0.0114274
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0057315   -0.0766210    0.0651580
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0191890   -0.0445903    0.0062123
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0099781   -0.0501508    0.0301945
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0077522   -0.0197936    0.0042892
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0026595   -0.0138663    0.0085473
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0088527   -0.0120394   -0.0056660
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0058584   -0.0190693    0.0073524
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure          NA                 0.0011401   -0.0047717    0.0070520
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0046720   -0.0186290    0.0092850
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0505945   -0.1098182    0.0086292
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0321626   -0.0570376   -0.0072877
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.0108687   -0.0249457    0.0466832
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0063586   -0.0157587    0.0030414
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0016669   -0.0105489    0.0072152
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0044468   -0.0074023   -0.0014914
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0026018   -0.0058399    0.0110435
6-9 months     ki0047075b-MAL-ED       INDIA          Food Secure          NA                 0.0006791   -0.0039867    0.0053448
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0068555   -0.0178242    0.0041133
6-9 months     ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0266088   -0.0705537    0.0173360
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0036638   -0.0228203    0.0154927
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0309498   -0.0642827    0.0023830
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0119029   -0.0205717   -0.0032341
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0001986   -0.0099466    0.0095493
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0019545   -0.0031342    0.0070432
9-12 months    ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0020302   -0.0053190    0.0012587
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure          NA                 0.0062634   -0.0051569    0.0176838
9-12 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0430440   -0.0007076    0.0867956
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0018562   -0.0231221    0.0194096
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0545042   -0.0852571   -0.0237513
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0013801   -0.0098287    0.0070685
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0080929   -0.0168663    0.0006804
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0011564   -0.0052177    0.0029050
12-15 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0004449   -0.0045305    0.0036408
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0027382   -0.0147698    0.0092934
12-15 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0184320   -0.0266222    0.0634862
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0074848   -0.0178115    0.0327812
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0136152   -0.0486310    0.0214007
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0012310   -0.0107661    0.0083042
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0036528   -0.0120468    0.0047412
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0012716   -0.0025969    0.0051400
15-18 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                 0.0005721   -0.0033642    0.0045084
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0039568   -0.0148517    0.0069381
15-18 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0356983   -0.0777418    0.0063452
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0056727   -0.0213337    0.0326791
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.0024172   -0.0329391    0.0377735
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0099449    0.0013541    0.0185357
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0012733   -0.0120722    0.0095255
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0010321   -0.0056388    0.0035745
18-21 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0029395   -0.0077606    0.0018816
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0116857   -0.0229420   -0.0004295
18-21 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0268890   -0.0285509    0.0823290
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0078708   -0.0160010    0.0317426
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.0089327   -0.0430460    0.0609113
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0092645   -0.0177467   -0.0007824
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0073015   -0.0022495    0.0168525
21-24 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0016991   -0.0059735    0.0025754
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                 0.0114182   -0.0070898    0.0299262
21-24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0043288   -0.0656282    0.0742858
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0067342   -0.0144944    0.0279628
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0061087   -0.0461494    0.0339320
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0032452   -0.0062237    0.0127140
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0060587   -0.0107855    0.0229030
