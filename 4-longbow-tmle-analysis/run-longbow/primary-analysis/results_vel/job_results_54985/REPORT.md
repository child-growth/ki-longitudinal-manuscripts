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

**Outcome Variable:** y_rate_len

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
0-3 months     ki0047075b-MAL-ED       BANGLADESH     Food Secure                160     192  y_rate_len       
0-3 months     ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     192  y_rate_len       
0-3 months     ki0047075b-MAL-ED       BANGLADESH     Food Insecure               28     192  y_rate_len       
0-3 months     ki0047075b-MAL-ED       BRAZIL         Food Secure                  0     101  y_rate_len       
0-3 months     ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        10     101  y_rate_len       
0-3 months     ki0047075b-MAL-ED       BRAZIL         Food Insecure               91     101  y_rate_len       
0-3 months     ki0047075b-MAL-ED       INDIA          Food Secure                146     158  y_rate_len       
0-3 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         2     158  y_rate_len       
0-3 months     ki0047075b-MAL-ED       INDIA          Food Insecure               10     158  y_rate_len       
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Secure                 65      86  y_rate_len       
0-3 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         8      86  y_rate_len       
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Insecure               13      86  y_rate_len       
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure                 27     105  y_rate_len       
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure        26     105  y_rate_len       
0-3 months     ki0047075b-MAL-ED       PERU           Food Insecure               52     105  y_rate_len       
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                 94     177  y_rate_len       
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17     177  y_rate_len       
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               66     177  y_rate_len       
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure                 83     566  y_rate_len       
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       444     566  y_rate_len       
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure               39     566  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                428     721  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       207     721  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               86     721  y_rate_len       
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Secure                361     493  y_rate_len       
0-3 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        71     493  y_rate_len       
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure               61     493  y_rate_len       
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure               6442   13054  y_rate_len       
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      4389   13054  y_rate_len       
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             2223   13054  y_rate_len       
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure               1269    2500  y_rate_len       
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       889    2500  y_rate_len       
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              342    2500  y_rate_len       
3-6 months     ki0047075b-MAL-ED       BANGLADESH     Food Secure                156     189  y_rate_len       
3-6 months     ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     189  y_rate_len       
3-6 months     ki0047075b-MAL-ED       BANGLADESH     Food Insecure               29     189  y_rate_len       
3-6 months     ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129  y_rate_len       
3-6 months     ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129  y_rate_len       
3-6 months     ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129  y_rate_len       
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure                186     207  y_rate_len       
3-6 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     207  y_rate_len       
3-6 months     ki0047075b-MAL-ED       INDIA          Food Insecure               16     207  y_rate_len       
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure                 93     127  y_rate_len       
3-6 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     127  y_rate_len       
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Insecure               19     127  y_rate_len       
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure                 27     111  y_rate_len       
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure        28     111  y_rate_len       
3-6 months     ki0047075b-MAL-ED       PERU           Food Insecure               56     111  y_rate_len       
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                125     222  y_rate_len       
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     222  y_rate_len       
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               79     222  y_rate_len       
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure                 77     523  y_rate_len       
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       407     523  y_rate_len       
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure               39     523  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                413     695  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       198     695  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               84     695  y_rate_len       
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure                335     453  y_rate_len       
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        62     453  y_rate_len       
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure               56     453  y_rate_len       
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure               6326   12580  y_rate_len       
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      4174   12580  y_rate_len       
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             2080   12580  y_rate_len       
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure                937    1826  y_rate_len       
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       645    1826  y_rate_len       
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              244    1826  y_rate_len       
6-9 months     ki0047075b-MAL-ED       BANGLADESH     Food Secure                155     187  y_rate_len       
6-9 months     ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     187  y_rate_len       
6-9 months     ki0047075b-MAL-ED       BANGLADESH     Food Insecure               28     187  y_rate_len       
6-9 months     ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129  y_rate_len       
6-9 months     ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129  y_rate_len       
6-9 months     ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129  y_rate_len       
6-9 months     ki0047075b-MAL-ED       INDIA          Food Secure                189     210  y_rate_len       
6-9 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     210  y_rate_len       
6-9 months     ki0047075b-MAL-ED       INDIA          Food Insecure               16     210  y_rate_len       
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Secure                 93     127  y_rate_len       
6-9 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     127  y_rate_len       
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Insecure               19     127  y_rate_len       
6-9 months     ki0047075b-MAL-ED       PERU           Food Secure                 27     110  y_rate_len       
6-9 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure        28     110  y_rate_len       
6-9 months     ki0047075b-MAL-ED       PERU           Food Insecure               55     110  y_rate_len       
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                121     213  y_rate_len       
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17     213  y_rate_len       
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               75     213  y_rate_len       
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure                 75     498  y_rate_len       
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       384     498  y_rate_len       
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure               39     498  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                416     688  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       193     688  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               79     688  y_rate_len       
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Secure                340     466  y_rate_len       
6-9 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        64     466  y_rate_len       
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure               62     466  y_rate_len       
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure               1552    3029  y_rate_len       
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1095    3029  y_rate_len       
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              382    3029  y_rate_len       
9-12 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                157     188  y_rate_len       
9-12 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     188  y_rate_len       
9-12 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure               27     188  y_rate_len       
9-12 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129  y_rate_len       
9-12 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129  y_rate_len       
9-12 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129  y_rate_len       
9-12 months    ki0047075b-MAL-ED       INDIA          Food Secure                188     210  y_rate_len       
9-12 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     210  y_rate_len       
9-12 months    ki0047075b-MAL-ED       INDIA          Food Insecure               17     210  y_rate_len       
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure                 93     127  y_rate_len       
9-12 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     127  y_rate_len       
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Insecure               19     127  y_rate_len       
9-12 months    ki0047075b-MAL-ED       PERU           Food Secure                 27     108  y_rate_len       
9-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure        26     108  y_rate_len       
9-12 months    ki0047075b-MAL-ED       PERU           Food Insecure               55     108  y_rate_len       
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                119     213  y_rate_len       
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     213  y_rate_len       
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               76     213  y_rate_len       
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                 74     482  y_rate_len       
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       370     482  y_rate_len       
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure               38     482  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                408     674  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       189     674  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               77     674  y_rate_len       
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                330     455  y_rate_len       
9-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        67     455  y_rate_len       
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure               58     455  y_rate_len       
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure               1777    3474  y_rate_len       
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1258    3474  y_rate_len       
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              439    3474  y_rate_len       
12-15 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                153     185  y_rate_len       
12-15 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     185  y_rate_len       
12-15 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure               28     185  y_rate_len       
12-15 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129  y_rate_len       
12-15 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129  y_rate_len       
12-15 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129  y_rate_len       
12-15 months   ki0047075b-MAL-ED       INDIA          Food Secure                188     210  y_rate_len       
12-15 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     210  y_rate_len       
12-15 months   ki0047075b-MAL-ED       INDIA          Food Insecure               17     210  y_rate_len       
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Secure                 94     128  y_rate_len       
12-15 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     128  y_rate_len       
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Insecure               19     128  y_rate_len       
12-15 months   ki0047075b-MAL-ED       PERU           Food Secure                 26     106  y_rate_len       
12-15 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure        25     106  y_rate_len       
12-15 months   ki0047075b-MAL-ED       PERU           Food Insecure               55     106  y_rate_len       
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                115     212  y_rate_len       
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17     212  y_rate_len       
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               80     212  y_rate_len       
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 69     461  y_rate_len       
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       357     461  y_rate_len       
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure               35     461  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                390     660  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       190     660  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               80     660  y_rate_len       
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                335     456  y_rate_len       
12-15 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        68     456  y_rate_len       
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               53     456  y_rate_len       
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure               1795    3518  y_rate_len       
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1264    3518  y_rate_len       
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              459    3518  y_rate_len       
15-18 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                155     187  y_rate_len       
15-18 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     187  y_rate_len       
15-18 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure               28     187  y_rate_len       
15-18 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     128  y_rate_len       
15-18 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        10     128  y_rate_len       
15-18 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     128  y_rate_len       
15-18 months   ki0047075b-MAL-ED       INDIA          Food Secure                190     211  y_rate_len       
15-18 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     211  y_rate_len       
15-18 months   ki0047075b-MAL-ED       INDIA          Food Insecure               16     211  y_rate_len       
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Secure                 92     126  y_rate_len       
15-18 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     126  y_rate_len       
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Insecure               19     126  y_rate_len       
15-18 months   ki0047075b-MAL-ED       PERU           Food Secure                 26     106  y_rate_len       
15-18 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure        27     106  y_rate_len       
15-18 months   ki0047075b-MAL-ED       PERU           Food Insecure               53     106  y_rate_len       
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                117     216  y_rate_len       
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17     216  y_rate_len       
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               82     216  y_rate_len       
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 68     449  y_rate_len       
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       345     449  y_rate_len       
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure               36     449  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                368     604  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       165     604  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               71     604  y_rate_len       
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                339     466  y_rate_len       
15-18 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        67     466  y_rate_len       
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               60     466  y_rate_len       
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure               1810    3523  y_rate_len       
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1255    3523  y_rate_len       
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              458    3523  y_rate_len       
18-21 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                157     189  y_rate_len       
18-21 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     189  y_rate_len       
18-21 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure               28     189  y_rate_len       
18-21 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     128  y_rate_len       
18-21 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        10     128  y_rate_len       
18-21 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     128  y_rate_len       
18-21 months   ki0047075b-MAL-ED       INDIA          Food Secure                189     210  y_rate_len       
18-21 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     210  y_rate_len       
18-21 months   ki0047075b-MAL-ED       INDIA          Food Insecure               16     210  y_rate_len       
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Secure                 92     126  y_rate_len       
18-21 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     126  y_rate_len       
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Insecure               19     126  y_rate_len       
18-21 months   ki0047075b-MAL-ED       PERU           Food Secure                 26     103  y_rate_len       
18-21 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure        26     103  y_rate_len       
18-21 months   ki0047075b-MAL-ED       PERU           Food Insecure               51     103  y_rate_len       
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                125     223  y_rate_len       
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     223  y_rate_len       
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               80     223  y_rate_len       
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 63     422  y_rate_len       
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       326     422  y_rate_len       
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure               33     422  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                341     546  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       141     546  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               64     546  y_rate_len       
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                315     430  y_rate_len       
18-21 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        61     430  y_rate_len       
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               54     430  y_rate_len       
21-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                156     189  y_rate_len       
21-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     189  y_rate_len       
21-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure               29     189  y_rate_len       
21-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129  y_rate_len       
21-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129  y_rate_len       
21-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129  y_rate_len       
21-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                189     211  y_rate_len       
21-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     211  y_rate_len       
21-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure               17     211  y_rate_len       
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                 94     128  y_rate_len       
21-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     128  y_rate_len       
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure               19     128  y_rate_len       
21-24 months   ki0047075b-MAL-ED       PERU           Food Secure                 25     102  y_rate_len       
21-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure        26     102  y_rate_len       
21-24 months   ki0047075b-MAL-ED       PERU           Food Insecure               51     102  y_rate_len       
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                128     226  y_rate_len       
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     226  y_rate_len       
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               80     226  y_rate_len       
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 64     411  y_rate_len       
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       317     411  y_rate_len       
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure               30     411  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                315     490  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       120     490  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               55     490  y_rate_len       
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                245     339  y_rate_len       
21-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        49     339  y_rate_len       
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               45     339  y_rate_len       


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
![](/tmp/57e8ccc0-fd6c-4b1a-bde3-73db5e62eaf3/875c8f5b-a582-4f78-92a0-f038a0356203/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/57e8ccc0-fd6c-4b1a-bde3-73db5e62eaf3/875c8f5b-a582-4f78-92a0-f038a0356203/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/57e8ccc0-fd6c-4b1a-bde3-73db5e62eaf3/875c8f5b-a582-4f78-92a0-f038a0356203/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                 country        intervention_level     baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -------------  ---------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Secure            NA                3.5248146   3.3677108   3.6819185
0-3 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                3.6202237   3.3114210   3.9290264
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                3.5269210   3.2344771   3.8193649
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure            NA                3.0923145   2.8987034   3.2859256
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                3.1631963   2.9763858   3.3500068
0-3 months     ki0047075b-MAL-ED       PERU           Food Insecure          NA                3.0397947   2.8823831   3.1972063
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                3.1923537   3.0581471   3.3265603
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                3.0232296   2.7029117   3.3435475
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                3.1475666   2.9544746   3.3406587
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                3.2006488   3.0655022   3.3357955
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                3.1013991   3.0408363   3.1619618
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                3.0370678   2.8534235   3.2207122
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                3.1204856   3.0724932   3.1684780
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                3.1674698   3.0970589   3.2378807
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                3.1294791   3.0326427   3.2263156
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                3.5931418   3.5356352   3.6506485
0-3 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                3.6707317   3.4929096   3.8485537
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                3.6359618   3.4927384   3.7791851
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                3.6821822   3.6666084   3.6977560
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                3.6577799   3.6385589   3.6770009
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                3.6244488   3.5943240   3.6545736
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                3.0426445   2.9720964   3.1131927
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                2.9392290   2.8482681   3.0301898
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                3.0325045   2.8611833   3.2038258
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure            NA                1.9057734   1.8324276   1.9791193
3-6 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                1.9760085   1.7764851   2.1755318
3-6 months     ki0047075b-MAL-ED       INDIA          Food Insecure          NA                1.9164151   1.7198912   2.1129390
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure            NA                1.9527765   1.8648932   2.0406599
3-6 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                1.8684625   1.5956445   2.1412805
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                1.9032080   1.6891198   2.1172962
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure            NA                2.0339440   1.8533938   2.2144942
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                2.0525424   1.8341069   2.2709779
3-6 months     ki0047075b-MAL-ED       PERU           Food Insecure          NA                1.8900998   1.7434596   2.0367399
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                2.0137306   1.9036160   2.1238451
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                1.9625136   1.7320808   2.1929464
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                1.9247597   1.7694990   2.0800204
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                1.8048260   1.6925729   1.9170792
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                1.8383074   1.7823702   1.8942446
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                1.7631739   1.5868669   1.9394810
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                2.0043354   1.9587867   2.0498841
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                2.0005054   1.9327400   2.0682709
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                1.9764928   1.8601183   2.0928672
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                1.7132625   1.6642836   1.7622414
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                1.6637677   1.5530902   1.7744452
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                1.7983010   1.6853918   1.9112102
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                1.9295878   1.9143594   1.9448162
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                1.9120236   1.8953559   1.9286913
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                1.9107538   1.8854732   1.9360343
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                1.9006807   1.8583114   1.9430501
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                1.9230578   1.8766889   1.9694266
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                1.8356341   1.7506888   1.9205795
6-9 months     ki0047075b-MAL-ED       INDIA          Food Secure            NA                1.2401898   1.1819235   1.2984560
6-9 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                1.4261261   1.1284401   1.7238122
6-9 months     ki0047075b-MAL-ED       INDIA          Food Insecure          NA                1.2090152   1.0476649   1.3703656
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Secure            NA                1.3022795   1.2395127   1.3650463
6-9 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                1.4638771   1.2423768   1.6853774
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                1.3233100   1.1541782   1.4924419
6-9 months     ki0047075b-MAL-ED       PERU           Food Secure            NA                1.1803046   1.0358094   1.3247998
6-9 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                1.2470029   1.0828421   1.4111637
6-9 months     ki0047075b-MAL-ED       PERU           Food Insecure          NA                1.3220383   1.1955228   1.4485538
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                1.4308436   1.3432490   1.5184383
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                1.2877056   1.1002043   1.4752070
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                1.3670798   1.2438620   1.4902976
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                1.2816600   1.1607581   1.4025620
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                1.2603233   1.2152044   1.3054422
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                1.1299999   0.9883625   1.2716374
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                1.3440967   1.3047767   1.3834167
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                1.3054149   1.2514033   1.3594265
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                1.2834713   1.2005732   1.3663693
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                1.3137302   1.2746148   1.3528456
6-9 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                1.2556166   1.1651128   1.3461204
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                1.5289188   1.2308106   1.8270270
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                1.3272307   1.2967624   1.3576991
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                1.3333528   1.3006794   1.3660262
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                1.2853965   1.2228635   1.3479294
9-12 months    ki0047075b-MAL-ED       INDIA          Food Secure            NA                0.9797121   0.9374912   1.0219330
9-12 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                0.9475996   0.7621337   1.1330655
9-12 months    ki0047075b-MAL-ED       INDIA          Food Insecure          NA                0.9221096   0.7717056   1.0725137
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure            NA                1.0802279   1.0166841   1.1437716
9-12 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                1.0228857   0.9067609   1.1390106
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                0.9545978   0.8100332   1.0991624
9-12 months    ki0047075b-MAL-ED       PERU           Food Secure            NA                1.3038022   1.1223474   1.4852571
9-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.9114720   0.7890811   1.0338628
9-12 months    ki0047075b-MAL-ED       PERU           Food Insecure          NA                1.0669068   0.9556276   1.1781859
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                1.0133761   0.9159402   1.1108120
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                1.1244885   0.9428427   1.3061343
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                1.0283349   0.9175066   1.1391633
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                1.2250433   1.1338628   1.3162237
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                1.0642753   1.0244184   1.1041323
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.9839145   0.8623059   1.1055231
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                1.1336394   1.0991839   1.1680949
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                1.1443014   1.0925804   1.1960223
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                1.0088685   0.9272398   1.0904971
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                1.0429117   1.0129949   1.0728284
9-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.9129489   0.8384555   0.9874422
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.7933373   0.5813308   1.0053437
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                1.0764100   1.0526969   1.1001231
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                1.0648908   1.0339624   1.0958193
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                1.0667902   1.0179225   1.1156578
12-15 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                0.9132666   0.8696208   0.9569124
12-15 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                0.9077802   0.6843483   1.1312121
12-15 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                0.9026911   0.7911383   1.0142439
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                1.0104601   0.9501926   1.0707276
12-15 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                1.0256503   0.8766424   1.1746582
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                1.0325641   0.9072453   1.1578828
12-15 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.7735700   0.6505494   0.8965905
12-15 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                1.0208727   0.8361113   1.2056341
12-15 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.9158701   0.8127145   1.0190257
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.9836548   0.8888031   1.0785065
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.7535976   0.5303315   0.9768637
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.8747405   0.7975395   0.9519415
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.7875303   0.7001098   0.8749509
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.7151974   0.6610878   0.7693071
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.5910969   0.4754053   0.7067885
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.9736007   0.9412425   1.0059589
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.9520880   0.9029853   1.0011908
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.9991771   0.9288228   1.0695314
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.8832138   0.8501082   0.9163194
12-15 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.8563995   0.7655471   0.9472520
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.8731098   0.7661441   0.9800756
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.9319197   0.9111846   0.9526549
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.9529729   0.9246907   0.9812552
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.9492631   0.9037823   0.9947440
15-18 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                0.8385254   0.7989253   0.8781256
15-18 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                0.7756646   0.6526849   0.8986442
15-18 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                0.8336653   0.7135056   0.9538250
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                0.8581351   0.7926581   0.9236120
15-18 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                0.8557243   0.6795497   1.0318990
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                0.7684061   0.6584950   0.8783171
15-18 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.8662285   0.7058650   1.0265920
15-18 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.8349107   0.6764026   0.9934189
15-18 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.8852321   0.8104325   0.9600317
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.8162492   0.7388365   0.8936620
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.9953080   0.8181836   1.1724324
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.9354546   0.8560614   1.0148478
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.8493500   0.7260872   0.9726127
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.7733513   0.7294341   0.8172685
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.5661937   0.4451431   0.6872444
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.9153695   0.8860464   0.9446926
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.9216553   0.8742453   0.9690653
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.9076175   0.8423458   0.9728893
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.7725821   0.7289218   0.8162424
15-18 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.7572053   0.6864551   0.8279556
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.7711692   0.7080186   0.8343198
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.8583604   0.8360204   0.8807003
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.8539269   0.8263434   0.8815104
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.8856119   0.8383946   0.9328291
18-21 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                0.8817637   0.8430895   0.9204379
18-21 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                1.0051203   0.8240374   1.1862031
18-21 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                0.8508739   0.7252066   0.9765413
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                0.7653149   0.7071083   0.8235214
18-21 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                0.7953389   0.6373208   0.9533571
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                0.7145912   0.6045255   0.8246570
18-21 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.8685030   0.7571877   0.9798184
18-21 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                1.0295770   0.8721246   1.1870295
18-21 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.8917964   0.7884633   0.9951294
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.8038442   0.7213449   0.8863435
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.8098883   0.5581033   1.0616733
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.7492934   0.6574618   0.8411249
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.7151491   0.6126762   0.8176219
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.7329717   0.6929216   0.7730217
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.7359654   0.5895580   0.8823729
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.7975825   0.7680103   0.8271547
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.7880561   0.7380090   0.8381032
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.8045480   0.7353711   0.8737249
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.9207084   0.8769610   0.9644558
18-21 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.8692631   0.7879283   0.9505979
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.8888801   0.8128461   0.9649140
21-24 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                0.8327563   0.7983537   0.8671590
21-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                0.8790545   0.7349181   1.0231910
21-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                0.7334250   0.6333190   0.8335311
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                0.8055920   0.7508281   0.8603558
21-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                0.8234399   0.6847211   0.9621586
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                0.8545074   0.6471317   1.0618831
21-24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.7769707   0.6421622   0.9117792
21-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.8381136   0.7109230   0.9653041
21-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.7818593   0.6812035   0.8825151
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.8446151   0.7817173   0.9075129
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.7187269   0.5506543   0.8867995
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.8541310   0.7451057   0.9631562
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.7938221   0.7132671   0.8743772
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.7048152   0.6637507   0.7458796
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.7089946   0.5408711   0.8771181
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.8042152   0.7740686   0.8343618
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.7840263   0.7303804   0.8376721
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.7807160   0.7055396   0.8558923
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.7915212   0.7355261   0.8475163
21-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.7931243   0.6962985   0.8899501
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.8434293   0.7543365   0.9325221


### Parameter: E(Y)


agecat         studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       NEPAL          NA                   NA                3.5340083   3.4039569   3.6640597
0-3 months     ki0047075b-MAL-ED       PERU           NA                   NA                3.0771151   2.9798686   3.1743617
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                3.1706167   3.0660515   3.2751819
0-3 months     ki1017093-NIH-Birth     BANGLADESH     NA                   NA                3.1100116   3.0566021   3.1634210
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     ki1113344-GMS-Nepal     NEPAL          NA                   NA                3.5985708   3.5472330   3.6499087
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                3.6649357   3.6531623   3.6767090
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                3.0083292   2.9551610   3.0614974
3-6 months     ki0047075b-MAL-ED       INDIA          NA                   NA                1.9082925   1.8404592   1.9761258
3-6 months     ki0047075b-MAL-ED       NEPAL          NA                   NA                1.9342793   1.8588543   2.0097043
3-6 months     ki0047075b-MAL-ED       PERU           NA                   NA                1.9602080   1.8596335   2.0607825
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                1.9613082   1.8765646   2.0460517
3-6 months     ki1017093-NIH-Birth     BANGLADESH     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1113344-GMS-Nepal     NEPAL          NA                   NA                1.7091655   1.6694794   1.7488517
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                1.9201240   1.9096634   1.9305847
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                1.8993572   1.8693950   1.9293194
6-9 months     ki0047075b-MAL-ED       INDIA          NA                   NA                1.2422416   1.1877178   1.2967654
6-9 months     ki0047075b-MAL-ED       NEPAL          NA                   NA                1.3097456   1.2551002   1.3643910
6-9 months     ki0047075b-MAL-ED       PERU           NA                   NA                1.2666923   1.1869188   1.3464657
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                1.3946381   1.3274639   1.4618123
6-9 months     ki1017093-NIH-Birth     BANGLADESH     NA                   NA                1.2555950   1.2150667   1.2961234
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     ki1113344-GMS-Nepal     NEPAL          NA                   NA                1.3253518   1.2842303   1.3664733
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                1.3242226   1.3035329   1.3449123
9-12 months    ki0047075b-MAL-ED       INDIA          NA                   NA                0.9742845   0.9342438   1.0143252
9-12 months    ki0047075b-MAL-ED       NEPAL          NA                   NA                1.0723046   1.0192507   1.1253585
9-12 months    ki0047075b-MAL-ED       PERU           NA                   NA                1.0841807   1.0042683   1.1640932
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                1.0039681   0.9366684   1.0712678
9-12 months    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                1.0885809   1.0534446   1.1237171
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.9962879   0.9629862   1.0295896
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                1.0709927   1.0530915   1.0888939
12-15 months   ki0047075b-MAL-ED       INDIA          NA                   NA                0.9122799   0.8717874   0.9527724
12-15 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                1.0013434   0.9518037   1.0508831
12-15 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.9058068   0.8315771   0.9800365
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.9279589   0.8673916   0.9885262
12-15 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.7241623   0.6797013   0.7686233
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.8762334   0.8467723   0.9056944
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.9419834   0.9260181   0.9579487
15-18 months   ki0047075b-MAL-ED       INDIA          NA                   NA                0.8366673   0.7997118   0.8736229
15-18 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.8392579   0.7866195   0.8918963
15-18 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.8741374   0.8083662   0.9399086
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.8823933   0.8286956   0.9360911
15-18 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.7727719   0.7325606   0.8129832
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.7602133   0.7247460   0.7956806
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.8600344   0.8434750   0.8765938
18-21 months   ki0047075b-MAL-ED       INDIA          NA                   NA                0.8823473   0.8458552   0.9188393
18-21 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.7640891   0.7161902   0.8119880
18-21 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.8891475   0.8204255   0.9578695
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.7818920   0.7244019   0.8393822
18-21 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.7291468   0.6930874   0.7652062
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.9078241   0.8730360   0.9426122
21-24 months   ki0047075b-MAL-ED       INDIA          NA                   NA                0.8258504   0.7935667   0.8581341
21-24 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.8037991   0.7498983   0.8577000
21-24 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.7935057   0.7259219   0.8610894
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.8416651   0.7887272   0.8946030
21-24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.7172178   0.6817161   0.7527194
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.8011967   0.7555462   0.8468473


### Parameter: ATE


agecat         studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0954091   -0.2510598    0.4418780
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure        0.0021064   -0.3298651    0.3340779
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0708818   -0.2014223    0.3431859
0-3 months     ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.0525198   -0.3023314    0.1972918
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1691241   -0.5157814    0.1775332
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0447871   -0.2805042    0.1909300
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0992498   -0.2468052    0.0483056
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.1635810   -0.3909642    0.0638022
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0469842   -0.0382747    0.1322431
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0089935   -0.0991414    0.1171284
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure        0.0775898   -0.1096086    0.2647883
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.0428199   -0.1117573    0.1973972
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0244023   -0.0481964   -0.0006082
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.0577334   -0.0894113   -0.0260556
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.1034156   -0.2196580    0.0128269
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0101400   -0.1951273    0.1748473
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0702350   -0.1423424    0.2828125
3-6 months     ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure        0.0106416   -0.1991231    0.2204064
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0843140   -0.3715802    0.2029522
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0495686   -0.2811864    0.1820493
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0185984   -0.2652087    0.3024055
3-6 months     ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.1438443   -0.3764080    0.0887195
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0512170   -0.3063361    0.2039022
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0889709   -0.2803010    0.1023593
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure        0.0334813   -0.0913051    0.1582678
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.0416521   -0.2505680    0.1672638
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0038300   -0.0852353    0.0775754
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0278426   -0.1524105    0.0967252
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0494948   -0.1705444    0.0715549
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.0850385   -0.0382450    0.2083221
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0175642   -0.0391692    0.0040407
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.0188340   -0.0486264    0.0109583
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0223770   -0.0393405    0.0840945
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0650466   -0.1591840    0.0290908
6-9 months     ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.1859364   -0.1173984    0.4892711
6-9 months     ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0311745   -0.2027231    0.1403740
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.1615976   -0.0713686    0.3945637
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure        0.0210305   -0.1585224    0.2005834
6-9 months     ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0666983   -0.1520636    0.2854601
6-9 months     ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.1417337   -0.0488536    0.3323210
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1431380   -0.3501511    0.0638752
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0637638   -0.2148158    0.0872882
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0213367   -0.1503960    0.1077226
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.1516601   -0.3382261    0.0349060
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0386818   -0.1057243    0.0283607
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0606255   -0.1526339    0.0313830
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0581136   -0.1569207    0.0406936
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.2151886   -0.0858034    0.5161807
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0061220   -0.0385182    0.0507623
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0418343   -0.1130118    0.0293432
9-12 months    ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0321125   -0.2223234    0.1580984
9-12 months    ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0576025   -0.2138202    0.0986152
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0573421   -0.1891742    0.0744899
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.1256301   -0.2838129    0.0325528
9-12 months    ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.3923303   -0.6141337   -0.1705268
9-12 months    ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.2368955   -0.4502441   -0.0235468
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.1111124   -0.0954488    0.3176736
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0149588   -0.1336535    0.1635711
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.1607679   -0.2603094   -0.0612265
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.2411288   -0.3926892   -0.0895683
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0106620   -0.0517262    0.0730502
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1247709   -0.2136744   -0.0358674
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.1299628   -0.2101129   -0.0498127
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.2495744   -0.4637016   -0.0354472
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0115191   -0.0500421    0.0270038
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0096198   -0.0636455    0.0444059
12-15 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0054864   -0.2331414    0.2221685
12-15 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0105755   -0.1303627    0.1092117
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0151902   -0.1462044    0.1765848
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure        0.0221040   -0.1173418    0.1615498
12-15 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.2473027    0.0243018    0.4703037
12-15 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.1423002   -0.0193277    0.3039280
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.2300572   -0.4734271    0.0133127
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.1089143   -0.2307702    0.0129416
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0723329   -0.1754089    0.0307431
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.1964334   -0.3409320   -0.0519348
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0215127   -0.0802179    0.0371925
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0255764   -0.0518350    0.1029877
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0268142   -0.1238850    0.0702565
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0101039   -0.1221518    0.1019440
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0210532   -0.0136852    0.0557917
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0173434   -0.0324484    0.0671351
15-18 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0628609   -0.1920590    0.0663373
15-18 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0048601   -0.1313770    0.1216568
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0024107   -0.1905397    0.1857182
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0897290   -0.2200077    0.0405496
15-18 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0313178   -0.2562007    0.1935651
15-18 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0190036   -0.1581341    0.1961413
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.1790587   -0.0144454    0.3725629
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.1192054    0.0079731    0.2304377
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0759987   -0.2066109    0.0546135
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.2831563   -0.4560899   -0.1102227
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0062858   -0.0498629    0.0624346
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0077519   -0.0791404    0.0636365
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0153767   -0.0990114    0.0682580
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0014128   -0.0784734    0.0756477
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0044335   -0.0397424    0.0308754
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0272515   -0.0242374    0.0787404
18-21 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.1233565   -0.0618101    0.3085232
18-21 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0308898   -0.1623736    0.1005939
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0300241   -0.1388603    0.1989084
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0507236   -0.1757146    0.0742674
18-21 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.1610740   -0.0333696    0.3555176
18-21 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0232933   -0.1285416    0.1751283
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.0060441   -0.2602865    0.2723748
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0545509   -0.1794227    0.0703210
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure        0.0178226   -0.0920993    0.1277445
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure        0.0208164   -0.1581209    0.1997536
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0095264   -0.0675409    0.0484881
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0069655   -0.0682455    0.0821765
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0514453   -0.1441933    0.0413027
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0318283   -0.1195934    0.0559367
21-24 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0462982   -0.1018870    0.1944834
21-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0993313   -0.2051838    0.0065212
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0178479   -0.1300789    0.1657747
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure        0.0489155   -0.1662893    0.2641202
21-24 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0611429   -0.1242756    0.2465613
21-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0048886   -0.1636997    0.1734769
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1258881   -0.3055255    0.0537492
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0095159   -0.1166048    0.1356366
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0890069   -0.1791669    0.0011530
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.0848275   -0.2719622    0.1023072
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0201889   -0.0816584    0.0412806
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0234992   -0.1044064    0.0574080
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure        0.0016031   -0.1106126    0.1138189
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.0519081   -0.0531049    0.1569212


### Parameter: PAR


agecat         studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Secure          NA                 0.0091937   -0.0562706    0.0746579
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0151994   -0.1863714    0.1559727
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0217370   -0.1213344    0.0778604
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0906372   -0.2150827    0.0338082
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0087593   -0.0216705    0.0391891
0-3 months     ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0054290   -0.0273034    0.0381615
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0172466   -0.0282063   -0.0062869
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0343153   -0.0877876    0.0191570
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure          NA                 0.0025190   -0.0151801    0.0202181
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0184972   -0.0643850    0.0273906
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0737360   -0.2399069    0.0924349
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0524224   -0.1290546    0.0242098
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.0278655   -0.0777484    0.1334794
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0014619   -0.0298280    0.0327518
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0040969   -0.0281406    0.0199467
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0094638   -0.0198553    0.0009278
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0013235   -0.0293749    0.0267279
6-9 months     ki0047075b-MAL-ED       INDIA          Food Secure          NA                 0.0020519   -0.0139755    0.0180792
6-9 months     ki0047075b-MAL-ED       NEPAL          Food Secure          NA                 0.0074661   -0.0282204    0.0431526
6-9 months     ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0863876   -0.0462174    0.2189927
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0362055   -0.0958288    0.0234177
6-9 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0260650   -0.1356254    0.0834954
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0158272   -0.0395762    0.0079217
6-9 months     ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0116216   -0.0211995    0.0444427
6-9 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0030082   -0.0238590    0.0178427
9-12 months    ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0054276   -0.0193616    0.0085063
9-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0079233   -0.0389247    0.0230782
9-12 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.2196215   -0.3738240   -0.0654190
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0094080   -0.0698175    0.0510014
9-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.1364624   -0.2207165   -0.0522083
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0101649   -0.0324857    0.0121558
9-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0466238   -0.0734485   -0.0197990
9-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0054172   -0.0225576    0.0117231
12-15 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0009867   -0.0125548    0.0105813
12-15 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0091167   -0.0377873    0.0195539
12-15 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.1322369    0.0154087    0.2490650
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0556959   -0.1118459    0.0004541
12-15 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0633680   -0.1499458    0.0232097
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0024613   -0.0234555    0.0185329
12-15 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0069804   -0.0248604    0.0108996
12-15 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0100637   -0.0053446    0.0254719
15-18 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0018581   -0.0123314    0.0086152
15-18 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0188772   -0.0501994    0.0124451
15-18 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0079088   -0.1272246    0.1430423
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0661441    0.0162700    0.1160182
15-18 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0765781   -0.1871146    0.0339585
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0023473   -0.0167656    0.0214602
15-18 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0123688   -0.0302760    0.0055385
15-18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0016740   -0.0140061    0.0173541
18-21 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                 0.0005836   -0.0110403    0.0122074
18-21 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0012257   -0.0294665    0.0270150
18-21 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0206444   -0.0864720    0.1277609
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0219522   -0.0745271    0.0306227
18-21 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.0139977   -0.0797314    0.1077269
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0001930   -0.0184738    0.0188599
18-21 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0128843   -0.0311695    0.0054009
21-24 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0069059   -0.0171772    0.0033655
21-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0017928   -0.0421005    0.0385149
21-24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0165350   -0.1043375    0.1374074
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0029500   -0.0511800    0.0452800
21-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0766044   -0.1527688   -0.0004399
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0048799   -0.0235992    0.0138394
21-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0096756   -0.0148159    0.0341670
