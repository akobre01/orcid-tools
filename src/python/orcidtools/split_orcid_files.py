import argparse
import os


if __name__ == '__main__':
    parser = argparse.ArgumentParser(
        description='Split orchid records into groups of 100k')
    parser.add_argument('indir', type=str, help='Input directory.')
    parser.add_argument('outdir', type=str, help='Output directory.')
    args = parser.parse_args()

    indir = args.indir
    outdir = args.outdir

    filenames = []
    next_f = 0
    for f in os.scandir(indir):
        filenames.append(os.path.abspath(f))
        if len(filenames) == 100000:
            with open('%s/orcid-%d.json' % (outdir, next_f), 'w') as outf:
                outf.write('%s\n' % '\n'.join(filenames))
            print('%d' % (next_f * 100000))
            next_f += 1
            filenames = []
    with open('%s-%d' % (outdir, next_f), 'w') as outf:
        outf.write('%s\n' % '\n'.join(filenames))
    print('[done.]')
