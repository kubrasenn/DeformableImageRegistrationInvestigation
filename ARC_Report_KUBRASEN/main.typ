#import "@preview/subpar:0.2.2"
#set par(justify:true)
#set math.equation(numbering: "(1)")

#set cite(style: "american-psychological-association")
#set cite(style: "american-psychological-association",)

#align(center, text(25pt)[
  *Performance Evaluation of\  Microfluidic Resistive Pulse Sensing with Fluorescence Extensions for \ Extracellular Vesicle Detection*
])

#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()


#grid(
  columns: (1fr),
  align(left)[
  #set text(20pt)
  *Kübra Şen* \

  ]

)
 #grid(
  columns: (1fr),
  align(left)[
  #set text(15pt)
  
 

  Biomedical Technology and Physics Master Program
  
  Vrije University Amsterdam \
  
  #link("mailto:k.sen2@student.vu.nl")\
  
  
  *Course*: XM_422613 (39 ECT)\
  *Student Number*: 2797737\
  *Examiners*:\
  *First Examiner*: MEng PhD Edwin van der Pol (AMC)\
  *Second Examiner:* Prof. MSc PhD Ton van Leeuwen (AMC)\
 * Date:* 23-07-2025

]
)
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()



#subpar.grid( 
  
 figure(
    image("Images/VU.png", width:130%),
  ),
  figure(
    image("Images/AMC.png",width:50%),
  ),
  columns: (1fr, 1fr)
)
#pagebreak()



#set par(
  justify: true,
  leading: 0.52em,
)
#set page(numbering: "1")
#set heading(numbering: "1. ")
#outline()
#pagebreak()

= Abstract
This study investigates the performance of microfluidic resistive pulse sensing with fluorescence extensions (ARC) for extracellular vesicle (EV) detection. The comparative device was the APOGEE A60 Micro flow cytometer (FCM), a standard instrument for EV detection. Since ARC and APOGEE A60 Micro FCM provided results in different units, they had to be calibrated to the same unit to compare the results accurately. Therefore, calibration approaches were developed to standardize fluorescence intensity measurements. Additionally, both sensitivity and resolution in the detection of fluorescently labeled EVs were quantitatively assessed. ARC only demonstrated superior signal-to-noise ratio in the FITC channel for 140 nm yellow beads and could detect CD235a-PE-labeled EVs as small as 154 nm. In contrast, APOGEE A60 Micro FCM loses sensitivity to detect EV particles smaller than 257 nm. 

= Introduction

Body fluids contain membrane-enclosed, cell-derived nanoparticles called extracellular vesicles (EVs)@Arraud2014. EVs are nanoscale particles that mediate intercellular communication by transferring biomolecules such as proteins, lipids, and nucleic acids. EVs are classified into various subtypes based on size, biogenesis, and function, including apoptotic bodies (500–2,000 nm), microvesicles (50–1,000 nm), and exosomes (30–150 nm). Due to their stability in biofluids and ability to cross biological boundaries, EVs have emerged as valuable biomarkers for disease diagnosis, prognosis, and therapeutic applications, particularly in cancer and systemic disorders @Lin2024 @Hu2022 @Wang2024. Additionally, EVs have shown potential as therapeutic drug-delivery vehicles @Gyorgy2014 @dawson2013 and in maintaining homeostasis while also playing critical roles in disease onset and progression @Simons2009 @Yuana2012 @ODriscoll2015 @Coumans2017.

Despite the potential of EVs as biomarkers for diseases, the characterization of EVs remains challenging due to their heterogeneity, size variability, and overlap with non-EV particles in biological fluids @Lennon2019. For instance, lipoproteins and protein aggregates, which are abundant in plasma, overlap in size and density with EVs, complicating their isolation and analysis. For example, small EVs (30–50 nm) are similar in size to high-density lipoproteins (HDLs), making differentiation difficult @TerOvanesyan2020 @Van_der_Pol2018-rj. 

Furthermore, EVs exhibit a wide size range, from small exosomes to larger microvesicles, requiring detection methods with high sensitivity and resolution to differentiate subpopulations and exclude non-EV particles @TerOvanesyan2020 @Cimorelli2021-yg. Addressing these challenges is crucial for advancing EV research, particularly through the precise determination of particle size distributions (PSDs) and particle concentrations @Cimorelli2021-yg. 

There are many different devices widely used today to detect extracellular vesicles. However, there is still a need to improve the technique for accurately detecting EVs. In this study, we will evaluate and compare a newly developed measurement device, Microfluidic Resistive Pulse Sensing with Fluorescence Extensions (ARC) by Spectradyne LLC, with a widely used flow cytometry device in terms of EV measurement and detection.

The study will focus on four steps:
	1. Calibrating the fluorescent signal of ARC to enable comparison with flow cytometry results;
	2. Evaluating the fluorescence detection of ARC;
	3. Comparing the fluorescence detection and resolution of ARC with that of flow cytometry;
	4. Identifying the size of the smallest labelled EV with Phycoerythrin (PE), detectable by ARC and flow cytometry. 

To assess the reliability and accuracy of ARC, its results are compared with those from the established flow cytometry (FCM) technique, using the APOGEE A60 Micro FCM. ARC detects fluorescent signals by integrating a fluorescence module into the existing Microfluidic Resistive Pulse Sensing (MRPS) device developed by Spectradyne LLC. Understanding the MRPS working principle is essential for comprehending the mechanism of ARC and will be detailed in the next section.

== Background
MRPS based on the Coulter principle @coulter1 @coulter2 has emerged as a promising technique for EV characterization. 

$ (Delta R)/R ∝ V_p / V_c $ <eq1> 

ΔR: Change in resistance as the particle passes through constriction.

R: Baseline resistance of the constriction filled only with electrolyte.

$V_p$ : Volume of the particle.

$ V_c$ : Volume of the constriction.

In @eq1, expresses the core idea of the Coulter principle @coulter1 @coulter2. The fractional change in resistance is proportional to the volume of the particle relative to the volume of the constriction.

MRPS measures changes in electrical resistance. The electrical resistance correlates with the volume of particles passing through a nanoconstriction in an catridge to determine particle size and volume, thereby calculating the concentration of a sample (with volume information of sample) @VARGA2020111053. 
A study by Cimorelli et al. has demonstrated that MRPS can reliably measure PSDs of EVs derived from various sources, such as red blood cells @Cimorelli2021-yg. 

#figure(
  image("Images/MRPS.png", width: 80%),
  caption: [MRPS working mechanism @spectradyne_mrps_2024],
) <MRPS>

In @MRPS, a fluidic resistor $R_b$, a microfluidic nanoconstriction $R_a$, and ports for voltage bias $V_a$ and $V_b$ are all included in the MRPS cartridge. The voltage $V_"out"$ of the sense electrode is set by the current I that flows as a result of the voltage bias. The nanoconstriction resistance is altered over time by particles passing through it (top right), which results in detectable variations in the sensing voltage $V_"out"$. Since these variations are related to particle volume, the volume of each particle is measured one by one @spectradyne_mrps_2024. However, similar to other instruments, such as nanoparticle tracking analysis (NTA) and tunable resistive pulse sensing (TRPS), MRPS cannot distinguish between EVs and non-EV particles @VARGA2020111053.

