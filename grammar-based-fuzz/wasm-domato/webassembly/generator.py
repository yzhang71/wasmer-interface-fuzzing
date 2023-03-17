from __future__ import print_function
import os
import random
import sys

parent_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), os.pardir))
sys.path.append(parent_dir)
from grammar import Grammar

_N_MAIN_LINES = 20

def generate_wasm_code(wasmgrammar, num_lines):
    wasm = ''
    wasm += '//beginwasm\n'
    wasm += wasmgrammar._generate_code(num_lines)
    wasm += '\n//endwasm\n'
    return wasm

def GenerateNewSample(template, wasmgrammar):
    result = template

    while '<wasmfuzzer>' in result:
        num_lines = _N_MAIN_LINES
        result = result.replace(
            '<wasmfuzzer>',
            generate_wasm_code(wasmgrammar, num_lines),
            1
        )

    return result

def generate_samples(grammar_dir, outfiles):
    f = open(os.path.join(grammar_dir, 'template.wat'))
    template = f.read()
    f.close()

    wasmgrammar = Grammar()
    err = wasmgrammar.parse_from_file(os.path.join(grammar_dir, 'wasm.txt'))
    if err > 0:
        print('There were errors parsing grammar')
        return

    for outfile in outfiles:
        result = GenerateNewSample(template, wasmgrammar)

        if result is not None:
            print('Writing a sample to ' + outfile)
            try:
                f = open(outfile, 'w')
                f.write(result)
                f.close()
            except IOError:
                print('Error writing to output')

def get_option(option_name):
    for i in range(len(sys.argv)):
        if (sys.argv[i] == option_name) and ((i + 1) < len(sys.argv)):
            return sys.argv[i + 1]
        elif sys.argv[i].startswith(option_name + '='):
            return sys.argv[i][len(option_name) + 1:]
    return None

def main():
    fuzzer_dir = os.path.dirname(__file__)

    multiple_samples = False

    for a in sys.argv:
        if a.startswith('--output_dir='):
            multiple_samples = True
    if '--output_dir' in sys.argv:
        multiple_samples = True

    if multiple_samples:
        print('Running on ClusterFuzz')
        out_dir = get_option('--output_dir')
        nsamples = int(get_option('--no_of_files'))
        print('Output directory: ' + out_dir)
        print('Number of samples: ' + str(nsamples))

        if not os.path.exists(out_dir):
            os.mkdir(out_dir)

        outfiles = []
        for i in range(nsamples):
            outfiles.append(os.path.join(out_dir, 'fuzz-' + str(i).zfill(5) + '.html'))

        generate_samples(fuzzer_dir, outfiles)

    elif len(sys.argv) > 1:
        outfile = sys.argv[1]
        generate_samples(fuzzer_dir, [outfile])

    else:
        print('Arguments missing')
        print("Usage:")
        print("\tpython generator.py <output file>")
        print("\tpython generator.py --output_dir <output directory> --no_of_files <number of output files>")

if __name__ == '__main__':
    main()
