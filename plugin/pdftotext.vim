augroup OpenPdfBufRead
    autocmd!
    autocmd BufReadPost,FileReadPost *.pdf call pdftotext#readpdf()
augroup END