Spectradyne LLC developed MRPS with fluorescence extensions (ARC) to overcome the challenges of MRPS while distinguishing EV particles and non-EVs. ARC might advance the ability to simultaneously determine particle size, volume, and fluorescence properties on a single-particle basis. This instrument employs disposable microfluidic cartridges. The microfluidic cartridges could improve resolution by focusing on specific particle size ranges similar to MRPS @spectradyne_mrps_2024. 

#figure(
  image("Images/ARC.png", width: 80%),
  caption: [ARC working mechanism (@spectradyne_mrps_2024)],
) <ARC>

As shown in @ARC, while MRPS analyzes particles one by one and provides size and concentration for each particle, ARC obtains not only size and concentration but also fluorescence of particles @spectradyne_mrps_2024. 

#figure(
  image("Images/ARCC.png", width: 80%),
  caption: [ARC working mechanism @spectradyne_mrps_2024],
) <ARCC>


@ARCC shows a multi-channel fluorescence detection system integrated with MRPS technology. The optical configuration utilizes a single 488 nm excitation laser as the primary source of illumination for fluorescence measurements.

The technology uses sequential dichroic beam splitting to build a three-channel fluorescence detection scheme. The first emission pathway captures fluorescence at 525/39 nm following separation by a 495 nm dichroic mirror. This configuration optimizes the detection of  Fluorescein Isothiocyanate (FITC) and similar green fluorophores.

The second channel operates at 575/19 nm after spectral separation via a 555 nm dichroic mirror. This pathway targets phycoerythrin (PE) and orange fluorescence emission.

The third detection channel captures far-red fluorescence at 694/44 nm following separation by a 650 nm dichroic mirror. This channel enables the detection of peridinin chlorophyll protein (PERCP) and similar far-red fluorophores.


= Materials and Methods
To compare ARC with APOGEE A60 Micro FCM, APOGEE A60 Micro FCM was used in this study. There are four main steps followed: (1) calibrating the fluorescent signal of ARC, (2) determining the fluorescence detection limit of ARC, (3) comparing the fluorescence detection limit of ARC with that of APOGEE A60 Micro FCM, and (4) identifying the size of the smallest EV detectable by ARC and APOGEE A60 Micro FCM. This comprehensive approach established a quantitative framework for comparing ARC and APOGEE A60 Micro FCM, addressing the challenges of standardization in fluorescence intensity measurements.

== Calibration of Fluorescence Signals
This section explains the calibration step and its importance for comparing ARC and APOGEE A60 Micro FCM.  
To compare the measured signal from both instruments, the results should be expressed in the same unit. However, ARC gives results as Equivalent References Fluorophores (ERF) unit because Spectradyne LLC provided a calibration factor of calibration in ERF units. On the other hand, APOGEE A60 Micro FCM is calibrated with Molecules of Equivalent Soluble Fluorochrome (MESF) unit by our lab (LEKC Amsterdam UMC, The Netherlands). MESF stands for the fluorescence intensity corresponding to a particular quantity of unbound fluorochrome molecules in solution under the same environmental circumstances @Schwartz2004-ub. 
ERF represents a standardized approach to quantifying fluorescence intensity in FCM, developed by the National Institute of Standards and Technology (NIST). ERF indicates how many reference fluorophores must be present in the solution to generate a fluorescence signal that is equal to the amount that a single fluorescent microsphere would emit @Wang2016. 

While the fluorescence signals of ARC are calibrated with ERF units, APOGEE A60 Micro FCM signals are calibrated with MESF units. Therefore, there are two ways to compare ARC with APOGEE A60 Micro FCM. APOGEE A60 Micro FCM might be calibrated to ERF units, or ARC may be calibrated with MESF units to establish a quantitative framework for fluorescence intensity measurements. 

=== Fluorescence Signals Calibration of ARC with MESF unit 
Since commercially available PE-coated 200 nm beads were unavailable, we coated 200 nm polystyrene beads with PE fluorophore ourselves. These beads were chosen because their size aligns with the optimal detection range for biological nanoparticles such as EVs and falls within detectable range of ARC (65–2000 nm). PE fluorophore was selected as the fluorescent tag due to its superior brightness, enabling sensitive detection of low-level signals.

==== Materials
200 nm polystyrene beads @cd_bioparticles_amine_ps, NH2-reactive R-phycoerythrin, MilliQ water, Washing and Storage Buffer (WS Buffer), Reaction Buffer for R-phycoerythrin activation, and Dulbecco's Phosphate-Buffered Saline (DPBS, pH 7.4) are the materials needed for the polystyrene bead coating with NH2-reactive R-phycoerythrin. The excitation wavelength is 566 nm, and the emission wavelength is 578 nm for the fluorescence spectrum of R-phycoerythrin. The equipment required for this procedure includes an 8000 × g microcentrifuge and a temperature-controlled incubator maintained at 37°C.

==== Preparation of 200 nm Polystyrene Beads
The NH2-reactive R-phycoerythrin(R-PE) labeling kit comes with a protocol for labeling IgG (Dojindo, USA). Similar steps in the protocol were followed to coat 200 nm polystyrene beads with PE fluorophore. 

To maximize the coating process, polystyrene beads with a diameter of 200 nm were prepared at two distinct dilution factors. In an eppendorf tube, 5 μL of polystyrene beads and 45 μL of MilliQ water were mixed to create a 20-fold dilution for the first dilution, which is equal to 0.5 μL of the original beads. In another tube, 5 μL of polystyrene beads and 195 μL of MilliQ water were combined to create a 40-fold dilution, which is equal to 0.25 μL of the original beads. To produce uniform suspensions, both dilutions underwent extensive vortexing. After dilution, 200 μL of WS Buffer was mixed with 5 μL of each diluted bead solution in different tubes. After that, the suspensions were centrifuged for 10 minutes at 8000 × g to pellet the beads while preserving their structural integrity. 

==== Conjugation Procedure
The centrifuged bead suspensions were carefully cleaned of redundant supernatant before the conjugation procedure started. To keep the polystyrene surface intact and avoid collapse, 5–10 μL of the buffer was purposefully kept above the bead pellet. Each tube holding the pelleted beads received an amount of the prepared NH2-reactive R-phycoerythrin solution. To promote the covalent bond between the amine groups on the polystyrene surface and the reactive groups on the protein, the reaction mixtures were further incubated for three hours at 37°C. Throughout the incubation time, the reaction tubes were vortexed at 10- to 20-minute intervals to promote optimal interaction between the beads and R-PE, thereby achieving uniform coating and preventing aggregation.

==== Procedures for Purification and Washing
A comprehensive washing procedure was used to eliminate all unbound NH2-reactive R-phycoerythrin from the conjugated beads following the three-hour incubation period. Excess protein has to be eliminated to avoid background fluorescence in further uses. To avoid breaking the freshly formed conjugates, the supernatant containing the unattached protein was carefully removed, leaving 5–10 μL of solution above the bead pellet. 50 μL of DPBS was added to the tube and gently mixed with the bead pellet for each washing step. The conjugated beads were then re-pelleted by centrifugation of the suspension for 10 minutes at 8000 × g. This washing process was carried out three or four times until the supernatant seemed clear, signifying that the unattached PE fluorophore had been successfully removed.

=== Fluorescence Signals Calibration of APOGEE A60 Micro FCM with ERF unit 
==== APOGEE A60 Micro FCM Measurement Settings
==== Methods
The goal of this process was to calibrate APOGEE A60 Micro FCM using ultra rainbow beads (6 intensities), allowing for fluorescence intensity standardization in ERF units. The calibration was performed to establish instrument linearity, sensitivity, and accuracy across the FITC and PE channels.

