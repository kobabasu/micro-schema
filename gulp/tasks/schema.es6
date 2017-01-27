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
     * tables:pdf
     */
    const tables = {
      pdf: {
        src:   dir.tables.pdf.src,
        build: dir.tables.pdf.build
      },
      html: {
        src:   dir.tables.html.src,
        css:   dir.tables.html.css
      }
    };

    gulp.task(prefix + 'schema:tables:pdf', shell.task([`
      source ${dir.root}concat.sh; \
      fop -c ${tables.pdf.src}fop.xconf -xml ${dir.root}mysqldump.xml \
      -xsl ${tables.pdf.src}index.xsl -pdf ${tables.pdf.build}masters.pdf;
    `]));

    /*
     * tables:pdf:open
     */
    gulp.task(prefix + 'schema:tables:pdf:open', shell.task([`
      open ${tables.pdf.build}tables.pdf;
    `]));

    /*
     * tables:pdf:watch
     */
    gulp.task(prefix + 'schema:tables:pdf:watch', () => {
      gulp
        .watch(
          [tables.pdf.src],
          gulp.series(prefix + 'schema:tables:pdf')
        ).on('error', err => process.exit(1));
    });

    /*
     * tables:pdf:build
     */
    gulp.task(prefix + 'schema:tables:build',
      gulp.series(
        prefix + 'schema:tables:pdf',
        prefix + 'schema:tables:pdf:open'
    ));


    /*
     * masters:pdf
     */
    const masters = {
      pdf: {
        src:   dir.masters.pdf.src,
        build: dir.masters.pdf.build
      },
      html: {
        src:   dir.masters.html.src,
        css:   dir.masters.html.css
      }
    };

    gulp.task(prefix + 'schema:masters:pdf', shell.task([`
      source ${dir.root}concat.sh; \
      fop -c ${masters.pdf.src}fop.xconf -xml ${dir.root}mysqldump.xml \
      -xsl ${masters.pdf.src}index.xsl -pdf ${masters.pdf.build}masters.pdf;
    `]));

    /*
     * masters:pdf:open
     */
    gulp.task(prefix + 'schema:masters:pdf:open', shell.task([`
      open ${masters.pdf.build}masters.pdf;
    `]));

    /*
     * masters:pdf:watch
     */
    gulp.task(prefix + 'schema:masters:pdf:watch', () => {
      gulp
        .watch(
          [masters.pdf.src],
          gulp.series(prefix + 'schema:masters:pdf')
        ).on('error', err => process.exit(1));
    });

    /*
     * masters:pdf:build
     */
    gulp.task(prefix + 'schema:masters:build',
      gulp.series(
        prefix + 'schema:masters:pdf',
        prefix + 'schema:masters:pdf:open'
    ));
  }
};

module.exports = new Manual();
