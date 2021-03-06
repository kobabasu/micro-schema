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
     * schema:concat
     */
    const concat = {
      cnf: dir.concat.cnf,
      xml: dir.concat.xml
    };

    gulp.task(prefix + 'schema:concat', shell.task([`
      sed -i '' -e 's/<\\/mysqldump>//g' ${concat.xml}; \
      grep 'config.xml' -n ${concat.xml} | sed -e 's/:.*//g' | \
      xargs -I% sed -i '' -e '%,$d' ${concat.xml}; \
      cat ${concat.cnf} >> ${concat.xml}; \
      sed -i '' -e '$s/$/<\\/mysqldump>/g' ${concat.xml};
    `]));


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
      fop -c ${dir.root}fop.xconf -xml ${dir.root}mysqldump.xml \
      -xsl ${tables.pdf.src}index.xsl -pdf ${tables.pdf.build}tables.pdf;
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
          gulp.series(
            prefix + 'schema:concat',
            prefix + 'schema:tables:pdf'
          )
        ).on('error', err => process.exit(1));
    });

    /*
     * tables:pdf:build
     */
    gulp.task(prefix + 'schema:tables:build',
      gulp.series(
        prefix + 'schema:concat',
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
      fop -c ${dir.root}fop.xconf -xml ${dir.root}mysqldump.xml \
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
          gulp.series(
            prefix + 'schema:concat',
            prefix + 'schema:masters:pdf'
          )
        ).on('error', err => process.exit(1));
    });

    /*
     * masters:pdf:build
     */
    gulp.task(prefix + 'schema:masters:build',
      gulp.series(
        prefix + 'schema:concat',
        prefix + 'schema:masters:pdf',
        prefix + 'schema:masters:pdf:open'
    ));


    /*
     * views:pdf
     */
    const views = {
      pdf: {
        src:   dir.views.pdf.src,
        build: dir.views.pdf.build
      },
      html: {
        src:   dir.views.html.src,
        css:   dir.views.html.css
      }
    };

    gulp.task(prefix + 'schema:views:pdf', shell.task([`
      fop -c ${dir.root}fop.xconf -xml ${dir.root}mysqldump.xml \
      -xsl ${views.pdf.src}index.xsl -pdf ${views.pdf.build}views.pdf;
    `]));

    /*
     * views:pdf:open
     */
    gulp.task(prefix + 'schema:views:pdf:open', shell.task([`
      open ${views.pdf.build}views.pdf;
    `]));

    /*
     * views:pdf:watch
     */
    gulp.task(prefix + 'schema:views:pdf:watch', () => {
      gulp
        .watch(
          [views.pdf.src],
          gulp.series(
            prefix + 'schema:concat',
            prefix + 'schema:views:pdf'
          )
        ).on('error', err => process.exit(1));
    });

    /*
     * views:pdf:build
     */
    gulp.task(prefix + 'schema:views:build',
      gulp.series(
        prefix + 'schema:concat',
        prefix + 'schema:views:pdf',
        prefix + 'schema:views:pdf:open'
    ));


    /*
     * procedures:pdf
     */
    const procedures = {
      pdf: {
        src:   dir.procedures.pdf.src,
        build: dir.procedures.pdf.build
      },
      html: {
        src:   dir.procedures.html.src,
        css:   dir.procedures.html.css
      }
    };

    gulp.task(prefix + 'schema:procedures:pdf', shell.task([`
      fop -c ${dir.root}fop.xconf -xml ${dir.root}mysqldump.xml \
      -xsl ${procedures.pdf.src}index.xsl -pdf ${procedures.pdf.build}procedures.pdf;
    `]));

    /*
     * procedures:pdf:open
     */
    gulp.task(prefix + 'schema:procedures:pdf:open', shell.task([`
      open ${procedures.pdf.build}procedures.pdf;
    `]));

    /*
     * procedures:pdf:watch
     */
    gulp.task(prefix + 'schema:procedures:pdf:watch', () => {
      gulp
        .watch(
          [procedures.pdf.src],
          gulp.series(
            prefix + 'schema:concat',
            prefix + 'schema:procedures:pdf'
          )
        ).on('error', err => process.exit(1));
    });

    /*
     * procedures:pdf:build
     */
    gulp.task(prefix + 'schema:procedures:build',
      gulp.series(
        prefix + 'schema:concat',
        prefix + 'schema:procedures:pdf',
        prefix + 'schema:procedures:pdf:open'
    ));


    /*
     * schema:pdf:build
     */
    gulp.task(prefix + 'schema:pdf:build',
      gulp.series(
        prefix + 'schema:concat',
        prefix + 'schema:tables:pdf',
        prefix + 'schema:masters:pdf',
        prefix + 'schema:views:pdf',
        prefix + 'schema:procedures:pdf'
    ));
  }
};

module.exports = new Manual();