The ultra rainbow beads were analyzed under two flow rate conditions:
- 3.01 µL/min (initial setting), 130µL aspiration volume
- 10.5 µL/min (optimized setting) and 150 µL aspiration volume
- Channels: Fluorescence was measured in the FITC (488 nm) and PE (561 nm). Data acquisition involved recording fluorescence intensity and bead concentrations.

==== Materials
For the calibration process of APOGEE A60 Micro FCM, ultra rainbow beads @spherotech_calibration were chosen. The specified concentration of the beads is $2.10^6$ beads/mL, as provided. 

A 2-fold dilution of calibration beads was prepared by mixing 100 µL of ultra rainbow beads with 100 µL of MilliQ water. The final sample volume (200 µL) was vortexed briefly to ensure uniform bead distribution. All samples were prepared fresh before analysis to minimize variability.

==== Analysis of Fluorescence Intensity
Fluorescence signals of  APOGEE A60 Micro FCM were calibrated using exponential regression analysis. The Mean Fluorescence Intensity (MFI) values from the FITC and PE channels were obtained from FlowJo (V10.10, USA) data analysis. MFI values represent the statistical median value of fluorescence emission signals obtained from a given cell or particle population.  

== Detectable Signal Range Determination of Fluorescence Channel
=== APOGEE A60 Micro FCM measurement settings
==== Materials
Equal amounts of DPBS and 500 nm nanorainbow beads ($10^7$ beads/mL) from Cellarcus Biosciences @cellarcus_website were combined to create a 2x dilution to prepare the samples. The final sample was vortexed briefly to ensure uniform bead distribution. 
==== Methods
All samples were prepared fresh before analysis to minimize variability. The nanorainbow beads were analyzed under a 10.5 µL/min flow rate condition with a 150 µL aspiration volume during use.

=== ARC Measurement Settings
==== Materials
The C900 cartridge, with a detection range of 130-900nm, has been used for measuring 500 nm nanorainbow beads. To dilute the beads, 1% Tween20 @sigmaaldrich in DPBS was used as a recommended buffer solution from Spectradyne LLC @spectradyne_mrps_2024. 

==== Methods
To conduct ARC measurement, the buffer solution recommended by Spectradyne LLC needed to be prepared beforehand. 198 mL DPBS was added to 2.2 g Tween20. Then, the solution was vortexed for 10 minutes to dissolve Tween20. The filtration step was done with a 50nm Isopore filter @whatman_filter_papers_membranes. The final solution was 1% Tween20 in DPBS. The C900 cartridge was chosen to measure 500 nm nanorainbow beads because the size range of C900 is 130 nm - 900 nm. Each cartridge of ARC has its optimal concentration range. The optimal concentration range of C900 is $10^6$-$10^10$ mL, while nanorainbow beads are $10^7$ beads/mL. 

To increase the concentration of nanorainbow beads, centrifugation was used. The setting of centrifugation was at 3000 rpm in 15 minutes at room temperature. After seeing the pellet at the bottom of the tube, carefully pipette out 180 µL of supernatant, leaving 20 µL of liquid above the pellet. In order to dilute the beads, 2 µL of 1 % Tween20 is added to the 20 µL pellet. The total volume was 22 µL. 

== Comparing Signal to Background Noise Level Ratio for Both Instruments
Signal-to-background noise level ratio is a critical metric for evaluating the performance of fluorescence-based particle detection systems, as it quantifies the ability of an instrument to distinguish fluorescent signals from background noise. 140 nm and 385 nm yellow beads were analyzed across fluorescence channels. The measurements of these two beads were also performed to verify the calibration process. 

=== APOGEE A60 Micro FCM Measurement Settings
==== Materials
140 nm Yellow ($5.10^12$ beads/mL) and 385 nm Yellow ($2.10^11$ beads/mL) polystyrene beads (Thermofisher, USA) were used and diluted with MilliQ water. 

==== Methods
140 nm yellow beads were diluted $5.10^5$- fold, and 385 nm yellow beads were diluted $10^4$-fold with MilliQ water. The dilution factors were calculated based on the optimal concentration of APOGEE A60 Micro FCM ($10^7$ beads/mL). 200 µL of the sample was measured under the settings of flow rate (3.01 µL/min) and aspiration volume of the sample (130 µL). 

=== ARC Measurement Settings

==== Materials

140 nm yellow beads ($5.10^12$ beads/mL) and 385 nm yellow beads ($2.10^11$ beads/mL) (Thermofisher, USA) were used and diluted with 1% Tween20 in DPBS. 

==== Methods

To measure nanorainbow beads, cartridge C400 was employed for 140 nm yellow beads, while cartridge C900 was utilized for 385 nm yellow beads. The manufacturer @spectradyne_mrps_2024 recommends sample concentration ranges of $10^7-10^11$ particles/mL for the C400 cartridge and $10^6-5.10^10$ particles/mL for the C900 cartridge. To achieve optimal concentrations within these specified ranges, dilution factors were calculated and applied: $5.10^4$ for the 140 nm beads and $2.10^3$ for the 385 nm beads. Subsequently, 5 µL of the sample was loaded into the cartridge for acquisition. 

== Comparative EVs Concentration Measurements using Fluorophore Conjugated Antibodies

=== Materials 
Erythrocyte-derived EVs from an outdated erythrocyte blood bank concentrate sample have been used as EV samples. Glycophorin A antibody with PE (CD235a-PE) @dako_agilent_cd235a_76536 was chosen to label EVs. IgG1-PE (BD Bioscience, USA) was used as a negative control. DPBS was a buffer solution for APOGEE A60 Micro FCM measurement, and 0.05% Poloxamer-188/DPBS was another buffer solution for ARC measurement to dilute samples. 

=== Methods
Erythrocyte-derived EVs are released from red blood cells. They were chosen for this research due to the significant presence of red blood cells in human circulation @Ma2023-qx. 

Characterization of EVs by fluorescent labeling is critical for the identification and isolation of specific cell-derived EVs. CD235a (Glycophorin A) is a particular marker of erythrocyte-derived EVs. When CD235a is conjugated with the fluorescent dye PE (Phycoerythrin), it allows the detection of these EVs by fluorescence-based methods.

EVs labeled with CD235a-PE were analyzed using ARC and APOGEE A60 Micro FCM instruments. The FL2 channel (optimized for PE) was used in the ARC instrument, and the 488Org(Peak) channel (appropriate to the emission spectrum of PE) was used in the APOGEE A60 Micro FCM instrument. 

For APOGEE A60 Micro FCM measurement, EV samples were prediluted 24-fold in DPBS, and for ARC measurements, EV samples were prediluted 10-fold in DPBS. 

For antibody labeling, CD235a-PE and IgG1-PE (isotype control) were diluted in DPBS 4-fold and 8-fold, respectively. Aggregates were removed by centrifugation (5 min at 18.890 x g). 20 µL of prediluted EV sample was added to each 2.5 µL of prediluted CD235a-PE and IgG-PE. After a brief vortex, samples were kept at room temperature in the dark for 120 minutes.

Before the acquisition, buffer solutions (200 µL DPBS for APOGEE A60 Micro FCM and 200 µL 0.05% Poloxamer-188/DPBS for ARC) were added to each sample. 


