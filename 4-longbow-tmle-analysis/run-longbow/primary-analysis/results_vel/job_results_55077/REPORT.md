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

**Intervention Variable:** perdiar6

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_month
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

agecat         studyid                 country                        perdiar6    n_cell     n  outcome_variable 
-------------  ----------------------  -----------------------------  ---------  -------  ----  -----------------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%              71   246  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        97   246  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     >5%             78   246  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0%             201   218  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   218  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       BRAZIL                         >5%              2   218  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       INDIA                          0%              51   238  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]       127   238  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       INDIA                          >5%             60   238  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%              77   232  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   232  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       NEPAL                          >5%             79   232  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       PERU                           0%              71   282  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]        93   282  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       PERU                           >5%            118   282  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%             203   272  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        59   272  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%             10   272  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              99   237  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        94   237  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             44   237  y_rate_wtkg      
0-3 months     ki1000109-EE            PAKISTAN                       0%             285   320  y_rate_wtkg      
0-3 months     ki1000109-EE            PAKISTAN                       (0%, 5%]        33   320  y_rate_wtkg      
0-3 months     ki1000109-EE            PAKISTAN                       >5%              2   320  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%             137   565  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       177   565  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     >5%            251   565  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%             172   640  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       258   640  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     >5%            210   640  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%             342   725  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       169   725  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%            214   725  y_rate_wtkg      
0-3 months     ki1114097-CMIN          BANGLADESH                     0%              17    43  y_rate_wtkg      
0-3 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]        13    43  y_rate_wtkg      
0-3 months     ki1114097-CMIN          BANGLADESH                     >5%             13    43  y_rate_wtkg      
0-3 months     ki1114097-CONTENT       PERU                           0%              16    29  y_rate_wtkg      
0-3 months     ki1114097-CONTENT       PERU                           (0%, 5%]         6    29  y_rate_wtkg      
0-3 months     ki1114097-CONTENT       PERU                           >5%              7    29  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%              68   233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        89   233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     >5%             76   233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0%             191   208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       BRAZIL                         >5%              2   208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       INDIA                          0%              49   230  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   230  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       INDIA                          >5%             59   230  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%              78   233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        75   233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       NEPAL                          >5%             80   233  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       PERU                           0%              66   267  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]        86   267  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       PERU                           >5%            115   267  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%             182   243  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        53   243  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              8   243  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%             101   239  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        94   239  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             44   239  y_rate_wtkg      
3-6 months     ki1000109-EE            PAKISTAN                       0%             243   275  y_rate_wtkg      
3-6 months     ki1000109-EE            PAKISTAN                       (0%, 5%]        30   275  y_rate_wtkg      
3-6 months     ki1000109-EE            PAKISTAN                       >5%              2   275  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%             124   522  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       163   522  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     >5%            235   522  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%             155   601  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       246   601  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     >5%            200   601  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%             332   702  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       164   702  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%            206   702  y_rate_wtkg      
3-6 months     ki1114097-CMIN          BANGLADESH                     0%              61   184  y_rate_wtkg      
3-6 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]        44   184  y_rate_wtkg      
3-6 months     ki1114097-CMIN          BANGLADESH                     >5%             79   184  y_rate_wtkg      
3-6 months     ki1114097-CONTENT       PERU                           0%             115   214  y_rate_wtkg      
3-6 months     ki1114097-CONTENT       PERU                           (0%, 5%]        43   214  y_rate_wtkg      
3-6 months     ki1114097-CONTENT       PERU                           >5%             56   214  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0%              68   224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        83   224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     >5%             73   224  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       BRAZIL                         0%             181   198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       BRAZIL                         >5%              2   198  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       INDIA                          0%              49   230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       INDIA                          >5%             59   230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       NEPAL                          0%              76   230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       NEPAL                          >5%             78   230  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       PERU                           0%              61   245  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]        79   245  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       PERU                           >5%            105   245  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%             177   231  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        46   231  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              8   231  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              96   225  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        90   225  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             39   225  y_rate_wtkg      
6-9 months     ki1000109-EE            PAKISTAN                       0%             271   301  y_rate_wtkg      
6-9 months     ki1000109-EE            PAKISTAN                       (0%, 5%]        28   301  y_rate_wtkg      
6-9 months     ki1000109-EE            PAKISTAN                       >5%              2   301  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0%             120   498  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       156   498  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     >5%            222   498  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0%             148   576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       233   576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     >5%            195   576  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%             332   693  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       161   693  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%            200   693  y_rate_wtkg      
6-9 months     ki1114097-CMIN          BANGLADESH                     0%              56   177  y_rate_wtkg      
6-9 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]        41   177  y_rate_wtkg      
6-9 months     ki1114097-CMIN          BANGLADESH                     >5%             80   177  y_rate_wtkg      
6-9 months     ki1114097-CONTENT       PERU                           0%             115   214  y_rate_wtkg      
6-9 months     ki1114097-CONTENT       PERU                           (0%, 5%]        43   214  y_rate_wtkg      
6-9 months     ki1114097-CONTENT       PERU                           >5%             56   214  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%              67   225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        86   225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     >5%             72   225  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       BRAZIL                         0%             177   194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       BRAZIL                         >5%              2   194  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       INDIA                          0%              46   227  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]       123   227  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       INDIA                          >5%             58   227  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       NEPAL                          0%              76   229  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   229  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       NEPAL                          >5%             77   229  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       PERU                           0%              58   235  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]        77   235  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       PERU                           >5%            100   235  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%             179   233  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        46   233  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              8   233  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              97   224  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        86   224  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             41   224  y_rate_wtkg      
9-12 months    ki1000109-EE            PAKISTAN                       0%             295   325  y_rate_wtkg      
9-12 months    ki1000109-EE            PAKISTAN                       (0%, 5%]        28   325  y_rate_wtkg      
9-12 months    ki1000109-EE            PAKISTAN                       >5%              2   325  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%             117   481  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       150   481  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     >5%            214   481  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%             148   569  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       227   569  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     >5%            194   569  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%             330   683  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       157   683  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%            196   683  y_rate_wtkg      
9-12 months    ki1114097-CMIN          BANGLADESH                     0%              49   160  y_rate_wtkg      
9-12 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]        36   160  y_rate_wtkg      
9-12 months    ki1114097-CMIN          BANGLADESH                     >5%             75   160  y_rate_wtkg      
9-12 months    ki1114097-CONTENT       PERU                           0%             115   212  y_rate_wtkg      
9-12 months    ki1114097-CONTENT       PERU                           (0%, 5%]        41   212  y_rate_wtkg      
9-12 months    ki1114097-CONTENT       PERU                           >5%             56   212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0%              63   212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        84   212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             65   212  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       BRAZIL                         0%             167   184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   184  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       INDIA                          0%              46   226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       123   226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       INDIA                          >5%             57   226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       NEPAL                          0%              77   230  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   230  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       NEPAL                          >5%             77   230  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       PERU                           0%              57   224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        69   224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       PERU                           >5%             98   224  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             173   228  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        46   228  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   228  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              98   226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        85   226  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             43   226  y_rate_wtkg      
12-15 months   ki1000109-EE            PAKISTAN                       0%             270   298  y_rate_wtkg      
12-15 months   ki1000109-EE            PAKISTAN                       (0%, 5%]        26   298  y_rate_wtkg      
12-15 months   ki1000109-EE            PAKISTAN                       >5%              2   298  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0%             114   461  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       145   461  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            202   461  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0%             141   537  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       213   537  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            183   537  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             324   666  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       148   666  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            194   666  y_rate_wtkg      
12-15 months   ki1114097-CMIN          BANGLADESH                     0%              54   159  y_rate_wtkg      
12-15 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        36   159  y_rate_wtkg      
12-15 months   ki1114097-CMIN          BANGLADESH                     >5%             69   159  y_rate_wtkg      
12-15 months   ki1114097-CONTENT       PERU                           0%             106   199  y_rate_wtkg      
12-15 months   ki1114097-CONTENT       PERU                           (0%, 5%]        39   199  y_rate_wtkg      
12-15 months   ki1114097-CONTENT       PERU                           >5%             54   199  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0%              63   212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        84   212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             65   212  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       BRAZIL                         0%             159   175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        14   175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   175  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       INDIA                          0%              48   226  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   226  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       INDIA                          >5%             56   226  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       NEPAL                          0%              75   227  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   227  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       NEPAL                          >5%             76   227  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       PERU                           0%              54   214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        67   214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       PERU                           >5%             93   214  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             171   225  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        45   225  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   225  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              94   220  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        84   220  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             42   220  y_rate_wtkg      
15-18 months   ki1000109-EE            PAKISTAN                       0%             250   277  y_rate_wtkg      
15-18 months   ki1000109-EE            PAKISTAN                       (0%, 5%]        25   277  y_rate_wtkg      
15-18 months   ki1000109-EE            PAKISTAN                       >5%              2   277  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0%             112   449  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       138   449  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            199   449  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0%             145   533  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       207   533  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            181   533  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             304   605  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       131   605  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            170   605  y_rate_wtkg      
15-18 months   ki1114097-CMIN          BANGLADESH                     0%              59   163  y_rate_wtkg      
15-18 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        40   163  y_rate_wtkg      
15-18 months   ki1114097-CMIN          BANGLADESH                     >5%             64   163  y_rate_wtkg      
15-18 months   ki1114097-CONTENT       PERU                           0%              98   189  y_rate_wtkg      
15-18 months   ki1114097-CONTENT       PERU                           (0%, 5%]        38   189  y_rate_wtkg      
15-18 months   ki1114097-CONTENT       PERU                           >5%             53   189  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0%              63   209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        82   209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             64   209  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       BRAZIL                         0%             152   167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        13   167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   167  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       INDIA                          0%              48   226  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   226  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       INDIA                          >5%             56   226  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       NEPAL                          0%              75   227  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   227  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       NEPAL                          >5%             76   227  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       PERU                           0%              54   202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        65   202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       PERU                           >5%             83   202  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             174   233  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        50   233  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   233  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              88   208  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        82   208  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             38   208  y_rate_wtkg      
18-21 months   ki1000109-EE            PAKISTAN                       0%             230   255  y_rate_wtkg      
18-21 months   ki1000109-EE            PAKISTAN                       (0%, 5%]        23   255  y_rate_wtkg      
18-21 months   ki1000109-EE            PAKISTAN                       >5%              2   255  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0%             102   422  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       127   422  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            193   422  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0%             144   542  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       218   542  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            180   542  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             289   547  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       112   547  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            146   547  y_rate_wtkg      
18-21 months   ki1114097-CMIN          BANGLADESH                     0%              52   165  y_rate_wtkg      
18-21 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        40   165  y_rate_wtkg      
18-21 months   ki1114097-CMIN          BANGLADESH                     >5%             73   165  y_rate_wtkg      
18-21 months   ki1114097-CONTENT       PERU                           0%              94   183  y_rate_wtkg      
18-21 months   ki1114097-CONTENT       PERU                           (0%, 5%]        38   183  y_rate_wtkg      
18-21 months   ki1114097-CONTENT       PERU                           >5%             51   183  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%              64   207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        79   207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             64   207  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       BRAZIL                         0%             151   165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        12   165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   165  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       INDIA                          0%              48   226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       INDIA                          >5%             56   226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       NEPAL                          0%              76   227  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        75   227  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       NEPAL                          >5%             76   227  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       PERU                           0%              49   189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        63   189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       PERU                           >5%             77   189  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             175   235  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        51   235  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   235  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              87   206  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        81   206  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             38   206  y_rate_wtkg      
21-24 months   ki1000109-EE            PAKISTAN                       0%              97   106  y_rate_wtkg      
21-24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]         8   106  y_rate_wtkg      
21-24 months   ki1000109-EE            PAKISTAN                       >5%              1   106  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%             102   411  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       124   411  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            185   411  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%             124   485  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       196   485  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            165   485  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             271   493  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]        98   493  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            124   493  y_rate_wtkg      
21-24 months   ki1114097-CMIN          BANGLADESH                     0%              47   133  y_rate_wtkg      
21-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        30   133  y_rate_wtkg      
21-24 months   ki1114097-CMIN          BANGLADESH                     >5%             56   133  y_rate_wtkg      
21-24 months   ki1114097-CONTENT       PERU                           0%              23    38  y_rate_wtkg      
21-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]         7    38  y_rate_wtkg      
21-24 months   ki1114097-CONTENT       PERU                           >5%              8    38  y_rate_wtkg      


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN

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
![](/tmp/966cb31f-3a21-4754-9d2a-0a855780ec74/1f2952c6-9384-4165-8559-43c37ad714d5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/966cb31f-3a21-4754-9d2a-0a855780ec74/1f2952c6-9384-4165-8559-43c37ad714d5/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/966cb31f-3a21-4754-9d2a-0a855780ec74/1f2952c6-9384-4165-8559-43c37ad714d5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.8667279   0.8249471   0.9085088
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.8743718   0.8349551   0.9137885
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.8944278   0.8525562   0.9362994
0-3 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                0.7353273   0.6844587   0.7861959
0-3 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.7726958   0.7425355   0.8028560
0-3 months     ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.7502338   0.7050286   0.7954389
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.9496852   0.9018186   0.9975519
0-3 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.9518538   0.9074155   0.9962921
0-3 months     ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.9668223   0.9179083   1.0157364
0-3 months     ki0047075b-MAL-ED       PERU                           0%                   NA                0.9505559   0.9033670   0.9977447
0-3 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.9625779   0.9178177   1.0073381
0-3 months     ki0047075b-MAL-ED       PERU                           >5%                  NA                0.9900243   0.9506897   1.0293590
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                0.9290973   0.8985892   0.9596053
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.9517752   0.8997007   1.0038497
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                1.0814928   0.8974517   1.2655339
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.8637062   0.8125224   0.9148901
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.8859286   0.8393636   0.9324937
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.9273500   0.8640078   0.9906921
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.8030896   0.7715121   0.8346670
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.8223361   0.7883885   0.8562838
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.8169494   0.7944833   0.8394154
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.8879423   0.8583383   0.9175462
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.9030644   0.8808709   0.9252580
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.9112218   0.8846479   0.9377958
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.8875082   0.8678099   0.9072065
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.8690330   0.8383218   0.8997443
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.8863826   0.8586092   0.9141560
0-3 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                0.9437526   0.8208682   1.0666370
0-3 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.9511484   0.8503654   1.0519315
0-3 months     ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.8421344   0.7268958   0.9573730
0-3 months     ki1114097-CONTENT       PERU                           0%                   NA                1.1452088   1.0395496   1.2508680
0-3 months     ki1114097-CONTENT       PERU                           (0%, 5%]             NA                1.0482521   0.9401812   1.1563230
0-3 months     ki1114097-CONTENT       PERU                           >5%                  NA                1.1879858   0.9958539   1.3801178
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.4844805   0.4553383   0.5136227
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.4686051   0.4442754   0.4929348
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.4747024   0.4392184   0.5101863
3-6 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                0.4638318   0.4270526   0.5006110
3-6 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.4461671   0.4223922   0.4699419
3-6 months     ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.4472341   0.4090458   0.4854224
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.5042935   0.4742687   0.5343183
3-6 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.5277455   0.4903901   0.5651009
3-6 months     ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.5251571   0.4878147   0.5624994
3-6 months     ki0047075b-MAL-ED       PERU                           0%                   NA                0.4953833   0.4580554   0.5327113
3-6 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.4820684   0.4474418   0.5166950
3-6 months     ki0047075b-MAL-ED       PERU                           >5%                  NA                0.5124574   0.4822834   0.5426315
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                0.4858614   0.4562289   0.5154939
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.4046193   0.3496258   0.4596128
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                0.4058270   0.3022917   0.5093623
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.4286493   0.3953626   0.4619361
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.4809220   0.4367701   0.5250738
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.4708186   0.4170176   0.5246197
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.4616370   0.4269194   0.4963545
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.4856657   0.4516536   0.5196778
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.4406564   0.4169947   0.4643182
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.4776572   0.4590508   0.4962637
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.4752953   0.4571069   0.4934837
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.5193087   0.4907530   0.5478645
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.4858783   0.4700463   0.5017102
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.5004083   0.4781608   0.5226557
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.5159972   0.4931417   0.5388527
3-6 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                0.4527486   0.4111478   0.4943495
3-6 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.4561183   0.4016698   0.5105669
3-6 months     ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.4456482   0.4124787   0.4788178
3-6 months     ki1114097-CONTENT       PERU                           0%                   NA                0.5725438   0.5455505   0.5995372
3-6 months     ki1114097-CONTENT       PERU                           (0%, 5%]             NA                0.6390745   0.5905931   0.6875560
3-6 months     ki1114097-CONTENT       PERU                           >5%                  NA                0.5989999   0.5526487   0.6453511
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.2259103   0.2002239   0.2515967
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.2424633   0.2151830   0.2697436
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.2568029   0.2336891   0.2799167
6-9 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                0.2187370   0.1886253   0.2488487
6-9 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.2363820   0.2170676   0.2556964
6-9 months     ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.2340732   0.1988903   0.2692561
6-9 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.2713189   0.2482453   0.2943925
6-9 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.2888771   0.2623492   0.3154050
6-9 months     ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.2683144   0.2410051   0.2956237
6-9 months     ki0047075b-MAL-ED       PERU                           0%                   NA                0.2454108   0.2209907   0.2698309
6-9 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.2637722   0.2290139   0.2985305
6-9 months     ki0047075b-MAL-ED       PERU                           >5%                  NA                0.2695130   0.2478920   0.2911340
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                0.2539242   0.2309607   0.2768877
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.2730085   0.2210963   0.3249207
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                0.3019698   0.1581918   0.4457479
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.2625307   0.2295379   0.2955235
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1972248   0.1550248   0.2394248
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.2380863   0.1837533   0.2924194
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.2368347   0.2043036   0.2693658
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.2404001   0.2189615   0.2618387
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.2325972   0.2109520   0.2542424
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.2458767   0.2273175   0.2644360
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.2551735   0.2401381   0.2702088
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.2451687   0.2177346   0.2726028
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.2708164   0.2548577   0.2867750
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2646194   0.2428551   0.2863837
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.2646794   0.2448199   0.2845389
6-9 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                0.2075164   0.1749328   0.2400999
6-9 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.2271016   0.1794325   0.2747707
6-9 months     ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.2316609   0.1993245   0.2639973
6-9 months     ki1114097-CONTENT       PERU                           0%                   NA                0.3056804   0.2785248   0.3328359
6-9 months     ki1114097-CONTENT       PERU                           (0%, 5%]             NA                0.3132274   0.2709802   0.3554746
6-9 months     ki1114097-CONTENT       PERU                           >5%                  NA                0.3292472   0.2913218   0.3671726
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.1798995   0.1565216   0.2032773
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1727000   0.1492670   0.1961330
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.1667967   0.1425171   0.1910763
9-12 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                0.1820098   0.1551302   0.2088894
9-12 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.1644341   0.1443598   0.1845084
9-12 months    ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.2077588   0.1801676   0.2353500
9-12 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.1780105   0.1471682   0.2088528
9-12 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.1935840   0.1701287   0.2170393
9-12 months    ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.1840921   0.1631254   0.2050588
9-12 months    ki0047075b-MAL-ED       PERU                           0%                   NA                0.1674668   0.1346776   0.2002560
9-12 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.1871959   0.1586727   0.2157192
9-12 months    ki0047075b-MAL-ED       PERU                           >5%                  NA                0.1988420   0.1776556   0.2200284
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                0.2201382   0.1950872   0.2451891
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.1944508   0.1412736   0.2476280
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                0.2078374   0.1416863   0.2739885
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1671303   0.1385892   0.1956715
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1671195   0.1339163   0.2003227
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1581904   0.1048475   0.2115333
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.1529934   0.1272172   0.1787695
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.1844954   0.1631383   0.2058525
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.1551376   0.1329305   0.1773447
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.1870271   0.1682326   0.2058217
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1691248   0.1557692   0.1824804
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.1811055   0.1638535   0.1983575
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.2053324   0.1900438   0.2206210
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.1915625   0.1699268   0.2131983
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.1914101   0.1708177   0.2120025
9-12 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                0.1846775   0.1484530   0.2209020
9-12 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.1483715   0.0901715   0.2065715
9-12 months    ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.1627375   0.1284441   0.1970309
9-12 months    ki1114097-CONTENT       PERU                           0%                   NA                0.2118451   0.1875650   0.2361252
9-12 months    ki1114097-CONTENT       PERU                           (0%, 5%]             NA                0.2494308   0.2108607   0.2880009
9-12 months    ki1114097-CONTENT       PERU                           >5%                  NA                0.2292839   0.1907544   0.2678133
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.1544842   0.1195419   0.1894266
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1279011   0.1051143   0.1506878
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.1327017   0.1018836   0.1635198
12-15 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.1697472   0.1390550   0.2004393
12-15 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.1822824   0.1600404   0.2045244
12-15 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.1634100   0.1300422   0.1967778
12-15 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.1642789   0.1299068   0.1986511
12-15 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.1502619   0.1259299   0.1745939
12-15 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.1419166   0.1148390   0.1689942
12-15 months   ki0047075b-MAL-ED       PERU                           0%                   NA                0.1522068   0.1203947   0.1840190
12-15 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.1330978   0.1033855   0.1628101
12-15 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.1435344   0.1173096   0.1697592
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                0.1917794   0.1615235   0.2220353
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.1858713   0.1369802   0.2347624
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                0.1623198   0.0735474   0.2510922
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1698123   0.1358709   0.2037538
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1393785   0.0937395   0.1850175
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1781635   0.1220680   0.2342590
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.1383173   0.1141904   0.1624442
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.1093341   0.0878354   0.1308327
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.1414988   0.1229050   0.1600926
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.1737846   0.1538484   0.1937207
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1809440   0.1616198   0.2002682
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.1872475   0.1653505   0.2091444
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.1587297   0.1423088   0.1751506
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.1533076   0.1317021   0.1749131
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.1815959   0.1626540   0.2005379
12-15 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.1433302   0.1067359   0.1799245
12-15 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.1875891   0.1500270   0.2251511
12-15 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.1795874   0.1496755   0.2094993
12-15 months   ki1114097-CONTENT       PERU                           0%                   NA                0.1866483   0.1594153   0.2138812
12-15 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                0.1572511   0.1282858   0.1862163
12-15 months   ki1114097-CONTENT       PERU                           >5%                  NA                0.1845491   0.1453482   0.2237500
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.1474346   0.1140096   0.1808595
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1417250   0.1190218   0.1644283
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.1387171   0.1090842   0.1683500
15-18 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.1693843   0.1370815   0.2016871
15-18 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.1594087   0.1397608   0.1790567
15-18 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.1729050   0.1383066   0.2075033
15-18 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.1650020   0.1320595   0.1979444
15-18 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.1936326   0.1681737   0.2190915
15-18 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.1510393   0.1264982   0.1755804
15-18 months   ki0047075b-MAL-ED       PERU                           0%                   NA                0.1293906   0.0947704   0.1640107
15-18 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.1492052   0.1108449   0.1875655
15-18 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.1570160   0.1284524   0.1855795
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                0.2177733   0.1833649   0.2521817
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.2410630   0.1889355   0.2931905
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                0.2472531   0.1659575   0.3285486
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1347618   0.0970085   0.1725152
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1634886   0.1289973   0.1979800
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1423811   0.0893488   0.1954135
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.1797715   0.1467784   0.2127647
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.1457027   0.1220961   0.1693093
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.1402881   0.1177953   0.1627809
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.1665225   0.1455639   0.1874811
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1535605   0.1350057   0.1721153
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.1530397   0.1310646   0.1750148
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.1671581   0.1521320   0.1821842
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.1735871   0.1473695   0.1998048
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.1423996   0.1234329   0.1613662
15-18 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.1365380   0.1014329   0.1716431
15-18 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.1609861   0.1158944   0.2060778
15-18 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.1015605   0.0619280   0.1411930
15-18 months   ki1114097-CONTENT       PERU                           0%                   NA                0.1758637   0.1476473   0.2040801
15-18 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                0.1673428   0.1321745   0.2025111
15-18 months   ki1114097-CONTENT       PERU                           >5%                  NA                0.1658944   0.1319686   0.1998202
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.1299608   0.1003137   0.1596079
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1273398   0.1011799   0.1534998
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.1746262   0.1413129   0.2079394
18-21 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.1611617   0.1196671   0.2026562
18-21 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.1759842   0.1581488   0.1938196
18-21 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.1681749   0.1353490   0.2010008
18-21 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.1445732   0.1076354   0.1815110
18-21 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.1287178   0.0957495   0.1616860
18-21 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.1679781   0.1407399   0.1952162
18-21 months   ki0047075b-MAL-ED       PERU                           0%                   NA                0.2012487   0.1667956   0.2357018
18-21 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.1334140   0.0972323   0.1695958
18-21 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.1607756   0.1301631   0.1913882
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                0.1696191   0.1370158   0.2022223
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.2136732   0.1680203   0.2593261
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                0.1180254   0.0410073   0.1950436
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1414112   0.1007544   0.1820681
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1507063   0.1128189   0.1885937
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1473417   0.0867028   0.2079806
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.1379679   0.1054988   0.1704370
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.1728569   0.1450678   0.2006461
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.1897607   0.1630429   0.2164785
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.1397711   0.1168219   0.1627203
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1324714   0.1141499   0.1507929
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.1300097   0.1109742   0.1490452
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.1395585   0.1236901   0.1554269
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.1244460   0.1028228   0.1460693
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.1614857   0.1411533   0.1818181
18-21 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.1471880   0.1086027   0.1857733
18-21 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.1544172   0.1071615   0.2016730
18-21 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.1767353   0.1371055   0.2163651
18-21 months   ki1114097-CONTENT       PERU                           0%                   NA                0.1763975   0.1504953   0.2022997
18-21 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                0.2161699   0.1675358   0.2648039
18-21 months   ki1114097-CONTENT       PERU                           >5%                  NA                0.2127254   0.1805218   0.2449290
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.1659170   0.1392689   0.1925652
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1617231   0.1354750   0.1879712
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.1259132   0.0982622   0.1535642
21-24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.1524098   0.1250213   0.1797984
21-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.1660941   0.1479241   0.1842642
21-24 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.1327846   0.1057600   0.1598092
21-24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.1898510   0.1521807   0.2275213
21-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.1518084   0.1151025   0.1885143
21-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.1672425   0.1368480   0.1976370
21-24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                0.1852749   0.1516033   0.2189464
21-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.1943761   0.1518566   0.2368955
21-24 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.1704651   0.1393079   0.2016224
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                0.1889315   0.1595987   0.2182644
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.1849365   0.1441258   0.2257473
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                0.1782671   0.1027463   0.2537879
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1706512   0.1337363   0.2075660
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1261169   0.0778833   0.1743505
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1088671   0.0313774   0.1863568
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.1388176   0.1068758   0.1707594
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.1328374   0.1038581   0.1618167
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.1481326   0.1252895   0.1709757
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.1234038   0.0995620   0.1472455
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1461685   0.1294269   0.1629102
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.1529657   0.1325413   0.1733900
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.1968282   0.1798268   0.2138297
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.1633565   0.1380073   0.1887058
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.1410407   0.1154466   0.1666348
21-24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.1673514   0.1355433   0.1991594
21-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.1746786   0.1203213   0.2290358
21-24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.1649993   0.1237717   0.2062270
21-24 months   ki1114097-CONTENT       PERU                           0%                   NA                0.2357758   0.1737848   0.2977668
21-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                0.2012298   0.0877905   0.3146691
21-24 months   ki1114097-CONTENT       PERU                           >5%                  NA                0.1212188   0.0320881   0.2103494


### Parameter: E(Y)


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.8787293   0.8556572   0.9018013
0-3 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                0.7594406   0.7372368   0.7816445
0-3 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.9569501   0.9301779   0.9837223
0-3 months     ki0047075b-MAL-ED       PERU                           NA                   NA                0.9700715   0.9450349   0.9951081
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.9407758   0.9143190   0.9672326
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8846013   0.8543673   0.9148354
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.8163500   0.7995330   0.8331670
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     ki1114097-CMIN          BANGLADESH                     NA                   NA                0.8569936   0.7917724   0.9222149
0-3 months     ki1114097-CONTENT       PERU                           NA                   NA                1.1354743   1.0557030   1.2152455
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.4746501   0.4579760   0.4913241
3-6 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                0.4452214   0.4276818   0.4627610
3-6 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.5217163   0.5015380   0.5418946
3-6 months     ki0047075b-MAL-ED       PERU                           NA                   NA                0.4982335   0.4792789   0.5171881
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.4655071   0.4396676   0.4913465
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4571297   0.4330666   0.4811928
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.4593975   0.4422221   0.4765729
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     ki1114097-CMIN          BANGLADESH                     NA                   NA                0.4485689   0.4253428   0.4717949
3-6 months     ki1114097-CONTENT       PERU                           NA                   NA                0.5883606   0.5672514   0.6094698
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                0.2318230   0.2168658   0.2467803
6-9 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.2695733   0.2550952   0.2840514
6-9 months     ki0047075b-MAL-ED       PERU                           NA                   NA                0.2613933   0.2459015   0.2768851
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.2593884   0.2383337   0.2804432
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2383604   0.2142762   0.2624446
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.2362596   0.2225288   0.2499904
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     ki1114097-CMIN          BANGLADESH                     NA                   NA                0.2261421   0.2058904   0.2463939
6-9 months     ki1114097-CONTENT       PERU                           NA                   NA                0.3203724   0.3008854   0.3398595
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                0.1788440   0.1647878   0.1929001
9-12 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.1859920   0.1715885   0.2003955
9-12 months    ki0047075b-MAL-ED       PERU                           NA                   NA                0.1874806   0.1721694   0.2027919
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.2146445   0.1925652   0.2367238
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1668888   0.1466505   0.1871271
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.1636213   0.1504841   0.1767585
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    ki1114097-CMIN          BANGLADESH                     NA                   NA                0.1656112   0.1427254   0.1884969
9-12 months    ki1114097-CONTENT       PERU                           NA                   NA                0.2242885   0.2061680   0.2424089
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.1739561   0.1580675   0.1898447
12-15 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.1526939   0.1360899   0.1692979
12-15 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.1417390   0.1250455   0.1584325
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.1894245   0.1641813   0.2146678
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1594440   0.1347422   0.1841458
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.1305063   0.1184818   0.1425307
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                0.1724766   0.1525587   0.1923945
12-15 months   ki1114097-CONTENT       PERU                           NA                   NA                0.1810659   0.1624244   0.1997074
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.1625746   0.1476285   0.1775207
15-18 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.1734910   0.1577405   0.1892416
15-18 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.2236104   0.1952383   0.2519826
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1428022   0.1198308   0.1657736
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.1529843   0.1384423   0.1675263
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                0.1334837   0.1109948   0.1559725
15-18 months   ki1114097-CONTENT       PERU                           NA                   NA                0.1713509   0.1529966   0.1897053
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.1726665   0.1577530   0.1875800
18-21 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.1474997   0.1298460   0.1651535
18-21 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.1615652   0.1425950   0.1805355
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.1770799   0.1505223   0.2036374
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1463538   0.1214615   0.1712461
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.1724392   0.1563209   0.1885575
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                0.1616853   0.1379134   0.1854572
18-21 months   ki1114097-CONTENT       PERU                           NA                   NA                0.1921232   0.1732877   0.2109588
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.1562703   0.1431057   0.1694349
21-24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.1690412   0.1491342   0.1889482
21-24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.1814671   0.1617319   0.2012023
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.1876561   0.1639063   0.2114059
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1413187   0.1136523   0.1689851
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.1419730   0.1267767   0.1571693
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                0.1663610   0.1425615   0.1901605
21-24 months   ki1114097-CONTENT       PERU                           NA                   NA                0.2052948   0.1562051   0.2543845


### Parameter: ATE


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0076439   -0.0498046    0.0650923
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0276999   -0.0315421    0.0869419
0-3 months     ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0373685   -0.0218317    0.0965687
0-3 months     ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.0149065   -0.0532074    0.0830203
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0021686   -0.0633511    0.0676883
0-3 months     ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0171371   -0.0511014    0.0853756
0-3 months     ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0120220   -0.0528522    0.0768962
0-3 months     ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0394685   -0.0220068    0.1009437
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.0226779   -0.0374190    0.0827749
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.1523955   -0.0342241    0.3390151
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0222224   -0.0472104    0.0916552
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0636437   -0.0178759    0.1451634
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.0192466   -0.0265866    0.0650797
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0138598   -0.0244012    0.0521209
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0151222   -0.0219054    0.0521497
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.0232796   -0.0165329    0.0630921
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0184752   -0.0546957    0.0177454
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0011256   -0.0349288    0.0326776
0-3 months     ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                 0.0073959   -0.1590213    0.1738130
0-3 months     ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.1016182   -0.2694519    0.0662155
0-3 months     ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CONTENT       PERU                           (0%, 5%]             0%                -0.0969566   -0.2480963    0.0541830
0-3 months     ki1114097-CONTENT       PERU                           >5%                  0%                 0.0427771   -0.1764911    0.2620452
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0158754   -0.0539518    0.0222011
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.0097781   -0.0557427    0.0361865
3-6 months     ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                -0.0176647   -0.0617453    0.0264158
3-6 months     ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.0165977   -0.0694255    0.0362300
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0234520   -0.0244523    0.0713563
3-6 months     ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0208636   -0.0262186    0.0679458
3-6 months     ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                -0.0133149   -0.0651456    0.0385157
3-6 months     ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0170741   -0.0314795    0.0656277
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0812421   -0.1437111   -0.0187732
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0800344   -0.1877268    0.0276579
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0522726   -0.0032411    0.1077864
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0421693   -0.0213860    0.1057247
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.0240288   -0.0245631    0.0726206
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.0209806   -0.0630206    0.0210595
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0023619   -0.0282997    0.0235759
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.0416515    0.0076778    0.0756252
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0145300   -0.0128445    0.0419044
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0301189    0.0023007    0.0579372
3-6 months     ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                 0.0033697   -0.0655302    0.0722696
3-6 months     ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0071004   -0.0602844    0.0460836
3-6 months     ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0665307    0.0107152    0.1223462
3-6 months     ki1114097-CONTENT       PERU                           >5%                  0%                 0.0264561   -0.0273618    0.0802739
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0165530   -0.0213244    0.0544304
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0308926   -0.0039102    0.0656954
6-9 months     ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0176450   -0.0181004    0.0533904
6-9 months     ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.0153362   -0.0307743    0.0614467
6-9 months     ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0175582   -0.0174798    0.0525961
6-9 months     ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -0.0030045   -0.0393769    0.0333679
6-9 months     ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0183615   -0.0242367    0.0609597
6-9 months     ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0241022   -0.0086132    0.0568177
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.0190843   -0.0376801    0.0758487
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.0480457   -0.0975546    0.1936459
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0653059   -0.1192090   -0.0114028
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0244444   -0.0883368    0.0394480
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.0035654   -0.0354070    0.0425378
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.0042375   -0.0432957    0.0348207
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0092967   -0.0142739    0.0328674
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0007080   -0.0338569    0.0324408
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0061970   -0.0332378    0.0208438
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0061370   -0.0315617    0.0192877
6-9 months     ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                 0.0195852   -0.0387929    0.0779633
6-9 months     ki1114097-CMIN          BANGLADESH                     >5%                  0%                 0.0241446   -0.0216231    0.0699122
6-9 months     ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0075470   -0.0430509    0.0581450
6-9 months     ki1114097-CONTENT       PERU                           >5%                  0%                 0.0235668   -0.0229981    0.0701317
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0071995   -0.0404015    0.0260025
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.0131028   -0.0468871    0.0206814
9-12 months    ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                -0.0175757   -0.0512471    0.0160957
9-12 months    ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.0257490   -0.0127499    0.0642479
9-12 months    ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0155734   -0.0231833    0.0543302
9-12 months    ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0060816   -0.0315224    0.0436856
9-12 months    ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0197291   -0.0238694    0.0633276
9-12 months    ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0313752   -0.0077307    0.0704810
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0256873   -0.0844697    0.0330950
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0123008   -0.0830363    0.0584348
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0000109   -0.0435213    0.0434995
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0089399   -0.0692964    0.0514166
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.0315020   -0.0019642    0.0649682
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0021442   -0.0318061    0.0360945
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0179023   -0.0409125    0.0051079
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0059216   -0.0314026    0.0195593
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0137699   -0.0402181    0.0126784
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0139223   -0.0396957    0.0118511
9-12 months    ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.0363060   -0.1050046    0.0323926
9-12 months    ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0219400   -0.0722150    0.0283350
9-12 months    ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0375857   -0.0079948    0.0831661
9-12 months    ki1114097-CONTENT       PERU                           >5%                  0%                 0.0174388   -0.0282241    0.0631017
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0265832   -0.0684185    0.0152522
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.0217826   -0.0687434    0.0251783
12-15 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0125352   -0.0253316    0.0504020
12-15 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.0063372   -0.0515533    0.0388788
12-15 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                -0.0140170   -0.0561881    0.0281541
12-15 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -0.0223624   -0.0663327    0.0216080
12-15 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                -0.0191090   -0.0626672    0.0244491
12-15 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                -0.0086724   -0.0499547    0.0326098
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0059081   -0.0634039    0.0515877
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0294596   -0.1232464    0.0643272
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0304339   -0.0869786    0.0261109
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0083512   -0.0570646    0.0737669
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                -0.0289832   -0.0615855    0.0036191
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0031815   -0.0275103    0.0338733
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0071594   -0.0207360    0.0350548
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.0134629   -0.0163637    0.0432895
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0054221   -0.0325968    0.0217525
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0228662   -0.0023108    0.0480433
12-15 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                 0.0442589   -0.0080404    0.0965581
12-15 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                 0.0362572   -0.0112427    0.0837570
12-15 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                -0.0293972   -0.0692506    0.0104562
12-15 months   ki1114097-CONTENT       PERU                           >5%                  0%                -0.0020991   -0.0498516    0.0456533
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0057095   -0.0462111    0.0347920
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.0087174   -0.0534690    0.0360341
15-18 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                -0.0099755   -0.0479237    0.0279726
15-18 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.0035207   -0.0438546    0.0508959
15-18 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0286307   -0.0130365    0.0702978
15-18 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -0.0139626   -0.0549475    0.0270222
15-18 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0198146   -0.0313511    0.0709804
15-18 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0276254   -0.0171989    0.0724497
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.0232897   -0.0391700    0.0857494
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.0294798   -0.0587977    0.1177572
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0287268   -0.0225834    0.0800370
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0076193   -0.0577078    0.0729465
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                -0.0340688   -0.0746475    0.0065098
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.0394835   -0.0795883    0.0006213
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0129620   -0.0408003    0.0148763
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0134828   -0.0437905    0.0168249
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0064291   -0.0238918    0.0367500
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0247585   -0.0490625   -0.0004546
15-18 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                 0.0244481   -0.0330297    0.0819259
15-18 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0349775   -0.0885003    0.0185453
15-18 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                -0.0085209   -0.0538076    0.0367658
15-18 months   ki1114097-CONTENT       PERU                           >5%                  0%                -0.0099693   -0.0542075    0.0342690
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0026210   -0.0422576    0.0370156
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0446654    0.0000212    0.0893095
18-21 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0148226   -0.0307567    0.0604018
18-21 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.0070133   -0.0462076    0.0602342
18-21 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                -0.0158555   -0.0665685    0.0348576
18-21 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0234049   -0.0227258    0.0695355
18-21 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                -0.0678346   -0.1178570   -0.0178122
18-21 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                -0.0404731   -0.0867247    0.0057786
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.0440541   -0.0120454    0.1001537
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0515937   -0.1352284    0.0320411
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0092950   -0.0463933    0.0649834
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0059305   -0.0671371    0.0789980
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.0348890   -0.0079386    0.0777167
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0517928    0.0097955    0.0937902
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0072997   -0.0367256    0.0221261
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0097614   -0.0396000    0.0200771
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0151124   -0.0420019    0.0117771
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0219272   -0.0039563    0.0478108
18-21 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                 0.0072292   -0.0536457    0.0681042
18-21 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                 0.0295473   -0.0263281    0.0854227
18-21 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0397724   -0.0153470    0.0948917
18-21 months   ki1114097-CONTENT       PERU                           >5%                  0%                 0.0363279   -0.0048030    0.0774588
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0041939   -0.0418213    0.0334335
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.0400038   -0.0785446   -0.0014630
21-24 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0136843   -0.0192244    0.0465930
21-24 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.0196253   -0.0582227    0.0189722
21-24 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                -0.0380426   -0.0905188    0.0144336
21-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -0.0226085   -0.0710825    0.0258655
21-24 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0091012   -0.0450498    0.0632523
21-24 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                -0.0148097   -0.0604394    0.0308200
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0039950   -0.0542537    0.0462637
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0106644   -0.0916817    0.0703530
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0445343   -0.1049072    0.0158386
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0617840   -0.1480156    0.0244475
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                -0.0059802   -0.0492082    0.0372478
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0093150   -0.0300943    0.0487244
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0227648   -0.0063643    0.0518939
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.0295619   -0.0018706    0.0609944
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0334717   -0.0638846   -0.0030589
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0557875   -0.0867145   -0.0248606
21-24 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                 0.0073272   -0.0556428    0.0702973
21-24 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0023520   -0.0544262    0.0497222
21-24 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                -0.0345460   -0.1638184    0.0947264
21-24 months   ki1114097-CONTENT       PERU                           >5%                  0%                -0.1145570   -0.2231257   -0.0059883


### Parameter: PAR


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0120013   -0.0243769    0.0483795
0-3 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0241133   -0.0207032    0.0689299
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0072649   -0.0316504    0.0461801
0-3 months     ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0195156   -0.0221570    0.0611882
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0116785   -0.0037112    0.0270682
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0208951   -0.0172603    0.0590505
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0132604   -0.0145056    0.0410265
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0137049   -0.0113094    0.0387192
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0029863   -0.0177499    0.0117773
0-3 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0867589   -0.1787412    0.0052233
0-3 months     ki1114097-CONTENT       PERU                           0%                   NA                -0.0097345   -0.0819049    0.0624359
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0098304   -0.0353413    0.0156805
3-6 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0186104   -0.0520306    0.0148099
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0174228   -0.0086797    0.0435252
3-6 months     ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0028501   -0.0308481    0.0365484
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0203544   -0.0355346   -0.0051741
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0284804    0.0003427    0.0566180
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0022395   -0.0327374    0.0282584
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0114039   -0.0069258    0.0297336
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0121761    0.0003198    0.0240325
3-6 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0041798   -0.0381216    0.0297621
3-6 months     ki1114097-CONTENT       PERU                           0%                   NA                 0.0158167   -0.0041921    0.0358256
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0169449   -0.0051752    0.0390650
6-9 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0130861   -0.0141915    0.0403636
6-9 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0017456   -0.0220185    0.0185272
6-9 months     ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0159825   -0.0077272    0.0396923
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0054643   -0.0072841    0.0182127
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0241703   -0.0517934    0.0034528
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0005751   -0.0280134    0.0268632
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0032886   -0.0142948    0.0208720
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0033067   -0.0143255    0.0077121
6-9 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0186258   -0.0103714    0.0476229
6-9 months     ki1114097-CONTENT       PERU                           0%                   NA                 0.0146920   -0.0037198    0.0331039
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0068649   -0.0268757    0.0131460
9-12 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0031658   -0.0283632    0.0220315
9-12 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0079815   -0.0151377    0.0311007
9-12 months    ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0200138   -0.0081102    0.0481379
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0054937   -0.0177749    0.0067875
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0002416   -0.0228268    0.0223437
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0106279   -0.0122826    0.0335385
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0094955   -0.0255174    0.0065263
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0074875   -0.0184237    0.0034487
9-12 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0190664   -0.0517594    0.0136267
9-12 months    ki1114097-CONTENT       PERU                           0%                   NA                 0.0124433   -0.0044523    0.0293390
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0191256   -0.0475022    0.0092510
12-15 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0042089   -0.0242877    0.0327055
12-15 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0115850   -0.0375167    0.0143466
12-15 months   ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0104678   -0.0385409    0.0176052
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0023549   -0.0151397    0.0104300
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0103684   -0.0380828    0.0173461
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0078110   -0.0290513    0.0134292
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0062478   -0.0120905    0.0245861
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0053306   -0.0058806    0.0165417
12-15 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0291464    0.0002270    0.0580657
12-15 months   ki1114097-CONTENT       PERU                           0%                   NA                -0.0055824   -0.0232607    0.0120960
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0046464   -0.0317755    0.0224827
15-18 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0068097   -0.0358047    0.0221853
15-18 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0084891   -0.0171294    0.0341076
15-18 months   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0167983   -0.0140422    0.0476388
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0058371   -0.0079227    0.0195969
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0080404   -0.0191559    0.0352368
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0267873   -0.0548235    0.0012490
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0101711   -0.0285526    0.0082104
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0059608   -0.0167098    0.0047882
15-18 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0030544   -0.0326502    0.0265415
15-18 months   ki1114097-CONTENT       PERU                           0%                   NA                -0.0045128   -0.0225032    0.0134777
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0127539   -0.0126542    0.0381619
18-21 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0115048   -0.0237649    0.0467745
18-21 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0029265   -0.0260678    0.0319208
18-21 months   ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0396834   -0.0701785   -0.0091883
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0074608   -0.0059802    0.0209018
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0049426   -0.0249991    0.0348843
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0344713    0.0052132    0.0637295
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0072830   -0.0267562    0.0121903
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0031025   -0.0072102    0.0134151
18-21 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0144973   -0.0194967    0.0484914
18-21 months   ki1114097-CONTENT       PERU                           0%                   NA                 0.0157258   -0.0025674    0.0340189
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0138015   -0.0366496    0.0090467
21-24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0038605   -0.0210889    0.0288098
21-24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0208098   -0.0505962    0.0089766
21-24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0038077   -0.0344148    0.0267993
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0012754   -0.0132336    0.0106828
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0293324   -0.0608728    0.0022079
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0031554   -0.0250478    0.0313587
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0185667   -0.0017325    0.0388659
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0217782   -0.0330407   -0.0105157
21-24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0009904   -0.0305578    0.0285771
21-24 months   ki1114097-CONTENT       PERU                           0%                   NA                -0.0304810   -0.0704906    0.0095286
