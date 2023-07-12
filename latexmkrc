use Cwd;
my $rootdir = getcwd;
my $srcdir = "$rootdir/examples";
my $builddir = "$rootdir/build";
my $auxdir = "$rootdir/aux";
@default_files = ();
sub addsrcfiles {
    my ($dirname, @filenames) = @_;
    for $filename (@filenames) {
        @default_files = (
            @default_files,
            "$dirname/$filename"
        );
    }
}

$emulate_aux = 1;
$out_dir = "$builddir";
$aux_dir = "$auxdir";
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode';
$pdf_mode = 1;
$do_cd = 1;
$clean_ext = 'snm nav synctex.gz';

addsrcfiles("$srcdir/exams/plain",
    "exam_plain_with_solutions_en.tex",
    "exam_plain_without_solutions_en.tex",
);

addsrcfiles("$srcdir/exams/defaults",
    "exam_defaults_with_solutions_en.tex",
    "exam_defaults_without_solutions_en.tex",
);

addsrcfiles("$srcdir/exams/defaults_de",
    "exam_defaults_with_solutions_de.tex",
    "exam_defaults_without_solutions_de.tex",
);

addsrcfiles("$srcdir/exams/no_cover",
    "exam_no_cover_with_solutions_en.tex",
    "exam_no_cover_without_solutions_en.tex",
);

addsrcfiles("$srcdir/exams/custom_cover",
    "exam_custom_cover_with_solutions_en.tex",
    "exam_custom_cover_without_solutions_en.tex",
);