= Result

== Calibration of the Fluorescence Signals of ARC with MESF unit: 

To calibrate the fluorescence signal of ARC with MESF, 200 nm polystyrene beads were coated with PE fluorophore. Coated beads were measured with APOGEE A60 Micro FCM to determine whether the process worked well or not. Data was analyzed with FlowJo (v10.9, USA). As seen in @Coating, we compared normal and coated polystyrene beads with PE fluorophore. 
#subpar.grid( 
  
 figure(
    image("Images/Diluted_40x.png", width:109%),
    caption:""
  ),
  figure(
    image("Images/Diluted_20x.png",width:109%),
    caption:""
  ),
  columns: (1fr, 1fr),
  caption:  "a) PE channel intensity of 40-fold diluted Coated and Uncoated polystrene beads b) PE channel intensity of 20-fold diluted Coated and Uncoated polystrene beads",
  label: <Coating>
)
 
In @Coating, the distribution shows the measured fluorescence signal. The red peak represented coated 200 nm polystyrene beads with PE fluorophore, and the blue peak showed 200 nm uncoated polystyrene beads as a negative control.
We prepared two different dilution factors, 40-fold and 20-fold, to optimize the coating process. In @Coating, a represents 40-fold, and in @Coating shows 20-fold diluted sample preparation. In @Coating a, while uncoated beads represent 459 arbitrary units of PE fluorophore signal intensity, coated beads give a PE fluorophore signal of 588 arbitrary units, 22% higher than that of uncoated beads. In addition, in @Coating b, coated beads provide the same PE fluorophore signal intensity,588 arbitrary units, while uncoated beads give 433 arbitrary units in the same channel. It means coated beads have 26,36% higher signal than uncoated beads provided.   

The coating process with PE fluorophore to create our beads for calibrating ARC did not yield a successful result due to insufficient signal intensity compared to regular, uncoated beads. 
Therefore, we explored the possibility of calibrating the APOGEE A60 Micro FCM using the ERF unit as an alternative approach. 

== Calibration of the Fluorescence Signals of APOGEE A60 Micro FCM with ERF unit: 
To calibrate the fluorescence signal of Apogee A60 Micro with the ERF unit, ultra rainbow beads were measured and analyzed. The ultra rainbow beads were analyzed at 3.01 µL/min (initial setting), with a 130 µL aspiration volume; however, this setting yielded a low event rate (around 1,200 particles/µL). Then, 10.5 µL/min and 150 µL aspiration volume were used to get a higher event rate(~3,500 particles/µL).  

Ultra rainbow beads consist of one size beads (~3.8 µm) with multiple fluorophores and six intensities for calibration in all channels of the flow cytometer @spherotech_calibration. 6 intensities are separated by number depending on the amount of fluorophore. Intensity 1 is blank, no fluorophore, as provided by the company @spherotech_calibration, and it is used as a negative control in the calibration calculation. Intensity 2,3,4 were used for FITC channel. During the analysis of fluorescence intensities using flow cytometry, it was observed that measured signal intensity corresponding to Intensity 5 and Intensity 6 for FITC channel has identical MFI values. This phenomenon indicates that the signals exceeded the upper detection limit of the instrument's dynamic range, resulting in detector saturation. Detector saturation occurs when fluorescence signals surpass the maximum measurable value, leading the flow cytometer to assign the highest possible value to these signals.  Once the signal reaches saturation, the measured fluorescence signal is no longer accurate and therefore should not be used as the maximum signal @Doornbos.

Consequently, it becomes impossible to distinguish between fluorescence intensities that reach saturation value. Therefore, Intensity 5 and 6 could not be included in the calibration process. On the other hand, intensity 2,3,4,5,6 were added in the calibration for PE channel because there was no saturation. 


#figure(
  image("Images/FITC_layout.png", width: 60%),
  caption: [FITC intensity vs count of ultra rainbow beads],
) <FITC_layout>

In @FITC_layout, FITC channel intensity and count of ultra rainbow beads are plotted to represent all intensities of beads. There are the first four peaks clearly seen. However, MFIs of intensity 5 and intensity 6  are the same as seen in @FITC_layout. 

#figure(
  image("Images/PE_layout.png", width: 60%),
  caption: [PE intensity vs count of ultra rainbow beads],
) <PE_layout>

In @PE_layout, the PE channel intensity and count of ultra rainbow beads are plotted to represent all intensities (except intensity 1, which corresponds to the blank) of the beads. As seen in @PE_layout, all peaks continue to increase as they should. There is no saturation effect for the PE channel. Therefore, all measured values ​​except intensity 1 were included in the calibration.


=== Calibration Graphs for All Fluorescence Channels:

In our study, calibration curves were established for two different fluorescence channels (PE and FITC) of the instrument. These calibrations were performed to convert measured signal intensities to the relative channel number and then to standardized ERF units. The calibration bead manufacturer, @spherotech_calibration, provided relative channel numbers calculated from the fluorescence intensity measurements obtained for each detection channel. Relative channel number (256CH) represents a standardized digital scale that converts continuous fluorescence signals into discrete, comparable units. This standardization is crucial for calibration because it enables the establishment of mathematical relationships between raw detected signals and standardized ERF units. The accurate conversion of MFI values to relative channel numbers is crucial for standardizing and comparing results across different experiments. Initially, our protocol employed a $10^5$ scale (equivalent to an 18-bit resolution) for this conversion. However, this approach presented limitations when analyzing high-intensity signals, as the corresponding relative channel numbers exceeded the conventional 256-channel display range. The conversion can be expressed mathematically as:



$ x = log (m)*(256 /log(2^18)) $ <eq2>


In @eq2, $x$ represents the relative channel number, and $m$ represents MFI values.
To address this technical constraint, we implemented a methodological adjustment by transitioning to a $10^7$ scale (corresponding to a 22-bit resolution), which provided an expanded dynamic range for signal detection and representation. 


$ x =log (m)*(256 /log(2^22)) $ <eq3>

This modification can be seen mathematically as in @eq3.

Slope and intercept are needed to create a calibration graph. To obtain the slope and intercept of each channel, a linear relationship between the relative channel number and logarithmic ERF value was used in  @eq4.

$ log(y) =  a.(x) + b $ <eq4>

$log(y)$: Logarithmic ERF value provided by Spherotech @spherotech_calibration

$a$: Slope of MFI values and logarithmic ERF values

$x$: Relative channel number 

$b$: Intercept of MFI values and logarithmic ERF values


A calibration graph is necessary to convert arbitrary units to ERF units. To establish this, a linear regression is first performed by fitting a straight line to the logarithmic ERF values of each bead population plotted against the corresponding channel numbers measured by APOGEE A60 Micro FCM. To then derive the ERF value from this linear equation, an exponential transformation is applied to both sides, resulting in the following equation in @eq5: 

$ 10^log(y) =  10^(a.(x) + b) $ <eq5>

After the last step in @eq6, @eq5 became:

$ y =  10^b. 10^(a.x) $ <eq6>
To express the given equation in exponential form using the natural exponential base e, we use the fact that $e^2.302585$ = 10 since $ln(10)~2.302585$. 

$ y =  10^b. e^2.302585(a.x) $ 

Using the latest equation, calibration curves were created for both the FITC channel and PE channel to calibrate APOGEE A60 Micro FCM to compare with ARC.

