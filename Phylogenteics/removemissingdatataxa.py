#!/usr/bin/env python3 

import argparse # Parse arguments
import Bio
from Bio import SeqIO

parser = argparse.ArgumentParser(description='Script to remove taxa with less than a minimum missing data threshold.')
parser.add_argument('input_file', action='store', help='Name of the desired input file.')
parser.add_argument('output_file', action='store', help='Name of the desired output file.')
parser.add_argument('missing_percent', action='store', help='Name of the desired output file.')
args = parser.parse_args()

try:
	inputfile = open(args.input_file, 'r')
	first_line = inputfile.readline()
	if first_line.find(">") != -1: # Returns -1 if this character is not found
		filetype = "fasta"
	else:
		filetype = "phylip-relaxed"
except:
	print("Could not find file: {0}.".format(args.input_file))

inputfile = open(args.input_file, 'r')
outputfile = open(args.output_file, 'w+')
missingdata = args.missing_percent

BaseNumbers = {}
sequences = []

for record in SeqIO.parse(inputfile, filetype):
	for base in ('-', 'N', '?'):
		BaseNumbers[base] = record.seq.count(base)
	missing = (BaseNumbers['-'] + BaseNumbers['N'] + BaseNumbers['?'])/len(record.seq)
	if missing <= float(missingdata): # Only write if less missing data than or equal to threshold
		sequences.append(record)
			
SeqIO.write(sequences, outputfile, "fasta")
		

