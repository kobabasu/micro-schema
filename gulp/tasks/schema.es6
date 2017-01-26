'use strict';

import gulp from 'gulp';
import DefaultRegistry from 'undertaker-registry';
import shell from '/usr/local/lib/node_modules/gulp-shell';

import { dir } from '../dir.es6';

class Manual extends DefaultRegistry {

  init() {
    // task名の接頭辞を設定
    let prefix = (dir.name == '') ? '' : dir.name + ':';

    /*
     * pdf
     */
    const pdf = {
      root:    dir.root,
      src:     dir.tables.pdf.src,
      build:   dir.tables.pdf.build
    };

    gulp.task(prefix + 'schema:tables:pdf', shell.task([`
      source ${pdf.root}concat.sh; \
      fop -c ${pdf.src}fop.xconf -xml ${pdf.root}mysqldump.xml \
      -xsl ${pdf.src}index.xsl -pdf ${pdf.build}tables.pdf;
    `]));


    /*
     * pdf open
     */
    gulp.task(prefix + 'schema:tables:pdf:open', shell.task([`
      open ${pdf.build}tables.pdf;
    `]));


    /*
     * pdf watch
     */
    gulp.task(prefix + 'schema:tables:pdf:watch', () => {
      gulp
        .watch(
          [pdf.src],
          gulp.series(prefix + 'schema:tables:pdf')
        ).on('error', err => process.exit(1));
    });


    /*
     * build
     */
    gulp.task(prefix + 'schema:tables:build',
      gulp.series(
        prefix + 'schema:tables:pdf',
        prefix + 'schema:tables:pdf:open'
    ));
  }
};

module.exports = new Manual();