Linear regression equations were generated by using the slope and intercept provided below.

$R^2$ is a statistical value that explains how well the regression model fits the data. $log y$ is logarithmic ERF value and $x$ stands for the relative channel number. 

For the PE channel:

$ log y = 0.0244.x + 1.1742 $ and $R^2$ = 0.9995. 

For the FITC channel:

$ log y = 0.0284.x + (- 1.0557) $ and $R^2$ = 1.000. 


#pagebreak()
==== FITC Channel Calibration Graph

#figure(
  image("Images/FITC_exponential.png", width: 85%),
  caption: [FITC channel calibration graph],
) <FITC_calibration>

The data shown in @FITC_calibration exhibits an exponential relationship between the relative channel number and the ERF values.

The equation models this relationship 
           $ y = 0.0880 × e^(0.0654x) $ <eq10>
            
Using @eq10, the corresponding ERF value for any relative channel number can be calculated, making it possible to compare data from different experiments with standardized units.

The $R^2$ value of the model was calculated as 0.9998, indicating that the exponential curve fits the data points almost perfectly. The relative channel numbers ranged from approximately 195-245, while the corresponding FITC ERF values ​​ranged from $4×10^4-9×10^5$ on a logarithmic scale.

#pagebreak()
==== PE Channel Calibration Graph
#figure(
  image("Images/PE_Exponential.png", width: 85%),
  caption: [PE channel calibration graph],
) <PE_calibration>

As seen in @PE_calibration, exponential regression analysis performed for PE channel is presented. This graph shows the relationship between relative channel numbers and PE fluorescence intensity in ERF units.

The graph shows a significant exponential relationship between relative channel numbers and PE ERF values. 
The exponential regression model developed for the PE channel is expressed as in @eq11: 

            $ y = 14.9337 × e^(0.0561x) $ <eq11>

The $R^2$ value of the model is calculated as 0.9985, indicating that the exponential curve fits the data points well. While the relative channel numbers vary in the range of 160-245, the corresponding PE ERF values ​​vary between approximately $2×10^5-2×10^7$ on a logarithmic scale.

#pagebreak()
== Signal-to-Background Ratio and Calibration Verification
After the calibration attempt, 140 nm and 385 nm yellow beads have been measured by ARC and APOGEE A60 Micro FCM, not only for confirmation of calibration but also to determine the signal intensity versus background noise levels and coefficient of variation (CV) across PE and FITC channels. 

=== Confirmation of Calibration 
In order to confirm whether the calibration of APOGEE A60 Micro FCM with ERF is correct, 385 nm Yellow beads measurement of FITC and PE channel intensities were compared. 

#subpar.grid(
  
 figure(
    image("Images/confirmation_385nm_FITC_APOGEE.png",width:102%),
    caption:""
  ),
  figure(
    image("Images/confirmation_385nm_FITC_ARC.png"),
    caption:""
  ),
  columns: (1fr, 1fr),
  caption:  "FITC Channel Intensity for APOGEE A60 Micro FCM (a) and ARC (b)",
  label: <confirmation_Both_FITC>
)

In @confirmation_Both_FITC a and b show the measured signal intensity of FITC channel for ARC and APOGEE A60 Micro FCM measurements. While ARC gave 1075.44 ERF in the FITC channel, APOGEE A60 Micro FCM provided 52286.32 ERF, which is around 49 fold higher.

#subpar.grid(
  
 figure(
    image("Images/confirmation_385nm_PE_APOGEE.png",width:102%),
    caption:""
  ),
  figure(
    image("Images/confirmation_385nm_PE_ARC.png"),
    caption:""
  ),
  columns: (1fr, 1fr),
  caption:  "PE Channel Intensity for APOGEE A60 Micro FCM (a) and ARC (b)",
  label: <confirmation_Both_PE>
)

In @confirmation_Both_PE a and b show the measured signal intensity in the PE channel for APOGEE A60 Micro FCM and ARC measurement. ARC gave 25.99 ERF whereas APOGEE A60 Micro FCM provided 88285,26 ERF, which is 2.$10^3$ higher. 

As a result, 49-fold difference in FITC channel and 2.$10^3$-fold difference in PE channel showed that calibration of APOGEE A60 Micro FCM could not give similar results with ARC. Either calibration of ARC by Spectradyne or our calibration approach of ARC has a problem. 

=== Signal-to-Background Level Ratio of 140 nm Yellow Beads
The result of measurement for 140 nm yellow beads is represented in the FITC and PE channels. 
==== FITC Channel Measurement

#subpar.grid(
  
 figure(
    image("Images/140nm_FITC_Background_APOGEE.png",width:102%),
    caption:""
  ),
  figure(
    image("Images/140nm_FITC_Background_ARC.png"),
    caption:""
  ),
  columns: (1fr, 1fr),
  caption:  "FITC Channel Signal-to-Noise Ratio and CV Comparison",
  label: <140nm_Both_FITC_intensity>
)

In @140nm_Both_FITC_intensity, FITC channel fluorescence intensity distributions for 140nm yellow bead detection comparing (a) APOGEE A60 Micro FCM and (b) ARC systems. Density plots display signal populations (purple) and background noise (blue), along with corresponding performance metrics, including signal-to-noise ratios, coefficient of variation, and particle counts.

ARC demonstrated signal discrimination in the FITC channel with an S/N ratio of 8.41 compared to 1.45 as an S/N ratio for APOGEE A60 Micro FCM, representing a 5.8-fold advantage in signal discrimination capability. However, in the PE channel, ARC achieved an S/N ratio of 1.77, while APOGEE A60 Micro FCM showed a ratio of 1.18.

The ARC system demonstrates measurement precision with a coefficient of variation of 16.4%, compared to 24.3% CV for APOGEE A60 Micro FCM. This 1.5-fold improvement in precision indicates more consistent fluorescence measurements.


==== PE Channel Measurement

#subpar.grid(
  
 figure(
    image("Images/140nm_PE_Background_PE_APOGEE.png"),
    caption:""
  ),
  figure(
    image("Images/140nm_PE_Background_ARC.png", width:101%),
    caption:""
  ),
  columns: (1fr, 1fr),
  caption:  "PE Channel Signal-to-Noise Ratio and C Comparison ",
  label: <140nm_Both_PE_intensity>
)

In @140nm_Both_PE_intensity, PE channel fluorescence intensity distributions for 140nm yellow beads detection comparing (a) APOGEE A60 Micro FCM and (b) ARC systems. Density plots display signal populations (purple) and background noise (blue), along with corresponding performance metrics, including signal-to-noise ratios, coefficient of variation, and particle counts.

ARC achieved an S/N ratio of 1.77, while the APOGEE system recorded 1.18. APOGEE A60 Micro FCM demonstrated excellent measurement precision with a CV of 9.5%. Conversely, ARC exhibited compromised precision, with a coefficient of variation (CV) of 19.0%. 


=== Signal-to-Background Level Ratio of 385 nm Yellow Beads

==== FITC Channel Measurement

#subpar.grid(
  
 figure(
    image("Images/385nm_FITC_Background_APOGEE.png"),
    caption:""
  ),
  figure(
    image("Images/385nm_FITC_Background_ARC.png"),
    caption:""
  ),
  columns: (1fr, 1fr),
  caption:  "FITC Channel Signal-to-Noise Ratio and CV Comparison",
  label: <385nm_Both_FITC_intensity>
)

