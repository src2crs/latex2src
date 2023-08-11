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
#$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode';
$pdflatex = 'lualatex -interaction=nonstopmode';
$pdf_mode = 1;
$do_cd = 1;
$clean_ext = 'snm nav synctex.gz';

addsrcfiles("$srcdir/exams/basics",
    "exam_plain_with_solutions_en.tex",
    "exam_plain_without_solutions_en.tex",
    "exam_defaults_with_solutions_en.tex",
    "exam_defaults_without_solutions_en.tex",
    "exam_defaults_with_solutions_de.tex",
    "exam_defaults_without_solutions_de.tex",
    "exam_no_cover_with_solutions_en.tex",
    "exam_no_cover_without_solutions_en.tex",
    "exam_custom_cover_with_solutions_en.tex",
    "exam_custom_cover_without_solutions_en.tex",
);

addsrcfiles("$srcdir/exams/listings",
    "exam_listings_with_solutions_en.tex",
    "exam_listings_without_solutions_en.tex",
);

addsrcfiles("$srcdir/exams/trees",
    "exam_trees_with_solutions_de.tex",
    "exam_trees_without_solutions_de.tex",
);

addsrcfiles("$srcdir/cwd2sections",
    "cwd2sections.tex",
);

addsrcfiles("$srcdir/trees",
    "src2trees.tex",
);

addsrcfiles("$srcdir/examreports",
    "exam2report_task_commands.tex",
    "exam2report_envs.tex",
);
