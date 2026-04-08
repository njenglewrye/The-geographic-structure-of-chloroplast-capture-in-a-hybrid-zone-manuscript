# The geographic structure of chloroplast capture in a hybrid zone 

## Niche reconstructions
* This directory contains scripts and data for ancestral niche reconstructions. This is a local version of the utremi package ([https://github.com/ryanafolk/utremi]) with modifications for multivariate analysis.
*	See README.md in [https://github.com/ryanafolk/utremi] for detailed instructions.
  
## Phylogenetics
* This directory contains scripts and files for phylogenetic analysis. This includes: 
-	`spruceup_config`: Configuration file for spruceup ([https://github.com/marekborowiec/spruceup]).
-	`tanglegram`: Scripts, data, and results for nuclear, chloroplast, and mitochondria tanglegrams. The subfolders give input mitochondrial and chloroplast files, as well as figure output.
-	`trees`: Directory containing labeled subdirectories with phylogeny files and figure outputs.	The Nuclear Astral trees/nick_final_spruceup subdirectory also contains a renaming script for raw tree files.
-	`references`: Assembly references for plastid and nuclear data. (Mitochondrial assembly followed the published reference.)
The remaining files are scripts, to be followed in numerical order.

## Niche modeling
*	This directory contains scripts and output for presence absence matrices and species richness.
*	`wgsrpd-master`:	A local copy of GIS data for manipulating Kew Gardens POWO data. See README.md within for details and instructions.
The remaining scripts and files are for niche modeling for the extant taxa. Use numbered scripts in numerical order; other files are either dependencies that should not be rerun directly, or metadata files that are called in the numbered scripts.