In @385nm_Both_FITC_intensity, density plots showing fluorescence intensity distributions for (a) APOGEE A60 Micro FCM and (b) ARC systems. Density plots show signal populations (purple) and background noise (blue) with corresponding performance metrics including signal-to-noise ratios, coefficient of variation, and particle counts.
ARC achieved an S/N ratio of 42.92, while APOGEE A60 Micro FCM recorded 36.92. ARC demonstrated 16% superior signal discrimination capability. APOGEE A60 Micro FCM exhibited a CV of 9.358%, compared to a CV of 65.793% for ARC. APOGEE A60 Micro FCM demonstrated 7-fold better measurement precision. 

#pagebreak()
==== PE Channel Measurement

#subpar.grid(
  
 figure(
    image("Images/385nm_PE_Background_APOGEE.png", width:104%),
    caption:""
  ),
  figure(
    image("Images/385nm_PE_Background_ARC.png", width:97%),
    caption:""
  ),
  columns: (1fr, 1fr),
  caption:  "PE Channel Signal-to-Noise Ratio and CV Comparison",
  label: <385nm_Both_PE_intensity>
)

In @385nm_Both_PE_intensity, density plots showing fluorescence intensity distributions for (a) ARC and (b) APOGEE A60 Micro FCM. Performance metrics include signal-to-noise ratios and coefficient of variation percentages.

ARC achieved an S/N ratio of 21.71, while APOGEE A60 Micro FCM recorded 5.52. ARC demonstrated 25.42 % superior signal discrimination capability. APOGEE A60 Micro FCM exhibited a CV of 11.262%, compared to a CV of 261.683% for ARC. APOGEE A60 Micro FCM demonstrated 23-fold better measurement precision.



== Determination of Detectable Signal Range of Fluorescence Channel
In this study, the Dynamic Detection Range (DNR) was initially considered as a key performance parameter for the ARC system. 500 nm nanorainbow beads, which display three distinct fluorescence intensity populations and a blank as supplied by Cellarcus @cellarcus_website, were analyzed on both ARC and APOGEE A60 Micro FCM. The goal was to assess whether both instruments could resolve the three expected bead populations, thereby providing a measure of dynamic range and resolution. Since three distinct fluorescence intensity populations could not be resolved in the ARC system, the minimum and maximum intensity values were calculated using the entire dataset for both the ARC and APOGEE A60 Micro FCM systems. 

To statistically identify and characterize distinct fluorescent bead populations in our data, we applied the Gaussian Mixture Model (GMM). GMM is a probabilistic method that assumes the dataset originates from a combination (mixture) of several Gaussian (normal) distributions @GMM. This approach can be well-suited to flow cytometry, where multiple bead or cell populations typically present as overlapping, log-normally distributed intensity peaks. Fitting the data in log-space improves the ability of GMM to decompose and quantify these populations correctly @GMM. GMM not only identifies the mean intensity (position) of each population but also quantifies the spread (CV) and the proportion (weight) of each population, providing a quantitative evaluation of system performance @GMM.

#pagebreak()

=== FITC Channel Measurement

#subpar.grid(
  
 figure(
    image("Images/gaussian_FITC_APO.png"),
    caption:""
  ),
  figure(
    image("Images/gaussian_FITC_ARC.png", width: 103%),
    caption:""
  ),
  columns: (1fr, 1fr),
  caption: "Gaussian Mixture Model Fit Analysis for FITC channel a) APOGEE A60 Micro FCM and b) ARC measurement",
  label: <gaussian_FITC>
)

In @gaussian_FITC, FITC channel intensity is shown in the density plot for both devices. APOGEE A60 Micro FCM detection of 95,916 particles in the FITC channel is 415 times greater than ARC detection of 231 particles in the same channel. In @gaussian_FITC a, APOGEE A60 Micro FCM detected three different peaks with high $R^2$ values in the GMM fit (0.944 for FITC). On the other hand, due to the very low number of detected particles (231), it is unclear whether the events detected by ARC represent one or three distinct populations as seen @gaussian_FITC b. 

ARC detected far fewer particles (231 in FITC), making it unclear whether the detected events reflect distinct bead populations. The resulting GMM fits on ARC data are considered "hypothetical" in this context, as the low event count prevents robust statistical separation of actual populations. Consequently, the GMM fit of ARC yielded poorer $R^2$ values (0.561 for FITC), indicating lower signal resolution and less reliable population discrimination. This was visually apparent in the fitted density plots (@gaussian_FITC), where distinct peaks were not clearly resolved as they were for APOGEE A60 Micro FCM.

Therefore, @gaussian_FITC also represents the GMM fit function analysis of the FITC channel for ARC and APOGEE A60 Micro FCM. Analyses of the ARC system are "hypothetical" suggesting that these peaks might represent theoretical positions rather than actual detected populations.  
The lower $R^2$ value for the ARC system (0.561) compared to the APOGEE A60 Micro FCM system (0.944) further demonstrates poorer signal resolution and fitting quality. 

#pagebreak()
=== PE Channel Measurement
#subpar.grid(
  
 figure(
    image("Images/gaussian_PE_APO.png",width:100%),
    caption:""
  ),
  figure(
    image("Images/gaussian_PE_ARC.png",width:100%),
    caption:""
  ),
  columns: (1fr, 1fr),
  caption:  "Gaussian Mixture Model Fit Analysis PE channel a) APOGEE A60 Micro FCM and b) ARC measurement",
  label: <gaussian_PE>
)
@gaussian_PE shows measured PE signal intensity for APOGEE A60 Micro FCM and ARC. As in the FITC channel, APOGEE A60 Micro FCM detected a higher number of particles (115,565) in the PE channel than ARC measured (255). GMM fit analysis is also provided to create hypothetical peaks because ARC could not detect three separate peaks. In contrast, APOGEE A60 Micro FCM provided three clear peaks in the PE channel. 

A comparison between the CV values of the hypothetical peaks of ARC and the peaks observed with APOGEE A60 Micro FCM reveals that APOGEE A60 Micro FCM produces more accurate results. 

The $R^2$ value for the ARC system (0.784) is lower compared to the APOGEE A60 Micro FCM system (0.930), which can be attributed to poorer signal resolution and fitting quality.

#figure(
  image("Images/Nano_values_ARC_apogee.png", width: 85%),
  caption: "Maximum and Minimum signal ratio for ARC and Apogee A60 Micro"
)  <Nano_values>

@Nano_values presents the fluorescence detection ranges (minimum/maximum values) for PE and FITC channels on APOGEE A60 Micro FCM and ARC instruments. The maximum/minimum ratio provides a calibration-independent comparison metric for signal detection capabilities.

APOGEE A60 Micro FCM demonstrates superior PE channel performance with a wider signal range (58.192 vs. 44.673), while ARC shows better FITC channel coverage (65.553 vs. 33.447). 

