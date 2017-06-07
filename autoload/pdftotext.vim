function! s:readpdf()
    if (!executable("pdftotext"))
        echo "Error: pdftotext not avaliable"
        return
    endif

    let tmp = tempname()
    " invoke: pdftotext sourcefile.pdf tempfile
    	call system ("pdftotext '" . escape (expand("<afile>"), "'") . "' " . tmp)
    setlocal nobin
    execute "silent '[-1r " . tmp
    " clean up the temporary file
    call delete(tmp)

    " make the buffer unwritable: we don't want to clobber the PDF file!
    set nowrite
endfunction
