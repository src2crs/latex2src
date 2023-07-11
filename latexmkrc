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

addsrcfiles("$srcdir/exams",
    "exam1.tex",
);