== Comparative EV Concentration Measurements using Fluorophore Conjugated Antibodies
In this study, the fluorescent properties of CD235a-PE-labeled EVs in the PE channel were compared using two different analysis platforms: ARC and APOGEE A60 Micro FCM instruments. The relationship between fluorescence intensity and particle size was studied in both instruments.
#subpar.grid(
  
 figure(
    image("Images/labelledEV_PE_APOGEE.png",width:94%),
    caption:""
  ),
  figure(
    image("Images/LabelledEV_PE_ARC.png",width:94%),
    caption:""
  ),
  columns: (1fr, 1fr),
  caption: "PE Fluorescence Channel vs Diameter (nm) for APOGEE A60 Micro FCM and ARC",
  label: <scatter_PE>
)
@scatter_PE(a) represents measurement of APOGEE A60 Micro FCM and @scatter_PE(b) for ARC measurement. Blue dots indicate the positivity of labelled EV with CD235a-PE, and purple dots represent background noise. Background noise threshold of APOGEE A60 Micro FCM is 19333.386 ERF, and of ARC is 1.205 ERF. Signal intensity of PE with APOGEE A60 Micro FCM is in the range around $10^4-10^6$ ERF. On the other hand, the signal intensity of PE with ARC ranges from 1.205 to 21 ERF.

#figure(
  image("Images/APOGEE.png", width: 80%),
  caption: [Particle Size Distribution of Labelled EV with CD235aPE and Total EV],
) <PSD_EV_APOGEE>

@PSD_EV_APOGEE represents the particle size distribution of EVs from the APOGEE A60 Micro FCM measurement. Blue bars correspond to the total particles, and red bars represent labelled EV. Particle size distribution was observed in the range of 100-600 nm. Total detected particles are 415,620. Black dashed line marks the particle radius where the measured EV concentration starts to decline. 47.7% of EV particles are labelled with CD235a-PE and 52.3% stand for unlabelled particles. Almost half of the total EV particles were detected as labelled EVs, as indicated by CD235aPE.


#figure(
  image("Images/ARC._1png.png", width: 80%),
  caption: [Particle Size Distribution of Labelled EV with CD235aPE and Total EV],
) <PSD_EV_ARC>

@PSD_EV_ARC represents the particle size distribution of EVs measured using ARC. Red bars indicate labelled EV, while blue bars represent total particles. 
Black dashed line shows the particle radius at which the recorded EV concentration begins to drop. The distribution of particle sizes was found to be between 75 and 250 nm, limited by the detection range of the cartridge (C400) used. On the 2,334 particles were found in total.  78.4% of all particles are unlabelled, whereas 21.6% of all particles have labelled EV with CD235a-PE.  

If labeling is 100% efficient and all particles are erythrocyte-derived EVs, then every particle should be labeled with CD235a. However, as EVs become smaller, the proportion of labeled particles decreases in the APOGEE A60 Micro measurement in @PSD_EV_APOGEE. This decline has two possible causes: 

- First, the fluorescence detector loses sensitivity at lower intensities, which can be checked by comparing fluorescence intensity at the deviation point to the detector gate threshold.

- Second, the sample may naturally contain fewer labeled particles below a certain size. 

The second theory is not valid because ARC shows that particles as small as 154 nm are still labelled in @PSD_EV_ARC. Therefore, the threshold differences are primarily caused by the detection sensitivity limits of each instrument, rather than biological sample changes. 


#figure(
  image("Images/Total_Both.png", width: 80%),
  caption: [Total particle size distribution for both devices],
) <total_both>

The measured concentrations of total EV particles with both devices can be seen in  @total_both. Blue bars are for APOGEE A60 Micro FCM, and red bars are ARC measurements. Total particle concentration is $1,46.10^8$ mL-1 for APOGEE A60 Micro FCM and $1,3.10^6$ mL-1. There is approximately a 10-fold difference between the two devices. 

#figure(
  image("Images/Label_Both.png", width: 80%),
  caption: [Labelled EV particle size distribution for both devices],
) <label_both>

Measured concentrations of labelled EV particles with CD235a-PE are shown for both devices in @label_both. APOGEE A60 Micro FCM measured 6,96.$10^7$ mL-1 and ARC measured $8,66.10^6$ mL-1. There is approximately a 10-fold difference between the two devices. 

= Discussion

In this study, the ARC particle analyzer was investigated concerning its sensitivity, precision, and accuracy in detecting EVs from an outdated erythrocyte blood bank concentrate sample. The obtained data were compared with those from the APOGEE A60 Micro FCM. The results reveal differences in particle detection in terms of sensitivity, precision, and accuracy, between the two devices. 

== Calibration Challenges:

We initially attempted to establish a common calibration framework for ARC using MESF units to enable direct comparison across platforms. Since we needed a particle within the detection range of ARC, 200 nm polystyrene beads (@Coating) labeled with PE were required. However, such beads were not commercially available, so we attempted to coat them ourselves. This effort was unsuccessful, as the PE-coated beads showed only a 26% increase in signal compared to uncoated beads. This result indicates inadequate conjugation efficiency. Due to the technical limitation, we were forced to adopt an alternative calibration strategy.

Calibration of the APOGEE A60 Micro FCM with the ERF unit was a new approach that allowed for direct comparison of both devices. 
We followed calibration sheet provided @spherotech_calibration to calibrate APOGEE A60 Micro FCM with ERF units. The exponential fit yielded $R^2$ values of 0.9998 for the FITC channel and 0.9985 for the PE channel. $R^2$ value numerically summarizes how well the model fits the measured data.

Instruments should have a similar order of magnitude for identical standardized particles if their calibration has worked correctly. Yellow beads were used to verify the accuracy of the calibration, and significant discrepancies were observed. The FITC channel showed 49-fold difference between instruments. On the other hand, PE channel exhibited a $3.10^3$-fold difference. The finding suggests that either the APOGEE A60 Micro FCM calibration procedure or the manufacturer-provided ARC calibration contains systematic errors.

Determining which instrument was correctly calibrated required measuring the same reference standards on both platforms. Standard calibration beads (ultra rainbow beads) measure 3.8 μm in diameter; however, the ARC system can only analyze particles up to 2 μm in diameter. The detectable size range of ARC prevented definitive calibration verification and represented a significant limitation for establishing cross-platform standards. 

== Fluorescence Detection Performance

=== 140 nm Yellow Beads 

ARC demonstrated superior signal discrimination in the measurement of 140 nm yellow beads in the FITC channel. ARC achieved a signal-to-noise ratio of 8.41 compared to APOGEE A60 Micro FCM’s 1.45 — a 5.8-fold improvement. In this channel, ARC also demonstrated superior measurement precision, with a CV of 16.4% as opposed to 24.3% for APOGEE A60 Micro FCM. However, PE channel measurements showed different patterns. Even though both instruments obtained similar signal-to-noise ratios, APOGEE A60 Micro FCM demonstrated better precision with a CV of 9.5% compared to a CV of 19.0% for ARC. ARC may be optimized for green fluorescence detection, which could provide advantages for detecting dimly labeled EVs with FITC fluorophore.   
=== 385 nm Yellow Beads

The performance dynamics changed dramatically when analyzing larger particles. Although ARC maintained superior signal-to-noise ratios in both channels by showing 16% better performance in FITC channel and almost 4-fold improvement in PE channel, its measurement precision deteriorated significantly. In summary, the APOGEE A60 Micro FCM significantly outperformed the ARC in terms of precision. Moreover, APOGEE A60 Micro FCM shows  CV values approximately 7-fold lower in FITC and 23-fold lower in PE. 

