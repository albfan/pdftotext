" run pdftotext to read PDF files
autocmd BufReadPost,FileReadPost *.pdf call s:readpdf()
