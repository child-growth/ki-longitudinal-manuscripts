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

**Outcome Variable:** y_rate_haz

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
0-3 months     ki0047075b-MAL-ED       BANGLADESH     Food Secure                160     192  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     192  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       BANGLADESH     Food Insecure               28     192  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       BRAZIL         Food Secure                  0     101  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        10     101  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       BRAZIL         Food Insecure               91     101  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       INDIA          Food Secure                146     158  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         2     158  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       INDIA          Food Insecure               10     158  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Secure                 65      86  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         8      86  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Insecure               13      86  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure                 27     105  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure        26     105  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       PERU           Food Insecure               52     105  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                 94     177  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17     177  y_rate_haz       
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               66     177  y_rate_haz       
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure                 83     566  y_rate_haz       
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       444     566  y_rate_haz       
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure               39     566  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                428     721  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       207     721  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               86     721  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Secure                361     493  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        71     493  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure               61     493  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure               6442   13054  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      4389   13054  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             2223   13054  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure               1269    2500  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       889    2500  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              342    2500  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       BANGLADESH     Food Secure                156     189  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     189  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       BANGLADESH     Food Insecure               29     189  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure                186     207  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     207  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       INDIA          Food Insecure               16     207  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure                 93     127  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     127  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Insecure               19     127  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure                 27     111  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure        28     111  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       PERU           Food Insecure               56     111  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                125     222  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     222  y_rate_haz       
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               79     222  y_rate_haz       
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure                 77     523  y_rate_haz       
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       407     523  y_rate_haz       
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure               39     523  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                413     695  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       198     695  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               84     695  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure                335     453  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        62     453  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure               56     453  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure               6326   12580  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      4174   12580  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             2080   12580  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure                937    1826  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       645    1826  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              244    1826  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       BANGLADESH     Food Secure                155     187  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     187  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       BANGLADESH     Food Insecure               28     187  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       INDIA          Food Secure                189     210  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     210  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       INDIA          Food Insecure               16     210  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Secure                 93     127  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     127  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Insecure               19     127  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       PERU           Food Secure                 27     110  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure        28     110  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       PERU           Food Insecure               55     110  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                121     213  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17     213  y_rate_haz       
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               75     213  y_rate_haz       
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure                 75     498  y_rate_haz       
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       384     498  y_rate_haz       
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure               39     498  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                416     688  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       193     688  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               79     688  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Secure                340     466  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        64     466  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure               62     466  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure               1552    3029  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1095    3029  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              382    3029  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                157     188  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     188  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure               27     188  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       INDIA          Food Secure                188     210  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     210  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       INDIA          Food Insecure               17     210  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure                 93     127  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     127  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Insecure               19     127  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       PERU           Food Secure                 27     108  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure        26     108  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       PERU           Food Insecure               55     108  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                119     213  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     213  y_rate_haz       
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               76     213  y_rate_haz       
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                 74     482  y_rate_haz       
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       370     482  y_rate_haz       
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure               38     482  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                408     674  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       189     674  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               77     674  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                330     455  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        67     455  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure               58     455  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure               1777    3474  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1258    3474  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              439    3474  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                153     185  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     185  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure               28     185  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       INDIA          Food Secure                188     210  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     210  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       INDIA          Food Insecure               17     210  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Secure                 94     128  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     128  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Insecure               19     128  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       PERU           Food Secure                 26     106  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure        25     106  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       PERU           Food Insecure               55     106  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                115     212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17     212  y_rate_haz       
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               80     212  y_rate_haz       
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 69     461  y_rate_haz       
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       357     461  y_rate_haz       
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure               35     461  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                390     660  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       190     660  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               80     660  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                335     456  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        68     456  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               53     456  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure               1795    3518  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1264    3518  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              459    3518  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                155     187  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     187  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure               28     187  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     128  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        10     128  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     128  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       INDIA          Food Secure                190     211  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     211  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       INDIA          Food Insecure               16     211  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Secure                 92     126  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     126  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Insecure               19     126  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       PERU           Food Secure                 26     106  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure        27     106  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       PERU           Food Insecure               53     106  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                117     216  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17     216  y_rate_haz       
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               82     216  y_rate_haz       
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 68     449  y_rate_haz       
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       345     449  y_rate_haz       
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure               36     449  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                368     604  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       165     604  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               71     604  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                339     466  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        67     466  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               60     466  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure               1810    3523  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1255    3523  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              458    3523  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                157     189  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     189  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure               28     189  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     128  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        10     128  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     128  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       INDIA          Food Secure                189     210  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     210  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       INDIA          Food Insecure               16     210  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Secure                 92     126  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     126  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Insecure               19     126  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       PERU           Food Secure                 26     103  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure        26     103  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       PERU           Food Insecure               51     103  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                125     223  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     223  y_rate_haz       
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               80     223  y_rate_haz       
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 63     422  y_rate_haz       
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       326     422  y_rate_haz       
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure               33     422  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                341     546  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       141     546  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               64     546  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                315     430  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        61     430  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               54     430  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                156     189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure               29     189  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                189     211  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     211  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure               17     211  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                 94     128  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     128  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure               19     128  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       PERU           Food Secure                 25     102  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure        26     102  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       PERU           Food Insecure               51     102  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                128     226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               80     226  y_rate_haz       
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 64     411  y_rate_haz       
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       317     411  y_rate_haz       
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure               30     411  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                315     490  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       120     490  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               55     490  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                245     339  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        49     339  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               45     339  y_rate_haz       


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
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
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
![](/tmp/d078684f-205d-4d77-9441-232b5edf86e4/91015c6e-6e65-4fd7-ab36-37cb346f65e2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d078684f-205d-4d77-9441-232b5edf86e4/91015c6e-6e65-4fd7-ab36-37cb346f65e2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d078684f-205d-4d77-9441-232b5edf86e4/91015c6e-6e65-4fd7-ab36-37cb346f65e2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Secure            NA                 0.0060703   -0.0725799    0.0847205
0-3 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                 0.0628501   -0.0563698    0.1820700
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                 0.0427269   -0.1025753    0.1880291
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure            NA                -0.2637124   -0.3677226   -0.1597023
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                -0.2120096   -0.2890776   -0.1349416
0-3 months     ki0047075b-MAL-ED       PERU           Food Insecure          NA                -0.2787395   -0.3580691   -0.1994099
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.1754305   -0.2453138   -0.1055472
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.2311634   -0.4122457   -0.0500812
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.1897205   -0.2832565   -0.0961845
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -0.2000819   -0.2680355   -0.1321283
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -0.2352705   -0.2657768   -0.2047641
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -0.2781560   -0.3671258   -0.1891863
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -0.2396958   -0.2626271   -0.2167645
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.2107241   -0.2447723   -0.1766759
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.2167528   -0.2627570   -0.1707487
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -0.0372416   -0.0657355   -0.0087477
0-3 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                 0.0100692   -0.0748396    0.0949779
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -0.0226945   -0.0990345    0.0536454
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                 0.0676723    0.0601254    0.0752193
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                 0.0583251    0.0490463    0.0676039
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                 0.0412676    0.0265298    0.0560053
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -0.2547195   -0.2922173   -0.2172217
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -0.3089806   -0.3577189   -0.2602424
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -0.2640851   -0.3520446   -0.1761256
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure            NA                -0.0301514   -0.0643640    0.0040611
3-6 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -0.0041670   -0.0811907    0.0728568
3-6 months     ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -0.0306934   -0.1187409    0.0573541
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -0.0260442   -0.0679601    0.0158718
3-6 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.0629764   -0.1861062    0.0601533
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -0.0438231   -0.1397552    0.0521090
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure            NA                 0.0634131   -0.0186906    0.1455169
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                 0.0547708   -0.0401787    0.1497203
3-6 months     ki0047075b-MAL-ED       PERU           Food Insecure          NA                -0.0222358   -0.0919675    0.0474960
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.0066820   -0.0447913    0.0581553
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0434531   -0.1497852    0.0628791
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.0316524   -0.1057813    0.0424764
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -0.0775870   -0.1284239   -0.0267501
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -0.0467722   -0.0726403   -0.0209040
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -0.0523817   -0.1253444    0.0205810
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                 0.0254644    0.0046493    0.0462796
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                 0.0225132   -0.0085026    0.0535289
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                 0.0047208   -0.0475777    0.0570193
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -0.1599600   -0.1832430   -0.1366770
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -0.1891933   -0.2447187   -0.1336678
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -0.1237153   -0.1762937   -0.0711368
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -0.0007005   -0.0078204    0.0064194
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -0.0061305   -0.0137526    0.0014917
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -0.0046405   -0.0166221    0.0073410
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -0.0074448   -0.0269466    0.0120569
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                 0.0017290   -0.0192455    0.0227034
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -0.0392383   -0.0795532    0.0010766
6-9 months     ki0047075b-MAL-ED       INDIA          Food Secure            NA                -0.0725371   -0.0983169   -0.0467573
6-9 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -0.0043825   -0.1293909    0.1206258
6-9 months     ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -0.0894300   -0.1574856   -0.0213743
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -0.0580350   -0.0853565   -0.0307135
6-9 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                 0.0233460   -0.0697622    0.1164542
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -0.0284912   -0.1380681    0.0810856
6-9 months     ki0047075b-MAL-ED       PERU           Food Secure            NA                -0.0935441   -0.1530147   -0.0340735
6-9 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                -0.0718653   -0.1473576    0.0036270
6-9 months     ki0047075b-MAL-ED       PERU           Food Insecure          NA                -0.0362672   -0.0910703    0.0185360
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.0043055   -0.0340504    0.0426613
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.1410240   -0.2062634   -0.0757845
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.0192711   -0.0724785    0.0339362
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -0.0479823   -0.1035707    0.0076061
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -0.0572208   -0.0772496   -0.0371919
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -0.1049465   -0.1658419   -0.0440511
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -0.0230999   -0.0400811   -0.0061188
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.0409715   -0.0642768   -0.0176662
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.0556851   -0.0879622   -0.0234081
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -0.0454963   -0.0625560   -0.0284366
6-9 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -0.0611904   -0.1018397   -0.0205412
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                 0.0187631   -0.0917971    0.1293233
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -0.0272230   -0.0404961   -0.0139499
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -0.0248860   -0.0391132   -0.0106589
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -0.0476905   -0.0747794   -0.0206016
9-12 months    ki0047075b-MAL-ED       INDIA          Food Secure            NA                -0.0914195   -0.1087935   -0.0740455
9-12 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -0.1200275   -0.1991801   -0.0408749
9-12 months    ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -0.1199226   -0.1825004   -0.0573448
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -0.0621567   -0.0885819   -0.0357315
9-12 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.0268773   -0.0846495    0.0308948
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -0.0791489   -0.1291461   -0.0291517
9-12 months    ki0047075b-MAL-ED       PERU           Food Secure            NA                 0.0537048   -0.0292345    0.1366442
9-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                -0.1177461   -0.1702459   -0.0652463
9-12 months    ki0047075b-MAL-ED       PERU           Food Insecure          NA                -0.0425646   -0.0934902    0.0083610
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.0891759   -0.1292457   -0.0491062
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0544214   -0.1329843    0.0241415
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.0932703   -0.1378172   -0.0487235
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                 0.0227640   -0.0143200    0.0598480
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -0.0514343   -0.0677582   -0.0351105
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -0.0405418   -0.0904379    0.0093543
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -0.0321357   -0.0461311   -0.0181404
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.0241360   -0.0458127   -0.0024592
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.0726859   -0.1048940   -0.0404779
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -0.0613353   -0.0738603   -0.0488103
9-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -0.1188734   -0.1498613   -0.0878856
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -0.1438098   -0.2259373   -0.0616823
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -0.0500155   -0.0598696   -0.0401614
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -0.0545976   -0.0675673   -0.0416280
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -0.0538550   -0.0748239   -0.0328860
12-15 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                -0.0552086   -0.0721227   -0.0382945
12-15 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -0.0695290   -0.1564471    0.0173891
12-15 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -0.0592404   -0.1030922   -0.0153885
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -0.0342166   -0.0578193   -0.0106139
12-15 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.0428382   -0.0951478    0.0094713
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -0.0011421   -0.0495347    0.0472504
12-15 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                -0.1103668   -0.1549674   -0.0657662
12-15 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                -0.0118510   -0.0806359    0.0569339
12-15 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                -0.0464983   -0.0877179   -0.0052788
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.0366957   -0.0740599    0.0006686
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0843409   -0.1616360   -0.0070459
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.0713063   -0.1013300   -0.0412826
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -0.1024478   -0.1361315   -0.0687641
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -0.1276232   -0.1482330   -0.1070135
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -0.1422911   -0.1838124   -0.1007699
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -0.0384780   -0.0512576   -0.0256985
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.0410211   -0.0606068   -0.0214354
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.0249541   -0.0514633    0.0015552
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -0.0661853   -0.0787519   -0.0536186
12-15 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -0.0733199   -0.1043177   -0.0423220
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -0.0767841   -0.1167339   -0.0368343
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -0.0490378   -0.0569702   -0.0411054
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -0.0402653   -0.0512662   -0.0292645
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -0.0414257   -0.0593367   -0.0235146
15-18 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                -0.0398679   -0.0538288   -0.0259070
15-18 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -0.0753306   -0.1232019   -0.0274593
15-18 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -0.0420820   -0.0866725    0.0025086
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -0.0502519   -0.0740042   -0.0264995
15-18 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.0446825   -0.1084731    0.0191080
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -0.0955099   -0.1372650   -0.0537549
15-18 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                -0.0172886   -0.0775113    0.0429342
15-18 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                -0.0361359   -0.0952772    0.0230054
15-18 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                -0.0187504   -0.0476452    0.0101443
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.0549504   -0.0825302   -0.0273706
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                 0.0238949   -0.0433754    0.0911652
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.0076179   -0.0372152    0.0219794
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -0.0393793   -0.0846272    0.0058686
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -0.0565839   -0.0727670   -0.0404008
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -0.1252772   -0.1722137   -0.0783407
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -0.0196062   -0.0303680   -0.0088445
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.0129167   -0.0294190    0.0035856
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.0164792   -0.0425458    0.0095875
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -0.0646924   -0.0804645   -0.0489204
15-18 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -0.0644206   -0.0917301   -0.0371111
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -0.0625959   -0.0864490   -0.0387427
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -0.0333637   -0.0415550   -0.0251724
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -0.0346301   -0.0447837   -0.0244766
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -0.0251166   -0.0421422   -0.0080910
18-21 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                 0.0072617   -0.0051330    0.0196565
18-21 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                 0.0405832   -0.0250033    0.1061696
18-21 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -0.0038246   -0.0452927    0.0376436
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -0.0494071   -0.0683783   -0.0304359
18-21 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.0375754   -0.0888204    0.0136695
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -0.0464459   -0.0924763   -0.0004156
18-21 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                -0.0093626   -0.0480370    0.0293119
18-21 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                 0.0254289   -0.0256495    0.0765073
18-21 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                 0.0051407   -0.0314535    0.0417350
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.0279509   -0.0560013    0.0000995
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0448807   -0.1206776    0.0309162
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.0438319   -0.0750714   -0.0125924
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -0.0541424   -0.0905957   -0.0176892
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -0.0359877   -0.0499128   -0.0220627
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -0.0276838   -0.0768376    0.0214700
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -0.0286947   -0.0388662   -0.0185231
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.0279634   -0.0449949   -0.0109320
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.0211730   -0.0442452    0.0018992
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                 0.0195854    0.0046938    0.0344769
18-21 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                 0.0080197   -0.0211442    0.0371836
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                 0.0198888   -0.0065507    0.0463283
21-24 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                 0.0331549    0.0210271    0.0452827
21-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                 0.0283753   -0.0151527    0.0719033
21-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -0.0059548   -0.0410314    0.0291217
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                 0.0080258   -0.0105971    0.0266487
21-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                 0.0110729   -0.0387932    0.0609390
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                 0.0302381   -0.0405804    0.1010565
21-24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                 0.0726152    0.0310579    0.1141726
21-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                 0.0694592    0.0259423    0.1129762
21-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                 0.0691019    0.0337055    0.1044983
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.0433076    0.0226399    0.0639752
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                 0.0193964   -0.0361265    0.0749193
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                 0.0573322    0.0231679    0.0914964
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                 0.0515438    0.0233369    0.0797508
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                 0.0385842    0.0248474    0.0523210
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                 0.0687898    0.0128032    0.1247764
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                 0.0597872    0.0495358    0.0700387
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                 0.0552146    0.0381340    0.0722952
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                 0.0550016    0.0297930    0.0802103
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                 0.0425672    0.0236044    0.0615300
21-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                 0.0624491    0.0299629    0.0949353
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                 0.0623980    0.0307472    0.0940489


### Parameter: E(Y)


agecat         studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       NEPAL          NA                   NA                 0.0168933   -0.0475781    0.0813646
0-3 months     ki0047075b-MAL-ED       PERU           NA                   NA                -0.2591285   -0.3082030   -0.2100540
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -0.1867046   -0.2394747   -0.1339344
0-3 months     ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -0.2319865   -0.2585900   -0.2053830
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     ki1113344-GMS-Nepal     NEPAL          NA                   NA                -0.0320611   -0.0574681   -0.0066541
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                 0.0605085    0.0549024    0.0661146
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -0.2745100   -0.3028504   -0.2461696
3-6 months     ki0047075b-MAL-ED       INDIA          NA                   NA                -0.0295657   -0.0611153    0.0019839
3-6 months     ki0047075b-MAL-ED       NEPAL          NA                   NA                -0.0327113   -0.0685276    0.0031050
3-6 months     ki0047075b-MAL-ED       PERU           NA                   NA                -0.0011048   -0.0481278    0.0459182
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -0.0087531   -0.0486606    0.0311545
3-6 months     ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1113344-GMS-Nepal     NEPAL          NA                   NA                -0.1616259   -0.1804321   -0.1428197
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -0.0034732   -0.0083369    0.0013904
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -0.0085546   -0.0222850    0.0051757
6-9 months     ki0047075b-MAL-ED       INDIA          NA                   NA                -0.0722015   -0.0962308   -0.0481721
6-9 months     ki0047075b-MAL-ED       NEPAL          NA                   NA                -0.0526967   -0.0764788   -0.0289147
6-9 months     ki0047075b-MAL-ED       PERU           NA                   NA                -0.0561945   -0.0915141   -0.0208748
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -0.0101309   -0.0395236    0.0192618
6-9 months     ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -0.0595548   -0.0774135   -0.0416961
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     ki1113344-GMS-Nepal     NEPAL          NA                   NA                -0.0405139   -0.0581609   -0.0228669
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -0.0289432   -0.0379399   -0.0199466
9-12 months    ki0047075b-MAL-ED       INDIA          NA                   NA                -0.0944080   -0.1109278   -0.0778882
9-12 months    ki0047075b-MAL-ED       NEPAL          NA                   NA                -0.0666019   -0.0881964   -0.0450073
9-12 months    ki0047075b-MAL-ED       PERU           NA                   NA                -0.0455739   -0.0792172   -0.0119307
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -0.0892023   -0.1171796   -0.0612250
9-12 months    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -0.0424748   -0.0569242   -0.0280255
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                -0.0809872   -0.0949069   -0.0670675
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -0.0523249   -0.0598007   -0.0448490
12-15 months   ki0047075b-MAL-ED       INDIA          NA                   NA                -0.0558760   -0.0715831   -0.0401688
12-15 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                -0.0358434   -0.0552847   -0.0164020
12-15 months   ki0047075b-MAL-ED       PERU           NA                   NA                -0.0583649   -0.0870888   -0.0296410
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -0.0564036   -0.0803468   -0.0324605
12-15 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -0.1259588   -0.1428870   -0.1090306
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                -0.0682777   -0.0793293   -0.0572261
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -0.0448681   -0.0510003   -0.0387359
15-18 months   ki0047075b-MAL-ED       INDIA          NA                   NA                -0.0408761   -0.0539696   -0.0277826
15-18 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                -0.0545316   -0.0735770   -0.0354862
15-18 months   ki0047075b-MAL-ED       PERU           NA                   NA                -0.0260438   -0.0502259   -0.0018617
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -0.0308187   -0.0501448   -0.0114926
15-18 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -0.0576906   -0.0723785   -0.0430027
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                -0.0672720   -0.0801009   -0.0544430
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -0.0328364   -0.0389026   -0.0267701
18-21 months   ki0047075b-MAL-ED       INDIA          NA                   NA                 0.0072104   -0.0045271    0.0189479
18-21 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                -0.0460708   -0.0620604   -0.0300812
18-21 months   ki0047075b-MAL-ED       PERU           NA                   NA                 0.0094570   -0.0141753    0.0330894
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -0.0323719   -0.0522186   -0.0125252
18-21 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -0.0383890   -0.0508204   -0.0259576
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                 0.0166850    0.0046354    0.0287347
21-24 months   ki0047075b-MAL-ED       INDIA          NA                   NA                 0.0298906    0.0185218    0.0412595
21-24 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                 0.0101085   -0.0078666    0.0280837
21-24 months   ki0047075b-MAL-ED       PERU           NA                   NA                 0.0676570    0.0456639    0.0896501
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                 0.0447741    0.0274880    0.0620602
21-24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                 0.0406915    0.0289394    0.0524435
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                 0.0489671    0.0333288    0.0646055


### Parameter: ATE


agecat         studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0567798   -0.0860461    0.1996057
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure        0.0366566   -0.1285662    0.2018795
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0517028   -0.0773359    0.1807416
0-3 months     ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.0150271   -0.1464236    0.1163695
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0557329   -0.2499329    0.1384671
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0142900   -0.1306856    0.1021057
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0351886   -0.1097370    0.0393599
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.0780741   -0.1899712    0.0338229
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0289717   -0.0119382    0.0698817
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0229430   -0.0284754    0.0743613
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure        0.0473108   -0.0421873    0.1368088
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.0145471   -0.0668774    0.0959715
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0093472   -0.0210390    0.0023446
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.0264048   -0.0420948   -0.0107148
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0542612   -0.1163311    0.0078088
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0093656   -0.1048463    0.0861150
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0259845   -0.0582958    0.1102647
3-6 months     ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0005420   -0.0950029    0.0939189
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0369323   -0.1670693    0.0932048
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0177789   -0.1224921    0.0869342
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0086423   -0.1344913    0.1172067
3-6 months     ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.0856489   -0.1940744    0.0227766
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0501351   -0.1681511    0.0678809
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0383344   -0.1283459    0.0516770
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure        0.0308149   -0.0261207    0.0877504
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure        0.0252053   -0.0634641    0.1138747
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0029513   -0.0401502    0.0342477
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0207436   -0.0767848    0.0352976
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0292333   -0.0895025    0.0310359
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.0362447   -0.0212982    0.0937876
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0054300   -0.0154183    0.0045584
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.0039400   -0.0180044    0.0101244
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0091738   -0.0189721    0.0373197
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0317935   -0.0762824    0.0126954
6-9 months     ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0681546   -0.0594843    0.1957935
6-9 months     ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0168928   -0.0896676    0.0558820
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0813810   -0.0175926    0.1803546
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure        0.0295438   -0.0840406    0.1431282
6-9 months     ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0216788   -0.0747527    0.1181104
6-9 months     ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0572769   -0.0232278    0.1377816
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1453294   -0.2207591   -0.0698998
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0235766   -0.0888757    0.0417226
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0092384   -0.0683847    0.0499078
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.0569642   -0.1396419    0.0257136
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0178716   -0.0466517    0.0109086
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0325852   -0.0690556    0.0038852
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0156941   -0.0599097    0.0285214
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.0642594   -0.0477462    0.1762649
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0023370   -0.0170900    0.0217639
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0204675   -0.0514098    0.0104747
9-12 months    ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0286080   -0.1096450    0.0524289
9-12 months    ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0285031   -0.0934480    0.0364418
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0352793   -0.0287057    0.0992644
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0169922   -0.0736666    0.0396822
9-12 months    ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.1714510   -0.2700939   -0.0728081
9-12 months    ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.0962694   -0.1932166    0.0006777
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.0347545   -0.0534978    0.1230068
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0040944   -0.0639729    0.0557841
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0741984   -0.1145834   -0.0338134
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.0633059   -0.1252489   -0.0013629
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0079998   -0.0179282    0.0339277
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0405502   -0.0756486   -0.0054518
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0575381   -0.0909508   -0.0241255
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0824745   -0.1655463    0.0005973
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0045822   -0.0206947    0.0115303
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0038395   -0.0269100    0.0192310
12-15 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0143204   -0.1028689    0.0742282
12-15 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0040317   -0.0510325    0.0429691
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0086217   -0.0660623    0.0488190
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure        0.0330745   -0.0208248    0.0869737
12-15 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0985158    0.0160267    0.1810049
12-15 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0638685    0.0027283    0.1250087
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0476453   -0.1334444    0.0381538
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0346106   -0.0826599    0.0134386
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0251754   -0.0647252    0.0143743
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.0398433   -0.0934207    0.0137341
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0025431   -0.0261605    0.0210743
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0135240   -0.0159830    0.0430309
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0071346   -0.0406581    0.0263888
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0105989   -0.0525071    0.0313094
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0087725   -0.0047369    0.0222818
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0076121   -0.0119239    0.0271482
15-18 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0354627   -0.0853282    0.0144028
15-18 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0022141   -0.0489390    0.0445109
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0055693   -0.0627733    0.0739119
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0452581   -0.0938949    0.0033788
15-18 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0188473   -0.1034385    0.0657438
15-18 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.0014619   -0.0684834    0.0655597
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.0788453    0.0060825    0.1516082
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0473325    0.0067674    0.0878977
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0172046   -0.0652667    0.0308575
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.0858979   -0.1511351   -0.0206607
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0066896   -0.0130580    0.0264371
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0031271   -0.0250927    0.0313469
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure        0.0002718   -0.0314324    0.0319760
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.0020966   -0.0266024    0.0307955
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0012665   -0.0142432    0.0117103
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0082470   -0.0104309    0.0269250
18-21 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0333215   -0.0334259    0.1000688
18-21 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0110863   -0.0543672    0.0321946
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0118317   -0.0429631    0.0666265
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure        0.0029612   -0.0468831    0.0528054
18-21 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0347915   -0.0297217    0.0993046
18-21 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0145033   -0.0391133    0.0681199
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0169298   -0.0978826    0.0640230
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0158810   -0.0578734    0.0261114
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure        0.0181547   -0.0208880    0.0571974
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure        0.0264587   -0.0347548    0.0876721
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0007312   -0.0190737    0.0205361
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0075217   -0.0177035    0.0327469
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0115656   -0.0444121    0.0212808
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.0003035   -0.0300630    0.0306700
21-24 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0047796   -0.0499656    0.0404063
21-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0391097   -0.0762237   -0.0019958
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0030471   -0.0501309    0.0562251
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure        0.0222123   -0.0507829    0.0952074
21-24 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0031560   -0.0634972    0.0571852
21-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.0035134   -0.0589253    0.0518985
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0239111   -0.0831678    0.0353455
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0140246   -0.0259799    0.0540291
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0129597   -0.0441181    0.0181988
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure        0.0172459   -0.0457514    0.0802433
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0045726   -0.0244449    0.0152997
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0047856   -0.0319121    0.0223409
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure        0.0198819   -0.0177406    0.0575045
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.0198308   -0.0169829    0.0566446


### Parameter: PAR


agecat         studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Secure          NA                 0.0108230   -0.0206684    0.0423143
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0045839   -0.0851528    0.0943205
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0112741   -0.0611596    0.0386115
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0319046   -0.0950426    0.0312335
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0084351   -0.0061099    0.0229800
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0051805   -0.0110830    0.0214441
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0071638   -0.0125724   -0.0017552
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0197905   -0.0482334    0.0086524
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure          NA                 0.0005858   -0.0073117    0.0084832
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0066671   -0.0282250    0.0148908
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0645179   -0.1418637    0.0128279
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0154351   -0.0509455    0.0200753
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.0266863   -0.0213599    0.0747325
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0013096   -0.0130391    0.0156582
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0016659   -0.0129114    0.0095796
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0027727   -0.0076237    0.0020782
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0011098   -0.0140066    0.0117870
6-9 months     ki0047075b-MAL-ED       INDIA          Food Secure          NA                 0.0003357   -0.0064267    0.0070980
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Secure          NA                 0.0053383   -0.0117091    0.0223857
6-9 months     ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0373496   -0.0182780    0.0929773
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0144364   -0.0403467    0.0114740
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0115725   -0.0621723    0.0390274
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0082638   -0.0184084    0.0018808
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0049824   -0.0089139    0.0188786
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0017202   -0.0108476    0.0074072
9-12 months    ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0029885   -0.0088446    0.0028676
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0044452   -0.0169797    0.0080893
9-12 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0992788   -0.1719103   -0.0266472
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0000264   -0.0245884    0.0245357
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0652389   -0.0992725   -0.0312053
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0021638   -0.0111979    0.0068704
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0196519   -0.0309164   -0.0083874
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0023094   -0.0095057    0.0048869
12-15 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0006673   -0.0052027    0.0038680
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0016268   -0.0128080    0.0095544
12-15 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0520019    0.0092568    0.0947470
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0197080   -0.0413124    0.0018964
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0235110   -0.0566900    0.0096680
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0001467   -0.0082871    0.0085804
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0020924   -0.0088214    0.0046366
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0041697   -0.0018123    0.0101517
15-18 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0010082   -0.0049235    0.0029070
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0042798   -0.0154962    0.0069367
15-18 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0087552   -0.0597864    0.0422760
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0241317    0.0060682    0.0421952
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0183113   -0.0589888    0.0223663
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0026989   -0.0043443    0.0097421
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0025795   -0.0090769    0.0039178
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0005273   -0.0052510    0.0063057
18-21 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0000513   -0.0039068    0.0038042
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                 0.0033363   -0.0064287    0.0131013
18-21 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0188196   -0.0178152    0.0554544
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0044210   -0.0218122    0.0129702
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.0157534   -0.0175942    0.0491010
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0007259   -0.0056834    0.0071352
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0029003   -0.0089429    0.0031422
21-24 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0032643   -0.0068475    0.0003189
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                 0.0020827   -0.0106081    0.0147736
21-24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0049583   -0.0435952    0.0336787
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0014665   -0.0141808    0.0171138
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0108524   -0.0374286    0.0157239
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0010251   -0.0072408    0.0051906
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0063999   -0.0017583    0.0145581