In @385nm_Both_FITC_intensity and @385nm_Both_PE_intensity showed that 385 nm yellow beads were detected as if the beads had two populations. Since APOGEE A60 Micro FCM only displays one population of 385 nm yellow beads, ARC detects them as a separate population. This suggests that ARC may have a higher sensitivity to detect photo-bleached, damaged, or dim beads that fall below the APOGEE A60 Micro FCM detection threshold, or that poor optical alignment may cause some beads to be measured with artificially lower fluorescence. 

== Dynamic Range and Population Resolution

Characterization of nanorainbow beads revealed a significant difference between the two instruments in signal and population separation. APOGEE A60 Micro FCM was 415-fold more sensitive, detecting 95,916 particles in the FITC channel versus a mere 231 particles by ARC. Similarly, ARC detected only 255 particles in the PE channel, and APOGEE A60 Micro FCM detected 115,565 particles. This comparison suggests that ARC may have poor sensitivity in detecting particles. Additionally, the ability of a fluorescence detection system to resolve different signals is also a critical performance test. 

One of the requirements for fluorescence-based particle analysis is the ability to resolve distinct fluorescent populations. Nanorainbow beads have three populations with different fluorescence intensities. APOGEE A60 Micro FCM successfully resolved all three distinct bead populations with high $R^2$ values (0.944, FITC channel and 0.930 PE channel) in GMM fit analysis. On the other hand, ARC did not resolve the three populations, given the low number of detected particles (231 and 255 in FITC and PE, respectively), which made it unclear whether the detected events represented one or multiple populations. 

GMM fit analysis for ARC exhibited much lower $R^2$ values (0.561), meaning poor resolution and fitting quality for the signal. This limitation implies ARC may have insufficient sensitivity or dynamic range to discriminate between fluorescence populations with subtle intensity differences.

== Biological EV Analysis

In this study, we evaluated EVs labeled with CD235a-PE and measured in the PE channel, to compare the fluorescent properties of EVs between ARC and APOGEE A60 MICRO FCM. 

The total particle detection comparison revealed disparities between the two instruments. APOGEE A60 Micro FCM detected a total of 415,620 particles whereas ARC identified only 2,334. APOGEE A60 Micro FCM detected 178 times more particles than ARC. One possible reason for this discrepancy is that ARC uses a specialized microfluidic cartridge, C400, for EV measurement. C400 allows particles in the 65 nm to 400 nm size range to pass through. Therefore, many particles may be excluded if they fall outside this size range. This variation became even more pronounced when examining the proportion of fluorescently labeled populations.

APOGEE A60 Micro FCM successfully identified 198,383 CD235a-positive EVs, corresponding to 47.7% of the total particle population, while ARC detected only 505 labeled EVs, representing 21.6% of its total count. This 393-fold difference in labeled EV detection reflects fundamental differences in fluorescence sensitivity between the platforms.

Assuming all particles in the sample are erythrocyte-derived EVs and that the labeling is 100% efficient, we would expect all particles to be labeled with CD235a. However, as the size of the EVs decreases, there is a point where the concentration of labeled EVs begins to drop relative to the total EV count. This drop, defined as when the labeled EV concentration deviates, could be attributed to two possible explanations. 

First, the fluorescence detector may lose sensitivity at lower intensities, which can be assessed by comparing the fluorescence intensity at the point of deviation to the threshold applied in the corresponding fluorescence detector gate. Second, there could be fewer labeled particles below a specific diameter in the sample itself. However,  ARC results showing that particles down to approximately 154 nm are still labeled. The second explanation appears not correct. Therefore, the observed threshold differences primarily reflect the detection sensitivity limitations of each instrument rather than biological variations in the sample. 

In conclusion, APOGEE A60 Micro FCM is less sensitive than ARC. Because APOGEE A60 Micro FCM can measure labelled EV greater than 257 nm, whereas ARC can still detect labelled EV smaller than 257 nm. APOGEE A60 FCM Micro FCM loses sensitivity below 257 nm. However, for particles smaller than 150 nm, it remains unclear whether the lower numbers are due to diminished labeling efficiency or a further loss of sensitivity by ARC at these smaller sizes, as the number of detected particles becomes very low and not all EVs may be labeled.

Despite analyzing the same labelled EV with CD235aPE particle, the two devices reported divergent EV concentrations. The only difference between the measurements of both devices was pre-dilution factor (24-fold for APOGEE A60 Micro FCM, 11-fold ARC) of EV sample.

Total EV concentrations measured $1.46×10^8$ mL-1 by APOGEE A60 Micro FCM compared to $1.3×10^6$ mL-1 by ARC, while labeled EV concentrations were $6.96×10^7$ mL-1 and $8.66×10^6$ mL-1, respectively. Differences highlight the critical importance of understanding instrument capabilities when measuring  EVs quantitatively.


= Conclusions

Our comprehensive comparison demonstrates that APOGEE A60 Micro FCM significantly outperforms ARC Particle Analyzer for fluorescent EV detection across all critical performance parameters (precision, sensitivity, and reliability). APOGEE A60 Micro FCM includes 178 times higher number of particles detected. The measurement precision of the APOGEE A60 Micro FCM is consistently below 25% CV, compared to the CV values of ARC, which reached 262%. Resolution of multiple fluorescence populations has been achieved by APOGEE A60 Micro FCM, whereas ARC could not. 

ARC can detect labelled EV particles bigger than 154 nm, while APOGEE A60 Micro FCM measures labelled EV particles bigger than 257 nm. Therefore, ARC is more sensitive in detecting EV particles, specifically those smaller than 257 nm, which is the limit of APOGEE A60 Micro in detecting labelled EV.  As a result of this study, the sensitivity limit of ARC for smaller EV particles, smaller than 154 nm, could not be determined due to a low number of counts. In the future, ARC should be combined with another instrument to verify whether ARC can detect particles smaller than 154 nm in EVs.

Although ARC demonstrated limited advantages in FITC channel sensitivity for 140 nm yellow beads (a 5.8-fold better signal-to-noise ratio), poor measurement precision (high CV values), and a dramatically lower number of detected particles overshadowed its superior performance against APOGEE A60 Micro FCM. ARC requires substantial technological improvements before it can compete with current standards for detecting and differentiating fluorescent EVs from non-EV particles.  Future development efforts should focus on enhancing detection sensitivity, improving measurement precision across all particle sizes, and expanding the detectable size range to encompass all biologically relevant EV populations. 

Until these improvements are made, the use of the ARC system in EV detection will be limited to some specialized regions where microfluidic resistive pulse sensing and fluorescence extension offer advantages over traditional methods. 

= User Experience and Evaluation of the ARC Instrument

The ARC instrument offers several user-friendly advantages. Its straightforward start-up and shutdown procedures save time and streamline workflow. Data analysis occurs in real-time during measurements, thereby reducing the overall workload. The system is also equipped with a feature that automatically discards acquisitions if cartridge blockages or poor signal quality are detected. This feature prevents invalid data from being included. Additionally, the live results section enables users to monitor measurement signals in real-time, allowing the user to enhance decision-making.
The ARC system also has several limitations. The instrument uses single-use cartridges, and the quality can be inconsistent, particularly with C900 (130–900 nm) cartridges. During acquisition, the laser may stop unexpectedly, and these incomplete runs are still saved as valid data. If a laser malfunction occurs, the entire acquisition must be repeated from the beginning. This problem can be problematic if sample volume is limited. Therefore, all potential issues should be carefully considered when working with precious or limited samples.


#bibliography(("References.bib", "References2.bib"))


